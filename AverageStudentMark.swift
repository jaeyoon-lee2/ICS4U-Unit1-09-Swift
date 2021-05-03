/*
This program generates 2D array of 4 x 6 random numbers between 0 to 100,
calculates average of numbers and shows it.
author  Jay Lee
version 1.0
since   2021-05-03
*/

import Foundation

// Constant
let numberOfStudent = 4
let numberOfAssignment = 6

func CalculateAverage(twoDArray: [[Int]]) -> Double {
  // Set initial average and total count
  var average = 0.0
  var totalCount = 0

  // Find average
  for oneDArray in twoDArray {
    for number in oneDArray {
      average += Double(number)
      totalCount += 1
    }
  }
  average /= Double(totalCount)

  // Return average
  return average
}


// Set initial 2d array
var studentsMarks = [[Int]](repeating: [Int](repeating: 0, count: 
                            numberOfAssignment), count: numberOfStudent)

print("Marks: ")
for student in 0..<numberOfStudent {
  for assignment in 0..<numberOfAssignment {
    let randomNumber = Int.random(in: 0...100)
    studentsMarks[student][assignment] = randomNumber
    print(randomNumber, terminator:" ")
  }
  print("")
}

// Process
let average = CalculateAverage(twoDArray: studentsMarks)

// Output
print(String(format: "Average mark of students is %.2f", average))
print("\nDone.")
