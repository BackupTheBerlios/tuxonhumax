/*
 * HdfGui.java
 *
 * Created on 4. Mai 2002, 01:24
 */

package tuxonhumax.tools.jHDF;

import java.lang.Boolean;
import javax.swing.JList;
import javax.swing.JPanel;
import java.awt.BorderLayout;
import java.awt.GridBagLayout;
import java.awt.GridBagConstraints;
import java.awt.Insets;
import javax.swing.JLabel;
import javax.swing.JTextField;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.awt.Rectangle;
import java.awt.FlowLayout;
import java.awt.Dimension;
import oracle.jdeveloper.layout.VerticalFlowLayout;
import javax.swing.JSeparator;
import javax.swing.JMenuBar;
import javax.swing.KeyStroke;
import java.awt.event.KeyEvent;
import javax.swing.JMenu;
import javax.swing.JMenuItem;
import javax.swing.BorderFactory;
import javax.swing.border.BevelBorder;
import javax.swing.JScrollBar;
import java.awt.event.WindowListener;
import java.awt.event.WindowEvent;
import java.awt.Color;
import oracle.jdeveloper.layout.BoxLayout2;
import java.awt.CardLayout;
import java.awt.GridLayout;
import oracle.jdeveloper.layout.OverlayLayout2;
import javax.swing.JProgressBar;
/**
 *
 * @author Ben96
 */
public class HdfGui extends javax.swing.JFrame {
    String hdfFileName="";
    HdfFile hdfFile = null;
    
