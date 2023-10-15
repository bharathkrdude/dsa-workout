class Array {
  insertAt(List arr, int pos, int value) {
    int len = arr.length - 1;
    int i;
    arr.add(0);
    for (i = len; i != pos - 1; i--) {
      arr[i + 1] = arr[i];
    }
    arr[pos] = value;
    print(arr);
  }

  insertAfter(List arr, int pos, int value) {
    int len = arr.length - 1;
    int i;
    arr.add(0);
    for (i = len; i != pos; i--) {
      arr[i + 1] = arr[i];
    }
    arr[pos + 1] = value;
    print(arr);
  }

  insertBefore(List arr, int pos, int value) {
    int len = arr.length - 1;
    int i;
    arr.add(0);
    for (i = len; i != pos - 2; i--) {
      arr[i + 1] = arr[i];
    }
    arr[pos - 1] = value;
    print(arr);
  }

  secondLargest(List arr) {
    int l1 = 0, l2 = 0, i;
    int len = arr.length - 1;
    for (i = 0; i <= len; i++) {
      if (arr[i] > l1) {
        l2 = l1;
        l1 = arr[i];
      } else if (arr[i] > l2 && arr[i] != l1) {
        l2 = arr[i];
      }
    }
    print('largest is $l1');
    print('2nd largest is $l2');
  }

  smallestLargest(List arr) {
    int l1 = 0, s1 = arr[0], i;
    int len = arr.length;
    for (i = 0; i < len; i++) {
      if (arr[i] > l1) {
        l1 = arr[i];
      }
      if (arr[i] < s1) {
        s1 = arr[i];
      }
    }
    print('largest is $l1');
    print('2nd largest is $s1');
  }
  //  binarySearch(List arr, int target) {
  //   int start = 0;
  //   int end = arr.length - 1;
  //   while (start <= end) {
      
  //     int mid = ((start + end) ~/ 2);
  //     if (target == arr[mid]) {
  //       return mid;
  //     } else if (target > arr[mid]) {
        
  //       start = mid + 1;
  //     } else if (target < arr[mid]) {
        
  //       end = mid - 1;
  //     }
  //   }
  //   return -1;
  // }

 
}
