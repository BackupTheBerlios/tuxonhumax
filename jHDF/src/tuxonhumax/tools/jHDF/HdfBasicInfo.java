package tuxonhumax.tools.jHDF;

import java.io.FileInputStream;
import java.io.RandomAccessFile;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.zip.CRC32;

/**
 * represent the common data about a Hdffile<br><br>
 * e.g. the Filename and it's CRC32-Checksum
 * @author  lastninja
 */
public class HdfBasicInfo
{
    private CRC32 crc = null;

    // CRC32 of File
	private long crcResult=0;
	
	// Filename
	private String hdfFileName = "";

	public HdfBasicInfo()
	{
		crc = new CRC32();
		crcResult = 0;
		hdfFileName = "";
	}
	
	public void setHdfFileName(String fileName)
	{
		hdfFileName = fileName;
	}

    /**
     * calculates the CRC32 and fills the BasicInfo-Fields
     */
	public void readBasicInfo()
	{
		if (hdfFileName.length()==0) return;

        FileInputStream fis = null;
        try
        {
            fis = new FileInputStream(hdfFileName);

            byte[] bIn;
            long fAv = fis.available();	// number of bytes that can be read from 
            								// the file input stream

            while(fAv>0)
            {
                if(fAv<1024)
                {
                    bIn = new byte[(int)fAv];
                }
                else
                {
                    bIn = new byte[1024];
                }

                fis.read(bIn);
                crc.update(bIn);
                fAv = fis.available();
            }   
            fis.close();
            crcResult = crc.getValue();
		}catch(FileNotFoundException e) {System.out.println("Error: " + e.getLocalizedMessage());}
         catch(IOException e){System.out.println("Error: " + e.getLocalizedMessage() );}
	}
	
	public long getCrc()
	{
		return crcResult;
	}
	
    public String getHdfFileNameWithoutPath()
    {
        int posSep = hdfFileName.lastIndexOf(java.io.File.separatorChar);
        if (posSep==-1)
        {
            return hdfFileName;
        }
        else
        {
            return hdfFileName.substring(posSep+1);
        }
            
    }
    
	public String toString()
	{
		if(hdfFileName.length()==0) return "";
		
		StringBuffer report = new StringBuffer();
		report.append("HDF Information File\n");
        report.append("--------------------\n\n");

        report.append("HDF Filename     : " + getHdfFileNameWithoutPath() + "\n");
        report.append("CRC-32           : 0x" + new Long(0).toHexString(crcResult).toUpperCase() + "\n\n");

        return report.toString();
	}
}
