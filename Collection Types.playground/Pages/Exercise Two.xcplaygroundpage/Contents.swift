/*:
 [Previous](@previous)
 
 # Exercise Two
 
 A restaurant asks diners to rate their dining experience on a scale of 1 to 100, where 1 is "very bad", and 100 is "perfection".
 
 1. Create an empty mutable array of type `Double` named `restaurantRatings`:
 
 */

import Foundation

var restaurantRatings : [Double] = []
/*:
 2. Now populate the array with twenty random ratings between 1 and 100.
 */
for _ in 1...20 {
    restaurantRatings.append( Double( arc4random_uniform(99) + 1))
}

/*:
 3. Determine the average rating. Remember, calculate an average by finding the sum of all the values, then dividing by the number of values.
 */
var totalRating = 0.0

for restaurantRating in restaurantRatings {
    totalRating += restaurantRating
}

var average = totalRating / Double(restaurantRatings.count)
/*:
 4. The restaurant is most concerned with how many diners considered their meal to be less than satisfactory. Calculate the percentage of diners who gave the restaurant a rating less than 80.
 */
var sadCustomers = 0

for restaurantRating in restaurantRatings {
    if restaurantRating < 80.0 {
        sadCustomers += 1
    }
}

var percentOfSadness = (sadCustomers * 100) / restaurantRatings.count

print("The percent of disatisfied diners is \(percentOfSadness).")
/*:
 5. The manager wants more detail. Prepare a report that indicates how many diners found the restuarant "Very Bad" (0 to 25), "Bad" (25 to 49), "Fair" (50 to 79), "Satisfactory" (80 to 89), and "Stellar" (90 to 100).
 */
var veryBad = 0
var bad = 0
var fair = 0
var satisfactory = 0
var stellar = 0

for restaurantRating in restaurantRatings {
    switch restaurantRating {
    case 1...25:
        veryBad += 1
    case 26...49:
        bad += 1
    case 50...79:
        fair += 1
    case 80...89:
        satisfactory += 1
    case 90...100:
        stellar += 1
        
    default:
        "No review was given"
    }
}

print("\(veryBad) people found the meal Very Bad.")
print("\(bad) people found the meal Bad")
print("\(fair) people found the meal Fair")
print("\(satisfactory) people found the meal satisfactory")
print("\(stellar) people found the meal Stellar")

