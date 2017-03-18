import java.util.*;

public class HanoiVerifier 
{
	public static void main(String[] args) throws Exception
	{
		Scanner scan = new Scanner(System.in);
		
		int[] post1;
		int[] post2;
		int[] post3;
		
		int numNums = scan.nextInt();
		post1 = new int[numNums];
		for (int i = 0; i < numNums; i++)
		{
			post1[i] = scan.nextInt();
		}

		numNums = scan.nextInt();
		post2 = new int[numNums];
		for (int i = 0; i < numNums; i++)
		{
			post2[i] = scan.nextInt();
		}
		
		numNums = scan.nextInt();
		post3 = new int[numNums];
		for (int i = 0; i < numNums; i++)
		{
			post3[i] = scan.nextInt();
		}
		
		if (scan.hasNext())
		{
			throw new Exception("Too much data");
		}
		
		int numberOfDisks = post1.length + post2.length + post3.length;
		
		if (numberOfDisks == 0 || numberOfDisks > 50)
		{
			throw new Exception("Invalid number of disks: " + numberOfDisks);
		}
		
		boolean[] seen = new boolean[numberOfDisks + 1];
		
		for (int i = 0; i < post1.length; i++)
			seen[post1[i]] = true;
		
		for (int i = 0; i < post2.length; i++)
			seen[post2[i]] = true;
		
		for (int i = 0; i < post3.length; i++)
			seen[post3[i]] = true;
		
		for (int i = 1; i <= numberOfDisks; i++)
		{
			if (!seen[i])
			{
				throw new Exception("Value not seen: " + i);
			}
		}
System.exit(42);
	}
}
