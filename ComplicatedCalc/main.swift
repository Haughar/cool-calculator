//
//  main.swift
//  ComplicatedCalc
//
//  Created by Alison Rose Haugh on 10/12/15.
//  Copyright © 2015 Alison Haugh. All rights reserved.
//

import Foundation

let add : (Int, Int) -> Int = { (first, second) in return first + second }

let subtract : (Int, Int) -> Int = { (first, second) in return first - second }

let multiply : (Int, Int) -> Int = { (first, second) in return first * second }

let divide : (Int, Int) -> Int = { (first, second) in return first / second }

func calculate(first : Int, second : Int, op : (Int, Int) -> Int) -> Int {
    return op(first, second)
}

func addArray(list : [Int]) -> Int {
    var result = 0;
    for number in list { result = add(result, number); }
    return result;
}

func multiplyArray(list : [Int]) -> Int {
    var result = 0;
    for number in list { result = multiply(result, number); }
    return result;
}

func countArray(list : [Int]) -> Int {
    return list.count;
}

func averageArray(list : [Int]) -> Int {
    return addArray(list) / list.count;
}

func addPoints(first_point : (Int, Int), second_point : (Int, Int)) -> (Int, Int) {
    return (first_point.0 + second_point.0, first_point.1 + second_point.1);
}

func addPoints(first_x : Dictionary<String, Int> = [:], first_y : Dictionary<String, Int> = [:], second_x : Dictionary<String, Int> = [:], second_y : Dictionary<String, Int> = [:]) -> (Int, Int) {
    if let _ = first_x["x"] {
        if let _ = first_y["y"] {
            if let _ = second_x["x"] {
                if let _ = second_y["y"] {
                    return (first_x["x"]! + second_x["x"]!, first_y["y"]! + second_y["y"]!);
                }
            }
        }
    }
    return (-1000000, -1000000);
}

func addPoints(first_x : Dictionary<String, Double> = [:], first_y : Dictionary<String, Double> = [:], second_x : Dictionary<String, Double> = [:], second_y : Dictionary<String, Double> = [:]) -> (Double, Double) {
    if let _ = first_x["x"] {
        if let _ = first_y["y"] {
            if let _ = second_x["x"] {
                if let _ = second_y["y"] {
                    return (first_x["x"]! + second_x["x"]!, first_y["y"]! + second_y["y"]!);
                }
            }
        }
    }
    return (-1000000, -1000000);
}

func subtractPoints(first_point : (Int, Int), second_point : (Int, Int)) -> (Int, Int) {
    return (first_point.0 - second_point.0, first_point.1 - second_point.1);
}

func subtractPoints(first_x : Dictionary<String, Int> = [:], first_y : Dictionary<String, Int> = [:], second_x : Dictionary<String, Int> = [:], second_y : Dictionary<String, Int> = [:]) -> (Int, Int) {
    if let _ = first_x["x"] {
        if let _ = first_y["y"] {
            if let _ = second_x["x"] {
                if let _ = second_y["y"] {
                    return (first_x["x"]! - second_x["x"]!, first_y["y"]! - second_y["y"]!);
                }
            }
        }
    }
    return (-1000000, -1000000);
}

func subtractPoints(first_x : Dictionary<String, Double> = [:], first_y : Dictionary<String, Double> = [:], second_x : Dictionary<String, Double> = [:], second_y : Dictionary<String, Double> = [:]) -> (Double, Double) {
    if let _ = first_x["x"] {
        if let _ = first_y["y"] {
            if let _ = second_x["x"] {
                if let _ = second_y["y"] {
                    return (first_x["x"]! - second_x["x"]!, first_y["y"]! - second_y["y"]!);
                }
            }
        }
    }
    return (-1000000, -1000000);
}

// Test code:

print("***Testing the add function***");

print("Adding 3 to 4: \(add(3, 4))");
print("Adding -3 to 4: \(add(-3, 4))");
print("Adding 500 to -43: \(add(500, -43))");

print("");

print("***Testing the subtract function***");

print("Subtracting 3 from 4: \(subtract(3, 4))");
print("Subtracting -3 from 4: \(subtract(-3, 4))");
print("Subtracting 500 from -43: \(subtract(500, -43))");