    /** Creates new form HdfGui */
    public HdfGui() {
        hdfFileName = "";
        hdfFile = new HdfFile();
        setTitle("jHDF-Tool v0.1");        
        try {
            jbInit();
        }
        catch(Exception e) {
            e.printStackTrace();
        }
        
    }
    
     
    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        new HdfGui().show();
    }
    public int setFileName() {
        final javax.swing.JFileChooser fd = new javax.swing.JFileChooser();
        fd.setApproveButtonText("Open HDF-File ...");
        int returnVal = fd.showOpenDialog(null);
        fd.setVisible(true);
        if (returnVal == fd.APPROVE_OPTION) {
            hdfFileName = fd.getCurrentDirectory().getPath() +
            java.io.File.separator + fd.getSelectedFile().getName();
            hdfFileTextField.setText(hdfFileName);
            return 1;
        }
        return 0;
    }
    
    public void computeHdfInfo() {
        hdfFile.setHdfFileName(hdfFileName);
        hdfFile.computeHdfInfo();
    }
    
    
    public void printReport() {
        System.out.print(hdfFile);
    }
    
    public void filltextfields(){
        HdfHeader h = new HdfHeader();
        h.setHdfFileName(hdfFileName);
        h.readHeader();
        int hLenght = h.getHeaderLength();
        int hChecksum = h.getHeaderChecksum();
        int mType = h.getModelType();
        int systemid1 = h.getSystemID1();
        int systemid2 = h.getSystemID2();
        int numblk = h.getNumberBlocks();
        int datalenght = h.getDataLength();
        String SmodeltypeName = h.getModelTypeName();
        
        
        /* Fill Textfields*/
        dfcrcChecksum.setText("0x" + Integer.toHexString(hChecksum).toUpperCase());
        dfHLenght.setText(String.valueOf(hLenght));
        dfSystemid1.setText(Integer.toHexString(systemid1));
        dfSystemID2.setText(Integer.toHexString(systemid2));
        dfModelType.setText(SmodeltypeName);
        dfNumBlocks.setText(String.valueOf(numblk));
    
     //   String sData[]=new String[100];
     //   HdfDataBlock hdblock = new HdfDataBlock();
        
     //   int Anzahl=hdfFile.getHdfDataBlockCount();
     //   for (int i = 0; i < Anzahl; i++) 
     //       {
     //         hdblock = hdfFile.getHdfDataBlock(i);
     //         int BinType=hdblock.getBlockType();
     //         int memaddress=hdblock.getBlockMemoryAddress();
              
     //       sData[i] = "jHDF-"+Integer.toString(BinType)+"-"+Integer.toString(memaddress);
     //       }
        
     //lRawfiles.setListData(sData);
     listRawfiles();
    }
    
   
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
  JScrollPane jScrollPane1 = new JScrollPane();
  JPanel jPanel1 = new JPanel();
  GridBagLayout gridBagLayout1 = new GridBagLayout();
  JTextField hdfFileTextField = new JTextField();
  JLabel headerLengthLabel = new JLabel();
  JTextField dfHLenght = new JTextField();
  JLabel bytesLabel = new JLabel();
  JLabel labelcrc32 = new JLabel();
  JTextField dfcrcChecksum = new JTextField();
  JLabel systemID1Label = new JLabel();
  JTextField dfSystemid1 = new JTextField();
  JLabel systemID2Label = new JLabel();
  JTextField dfSystemID2 = new JTextField();
  JLabel modelTypeLabel = new JLabel();
  JTextField dfModelType = new JTextField();
  JLabel numberOfBlocksLabel = new JLabel();
  JTextField dfNumBlocks = new JTextField();
  JLabel countOfRawFilesLabel = new JLabel();
  JTextField dfRawCount = new JTextField();
  JLabel statusLabel = new JLabel();
  JTextField dfStatus = new JTextField();
  JTextArea sOutput = new JTextArea();
  JLabel hdfFileNameLabel = new JLabel();
  JMenuBar jMenuBar1 = new JMenuBar();
  JMenu jMenu1 = new JMenu();
  JMenuItem MnuÖffnen = new JMenuItem();
  JMenuItem jMenuItem2 = new JMenuItem();
  JList lRawfiles = new JList();
  JLabel RawfilesLabel = new JLabel();
  JLabel OutputLabel = new JLabel();
  GridLayout gridLayout1 = new GridLayout();
    // End of variables declaration//GEN-END:variables
    
    
    private void jbInit() throws Exception {

    this.setJMenuBar(jMenuBar1);
    this.setTitle("jHDF-Tool");
    this.addWindowListener(new java.awt.event.WindowAdapter()
      {
        public void windowClosed(WindowEvent e)
        {
          this_windowClosed(e);
        }
      });
    jScrollPane1.setMinimumSize(new Dimension(100, 100));
    jScrollPane1.setAlignmentX((float)2.0);
    jScrollPane1.setAlignmentY((float)2.0);
    jScrollPane1.setPreferredSize(new Dimension(0, 0));
    jScrollPane1.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_ALWAYS);
    jScrollPane1.setViewportBorder(BorderFactory.createBevelBorder(BevelBorder.RAISED));
    jScrollPane1.getViewport().setLayout(gridLayout1);
    jPanel1.setLayout(gridBagLayout1);
    jPanel1.setMinimumSize(new Dimension(640, 480));
    jPanel1.setBorder(BorderFactory.createTitledBorder(""));
    jPanel1.setAutoscrolls(true);
    hdfFileTextField.setMargin(new Insets(0, 0, 0, 0));
    hdfFileTextField.addActionListener(new ActionListener()
      {
        public void actionPerformed(ActionEvent e)
        {
          hdfFileTextField_actionPerformed(e);
        }
      });
    headerLengthLabel.setText("Header Length");
    bytesLabel.setText("Bytes");
    bytesLabel.setBounds(new Rectangle(0, 0, 0, 0));
    labelcrc32.setText("CRC Checksum");
    systemID1Label.setText("System ID 1");
    systemID1Label.setBounds(new Rectangle(0, 0, 0, 0));
    dfSystemid1.setBounds(new Rectangle(0, 0, 8, 20));
    systemID2Label.setText("System ID 2");
    modelTypeLabel.setText("Model Type");
    numberOfBlocksLabel.setText("Number Of Blocks");
    countOfRawFilesLabel.setText("Count Of Raw Files");
    statusLabel.setText("Status");
    sOutput.setAutoscrolls(false);
    sOutput.setRows(20);
    sOutput.setMaximumSize(new Dimension(4, 16));
    hdfFileNameLabel.setText("hdfFileName");
    hdfFileNameLabel.setBounds(new Rectangle(0, 0, 0, 0));
    hdfFileNameLabel.setAlignmentX((float)0.5);
    jMenu1.setText("File");
    MnuÖffnen.setText("Open HDF-File");
    MnuÖffnen.addActionListener(new ActionListener()
      {
        public void actionPerformed(ActionEvent e)
        {
          MnuÖffnen_actionPerformed(e);
        }
      });
    jMenuItem2.setText("Quit");
    jMenuItem2.addActionListener(new ActionListener()
      {
        public void actionPerformed(ActionEvent e)
        {
          jMenuItem2_actionPerformed(e);
        }
      });
    RawfilesLabel.setText("Rawfiles:");
    OutputLabel.setText("Output");
    jPanel1.add(hdfFileTextField, new GridBagConstraints(1, 0, 2, 1, 0.0, 0.0, GridBagConstraints.WEST, GridBagConstraints.BOTH, new Insets(4, 10, 4, 10), 0, 0));
    jPanel1.add(headerLengthLabel, new GridBagConstraints(4, 0, 1, 1, 0.0, 0.0, GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(4, 10, 4, 10), 15, 0));
    jPanel1.add(dfHLenght, new GridBagConstraints(5, 0, 1, 1, 0.0, 0.0, GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(4, 10, 4, 10), 4, 0));
    jPanel1.add(bytesLabel, new GridBagConstraints(6, 0, 1, 1, 0.0, 0.0, GridBagConstraints.CENTER, GridBagConstraints.HORIZONTAL, new Insets(4, 2, 4, 10), 0, 6));
    jPanel1.add(labelcrc32, new GridBagConstraints(4, 2, 1, 1, 0.0, 0.0, GridBagConstraints.CENTER, GridBagConstraints.HORIZONTAL, new Insets(4, 10, 4, 10), 0, 0));
    jPanel1.add(dfcrcChecksum, new GridBagConstraints(5, 2, 1, 1, 0.0, 0.0, GridBagConstraints.CENTER, GridBagConstraints.HORIZONTAL, new Insets(4, 10, 4, 10), 19, 0));
    jPanel1.add(systemID1Label, new GridBagConstraints(0, 1, 1, 1, 0.0, 0.0, GridBagConstraints.CENTER, GridBagConstraints.HORIZONTAL, new Insets(4, 10, 4, 10), 0, 0));
    jPanel1.add(dfSystemid1, new GridBagConstraints(1, 1, 1, 1, 0.0, 0.0, GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(4, 10, 4, 10), 0, 0));
    jPanel1.add(systemID2Label, new GridBagConstraints(0, 2, 1, 1, 0.0, 0.0, GridBagConstraints.CENTER, GridBagConstraints.HORIZONTAL, new Insets(4, 10, 4, 10), 0, 0));
    jPanel1.add(dfSystemID2, new GridBagConstraints(1, 2, 1, 1, 0.0, 0.0, GridBagConstraints.CENTER, GridBagConstraints.HORIZONTAL, new Insets(4, 10, 4, 10), 60, 0));
    jPanel1.add(modelTypeLabel, new GridBagConstraints(4, 1, 1, 1, 0.0, 0.0, GridBagConstraints.CENTER, GridBagConstraints.HORIZONTAL, new Insets(4, 10, 4, 10), 0, 0));
    jPanel1.add(dfModelType, new GridBagConstraints(5, 1, 1, 1, 0.0, 0.0, GridBagConstraints.CENTER, GridBagConstraints.HORIZONTAL, new Insets(4, 10, 4, 10), 0, 0));
    jPanel1.add(numberOfBlocksLabel, new GridBagConstraints(4, 3, 1, 1, 0.0, 0.0, GridBagConstraints.CENTER, GridBagConstraints.HORIZONTAL, new Insets(4, 10, 4, 10), 0, 0));
    jPanel1.add(dfNumBlocks, new GridBagConstraints(5, 3, 1, 1, 0.0, 0.0, GridBagConstraints.WEST, GridBagConstraints.VERTICAL, new Insets(4, 10, 4, 10), 288, 0));
    jPanel1.add(countOfRawFilesLabel, new GridBagConstraints(0, 3, 1, 1, 0.0, 0.0, GridBagConstraints.CENTER, GridBagConstraints.HORIZONTAL, new Insets(4, 10, 4, 10), 0, 0));
    jPanel1.add(dfRawCount, new GridBagConstraints(1, 3, 1, 1, 0.0, 0.0, GridBagConstraints.CENTER, GridBagConstraints.HORIZONTAL, new Insets(4, 10, 4, 10), 0, 0));
    jPanel1.add(statusLabel, new GridBagConstraints(0, 5, 1, 1, 0.0, 0.0, GridBagConstraints.CENTER, GridBagConstraints.HORIZONTAL, new Insets(4, 10, 4, 10), 0, 0));
    jPanel1.add(dfStatus, new GridBagConstraints(1, 5, 5, 1, 0.0, 0.0, GridBagConstraints.CENTER, GridBagConstraints.HORIZONTAL, new Insets(4, 10, 4, 10), 24, 0));
    jPanel1.add(sOutput, new GridBagConstraints(5, 4, 1, 1, 0.0, 0.0, GridBagConstraints.NORTH, GridBagConstraints.BOTH, new Insets(4, 10, 4, 10), 292, 316));
    jPanel1.add(hdfFileNameLabel, new GridBagConstraints(0, 0, 1, 1, 0.0, 0.0, GridBagConstraints.WEST, GridBagConstraints.VERTICAL, new Insets(4, 10, 4, 10), 0, 0));
    jPanel1.add(lRawfiles, new GridBagConstraints(1, 4, 1, 1, 0.0, 0.0, GridBagConstraints.NORTH, GridBagConstraints.NONE, new Insets(4, 10, 4, 10), 100, 330));
    jPanel1.add(RawfilesLabel, new GridBagConstraints(0, 4, 1, 1, 0.0, 0.0, GridBagConstraints.NORTHWEST, GridBagConstraints.NONE, new Insets(4, 10, 4, 10), 0, 0));
    jPanel1.add(OutputLabel, new GridBagConstraints(4, 4, 1, 1, 0.0, 0.0, GridBagConstraints.NORTHWEST, GridBagConstraints.NONE, new Insets(4, 10, 4, 10), 0, 0));
    jMenu1.add(MnuÖffnen);
    jMenu1.add(jMenuItem2);
    jMenuBar1.add(jMenu1);
    this.getContentPane().add(jScrollPane1, BorderLayout.WEST);
    this.getContentPane().add(jPanel1, BorderLayout.CENTER);
    this.setSize(1024,800);
    }

  void hdfFileTextField_actionPerformed(ActionEvent e)
  {

  }

  void MnuÖffnen_actionPerformed(ActionEvent e)
  {
   int isFile = 0;
        isFile=setFileName();
        if (isFile==1) {
            hdfFileTextField.setText(hdfFileName);
            computeHdfInfo();
            printReport();
            String sTemp="";
            sTemp = hdfFile.toString();
            //sOutput.setText(sTemp);
            filltextfields();
            }
  }

  void jMenuItem2_actionPerformed(ActionEvent e)
  {
  System.exit(0);
  }

  void this_windowClosed(WindowEvent e)
  {
  System.exit(0);
  }

  public void listRawfiles()
  {
     String sData[]=new String[100];
     HdfDataBlock hdblock = new HdfDataBlock();
     int BinType=-1;
     int memaddress=-1;
     int oldBinTyp=-1;
     int oldmemAddress=-1;
     int zähler=0;
     int Anzahl=hdfFile.getHdfDataBlockCount();
     String hexMemAdress="";
     for (int i = 0; i < Anzahl; i++) 
            {
              hdblock = hdfFile.getHdfDataBlock(i);
              BinType=hdblock.getBlockType();
              memaddress=hdblock.getBlockMemoryAddress();
              hexMemAdress=Integer.toHexString(memaddress);
              if (oldBinTyp!=BinType) {
                  {
                  if (BinType==0) {
                      sData[zähler] = "jHDF-"+Integer.toString(BinType)+"-"+Integer.toHexString(memaddress)+"--> Loader";
                  }
                  if (BinType==1) {
                      sData[zähler] = "jHDF-"+Integer.toString(BinType)+"-"+Integer.toHexString(memaddress)+"--> Firmware";
                  }
                  if (BinType==2) {
                  sData[zähler] = "jHDF-"+Integer.toString(BinType)+"-"+Integer.toHexString(memaddress)+"--> Settings";
                  }
                  if (BinType==3) 
                  {
                      if (hexMemAdress.toString()=="6000") 
                      {
                          sData[zähler] = "jHDF-"+Integer.toString(BinType)+"-"+Integer.toHexString(memaddress)+"--> OTA";
                      }
                      if (hexMemAdress.copyValueOf()=="10000") 
                      {
                          sData[zähler] = "jHDF-"+Integer.toString(BinType)+"-"+Integer.toHexString(memaddress)+"--> Unicode";
                      }
                      if (hexMemAdress!="10000" && hexMemAdress!="6000")
                      {
                          sData[zähler] = "jHDF-"+Integer.toString(BinType)+"-"+Integer.toHexString(memaddress)+"--> Userdefiend";
                      }
                  }
                  if (BinType==4)
                      {
                        sData[zähler] = "jHDF-"+Integer.toString(BinType)+"-"+Integer.toHexString(memaddress)+"--> SystemID";
                      }
                  zähler++;
                  }
              }
              oldBinTyp=BinType;

            }
  lRawfiles.setListData(sData);
  dfRawCount.setText(Integer.toString(zähler));
  }
}
