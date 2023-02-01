/*:
## While Loops
 
 While loops let us run code while a condition continues to be met.
 
 This while loop below will generate random numbers until it generates 6. When randomNumber becomes 6, the loop will exit after completing the current iteration.
 */
var randomNumber = Int.random(in: 0...10)

//The loop will run as long as random number doesn't equal 6.
while randomNumber != 6 {
    randomNumber = Int.random(in: 0...10)
    print("Right now we're at \(randomNumber)")
}



/*:
- Experiment:
Try running this playground again. See how the number of times the loop runs changes? It's random!
 
 > Not all while loops rely on randomness. They might count up like a for-in loop, or until a Boolean value becomes false, or while there is still data to perform operations on.
 
[Previous](@previous)  |  page 4 of 9  |  [Next: Exercise: Karaoke Host](@next)
 */
