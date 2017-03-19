import java.util.*;

public class CryptographyValidator 
{
	public static void main(String[] args) throws Exception
	{
		Scanner scan = new Scanner(System.in);
		
		String ciphertext = scan.next();
		String secretWord = scan.next();
		
		if (scan.hasNext())
		{
			throw new Exception("Too many strings");
		}
		
		String allChars = ciphertext.concat(secretWord);
		
		for (int i = 0; i < allChars.length(); i++)
		{
			if (!Character.isUpperCase(allChars.charAt(i)))
			{
				throw new Exception("Lowercase letter found: " + allChars.charAt(i));
			}
		}
System.exit(42);
	}
}
