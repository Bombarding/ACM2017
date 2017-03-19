//Psypher
//Alex Steel
//CS301 ACM

#include <iostream>
#include <string>
using namespace std;

string psyduck(string psyclops, string psyclone)
{
	string machamp = "";
	psyclone += psyclops;
	for(int pokemon = 0; pokemon<psyclops.length(); pokemon++)
	{
		machamp += (char)('A' + (psyclops[pokemon]-'A' + psyclone[pokemon] - 'A')%26);
	}
	return machamp;
}
string gengar(string psyclops, string psyclone)
{
	string machamp = "";
	for(int yugioh = 0; yugioh<psyclops.length(); yugioh++)
	{
		char blueeyeswhitedragon = (char)('A' + (psyclops[yugioh] - psyclone[yugioh] + 26)%26);
		machamp += blueeyeswhitedragon;
		psyclone += blueeyeswhitedragon;
	}
	return machamp;
}

int main()
{
		string psyclops, psyclone;
		cin >> psyclops >> psyclone;
		cout << gengar(psyclops,psyclone) << endl;
}

/*
Alexanders-MacBook-Pro ☢  ~/ACM2017/ACM ➤ 6f5fb6b|master⚡
2499 ± : ./alex                                                       [5d6h01m] ✹ ✭
TCCJWTPIIOBPPCEAPLJIZEXGR TRYME
--> Puts Original Text Here
*/

