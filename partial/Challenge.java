// partial/Challenge.java

import java.util.concurrent.ThreadLocalRandom;

public class Challenge {

    public static void main(String[] args) {
      
        // Write your code below.
        int randomNum = ThreadLocalRandom.current().nextInt(0, 101);

        System.out.println(Integer.toString( randomNum ));
      
    }
}
