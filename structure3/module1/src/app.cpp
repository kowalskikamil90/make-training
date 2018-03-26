#include <cstdio>
#include <helper.h>
#include <shell_cmd_caller.h>
#include <custom_printer.h>

using namespace std;

int main (int argc, char * argv[])
{
  printf("This is a testing project\n");
  call_shell_cmd("ls -la ./../../../");
  printer();
  printf("--------------------------\n");
  custom_printer_f();
}
