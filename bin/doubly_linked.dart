class Node{
    int data;
    Node? next;
    Node? prev;
    Node(this.data);
}

class Doubly{

  Node? head;
  Node? tail;

  insertNode(int data){
    Node newNode = Node(data);

    if(head == null){
      head = tail = newNode;
    }else{
      tail?.next = newNode;
      newNode.prev = tail;
    }
    tail = newNode;
  }

  preppend(int data){
    Node newNode = Node(data);

    newNode.next = head;
    head?.prev = newNode;
    head = newNode;
  }

  insertAfter(int data,int nextTo){
    Node newNode = Node(data);

    Node? current = head;
    while(current != null && current.data != nextTo){
      current = current.next;
    }
    newNode.next = current?.next;
    current?.next?.prev = newNode;
    current?.next = newNode;
    newNode.prev = current;
  }

  insertBefore(int data,int beforeNext){
    Node newNode = Node(data);

    Node? current = head;
    while(current != null && current.data != beforeNext){
      current = current.next;
    }
    current?.prev?.next = newNode;
    newNode.prev = current?.prev;
    newNode.next = current;
    current?.prev = newNode;

  }

  display(){
    Node? current = head;
    while(current != null){
      print(current.data);
      current = current.next;
    }
  }

  reverse(){
    Node? current = tail;
    while(current != null){
      print(current.data);
      current = current.prev;
    }
  }

  deleteNode(int data){
    Node? current = head;
    while(current != null && current.data != data){
      current = current.next;
    }
    if(current == tail){
      tail = tail?.prev;
      tail?.next = null;
    }
    current?.prev?.next = current.next;
    current?.next?.prev = current.prev;
  }
}