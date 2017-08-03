#include <stdlib.h>
#include "shell_cmd_caller.h"

void call_shell_cmd(const char * cmd)
{
  system(cmd);
}
