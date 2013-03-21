//
//  main.c
//  Coolness
//
//  Created by Long Vinh Nguyen on 10/19/12.
//  Copyright (c) 2012 Long Vinh Nguyen. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int i;
    for (i = 0; i< 12; i++) {
        if (i % 3 == 0) {
            continue;
        }
        printf("Checking i = %d\n",i);
        if (i + 90 == i*i) {
            break;
        }
    }
    printf("The answer is %d\n",i);
    
    int y =0;
    do {
        printf("Vinh Long is COOL\n");
        y++;
    } while (y < 13);
    
    printf("--------------------------------------------------\n");
    printf("CHALLENGE STARTED\n");
    
    int z;
    for (z = 99; z >= 0; z--) {
        if (z % 3 == 0) {
            printf("%d\n",z);
            if (z % 5 == 0) printf("Found one!\n");
        }
    }
    
    printf("--------------------------------------------------\n");
    printf("CHALLENGE END\n");

        
    return 0;
}

