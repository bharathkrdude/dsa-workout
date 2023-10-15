import 'package:dsa_workout/LinkedList/linked_list.dart';
import 'package:dsa_workout/Recursion/recursion.dart';

  void main() {
 LinkedList linkedList = LinkedList();
 Recursion recursion = Recursion();
 linkedList.insert(10);
 linkedList.insertFirst(20);
 linkedList.insertFirst(30);
 linkedList.display();
 int result = recursion.addNumbers(4);
 print("$result");
}