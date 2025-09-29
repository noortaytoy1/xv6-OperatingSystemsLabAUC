//A Simple C program


#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"

  
// function take file name and text from user
// and put them inside the mentioned file

void safe(char *textFile, char *Text)
{

    int *pfile = open(textFile, O_CREATE | O_WRONLY);

    if(fd < 0 || write(fd, Text, strlen(Text)) < 0)
    {
        printf(2, "Error --> cannot create, or cannot write, can not open the file %s\n", textFile);
        return;
    }

    fprintf(pfile, "%s", Text);


    fclose(pfile);

}


  
int main(int argc, char *argv[])
{
    safe(argv[1], argv[2]);


  exit();
}

