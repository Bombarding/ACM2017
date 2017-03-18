import java.util.*;

public class mmind1
{
	public static final int MAX = 100;

	public static char[] code = new char[MAX];
	public static char[] guess = new char[MAX];

	public static int sameColPos(int len)
	{
		int count = 0;
		for(int i=0; i<len; i++) {
			if (code[i] == guess[i]) {
				count++;
				code[i] = 'x';
				guess[i] = 'y';
			}
		}
		return count;
	}

	public static int sameCol(int len)
	{
		int count = 0;
		for(int i=0; i<len; i++) {
			for(int j=0; j<len; j++) {
				if(code[i] == guess[j]) {
					count++;
					code[i] = 'x';
					guess[j] = 'y';
					break;
				}
			}
		}
		return count;
	}

	public static void main(String [] args)
	{
		int n;
		Scanner in = new Scanner(System.in);

		n = in.nextInt();
			String word;
			word = in.next();
			for(int i=0; i<n; i++)
				code[i] = word.charAt(i);
			word = in.next();
			for(int i=0; i<n; i++)
				guess[i] = word.charAt(i);
			int r = sameColPos(n);
			int s = sameCol(n);
			System.out.println("" + r + ' ' + s);
	}
}
