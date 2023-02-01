/*:
## For-in with Range
 
 Let's say you _don't_ have a convenient array of values to loop through. How can we loop a certain number of times, or over a certain range of numbers?
 
 Don't worry! We can still use the for-in loop, specifying a Range.
 
 Here is how we specify ranges in Swift:
 */
//A closed range, from 0 all the way up-to-and-including 10.
let closedRange = 0...10

//An open range, from 4 up to 13, but NOT including 13. (12 is the max)
let openRange = 4..<13
let midRange = 2..<30
/*:
 We can use these ranges to specify how many times we will run our loop.
 
 Let's try it with a reversed version of 99 Bottles of Beer on the Wall:
 */
for bottlesDrank in 0..<100 {
    print("\(bottlesDrank) bottles of beer have been drank,")
}
print("All of the beer is gone!")
/*:
The first line sets up the loop with two important pieces of information:
1. What we should call our Integer variable that we will use in the loop (`bottlesDrank`).
2. What range to loop over (in this case, from `0` to `less than 100`, or `99`).
 
[Previous](@previous)  |  page 3 of 9  |  [Next: While Loops](@next)
 */
