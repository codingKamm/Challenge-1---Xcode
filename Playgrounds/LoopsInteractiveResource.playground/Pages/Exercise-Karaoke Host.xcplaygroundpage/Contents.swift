/*:
## Exercise: Karaoke Host

 You have a friend who loves singing karaoke with a big group of people. The karaoke singers add songs they’d like to sing to a list and the karaoke host calls out the songs one by one.
 
 Your friend and has asked you to write software to help manage the song list.

 - callout(Exercise):
 Create an empty array to hold song titles as strings, and use the `append` method to add three or four songs one at a time.
 */
var emptyArray = [String] ()
emptyArray.append ("Run It Up")
emptyArray.append ("Flodgin'")
emptyArray.append ("Play With Yo B***h")
emptyArray.append ("Preach")
/*:
 - callout(Exercise):
 One enthusiastic singer wants to add three songs at once. Create an array holding this one singer's song list and use the `+=` operator to append their whole list to the end of the group's song list.
 */
emptyArray += ["Lipstick", "Back Against the Wall", "Blonde & A Onion"]
/*:
 - callout(Exercise):
 Write a `for…in` loop and, for every song title in the array, print an encouraging announcement to let the next singer know that it's their turn.
 */
//DJ may use this to automate hype...
let dolphsList = "RNB"

for dolphsList in emptyArray {
   print("Next song, best song... Here is \(dolphsList)!")
print(dolphsList)
}
dolphsList
/*:
 - callout(Exercise):
 After the loop has called everyone up to sing, use the `removeAll` method on the song list to clear out all the past songs.
 */
for dolphsList in emptyArray {
   print("Next song, best song... Here is \(dolphsList)!")
    emptyArray.removeAll()
}

/*:
[Previous](@previous)  |  page 5 of 9  |  [Next: Exercise: Counting Votes](@next)
 */
