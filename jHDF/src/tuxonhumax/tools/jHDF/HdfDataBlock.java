package tuxonhumax.tools.jHDF;

import java.io.RandomAccessFile;
import java.io.ByteArrayInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import lha.*;

/**
 * represent a single DataBlock in a HDF-File
 * @author  lastninja
 */
public class HdfDataBlock
{
	// Offsets relative to the block's begin
	private int offNextOffset = 0;
	private int offBlockChecksum = 2;
	private int offBlockType = 4;
	private int offBlockLength = 6;
	private int offBlockMemoryAddress = 8;
	private int offBlockData = 12;
	
	private byte[] nextOffset = new byte[2];
	private byte[] blockChecksum = new byte[2];
	private byte[] blockCompressed = new byte[1];
	private byte[] blockType = new byte[2];
	private byte[] blockLength = new byte[2];
	private byte[] blockMemoryAddress = new byte[4];
    // blockData is the uncompressed data of the block
	private byte[] blockData = null;

    // thats the calculated Checksum: CRC16 of the block
    private int blockChecksumCalc;
	
	private int blockNumber = 0;
	private int beginOfBlock = 0;
    private RandomAccessFile hdfFile = null;
	private String hdfFileName = "";
	
    // blockUsed: has this Datablock been used to create Bin-File
    private boolean blockUsed;
    
	public HdfDataBlock()
	{
		nextOffset[0] = 0; nextOffset[1] = 0;
		blockChecksum[0] = 0; blockChecksum[1] = 0;
		blockCompressed[0] = 0;
		blockType[0] = 0; blockType[1] = 0;
		blockLength[0] = 0; blockLength[1] = 0;
		blockMemoryAddress[0] = 0; blockMemoryAddress[1] = 0; blockMemoryAddress[2] = 0; blockMemoryAddress[3] = 0;
		blockData = null;
        
		blockChecksumCalc = 0;
		beginOfBlock = 0;
        
        blockUsed = false;
	}

	public void setHdfFileName(String fileName)
	{
		hdfFileName = fileName;
	}

	public String toString()
	{
		if(hdfFileName.length()==0) return "";
		
		StringBuffer report = new StringBuffer();

        report.append("\nBlock (" + (blockNumber+1) + ") found at Position 0x" +  FormatString.toHex(beginOfBlock,8) + ".\n");
        report.append("Next Offset      : " + getNextOffset() + "\n");
        report.append("Block Checksum   : 0x" + FormatString.toHex(getBlockChecksum(),4));
        report.append(isBlockChecksumValid() ? " (ok)\n" : "\n");
        report.append("Block Type       : " + getBlockType());
        report.append(isBlockCompressed() ? " (compressed)\n" : " (plain)\n");
        report.append("Block length     : " + getBlockLength() + " Bytes\n");
        report.append("Memory Position  : 0x" + FormatString.toHex(getBlockMemoryAddress(),6) + "\n");
		
		return report.toString();
	}

	/**
	 * Sets the beginOfBlock.
	 * @param beginOfBlock The beginOfBlock to set
	 */
	public void setBeginOfBlock(int beginOfBlock)
	{
		this.beginOfBlock = beginOfBlock;
	}

