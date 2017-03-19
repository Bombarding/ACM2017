import java.util.*;

public class CryptographyTom {

    public static char shift(char a, char b) {
	char c = (char)(a - b + 'A');
	if (c < 'A') c = (char)(c+26);
	return c;
    }
    
    public static void main(String[] args) {
	Scanner input = new Scanner(System.in);
	while(input.hasNextLine()) {
	    String cypher = input.nextLine();
	    String key = input.nextLine();
	    String message = "";
	    int n = cypher.length();
	    int m = key.length();
try {
	    for(int i = 0; i < m; i++) {
		message = message + shift(cypher.charAt(i), key.charAt(i));
	    }
} catch (StringIndexOutOfBoundsException e) {
System.out.println("Key too long?");
}
	    for(int i = m; i < n; i++) {
		message = message + shift(cypher.charAt(i), message.charAt(i-m));
	    }
	    System.out.println(message);
	}
    }
}
