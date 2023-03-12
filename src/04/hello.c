#include<fcgi_stdio.h>
#include<fcgiapp.h>
#include<stdlib.h>

int main(void) {
  while (FCGI_Accept() >= 0) {
    FCGI_printf("Content-Type: text/html\r\nStatus: 200 OK\r\n\r\n");
    FCGI_printf("Hello World!!!\n");
  }
  return 0;
}


