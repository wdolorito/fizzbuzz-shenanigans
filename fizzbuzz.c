#include <stdio.h>
#include <string.h>

int main() {
  int limit = 1000;
  for(int count = 0; count <= limit; count++) {
    int fizz = count % 3;
    int buzz = count % 5;
    char msg[20];
    sprintf(msg, "%d", count);
    if(fizz == 0) strcat(msg, " Fizz");
    if(buzz == 0) strcat(msg, " Buzz");
    printf("%s\n", msg);
  }
  return 0;
}
