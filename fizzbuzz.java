class fizzbuzz {
  public static void main(String[] args) {
    int limit = 1000;
    for(int count = 0; count <= limit; count++) {
      int fizz = count % 3;
      int buzz = count % 5;
      String msg = String.valueOf(count);
      if(fizz == 0) msg += " Fizz";
      if(buzz == 0) msg += " Buzz";
      System.out.println(msg);
    }
  }
}
