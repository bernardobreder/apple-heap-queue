# Introdução

O componente HeapQueue tem o objetivo de ser uma fila de prioridade aonde os elementos mais baixos tem mais prioridade de sair da lista do que os elementos mais altos. Essa fila possui a característica deter a complexidade logn de inserir e remover.

# Exemplo

O exemplo abaixo mostra o uso da fila

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


