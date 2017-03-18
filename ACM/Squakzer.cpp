
#include <iostream>
using namespace std;
int main()
{
	int z = 1; int a,b,c,d;
	cin >> a >> b >> c >> d;
	int hurrdurr[a][a];
	for(int cereal = 0; cereal < b; cereal++){int x,y; cin >> x >> y; hurrdurr[x][y] = 1; hurrdurr[y][x] = 1;}
	long hodor[d+1][a];
	hodor[0][c] = 1;
	for(int i = 1; i<d+1; i++)
		for(int x = 0; x<a; x++)
			for(int y = 0; y<a; y++){hodor[z][x] += hodor[z-1][y] * hurrdurr[x][y];}
	long total;
	for(int zoop = 0; zoop < a; zoop++){total = hodor[d][zoop];}
	cout << total;	
}	

/*
Alexanders-MacBook-Pro ☢  ~/ACM2017/ACM ➤ 2a37d32|master⚡
2370 ± : ./alex                                                         [5d42m33s] ✹
4 3 3 4
0 1
1 2
2 3
4389703022%   
Alexanders-MacBook-Pro ☢  ~/ACM2017/ACM ➤ 2a37d32|master⚡
2372 ± : ./alex                                                         [5d42m33s] ✹
5 5 0 3
0 1
0 3
1 2
2 3
2 4
4369337710%                                                                     

*/