#include <iostream>

using namespace std;

int main(void) {
  int n;
  string s1,s2;

  cin >> n >> s1 >> s2;
  if (!cin)
    return 1;

  if (s1.length() != n)
    return 2;
  if (s2.length() != n)
    return 3;

  // we win!
  return 42;
}

