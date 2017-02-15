#include <iostream>
using namespace std;

int main()
{
	int cash;
	double bal;
	double tot;
	cin >> cash;
	cin >> bal;
	if(cash%5 == 0)
	{
		if((cash > 0 && cash <= 2000) && (bal >= 0 && bal <= 2000))
		{
			tot = bal - cash;
			tot = tot - .5;
			cout << tot << endl;
		}
	}
	else
	{
		cout << bal << endl;
	}
	return 0;
}