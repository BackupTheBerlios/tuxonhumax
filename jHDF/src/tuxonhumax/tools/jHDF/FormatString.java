package tuxonhumax.tools.jHDF;
/**
 * @author lastninja
 *
 */
public class FormatString
{
    public static String toHex(int value, int length)
    {
        String hexValue = Integer.toHexString(value).toUpperCase();
        if(hexValue.length()<length)
        {
            while(hexValue.length()<length)
            {
                hexValue = "0" + hexValue;
            }
        }
        return hexValue;
    }
    public static String toOctal(int value, int length)
    {
        String hexValue = Integer.toOctalString(value);
        if(hexValue.length()<length)
        {
            while(hexValue.length()<length)
            {
                hexValue = "0" + hexValue;
            }
        }
        return hexValue;
    }
}
