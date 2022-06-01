import UIKit

/*
 Rotate array to right N times.
 https://app.codility.com/programmers/lessons/2-arrays/cyclic_rotation/
 
 For example, given
     A = [3, 8, 9, 7, 6]
     K = 3
 the function should return [9, 7, 6, 3, 8]. Three rotations were made:
     [3, 8, 9, 7, 6] -> [6, 3, 8, 9, 7]
     [6, 3, 8, 9, 7] -> [7, 6, 3, 8, 9]
     [7, 6, 3, 8, 9] -> [9, 7, 6, 3, 8]
 */

func solution(A: [Int], K: Int) -> [Int] {
    guard !A.isEmpty else { return [] }
    guard K > 0 else { return A }
    
    var result = A
    var holder = 0
    for _ in 1...K { // O(n)
        holder = result.popLast()!
        result.insert(holder, at: 0)
    }
    return result
}


solution(A: [], K: 0)
solution(A: [], K: 1)
solution(A: [-4], K: 0)
solution(A: [-4], K: 1)
solution(A: [1, 2, 3], K: 4)

solution(A: [1, 2, 3, 4, 5], K: 1)
solution(A: [1, 2, 3, 4, 5], K: 2)
solution(A: [1, 2, 3, 4, 5], K: 3)

solution(A: [3, 8, 9, 7, 6], K: 3) // [9, 7, 6, 3, 8]
