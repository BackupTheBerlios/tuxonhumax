package tuxonhumax.tools.jHDF;

import java.io.RandomAccessFile;
import java.io.FileNotFoundException;
import java.io.IOException;
import lha.CRC16;

public class HdfHeader
{
    private RandomAccessFile hdfFile = null;
	
	private String hdfFileName = "";
    // Headerlength:    00h - 01h
    private byte[] headerLength = new byte[2];
    // Headerchecksum:  02h - 03h --> thats the Checksum to be (as saved in hdf-file)
    private byte[] headerChecksum = new byte[2];
    // ModelType:		04h - 05h
    private byte[] modelType = new byte[2];
    // Number ob Blocks:06h - 07h
    private byte[] numberBlocks = new byte[2];
    // SystemID1:		08h - 0Bh
    private byte[] systemID1 = new byte[4];
    // SystemID2:		0Ch - 0Fh
    private byte[] systemID2 = new byte[4];
    // Data Length:		10h - 13h
    private byte[] dataLength = new byte[4];

    // thats the calculated Checksum: CRC16 of Header
    private int headerChecksumCalc;
    
	public HdfHeader()
	{
		hdfFileName = "";			
        headerLength[0] = 0; headerLength[1] = 0;
        headerChecksum[0] = 0; headerChecksum[1] = 0;
	    modelType[0] = 0; modelType[1] = 0;
	    systemID1[0] = 0; systemID1[1] = 0; systemID1[2] = 0; systemID1[3] = 0;	    
	    systemID2[0] = 0; systemID2[1] = 0; systemID2[2] = 0; systemID2[3] = 0;	    
	    numberBlocks[0] = 0; numberBlocks[1] = 0;
	    dataLength[0] = 0; dataLength[1] = 0; dataLength[2] = 0; dataLength[3] = 0;
        
        headerChecksumCalc = 0;
	}
    
	public void setHdfFileName(String fileName)
	{
		hdfFileName = fileName;
	}
	
	public void readHeader()
	{
		if(hdfFileName.length()==0) return;

		try
		{
			hdfFile = new RandomAccessFile(hdfFileName,"r");
			
			hdfFile.read(headerLength);
			
			headerChecksum[0] = hdfFile.readByte();
			headerChecksum[1] = hdfFile.readByte();

			hdfFile.read(modelType);
			
			hdfFile.read(numberBlocks);
			
			hdfFile.read(systemID1);
			hdfFile.read(systemID2);

			hdfFile.read(dataLength);
			
            // Calculate the actual Checksum of the header
            // this value can than be compared with the given checksum (field 02h-03h)
            CRC16 actualChecksum = new CRC16();
            
            byte[] headerData = new byte[getHeaderLength()-2];
            hdfFile.seek(4);
            hdfFile.read(headerData);
            
            actualChecksum.update(headerData,0,getHeaderLength()-2);
            
            headerChecksumCalc = (int)actualChecksum.getValue();
            
 			hdfFile.close();
		}
		catch(FileNotFoundException e){}
		catch(IOException e){}
	}
	
	/**
	 * Gets the headerLength.
	 * @return Returns a int
	 */
	public int getHeaderLength()
	{
		return (int) ((headerLength[0] <<8 & 0xFFFF)
                      |(headerLength[1]     & 0xFF));
	}

		
	/**
	 * Gets the headerChecksum.
	 * @return Returns a int
	 */
	public int getHeaderChecksum()
	{
		return (int) ((headerChecksum[0] <<8 & 0xFFFF)
		  			  |(headerChecksum[1]     & 0xFF));
	}

		
	/**
	 * Gets the modelType.
	 * @return Returns a int
	 */
	public int getModelType()
	{
		return (int) ((modelType[0] <<8 & 0xFFFF)
                      |(modelType[1]     & 0xFF));
	}

		
	/**
	 * Gets the systemID1.
	 * @return Returns a int
	 */
	public int getSystemID1()
	{
		return (int) ((systemID1[0] <<24 & 0xFFFFFFFF)
		              |(systemID1[1] <<16 & 0xFFFFFF)
		              |(systemID1[2] <<8  & 0xFFFF)
		              |(systemID1[3]      & 0xFF));	
	}

		
	/**
	 * Gets the systemID2.
	 * @return Returns a int
	 */
	public int getSystemID2()
	{
		return (int) ((systemID2[0] <<24 & 0xFFFFFFFF)
		              |(systemID2[1] <<16 & 0xFFFFFF)
		              |(systemID2[2] <<8  & 0xFFFF)
		              |(systemID2[3]      & 0xFF));	
	}

		
	/**
	 * Gets the numberBlocks.
	 * @return Returns a int
	 */
	public int getNumberBlocks()
	{
		return (int) ((numberBlocks[0] <<8 & 0xFFFF)
                      |(numberBlocks[1]     & 0xFF));
	}

	/**
	 * Gets the dataLength.
	 * @return Returns a int
	 */
	public int getDataLength()
	{
		return (int) ((dataLength[0] <<24 & 0xFFFFFFFF)
                      |(dataLength[1] <<16 & 0xFFFFFF)
					  |(dataLength[2] <<8  & 0xFFFF)
					  |(dataLength[3]      & 0xFF));
	}

    public boolean isHeaderChecksumValid()
    {
        return (getHeaderChecksum()==headerChecksumCalc);
    }

	public String toString()
	{
		if(hdfFileName.length()==0) return "";
		
		StringBuffer report = new StringBuffer();
        report.append("Header length    : "   + getHeaderLength() + " Bytes\n");
        report.append("Header Checksum  : 0x" + Integer.toHexString(getHeaderChecksum()).toUpperCase());
        report.append(isHeaderChecksumValid() ? " (ok)\n" : "\n");
        report.append("Model Type       : "   + getModelType() + "\n");        
        report.append("System ID (1)    : ("  + Integer.toHexString(getSystemID1()) + ")\n");
        report.append("System ID (2)    : ("  + Integer.toHexString(getSystemID2()) + ")\n");        
        report.append("Number of Blocks : "   + getNumberBlocks()+ "\n");
        report.append("Data Length      : "   + getDataLength() + " Bytes\n\n");
        
        return report.toString();
	}

}