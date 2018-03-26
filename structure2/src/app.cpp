#include <cstdio>
#include <helper.h>
#include <shell_cmd_caller.h>

using namespace std;

int main (int argc, char * argv[])
{

printf("This is a testing project\n");

call_shell_cmd("ls -la ./../../../");

printer();

}
