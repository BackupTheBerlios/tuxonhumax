package tuxonhumax.tools.jHDF;

import java.io.RandomAccessFile;
import java.io.FileNotFoundException;
import java.io.IOException;

public class HdfHeader
{
    private RandomAccessFile hdfFile = null;
	
	private String hdfFileName = "";
	// 00h: maybe filler
    // Headerlength:    01h
    private byte[] headerLength = new byte[1];
    // Headerchecksum:  02h - 03h
    private byte[] headerChecksum = new byte[2];
	// 04h: maybe filler
    // ModelType:		05h
    private byte[] modelType = new byte[1];
	// 06h: maybe filler
    // Number ob Blocks:07h
    private byte[] numberBlocks = new byte[1];
    // SystemID1:		08h - 0Bh
    private byte[] systemID1 = new byte[4];
    // SystemID2:		0Ch - 0Fh
    private byte[] systemID2 = new byte[4];
    // 10h: maybe filler
    // Data Length:		11h - 13h
    private byte[] dataLength = new byte[3];

	public HdfHeader()
	{
		hdfFileName = "";			
        headerLength[0] = 0;
        headerChecksum[0] = 0; headerChecksum[1] = 0;
	    modelType[0] = 0;
	    systemID1[0] = 0; systemID1[1] = 0; systemID1[2] = 0; systemID1[3] = 0;	    
	    systemID2[0] = 0; systemID2[1] = 0; systemID2[2] = 0; systemID2[3] = 0;	    
	    numberBlocks[0] = 0;
	    dataLength[0] = 0; dataLength[1] = 0; dataLength[2] = 0;	    
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
			
			hdfFile.seek(0x01);
			headerLength[0] = hdfFile.readByte();
			
			headerChecksum[0] = hdfFile.readByte();
			headerChecksum[1] = hdfFile.readByte();

			hdfFile.skipBytes(1); // 06h: 0x00 maybe a filler
			
			modelType[0] = hdfFile.readByte();
			
			hdfFile.skipBytes(1); // 04h: 0x00 maybe a filler
			
			numberBlocks[0]   = hdfFile.readByte();
			
			hdfFile.read(systemID1);
			hdfFile.read(systemID2);

			hdfFile.skipBytes(1); // 10h: 0x00 maybe a filler
			
			hdfFile.read(dataLength);
			
 			hdfFile.close();
		}
		catch(FileNotFoundException e){}
		catch(IOException e){}
	}
	
	/**
	 * Gets the fHeaderLength.
	 * @return Returns a int
	 */
	public int getHeaderLength()
	{
		return headerLength[0];
	}

		
	/**
	 * Gets the fHeaderChecksum.
	 * @return Returns a int
	 */
	public int getHeaderChecksum()
	{
		return (int) ((headerChecksum[0] <<8 & 0xFFFF)
		  			  |(headerChecksum[1]     & 0xFF));
	}

		
	/**
	 * Gets the fModelType.
	 * @return Returns a int
	 */
	public int getModelType()
	{
		return modelType[0];
	}

		
	/**
	 * Gets the fSystemID1.
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
	 * Gets the fSystemID2.
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
	 * Gets the fNumberBlocks.
	 * @return Returns a int
	 */
	public int getNumberBlocks()
	{
		return numberBlocks[0];
	}

	/**
	 * Gets the fDataLength.
	 * @return Returns a int
	 */
	public int getDataLength()
	{
		return (int) ((dataLength[0] <<16 & 0xFFFFFF)
					  |(dataLength[1] <<8  & 0xFFFF)
					  |(dataLength[2]      & 0xFF));
	}

	public String toString()
	{
		if(hdfFileName.length()==0) return "";
		
		StringBuffer report = new StringBuffer();
        report.append("Header length    : "   + getHeaderLength() + " Bytes\n");
        report.append("Header Checksum  : 0x" + Integer.toHexString(getHeaderChecksum()).toUpperCase() + "\n");
        report.append("Model Type       : "   + getModelType() + "\n");        
        report.append("System ID (1)    : ("  + Integer.toHexString(getSystemID1()) + ")\n");
        report.append("System ID (2)    : ("  + Integer.toHexString(getSystemID2()) + ")\n");        
        report.append("Number of Blocks : "   + getNumberBlocks()+ "\n");
        report.append("Data Length      : "   + getDataLength() + " Bytes\n\n");
        
        return report.toString();
	}

}
