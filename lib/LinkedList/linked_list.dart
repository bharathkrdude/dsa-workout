import 'dart:math';
class Node{
int data;
Node? next;
Node(this.data);
}
class LinkedList{
  Node? head;
  Node? tail;
  int? size;
  LinkedList(){ 
    head = null;
    tail = null;
    size = 0;
  }
  insert(data){
  Node newNode= Node(data);
  if (head==null) {
    head=newNode;
    tail=newNode;
    size = size!+1;
    return;
  } 
  tail?.next=newNode;
  tail=newNode;
  size = size!+1;
  }
  
 display(){
  if(head==null){
    return;
  }
  Node? current = head;
  String list ="";
  while(current!=null){
    list += ("${current.data} => ");
    current=current.next;
  }
  print(list);
}
delete(data){
  if(head == null)return;
if(head!.data==data){
head=head!.next;
return;
}
Node? current = head;
while(current!=null){
  if(current.next == tail){
    current.next = null;
    tail = current;
    return;
  }
  if(current.next?.data==data){
    current.next = current.next?.next;
    return;

  }
  current = current.next;
}
}
int length() {
  int count = 0;
  Node? current = head;
  while (current != null) {
    count++;
    current = current.next;
  }
  return count;
}
insertFirst(int data){
 Node newNode = Node(data);
 newNode.next = head;
 head = newNode;
}
insertLast(int data){
  Node newNode =Node(data);
  if(head==null){
    head = newNode;
    return;
  }
 Node? current = head;
 while(current?.next!=null){
  current = current?.next;
 }
 current?.next = newNode;

}
insertAtIndex(int data,pos){
  if(pos<0||pos>size){
    return;
  }
  else if(pos==0){
    insertFirst(data);
  }
  Node newNode = Node(data);
  Node? prev = head;
  for(int i=0;i<pos-1;i++){
    prev = prev?.next;
  }
  newNode.next = prev?.next;
  prev?.next = newNode;
  // size = size!+1;
  

}

   total() {
    int sum = 0;
    Node? current = head;
    while (current != null) {
      sum += current.data;
      current = current.next;
    }
    return sum;
  }
 binaryToDecimal(){
  Node? current = head;
  dynamic decimal = 0;
  int pos = size!-1;
   while(current!=null){
    decimal += current.data*pow(2, pos);
    pos--;
    current = current.next;
   }
   print(decimal);
 }
 
 

}
 
 
 

 