package tuxonhumax.tools.jHDF;

import java.util.ArrayList;

/**
 * represents a complete HDF-File
 * @author  lastninja
 */
public class HdfFile
{
	String hdfFileName = "";

	HdfBasicInfo   hdfBasic       = null;
	HdfHeader      hdfHeader      = null;
	HdfDataBlock[] hdfDataBlock   = null;
    ArrayList      hdfBinFileList = null;
	
	public HdfFile()
	{
		hdfFileName    = "";
		hdfBasic       = new HdfBasicInfo();
		hdfHeader      = new HdfHeader();
		hdfDataBlock   = null;
        hdfBinFileList = new ArrayList();
	}

	public void setHdfFileName(String fileName)
	{
		hdfFileName = fileName;
	}
	
    /**
     * Creates & fills the Hdf-Details<br><br>
     * 
     * the Hdf-Details are:
     * <ul>
     * <li>Hdf-Header
     * <li>Hdf-Datablocks
     * <li>Hdf-RawData
     * </ul>
     * @see HdfHeader
     * @see HdfDataBlock
     * @see HdfRawData
     */
	public void computeHdfInfo()
	{
		if(hdfFileName.length()==0) return;
		
		// get the basic Info about the HDF-File
		hdfBasic.setHdfFileName(hdfFileName);
		hdfBasic.readBasicInfo();

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
	
    public void createRawData()
    {
        if (hdfFileName.length()==0) return;
        int currBinFile = 0;
        for (int i = 0 ; i < 4 ; i++)
        {
            int startBlock = 0;
            int currType = i;
            int nextMemPos = 0;

            // 1. search for a (not yet used) data block of the given Type
            // this one will be our first datablock in the binfile
            for (int j = 0 ; j < hdfDataBlock.length && startBlock==0; j++)
            {
                // data block is of the given type & isn't yet used
                if(hdfDataBlock[j].getBlockType()==currType && !hdfDataBlock[j].isBlockUsed())
                {
                    HdfRawData temp = new HdfRawData();
                    temp.addDataBlock(hdfDataBlock[j]);
                    temp.setBinType(currType);
                    temp.setBinMemAddress(hdfDataBlock[j].getBlockMemoryAddress());
                    // add the created bin file to the arraylist
                    hdfBinFileList.add(temp);
                    
                    hdfDataBlock[j].setBlockUsed(true);
                    startBlock = j+1;
                    nextMemPos = hdfDataBlock[j].getBlockMemoryAddress() + hdfDataBlock[j].getBlockLength();
                    currBinFile++;
                    i--; // if there is one block, there could be another one
                         // with the same block type
                }
            }

            // 2. look for the next blocks, they must be of the same block type,
            // must start with the correct memory address (last block + last block's length
            // and shouldn't have been used yet.
            for (int j = 0 ; j < hdfDataBlock.length; j++)
            {
                if(hdfDataBlock[j].getBlockType()==currType && !hdfDataBlock[j].isBlockUsed() && hdfDataBlock[j].getBlockMemoryAddress()==nextMemPos)
                {
                    ((HdfRawData)hdfBinFileList.get(currBinFile-1)).addDataBlock(hdfDataBlock[j]);
                    hdfDataBlock[j].setBlockUsed(true);
                    nextMemPos = hdfDataBlock[j].getBlockMemoryAddress()  + hdfDataBlock[j].getBlockLength();
                }
            }

        }
    }

    public void writeRawFiles()
    {
        for(int j = 0; j < hdfBinFileList.size();j++)
        {
          ((HdfRawData)hdfBinFileList.get(j)).writeBinFile();
        }
    }
    
    /*
     * gets the HdfRawData with the given number
     * @param int rawDataNumber (>=0)
     * @return HdfRawData, null if the HdfRawData with the given number does not exist
     */
    public HdfRawData getHdfRawData(int rawDataNumber)
    {
        if (rawDataNumber>=hdfBinFileList.size()) return null;
        
        return (HdfRawData)hdfBinFileList.get(rawDataNumber);
    }
    
    /*
     * gets the number of raw datas
     */
    public int getHdfRawDataCount()
    {
        return hdfBinFileList.size();
    }

    /*
     * gets the number of data blocks
     */
    public int getHdfDataBlockCount()
    {
        return hdfDataBlock.length;
    }

    /*
     * gets the Datablock with the given number
     * @param int DataBlockNumber (>=0)
     * @return HdfDataBlock, null if the HdfDataBlock with the given number does not exist
     */
    public HdfDataBlock getHdfDataBlock(int dataBlockNumber)
    {
        if (dataBlockNumber>=getHdfDataBlockCount()) return null;
        
        return hdfDataBlock[dataBlockNumber];
    }
    
    public HdfHeader getHdfHeader()
    {
        return hdfHeader;
    }
    
    public HdfBasicInfo getHdfBasicInfo()
    {
        return hdfBasic;
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
