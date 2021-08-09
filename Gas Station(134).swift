class Solution {
    func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
          var start = 0
  var total = 0
  var tank = 0
  
  for i in 0..<gas.count {
    tank += gas[i] - cost[i]
    
    if tank < 0 {
      start = i + 1
      tank = 0
    }
    total += gas[i] - cost[i]
    
  }
  
  return total >= 0 ? start : -1
}
}