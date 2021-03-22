#include <stdio.h>
#include <unistd.h>
#include <pthread.h>
#include <stdlib.h>

pthread_t thread1, thread2, thmain; /* threads declaration*/
pthread_attr_t attr; /* threads atribute's declaration  */

/* definition functions func1 and func2 */
void *func1 (){
  pthread_t tid = pthread_self(); /* thread identifier*/
  printf("I am thread 1 and I am going to execute func1 \n");
  sleep(2);
  printf("I am thread 1 and I have finished executing function 1\n");
  pthread_exit(NULL); /* Causes the termination of the thread*/
}

void *func2 (){
  pthread_t tid = pthread_self(); /* thread identifier*/
  printf("I am thread 1 and I am going to execute func2 \n");
  sleep(5);
  printf("I am thread 2 and I have finished executing function 2\n");
  pthread_exit(NULL); /* Causes the termination of the thread*/
}

/*main function */
int main(int argc, char* argv[]) {

  thmain = pthread_self();
  /*The main function itself is a thread*/

  /*initialize the parameters of the default threads*/
  pthread_attr_init (&attr);
  printf("I am the main function and I am going to launch the two threads \n");
  pthread_create (&thread1, &attr, func1, NULL);
  pthread_create (&thread2, &attr, func2, NULL);
  printf("I am main: I have launched the two threads and I finish\n");
  exit (0);
}