package tuxonhumax.tools.jHDF;

public class HdfFile
{
	String hdfFileName = "";

	HdfBasicInfo   hdfBasic     = null;
	HdfHeader      hdfHeader    = null;
	HdfDataBlock[] hdfDataBlock = null;
	
	public HdfFile()
	{
		hdfFileName = "";
		hdfBasic  = new HdfBasicInfo();
		hdfHeader = new HdfHeader();
		hdfDataBlock = null;
	}

	public void setHdfFileName(String fileName)
	{
		hdfFileName = fileName;
	}
	
	public void computeHdfInfo()
	{
		if(hdfFileName.length()==0) return;
		
		// get the basic Info about the HDF-File
		hdfBasic.setHdfFileName(hdfFileName);
		hdfBasic.computeCRC();

		// get the Header
		hdfHeader.setHdfFileName(hdfFileName);
		hdfHeader.readHeader();

		hdfDataBlock = new HdfDataBlock[hdfHeader.getNumberBlocks()];
		for(int i = 0;i<hdfHeader.getNumberBlocks();i++)
		{
			hdfDataBlock[i] = new HdfDataBlock();
		}
		// first datablock starts at headerlength + 2 (2 == the first 2 bytes)
		hdfDataBlock[0].setBlockNumber(0);
		hdfDataBlock[0].setHdfFileName(hdfFileName);
		hdfDataBlock[0].setBeginOfBlock(hdfHeader.getHeaderLength()+2);
		hdfDataBlock[0].readData();
		
		for(int i = 1;i<hdfHeader.getNumberBlocks();i++)
		{
			hdfDataBlock[i].setBlockNumber(i);
			hdfDataBlock[i].setHdfFileName(hdfFileName);
			hdfDataBlock[i].setBeginOfBlock(hdfDataBlock[i-1].getBeginOfNextBlock());
			hdfDataBlock[i].readData();
		}
	}
	
	public String toString()
	{
		if(hdfFileName.length()==0) return "";
		
		StringBuffer report = new StringBuffer();
    	report.append(hdfBasic);
    	report.append(hdfHeader);
    	
    	for(int i=0;i<hdfHeader.getNumberBlocks();i++)
    		report.append(hdfDataBlock[i]);
    	
    	return report.toString();
	}
}
