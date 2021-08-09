public final class Queue<E> : Sequence {
    /// beginning of queue
    private var first: Node<E>? = nil
    /// end of queue
    private var last: Node<E>? = nil
    /// size of the queue
    private(set) var count: Int = 0
    
    /// helper linked list node class
    fileprivate class Node<E> {
        fileprivate var item: E
        fileprivate var next: Node<E>?
        fileprivate init(item: E, next: Node<E>? = nil) {
            self.item = item
            self.next = next
        }
    }
    
    /// Initializes an empty queue.
    public init() {}
    
    /// Returns true if this queue is empty.
    public func isEmpty() -> Bool {
        return first == nil
    }
    
    /// Returns the item least recently added to this queue.
    public func peek() -> E? {
        return first?.item
    }
    
    /// Adds the item to this queue
    /// - Parameter item: the item to add
    public func enqueue(item: E) {
        let oldLast = last
        last = Node<E>(item: item)
        if isEmpty() { first = last }
        else { oldLast?.next = last }
        count += 1
    }
    
    /// Removes and returns the item on this queue that was least recently added.
    public func dequeue() -> E? {
        if let item = first?.item {
            first = first?.next
            count -= 1
            // to avoid loitering
            if isEmpty() { last = nil }
            return item
        }
        return nil
    }
    
    /// QueueIterator that iterates over the items in FIFO order.
    public struct QueueIterator<E> : IteratorProtocol {
        private var current: Node<E>?
        
        fileprivate init(_ first: Node<E>?) {
            self.current = first
        }
        
        public mutating func next() -> E? {
            if let item = current?.item {
                current = current?.next
                return item
            }
            return nil
        }
        
        public typealias Element = E
    }
    
    /// Returns an iterator that iterates over the items in this Queue in FIFO order.
    public __consuming func makeIterator() -> QueueIterator<E> {
        return QueueIterator<E>(first)
    }
}

extension Queue: CustomStringConvertible {
    public var description: String {
        return self.reduce(into: "") { $0 += "\($1) " }
    }
}

class Solution {
    func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
  //create an array to store the in-degree counts of each vertex
  var indegree = [Int](repeating: 0, count: numCourses)
  var adjList = [[Int]](repeating: [], count: numCourses)
  
///alternative implementation without using adjacency list
//populate the in-degree array
//  for row in prerequisites {
//    indegree[row[0]] += 1
//  }
  
  //populate the adjacency list and in-degree array
  for row in prerequisites {
    let u = row[0]
    let v = row[1]

    adjList[v].append(u)
    indegree[u] += 1
  }
  
  //create a queue and initially enqueue it with all vertex with in-degree count of 0.
  let q = Queue<Int>()
  //only the vertex with 0 in-degree will be enqueued
  for i in 0..<indegree.count where indegree[i] == 0 {
    q.enqueue(item: i)
  }
  //if the queue is empty after the initial processing, that means the graph has at least one cycle
  guard !q.isEmpty() else { return false }
  
  while !q.isEmpty() {
    let u = q.dequeue()!
    for v in adjList[u] {
      indegree[v] -= 1
      if indegree[v] == 0 {
        q.enqueue(item: v)
      }
    }
  }
  
///alternative implementation
//  while !q.isEmpty() {
//    let u = q.dequeue()!
//    for row in prerequisites {
//      for course in row where course == u && indegree[row[0]] > 0 {
//        indegree[row[0]] -= 1
//        indegree[row[0]] == 0 ? q.enqueue(item: row[0]) : nil
//      }
//    }
//  }
  
  //if all elements of the in-degree array are not reduced to 0, then there is a cycle
  return indegree.filter { $0 > 0 }.count == 0
    }
}