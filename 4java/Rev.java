import java.io.*;
import java.util.Scanner;
class Rev{
public static void reverseMethod(int number)
{
if(number<10)
{
System.out.println(number);
return;
}
else
{
System.out.println(number%10);
reverseMethod(number/10);
}
}
public static void main(String args[]){
int num=0;
System.out.println("Enter the number:");
Scanner s=new Scanner(System.in);
num=s.nextInt();
System.out.println("Reverse of the number is:");
reverseMethod(num);
System.out.println();
}
}
