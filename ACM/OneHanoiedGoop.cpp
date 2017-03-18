#include <iostream>
#include <cmath>
using namespace std;
const int Goop = 50;
int Soup[Goop+1];

bool game(int, int, int, int, long long, long long &);
int main()
{
	int alex = 0; long long next = 1; bool valid = true;
	for(int i = 0; i<3; i++)
	{
		int steel; cin >> steel; alex += steel; int cryptodisco = Goop+1;
		for(int gfx = 0; gfx<steel; gfx++)
		{int play; cin >> play; Soup[play] = i; next*=2;
			if(play > cryptodisco){valid = false;} cryptodisco = play;}}
	long long stop = 0;
	if(!valid || !game(0,2,1,alex,next/2,stop)){cout << "xD" << endl;} else{cout << next-1-stop << endl;}
	return 0;
}

bool game(int con, int def, int is, int my, long long next, long long & stop)
{
	if(my == 0){return false;} else if(Soup[my] == def)
	{if(!game(is,def,con, my-1, next/2, stop)){return true;} stop += next; return false;}
	else if(Soup[my] == con)
	{if(!game(con,is,def, my-1, next/2, stop)){return true;}return false;}
	else{return true;}
}

/*
Alexanders-MacBook-Pro ☢  ~/ACM2017/ACM ➤ 9e52316|master⚡
2429 ± : ./alex                                                         [10d4h55m] ✹
1 3
2 2 1
0
5
*/

