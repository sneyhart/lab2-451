#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char **argv)
{
    int i, bsize, blocks, assoc, htime, mtime;
    char *policy;

    if(argc != 13)fprintf(stderr, "USAGE: %s -s blocksize -n numblocks -a "
	    "associativity -m miss_time -h hit_time -r replacement_policy\n", argv[0]);

    for(i = 1; i < argc; i++){
	//printf("%d %s\n", i, argv[i]);
	if(strcmp(argv[i],"-s") == 0) bsize = atoi(argv[i+1]);
	else if(strcmp(argv[i],"-n") == 0) blocks = atoi(argv[i+1]);
	else if(strcmp(argv[i],"-a") == 0) assoc = atoi(argv[i+1]);
	else if(strcmp(argv[i],"-m") == 0) mtime = atoi(argv[i+1]);
	else if(strcmp(argv[i],"-h") == 0) htime = atoi(argv[i+1]);
	else if(strcmp(argv[i],"-r") == 0) policy = argv[i+1];
    }

    return 0;
}
