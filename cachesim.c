#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

int total_hits = 0;
int total = 0;
char *policy;

//cache block struct used to keep track of
//block addresses and lru blocks.
typedef struct{
    int address, history;
} cblock;

//prints the cache out
void print_cache(cblock *cache, int blocks)
{
    int i; 
    for(i = 0; i < blocks; i++){
	if(i % 10 == 0 && i != 0) printf("\n");
	printf("0x%.5x %.1d, ", cache[i].address, cache[i].history);
    }
    printf("\n");
}

//replaces a block in the set using LRU replacement.
//LRU is determined by the history counter in cblock.
void lru_replace(cblock *cache, int caddress, int address, int assoc)
{
    //printf(" rand %d ", r);
    int i, max = 0, r = 0;
    for(i = 0; i < assoc; i++){
	if (cache[caddress].history > max){
	    max = cache[caddress].history;
	    r = i;
	}
    }
    cache[caddress + r].address = address;
    cache[caddress + r].history = 0;
}

//replaces a block in the set using random replacement.
void rand_replace(cblock *cache, int caddress, int address, int assoc)
{
    int r = rand() % assoc;
    //printf(" rand %d ", r);
    cache[caddress + r].address = address;
    cache[caddress + r].history = 0;
}

//adds an address to the cache using a replacement policy if necessary
void add_address(cblock *cache, int address, int blocks, int bsize, int assoc)
{
	int caddress, it, addhit=0;
	address /= bsize;
	caddress = (address) % (blocks / assoc) * assoc;
	for(it = caddress; it < caddress + assoc; it++)
	{
	    if (cache[it].history >= 0) cache[it].history++;
	    if(cache[it].address == 0 && cache[it].history == -1 && !addhit){
		cache[it].history = 0;
		cache[it].address = (address);
		addhit = 1;
	    }
	    else if(cache[it].address == address && !addhit){
		total_hits++;
		cache[it].history = 0;
		//printf(" hit ");
		addhit = 1;
	    } 	
	}
	if(!addhit && strcmp(policy, "random") == 0) {
	    rand_replace(cache, caddress, (address), assoc);
	}
	else if(!addhit && strcmp(policy, "lru") == 0) {
	    lru_replace(cache, caddress, (address), assoc);
	}
	//printf("\n");
	//print_cache(cache, blocks);
	//printf("0x%.5x %d\n", address, caddress);
}

int main(int argc, char **argv)
{
    int i, bsize, blocks, assoc, htime, mtime, address, caddress;

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
    srand(time(NULL));
    cblock cache[blocks];
    memset(&cache, 0, blocks*sizeof(cblock));
    for (i = 0; i < blocks; i++) cache[i].history = -1;
    
    //reads addresses from stdin
    while(scanf("%x", &address) == 1){
	total++;
	add_address(cache, address, blocks, bsize, assoc);
    }
    
    //printf("\n");
    //print_cache(cache, blocks);
    //printf("\n");
    
    printf("Total Reads: %d\n", total);
    printf("Total Hits: %d\n", total_hits);
    printf("Total Misses: %d\n", total - total_hits);
    printf("Hit Rate: %3.2lf%%\n", 100 * (double) total_hits / total);
    printf("Miss Rate: %3.2lf%%\n", 100 * (double)(total - total_hits) / total);
    printf("AMAT: %lf cycles.\n", htime + (((double)(total - total_hits) / total) * mtime));
    
    return 0;
}
