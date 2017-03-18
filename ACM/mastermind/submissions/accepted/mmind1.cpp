#include <iostream>
using namespace std;

const int MAX = 100;

char code[MAX], guess[MAX];

int sameColPos(int len)
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

int sameCol(int len)
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

int main()
{
	int n;

	cin >> n;
		for(int i=0; i<n; i++)
			cin >> code[i];
		for(int i=0; i<n; i++)
			cin >> guess[i];
		int r = sameColPos(n);
		int s = sameCol(n);
		cout << r << ' ' << s << endl;
return 0;
}
