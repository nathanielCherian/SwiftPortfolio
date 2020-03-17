//
//  translate.c
//  swiftApp
//
//  Created by Nathan on 3/14/20.
//  Copyright © 2020 Cherian, Nathaniel. All rights reserved.
//

#include "translate.h"

#include <stdio.h>
#include <string.h>


char* pigLatin (char word[] );
char* shrthnd (char word[] );
char charArray[];
char piglatin[80];
void clearBuffer(char word[]);
void clearPigBuffer(void);



char returnedShort[1000];

char *shorty(char* input) {

    memset(returnedShort,'\0', 1000);
    //char *input[10000];
   // char *outputpig[10000];
      //char input[] = "I like to read books";
    long string_size = strlen(input);
      char splitChar[] = " ";
    char *pointy = strtok(input, splitChar);
   
      while(pointy != NULL) {
        //printf("'%s'\n", pointy);

         // strcpy(tokendWord, pointy);
          //printf("%s ", shrthnd(pointy));
          strcat(returnedShort, shrthnd(pointy));
          strcat(returnedShort, " ");

          clearBuffer(pointy);
          //clearPigBuffer();
        pointy = strtok(NULL, splitChar);
      }
    

    
    printf("\n\n\n\n\n\n");
    
    
      for (int i = 0; i < string_size; i++) {
       // printf("%d ", bruh[i]);
      }
    

      return returnedShort;
}

char returnedPig[1000];
char *pigLatti(char* input1) {

    memset(returnedPig, '\0', 1000);
    //char *input[10000];
   // char *outputpig[10000];
      //char input[] = "I like to read books";
    long string_size = strlen(input1);
      char splitChar[] = " ";
    char *pointy1 = strtok(input1, splitChar);
   
      while(pointy1 != NULL) {
        //printf("'%s'\n", pointy);

         // strcpy(tokendWord, pointy);
          //printf("%s ", shrthnd(pointy));
          strcat(returnedPig, pigLatin(pointy1));
          strcat(returnedPig, " ");

          //clearBuffer(pointy);
          clearPigBuffer();
        pointy1 = strtok(NULL, splitChar);
      }
    

    
    printf("\n\n\n\n\n\n");
    
    
      for (int i = 0; i < string_size; i++) {
       // printf("%d ", bruh[i]);
      }
      return returnedPig;
}

    
    
char* shrthnd(char word[]){

    
    char charArray[strlen(word) + 1];
    strcpy(charArray, word);
    for(int i = 0; i < strlen(word); i++){
        charArray[i] = word[i];
    }

    for(int i  = 0; i < strlen(word); i++){

        switch (charArray[i])
        {
            case 'a':
            case 'e':
            case 'i':
            case 'o':
            case 'u':
            case 'A':
            case 'E':
            case 'I':
            case 'O':
            case 'U':

                for(int y = i; y < strlen(word); y++) {
                    charArray[y] = charArray[y + 1];
                }
                i--;
            default: ;
        }
    }
    
    return charArray;
}
    
    


char* pigLatin (char word[] ){
   
    int buffer = 0, place = 0, start= 0;

   
    for (int i = 0; word[i] != '\0'; i++, buffer++)
    {
        char temp = word[i];

        for (; word[i] != ' ' && word[i] != '\0'; i++) {
            buffer++;
        }

        for (; start < buffer - 1 ; start++ , place++) {
            piglatin[place] = word[start +1];
        }

        piglatin[place] = temp;
        piglatin[place+1] = 'a';
        piglatin[place+2] = 'y';
        
        place += 4;
        start = buffer + 1;
    }
    piglatin[place] = '\0';
    

    return piglatin;
}


void clearBuffer(char word[]){
 for(int i=0; i<strlen(word); i++){
   charArray[i]= '\0';
  }
 }

void clearPigBuffer(){
for(int i=0; i<80; i++){
  piglatin[i]= '\0';
 }
}



