#include <stdio.h>
#include <unistd.h>
#include <pthread.h>
#include <stdlib.h>

#define MAX_THREAD 10

typedef struct {
        int id;
} parm;

void *hello(void *arg)
{
        parm *p=(parm *)arg;
        printf("Hello from thread %d\n", p->id);
        return (NULL);
}


int main(int argc, char* argv[]) {
        int n;
        pthread_t *threads;
        pthread_attr_t pthread_custom_attr;
        parm *p;
		
		if(argc != 2){
			printf ("The number of arguments have to be one\n"); 

			exit(-1);
		}
			
        n=atoi(argv[1]);
        if ((n < 1) || (n > MAX_THREAD))
        { 
			printf ("The no of thread should be between 1 and %d.\n",MAX_THREAD); 
			exit(1); 
		}

        threads=(pthread_t *)malloc(n*sizeof(*threads));
        pthread_attr_init(&pthread_custom_attr);
        p=(parm *)malloc(sizeof(parm)*n);
        
       /* Start up thread */
        for (int i=0; i<n; i++)
        {
                p[i].id=i;
                pthread_create(&threads[i], &pthread_custom_attr, hello, (void *)(p+i));
        }
        /* Synchronize the completion of each thread. */
        for (int i=0; i<n; i++)
                pthread_join(threads[i],NULL);
        free(p);
        return 0;
}