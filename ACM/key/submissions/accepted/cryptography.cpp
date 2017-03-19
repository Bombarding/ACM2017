#include <iostream>
#include <string>

using namespace std;

int main(){
  string cipher;
  cin >> cipher;
  string key;
  cin >> key;
  string plain=cipher;
  for(int i = 0; i < cipher.size(); i++)
  {
    char decrypt_letter;
    if(i < key.size()){
      decrypt_letter = key[i];
    }
    else
    {
      decrypt_letter = plain[i-key.size()];
    }
    char letter = cipher[i]-(decrypt_letter-'A');
    if(letter < 'A')
    {
      letter = letter + 26;
    }
    plain[i] = letter;
  }
  
  cout << plain << endl;
  return 0;
}
