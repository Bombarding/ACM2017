import java.util.*;

public class Check
{
	public static final int MAXD = 50;
	public static boolean [] disks = new boolean[MAXD+1];

	public static void printError(int line, String msg)
	{
		System.out.println("ERROR Line " + line + ": " + msg);
		System.exit(-1);
	}

	public static void main(String [] args)
	{
		Scanner in = new Scanner(System.in);
		int n, nLines = 0, maxVal = -1;
		String line;

		while (in.hasNext()) {
			nLines++;
			n = in.nextInt();
			line = in.nextLine();
			StringTokenizer st = new StringTokenizer(line);
			if (st.countTokens() != n)
				printError(nLines, "number of disks != number specified");
			for(int i=0; i<n; i++) {
				int val = Integer.parseInt(st.nextToken());
				if (val < 1 || val > MAXD)
					printError(nLines, "invalid disk number " + val);
				if (disks[val])
					printError(nLines, "disk number repeated " + val);
				disks[val] = true;
				if (val > maxVal)
					maxVal = val;
			}
		}
		if (nLines != 3)
			printError(nLines, "incorrect number of lines");
		for(int i=1; i<=maxVal; i++) {
			if (!disks[i])
				printError(nLines, "missing disk " + i);
		}
System.exit(42);
	}
}

