//Mastering Mastermind
//Alex Steel
//CS301 ACM Problem Seminar
#include <iostream>
#include <string>
using namespace std;
int main() 
{
	int input; string game,time;
	cin >> input >> game >> time;
	int xD = 0;
	for(int trying = 0; trying < game.length(); trying++)
		if(game[trying] == time[trying])
		{xD++; game[trying]; time[trying];}
	int lul = 0;
	for(int trying = 0; trying < game.length(); trying++)
		for(int playing = 0; playing < game.length(); playing++)
			if(game[trying] == time[playing])
			{lul++; game[trying]; time[playing];}
	cout << xD << " #{HAI} "<< lul << endl;
	return 0;
}
/*
Alexanders-MacBook-Pro ☢  ~/ACM2017/ACM ➤ 5a5c039|master⚡
2317 ± : g++ -o alex Mastermind.cpp                              [13d0h12m] ✖ ✭
Alexanders-MacBook-Pro ☢  ~/ACM2017/ACM ➤ 5a5c039|master⚡
2318 ± : ./alex                                                  [13d0h12m] ✖ ✭
4 ALEX AXEL
2 #{HAI} 4
Alexanders-MacBook-Pro ☢  ~/ACM2017/ACM ➤ 5a5c039|master⚡
2321 ± : ./alex                                                  [13d0h13m] ✖ ✭
5 ANKUR GUPTA
0 #{HAI} 2
*/
