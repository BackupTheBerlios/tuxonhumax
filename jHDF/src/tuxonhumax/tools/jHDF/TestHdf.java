package tuxonhumax.tools.jHDF;

import java.awt.FileDialog;
import java.awt.Frame;

public class TestHdf 
{
	String  hdfFileName = "";
	HdfFile hdfFile     = null;

	TestHdf()
	{
		hdfFileName = "";
		hdfFile = new HdfFile();
	}

    public static void main(String args[])
    {

		TestHdf newTest = new TestHdf();
		
		// Get Filename - at this time with a simple FileDialog
		newTest.setFileName();

		newTest.computeHdfInfo();
		newTest.printReport();
        
        System.exit(0);
    }

	public void setFileName()
	{
        FileDialog fd = new FileDialog(new Frame(), "Please choose a file:", FileDialog.LOAD);
        fd.setDirectory(System.getProperty("user.dir"));
        fd.setVisible(true);
		
		if(fd.getFile()!=null)
		{
			hdfFileName = fd.getDirectory() + fd.getFile();
		}		
	}
	
	public void computeHdfInfo()
	{
		hdfFile.setHdfFileName(hdfFileName);
		hdfFile.computeHdfInfo();
	}
	
	
    public void printReport()
    {
		System.out.println(hdfFile);
	}
}

