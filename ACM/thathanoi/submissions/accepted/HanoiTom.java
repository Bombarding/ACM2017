import java.util.*;

public class HanoiTom {

    public static void main(String[] args) {

	Scanner input = new Scanner(System.in);
//	int n = input.nextInt(); 
//	for(int caseNo = 1; caseNo <= n; caseNo++) {
	    boolean valid = true;
	    int[] C = new int[3];
	    int[] A = new int[1001];
	    for(int i = 0; i < 3; i++) {
		C[i] = input.nextInt();
		int curr = 1001;
		for(int j = 0; j < C[i]; j++) {
		    int next = input.nextInt();
		    if (next >= curr) valid = false;
		    A[next] = i;
		    curr = next;
		}
	    }
	    int m = C[0] + C[1] + C[2];
	    int bad = 1;	// verboten peg
	    int adder = 0;	// peg that increases steps taken
	    long steps = 0;	// current count of steps needed
	    for(int i = m; i > 0; i--) {
		if (A[i] == bad) valid = false;
		else { 
		    steps = 2*steps;
		    if (A[i] == adder) steps++;
		    else adder = bad;
		    bad = 3 - A[i] - bad;
		}
	    }
//	    System.out.println("Case "+caseNo+": "+(valid?("Yes "+steps):"No"));
	    System.out.println((valid?(steps):"No"));
//	}
	input.close();
    }

}
