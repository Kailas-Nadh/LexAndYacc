#include<stdio.h>
#include<string.h>
int nos,noi,nof,delta[10][10],final[10],i;
char ch;
char inputSymb[10];
int checkSymb(char ch)
{
for(int i=0;i<noi;i++)
{
if(ch ==inputSymb[i])
{
return i;
}}
return -1;
}
int checkFinalState(int st)
{
for(int i=0;i<nof;i++)
{
if(ch ==final[i])
{return 1;
}
}
return 0;
}
int main(){
printf("\nEnter no of states: ");
scanf(" %d",&nos);
printf("\nEnter no of final states: ");
scanf(" %d",&nof);
printf("\nEnter no of input symbols: ");
scanf(" %d",&noi);
for(int i=0;i<noi;i++){
printf("Enter input symbol no %d : ",i+1);
scanf(" %c",&inputSymb[i]);
}
for(int i=0;i<nof;i++)
{
printf("Enter final state no %d : ",i+1);
scanf(" %d",&final[i]);
}
printf("\nEnter transitions: ");
for(int i=0;i<nos;i++)
for(int j=0;j<noi;j++)
{
printf("\nd(q%d,%c) : ", i,inputSymb[j]);scanf(" %d",&delta[i][j]);
}
for(int i=0;i<noi;i++)
printf("\t %c",inputSymb[i]);
printf("\n");
for(int i=0;i<nos;i++)
{
printf("\nq%d",i);
for(int j=0;j<noi;j++)
{
printf("\t%d",delta[i][j]);
}
printf("\n");
}
do{
char string[10];
printf("\nEnter a string: ");
scanf("%s",string);
int stateCounter = 0;
int flag = 1;
for(int i=0;i<strlen(string);i++)
{
int symPos = checkSymb(string[i]);
if(symPos==-1)
{
flag = 0;
break;}
stateCounter = delta[stateCounter][symPos];
}
if(flag==1 && checkFinalState(stateCounter)==1)
{
printf("%s is accepted. ",string);
}
else
{
printf("%s is not accpeted. ",string);
}
}while(1);
return 0;
}
