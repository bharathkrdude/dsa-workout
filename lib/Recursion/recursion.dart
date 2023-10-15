class Recursion{
  int addNumbers(int n){
    if(n == 1){
      return 1;
    }
    return n + addNumbers(n-1);
  }

  int factorial(int n){
    if(n == 1){
      return 1;
    }
    return n * factorial(n-1);
  }

  int fibinocci(int n1,int n2,int n3,int count){
    if (count > 0){
      print(n1);
      n3 = n1 + n2;
      n1 = n2;
      n2 = n3;
    }
    return fibinocci(n1, n2, n3, --count);
  }
}