print("");

print("***Testing the multiply function***");

print("Multiplying 3 by 4: \(multiply(3, 4))");
print("Multiplying -3 by 4: \(multiply(-3, 4))");
print("Multiplying 500 by -43: \(multiply(500, -43))");

print("");

print("***Testing the divide function***");

print("Dividing 3 by 4: \(divide(3, 4))");
print("Dividing -3 by 4: \(divide(-3, 4))");
print("Dividing 500 by -43: \(divide(500, -43))");

print("");

print("***Testing calulator function***");

print("Dividing 3 by 4: \(calculate(3, second: 4, op: divide))");
print("Multiplying -3 by 4: \(calculate(-3, second: 4, op: multiply))");
print("Subtracting 500 from -43: \(calculate(500, second: -43, op: subtract))");
print("Adding 3 to 4: \(calculate(3, second: 4, op: add))");

print("");

print("***Testing addArray function***");

print("Adding elements in array [3, 4, 5, 6]: \(addArray([3, 4, 5, 6]))");
print("Adding elements in array [-3, 2, -1]: \(addArray([-3, 2, -1]))");

print("");

print("***Testing multiplyArray function***");

print("Multiplying elements in array [3, 4, 5, 6]: \(multiplyArray([3, 4, 5, 6]))");
print("Multiplying elements in array [-3, 2, -1]: \(multiplyArray([-3, 2, -1]))");

print("");

print("***Testing countArray function***");

print("Counting elements in array [3, 4, 5, 6]: \(countArray([3, 4, 5, 6]))");
print("Counting elements in array [-3, 2, -1]: \(countArray([-3, 2, -1]))");

print("");

print("***Testing averageArray function***");

print("Average of elements in array [3, 4, 5, 6]: \(averageArray([3, 4, 5, 6]))");
print("Average of elements in array [-3, 2, -1]: \(averageArray([-3, 2, -1]))");

print("");

print("***Testing addPoints function***");

print("Adding (2, 3) to (4, 5): \(addPoints((2, 3), second_point: (4, 5)))");
var answer = addPoints(["x":2], first_y: ["y":3], second_x: ["x":4], second_y: ["y":5])
print("Adding (2, 3) to (4, 5): \(answer)");
print("Adding (-2, 3) to (4, -5): \(addPoints((-2, 3), second_point: (4, -5)))");
answer = addPoints(["x":-2], first_y: ["y":3], second_x: ["x":4], second_y: ["y":-5])
print("Adding (-2, 3) to (4, -5): \(answer)");
print("Adding (-2, -3) to (-4, -5): \(addPoints((-2, -3), second_point: (-4, -5)))");
var other_answer = addPoints(["x":2.0], first_y: ["y":3.4], second_x: ["x":4.7], second_y: ["y":-5.2])
print("Adding (2.0, 3.4) to (4.7, -5.2): \(other_answer)");

print("");

print("***Testing subtractPoints function***");

print("Subtracting (2, 3) to (4, 5): \(subtractPoints((2, 3), second_point: (4, 5)))");
answer = subtractPoints(["x":2], first_y: ["y":3], second_x: ["x":4], second_y: ["y":5])
print("subtracting (2, 3) to (4, 5): \(answer)");
print("Subtracting (-2, 3) to (4, -5): \(subtractPoints((-2, 3), second_point: (4, -5)))");
answer = subtractPoints(["x":2], first_y: ["y":3], second_x: ["x":4], second_y: ["y":-5])
print("subtracting (2, 3) to (4, 5): \(answer)");
print("Subtracting (-2, -3) to (-4, -5): \(subtractPoints((-2, -3), second_point: (-4, -5)))");
other_answer = subtractPoints(["x":2.0], first_y: ["y":3.4], second_x: ["x":4.7], second_y: ["y":-5.2])
print("subtracting (2.0, 3.4) to (4.7, -5.2): \(other_answer)");
other_answer = subtractPoints(["x":2.0], first_y: ["z":3], second_x: ["x":4.7], second_y: ["y":-5.2])
print("Proving that it can hadle nil case: \(other_answer)");
