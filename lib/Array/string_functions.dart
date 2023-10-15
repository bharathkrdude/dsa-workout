
  String stringChecking(String str1){
    
    var first;
    var second;
    for (var i = 0; i < str1.length; i++) {
      if (str1[i]=='#') {
        first = split(str1, 0, i-1);
        second = split(str1,i+1 ,str1.length);
      }
      // print(first);
    } return first+second;
  }

  String split(String str,int startIndex,endIndex){
    String st ='';
    for (var j = startIndex; j < endIndex; j++) {
      st += str[j]; 
    }
    return st;
  }
 


void main(List<String> args) {
  String str1 ='aab#cd';
  String str2 = 'aad#cd';
  final result1 = stringChecking(str1);
  final result2 = stringChecking(str2);
  if (result1==result2) {
    print("var1 and two are equal");
    print('$result1 $result2');
  }
}