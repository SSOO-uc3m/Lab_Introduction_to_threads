#include <stdio.h>
#include <unistd.h>
#include <pthread.h>
#include <stdlib.h>


int myglobal=0;

void * print_dots(void *arg) {

  int j;
  for (int i=0; i<20; i++ ) {
    j=myglobal;
    j=j+1;
    printf(".");
    fflush(stdout);
   sleep(1);
    myglobal=j;
  }
  return NULL;}

int main (int argc, char ** argv) {
	
  pthread_t mythread;
  int i;

  if ( pthread_create( &mythread, NULL, print_dots, NULL) ) {
    printf("error creating thread.");
    abort();
  }

  for ( i=0; i<20; i++) {
    myglobal=myglobal+1;
    printf("o"); fflush(stdout);
    sleep(1);
  }
  if ( pthread_join ( mythread, NULL ) ) {
    printf("error joining thread.");
	exit(-1);
  }
  printf("\nmyglobal equals %d\n",myglobal);
  exit(0);
}



