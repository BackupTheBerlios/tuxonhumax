package tuxonhumax.tools.jHDF;

import java.io.RandomAccessFile;
import java.io.FileNotFoundException;
import java.io.IOException;
import lha.CRC16;

public class HdfDataBlock
{
	// Offsets relative to the block's begin
	private int offNextOffset = 0;
	private int offBlockChecksum = 2;
	private int offBlockType = 4;
	private int offBlockLength = 6;
	private int offBlockMemoryAddress = 8;
	private int offData = 12;
	
	private byte[] nextOffset = new byte[2];
	private byte[] blockChecksum = new byte[2];
	private byte[] blockCompressed = new byte[1];
	private byte[] blockType = new byte[2];
	private byte[] blockLength = new byte[2];
	private byte[] blockMemoryAddress = new byte[4];
	private byte[] data = null;

    // thats the calculated Checksum: CRC16 of the block
    private int blockChecksumCalc;
	
	private int blockNumber = 0;
	private int beginOfBlock = 0;
    private RandomAccessFile hdfFile = null;
	private String hdfFileName = "";
	
	public HdfDataBlock()
	{
		nextOffset[0] = 0; nextOffset[1] = 0;
		blockChecksum[0] = 0; blockChecksum[1] = 0;
		blockCompressed[0] = 0;
		blockType[0] = 0; blockType[1] = 0;
		blockLength[0] = 0; blockLength[1] = 0;
		blockMemoryAddress[0] = 0; blockMemoryAddress[1] = 0; blockMemoryAddress[2] = 0; blockMemoryAddress[3] = 0;
		data = null;
        
		blockChecksumCalc = 0;
		beginOfBlock = 0;
	}

	public void setHdfFileName(String fileName)
	{
		hdfFileName = fileName;
	}

	public String toString()
	{
		if(hdfFileName.length()==0) return "";
		
		StringBuffer report = new StringBuffer();

		report.append("Block (" + (blockNumber+1) + ") found at Position 0x" + new Long(0).toHexString(beginOfBlock).toUpperCase() + "\n");
		report.append("Next Offset      : " + getNextOffset() + "\n");
		report.append("Block Checksum   : 0x" + Integer.toHexString(getBlockChecksum()).toUpperCase());
        report.append(isBlockChecksumValid() ? " (ok)\n" : "\n");
		report.append("Block Type       : " + getBlockType());
        report.append(isBlockCompressed() ? " (compressed)\n" : " (plain)\n");
		report.append("Block length     : " + getBlockLength() + "\n");
		report.append("Memory Position  : 0x" + Integer.toHexString(getBlockMemoryAddress()).toUpperCase() + "\n\n");
		
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
            
            byte[] blockData = new byte[crcDataEnd - crcDataStart];
            hdfFile.seek(crcDataStart);
            hdfFile.read(blockData);
            
            hdfFile.seek(beginOfBlock + 4);
            hdfFile.read(blockData);
            
            actualChecksum.update(blockData,0,crcDataEnd - crcDataStart);
            
            blockChecksumCalc = (int)actualChecksum.getValue();
            
            /*System.out.println("start: " + Integer.toHexString(crcDataStart));
            System.out.println("ende: " + Integer.toHexString(crcDataEnd));            
            System.out.println("länge: " + (crcDataEnd-crcDataStart));
            System.out.println("actual CRC: " + Integer.toHexString(blockChecksumCalc));*/
            
 			hdfFile.close();
		}
		catch(FileNotFoundException e){}
		catch(IOException e){}
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

    public boolean isBlockChecksumValid()
    {
        return (getBlockChecksum()==blockChecksumCalc);
    }

}

