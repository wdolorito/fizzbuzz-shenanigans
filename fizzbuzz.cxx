#include <iostream>

int main() {
  int limit = 1000;
  for(int count = 0; count <= limit; count++) {
    int fizz = count % 3;
    int buzz = count % 5;
    std::string msg = std::to_string(count);
    if(fizz == 0) msg += " Fizz";
    if(buzz == 0) msg += " Buzz";
    std::cout << msg << std::endl;
  }
  return 0;
}
