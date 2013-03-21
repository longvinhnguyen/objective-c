//
//  main.c
//  yostring
//
//  Created by Long Vinh Nguyen on 10/31/12.
//  Copyright (c) 2012 com.cscv. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int spaceCount (const char *str)
{
    int count = 0;
    while (*str != '\0') {
        if (*str == ' ') count++;
        str++;
    }
    return count;
}

int main(int argc, const char * argv[])
{

    char x = '!';
    
    while (x<='~') {
        printf("%x is %c\n",x,x);
        x++;
    }
    
    const char *c = "A backslash afeter two newlines and a tab:\n\n\t\\";
  
    
   
    
    printf("%s has %zu character\n",c,strlen(c));
    
    printf("Third letter is %c\n",c[2]);

    

    
    float *favorite = malloc(3*sizeof(float));
    
    
    favorite[0]=3.14158;
    favorite[1]=2.71828;
    favorite[2]=1.14121;
    
    for (int i = 0; i < 3; i++) {
        printf("%.4f is favorite %d\n",favorite[i],i);
    }
    
    free(favorite);
    favorite = NULL;
    
    const char *sentence =  "He was not in the cab at the time.";
    printf("\"%s\" has %d spaces\n",sentence,spaceCount(sentence));
 
    
    
}