	public void readData()
	{
		if(hdfFileName.length()==0) return;

		try
		{
			hdfFile = new RandomAccessFile(hdfFileName,"r");
			
			hdfFile.seek(beginOfBlock + offNextOffset);
		
			hdfFile.read(nextOffset);
			hdfFile.read(blockChecksum);
			hdfFile.read(blockType);
			hdfFile.read(blockLength);
			hdfFile.read(blockMemoryAddress);
			
            // Calculate the actual Checksum of the block
            // this value can than be compared with the given checksum 
            CRC16 actualChecksum = new CRC16();
            
            int crcDataStart = beginOfBlock + offBlockType;
            
            int crcDataEnd = beginOfBlock + getNextOffset() + 2;
            
            byte[] blockHeaderData = new byte[crcDataEnd - crcDataStart];
            hdfFile.seek(crcDataStart);
            hdfFile.read(blockHeaderData);
            
            hdfFile.seek(beginOfBlock + 4);
            hdfFile.read(blockHeaderData);
            
            actualChecksum.update(blockHeaderData,0,crcDataEnd - crcDataStart);
            
            blockChecksumCalc = (int)actualChecksum.getValue();
            
            // Uncompressed Data with length = blockLength
            blockData = new byte[getBlockLength()];
            
            if(isBlockCompressed())
            {
                // is only needed to feed the LhaInputstream
                byte[] compressedBlockData = new byte[getBeginOfNextBlock()-(beginOfBlock + offBlockData)];

                hdfFile.seek(beginOfBlock + offBlockData);
                hdfFile.read(compressedBlockData);
                
                ByteArrayInputStream bais = new ByteArrayInputStream(compressedBlockData);

                LH5Decompressor ld = new LH5Decompressor(bais, getBlockLength(),13);
                ld.read(blockData,0,blockData.length);

                ld.close();
                bais.close();
                java.io.File x = new java.io.File(hdfFileName + blockNumber + ".txt");
                x.delete();
                x = null;
            }
            else // read plain Data in blockData[]
            {
                hdfFile.seek(beginOfBlock + offBlockData);
                hdfFile.read(blockData);
                hdfFile.read(blockData);
            }
            
 			hdfFile.close();
		}
		catch(FileNotFoundException e){System.out.println("Error: " + e.getLocalizedMessage()); e.printStackTrace();}
		catch(IOException e){System.out.println("Error: " + e.getLocalizedMessage());e.printStackTrace();}
	}
	/**
	 * Gets the nextOffset.
	 * @return Returns a int
	 */
	public int getNextOffset()
	{
		return (int) ((nextOffset[0]<< 8 & 0xFFFF)
					  |(nextOffset[1]     & 0xFF));
	}

	public int getBeginOfNextBlock()
	{
		return (beginOfBlock+getNextOffset()+2);
	}

	public int getBlockChecksum()
	{
		return (int) ((blockChecksum[0]<< 8 & 0xFFFF)
					  |(blockChecksum[1]     & 0xFF));
	}

	public int getBlockMemoryAddress()
	{
		return (int) ((blockMemoryAddress[0]<< 24 & 0xFFFFFFFF)
                      |(blockMemoryAddress[1]<< 16 & 0xFFFFFF)
					  |(blockMemoryAddress[2]<< 8  & 0xFFFF)
					  |(blockMemoryAddress[3]      & 0xFF));					  
	}

	public int getBlockType()
	{
		return (int) (blockType[1] & 0xFF);
	}

    public int getBlockCompressed()
    {
        return (int) (blockType[0] & 0xFF);
    }
    
    public boolean isBlockCompressed()
    {
        return (( getBlockCompressed() == 0x80 
                || getNextOffset() < getBlockLength() ) ? true : false);
    }
	
	public int getBlockLength()
	{
		return (int) ((blockLength[0] << 8 & 0xFFFF)
					  |(blockLength[1]      & 0xFF));
	}
	

	/**
	 * Sets the blockNumber.
	 * @param blockNumber The blockNumber to set
	 */
	public void setBlockNumber(int blockNumber)
	{
		this.blockNumber = blockNumber;
	}

    /**
     * checks if the block checksum is valid
     * @return true if CRC16-check is okay
     */
    public boolean isBlockChecksumValid()
    {
        return (getBlockChecksum()==blockChecksumCalc);
    }

	/**
	 * checks if this datablock has been used to generate a binfile
	 * @return Returns true if the block has been used
	 */
	public boolean isBlockUsed()
	{
		return blockUsed;
	}

	/**
	 * Sets the blockUsed.
	 * @param blockUsed The blockUsed to set
	 */
	public void setBlockUsed(boolean blockUsed)
	{
		this.blockUsed = blockUsed;
	}

	/**
	 * Gets the uncompressed blockData.
	 * @return Returns a byte[]
	 */
	public byte[] getBlockData()
	{
		return blockData;
	}
}

