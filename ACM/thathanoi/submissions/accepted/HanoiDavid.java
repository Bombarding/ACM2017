// David Poeschl

import java.util.*;

public class HanoiDavid 
{
	public static void main(String[] args)
	{
		Scanner scan = new Scanner(System.in);
		List<Integer> peg1 = ReadPeg(scan);
		List<Integer> peg2 = ReadPeg(scan);
		List<Integer> peg3 = ReadPeg(scan);
		long result = CalculateStepsRemaining(peg1, peg2, peg3);
		System.out.println(result == -1 ? "No" : result);
		scan.close();
	}

	private static List<Integer> ReadPeg(Scanner scan) 
	{
		List<Integer> peg = new ArrayList<>();
		int discCount = scan.nextInt();
		for (int i = 0; i < discCount; i++)
			peg.add(scan.nextInt());
		
		return peg;
	}

	private static long CalculateStepsRemaining(List<Integer> peg1, List<Integer> peg2, List<Integer> peg3) 
	{
		if (!VerifyDecreasing(peg1) || !VerifyDecreasing(peg2) || !VerifyDecreasing(peg3))
			return -1;
		
		boolean firstHalfOfCurrentDisc = true;
		long positionInSequence = 0;
		int largest = peg1.size() + peg2.size() + peg3.size();
		long totalStepNumber = (long) Math.pow(2, largest) - 1;
		while(true)
		{
			if (peg2.size() > 0 && peg2.get(0) == largest)
				return -1;
			
			int peg1_0 = peg1.size() > 0 ? peg1.get(0) : 0;
			int peg3_0 = peg3.size() > 0 ? peg3.get(0) : 0;
			
			if (peg3_0 > peg1_0)
			{
				List<Integer> temp = peg1;
				peg1 = peg3;
				peg3 = temp;
				
				firstHalfOfCurrentDisc = !firstHalfOfCurrentDisc;
			}
			
			int nextLargest = CalculateNextLargestAndClearContiguous(peg1);
			if (!firstHalfOfCurrentDisc)
				for (int i = largest; i > nextLargest; i--)
					positionInSequence += (long) Math.pow(2, i - 1);
			
			if (nextLargest == 0)
				return totalStepNumber - positionInSequence;
			
			if (nextLargest % 2 == largest % 2)
			{
				if (nextLargest != (peg3.size() > 0 ? peg3.get(0) : 0))
					return -1;
			}
			else
			{
				if (nextLargest != (peg2.size() > 0 ? peg2.get(0) : 0))
					return -1;
				
				List<Integer> temp = peg2;
				peg2 = peg3;
				peg3 = temp;
			}
			
			largest = nextLargest;
		}
	}

	private static boolean VerifyDecreasing(List<Integer> peg) 
	{
		for (int i = 1; i < peg.size(); i++)
			if (peg.get(i) > peg.get(i - 1))
				return false;
		
		return true;
	}
	
	private static int CalculateNextLargestAndClearContiguous(List<Integer> peg) 
	{
		int largestConsecutive = peg.get(0);
		for (int i = 1; i < peg.size(); i++)
			if (peg.get(i) == largestConsecutive - 1)
				largestConsecutive--;
			else
				break;
		
		int nextLargest = largestConsecutive - 1;
		while (peg.size() > 0 && peg.get(0) > nextLargest)
			peg.remove(0);
		
		return nextLargest;
	}
}
