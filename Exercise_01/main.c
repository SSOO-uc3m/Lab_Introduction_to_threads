#include <stdio.h>
#include <unistd.h>
#include <pthread.h>
#include <stdlib.h>

void * thread_function(void *arg) {
  for (int i=0 ; i < 2 ; i++ ) {
    printf("Thread says hi!\n");
    sleep(1);
  }
  return NULL;
}

int main(int argc, char ** argv) {

  pthread_t mythread;
	printf("Launching new thread . . .\n");  
  if ( pthread_create( &mythread, NULL, thread_function, NULL) ) {
    printf("error creating thread.");
    abort();
  }
  printf("Waiting on join\n");
  if ( pthread_join ( mythread, NULL ) ) {
    printf("error joining thread.\n");
    exit(-1);
  }

  exit(0);
}
