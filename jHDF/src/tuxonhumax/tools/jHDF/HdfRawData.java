package tuxonhumax.tools.jHDF;

import java.util.ArrayList;
import java.io.RandomAccessFile;
import java.io.ByteArrayOutputStream;

/**
 * represents the raw data.
 * @author  lastninja
 */
public class HdfRawData
{
    private int binType = 0;
    private int binMemAddress = 0;
    private ArrayList binDataBlock = null;
    
    public HdfRawData()
    {
        binType = 0;
        binMemAddress = 0;
        binDataBlock = new ArrayList();
    }
    
    public void addDataBlock(HdfDataBlock dataBlock)
    {
        binDataBlock.add(dataBlock);
    }
	/**
	 * Gets the binType.
	 * @return Returns a int
	 */
	public int getBinType()
	{
		return binType;
	}

	/**
	 * Sets the binType.
	 * @param binType The binType to set
	 */
	public void setBinType(int binType)
	{
		this.binType = binType;
	}

	/**
	 * Gets the binMemAddress.
	 * @return Returns a int
	 */
	public int getBinMemAddress()
	{
		return binMemAddress;
	}

	/**
	 * Sets the binMemAddress.
	 * @param binMemAddress The binMemAddress to set
	 */
	public void setBinMemAddress(int binMemAddress)
	{
		this.binMemAddress = binMemAddress;
	}
    
    /**
     * writes this raw datablock to a file<br><br>
     * 
     * the file is called: jhdfbin-&lt;BlockType&gt;-&lt;MemoryPosition&gt;.raw<br><br>
     * 
     * the other possibility to get the raw data is to get it as a byte[]
     * @see #getBinData()
     * 
     */
    public void writeBinFile()
    {
        RandomAccessFile binOut = null;
        try
        {
            binOut = new RandomAccessFile("jhdfbin-" + getBinType() + "-" + FormatString.toHex(getBinMemAddress(),6) + ".raw","rw");
            for(int i = 0;i<binDataBlock.size();i++)
            {
                binOut.write(((HdfDataBlock)binDataBlock.get(i)).getBlockData());
            }
            binOut.close();
        }
        catch(java.io.IOException e){System.out.println("Error: " + e.getLocalizedMessage());e.printStackTrace();}
    }

    /**
     * gets the raw Data as a byte[]<br><br>
     * 
     * the other possibility to get to the raw data is to save it to disk
     * @see #writeBinFile()
     * 
     * @return byte[] raw data
     */
    public byte[] getBinData()
    {
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        
        try
        {
	        for(int i = 0 ; i < binDataBlock.size(); i++)
	        {
	            baos.write( (((HdfDataBlock)binDataBlock.get(i)).getBlockData()) );
	        }
        }
        catch (java.io.IOException e){System.out.println("Error: " + e.getLocalizedMessage());e.printStackTrace();}

        return baos.toByteArray();
        
    }

}