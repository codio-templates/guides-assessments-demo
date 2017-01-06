import java.util.Scanner;

public class AddNumbers
{
   public static void main(String[] args)
   {  
   
      Scanner in = new Scanner(System.in);
      System.out.print("First Number: ");
      double num1 = in.nextDouble();

      System.out.print("Second Number: ");
      double num2 = in.nextDouble();

      double total = num1 + num2;
     
     
      System.out.println("Total : " + total);
     
   }
}
