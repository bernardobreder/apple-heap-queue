# Introduction

The HeapQueue component is intended to be a priority queue where lower elements have a higher priority than leaving the list of higher elements. This queue has a characteristic that determines a logn complexity of insert and remover.

# Example

The example below shows the usage of the queue

```swift
let queue = HeapQueue<Int>({$0 < $1})
queue.add(1)
queue.add(9)
queue.add(2)
queue.add(8)
queue.add(5)
queue.add(4)
queue.add(6)
queue.add(3)
queue.add(7)
1 == queue.remove()
2 == queue.remove()
3 == queue.remove()
4 == queue.remove()
5 == queue.remove()
6 == queue.remove()
7 == queue.remove()
8 == queue.remove()
9 == queue.remove()
```


