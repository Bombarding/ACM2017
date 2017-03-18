#include <iostream>
#include <string>

using namespace std;

int main()
{
    int n;
    cin >> n;
    string code;
    string guess;
    cin >> code;
    cin >> guess;
    int num_black = 0;
    for(int i = 0; i < code.size(); i++)
    {
      if(code[i] == guess[i])
      {
		num_black++;
		code[i] = '-';
		guess[i] = '*';
      }
    }
    int num_white = 0;
    for(int i = 0; i < code.size(); i++)
      for(int j = 0; j < code.size(); j++)
      {
		if(code[i] == guess[j])
		{
	 		num_white++;
	  		code[i] = '-';
	  		guess[j] = '*';
		}
      }
	cout << num_black << " " << num_white << endl;
  return 0;
}

    
