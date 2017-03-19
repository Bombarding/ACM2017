import java.util.*;

public class Check
{

	public static void printError(int line, String msg)
	{
		System.out.println("ERROR Line " + line + ": " + msg);
		System.exit(-1);
	}

	public static boolean ok(String line)
	{
		for(int i=0; i<line.length(); i++) {
			if (!Character.isUpperCase(line.charAt(i)))
				return false;
		}
		return true;
	}

	public static void main(String [] args)
	{
		Scanner in = new Scanner(System.in);
		String line1, line2;

		if (!in.hasNext())
			printError(0, "incorrect number of lines");
		line1 = in.nextLine();
		if (!ok(line1))
			printError(1, "illegal character in line");
		if (!in.hasNext())
			printError(1, "incorrect number of lines");
		line2 = in.nextLine();
		if (!ok(line2))
			printError(2, "illegal character in line");
		if (in.hasNext())
			printError(3, "incorrect number of lines");
System.exit(42);
	}
}

