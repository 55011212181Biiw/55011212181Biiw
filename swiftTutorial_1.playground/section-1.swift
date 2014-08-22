let tutorialTeam = 56
let editorialTeam = 23
var totalTeam = tutorialTeam + editorialTeam


totalTeam += 1
let tutorialTeamInferred = -19
let tutorialTeamExplicit: Int = -19

let priceInferred = -19.99
let priceExplicit:Double = -19.99

let priceFlostInferred = -19.99
let priceFloatExplicit:Float = -19.99

let onSaleInterred = true
let onSaleExplicit:Bool = false

let nameInferred = "Whoopie Cushion"
let nameExplicit:String = "Whoopie Cushion"



//Array
var shoppingListExplicit = [String]()
shoppingListExplicit = ["Egg","Milk"]
//var shoppingListExplicit:[String] = ["Egg","Milk"]

var shoppingList = ["Egg","Milk"]
println("The shopping List contains \(shoppingList.count).items.")
shoppingList.append("Flour")
shoppingList += "Baking Powder"
shoppingList += ["Chocolate Spread","cheese","Butter"]
var firstItem = shoppingList[0]
shoppingList[0] = "Six eggs"
shoppingList[0...3] = ["Bananas","Apples"]
shoppingList


//Add value to Array
shoppingList += ["Baking Powder"]
//shopping now content 4 items
shoppingList += ["Chocolate spread","Cheese","Butter"]
////shopping now contains 7 items

shoppingList.insert("Maple Syrup", atIndex:0)
//shopping now contains 7 items
//"Maple Syrup" is now the first item int the list

shoppingList.append("Flour")
//shoppingList now contains 3 item,and someone is making pancakes

shoppingList += ["Baking Powder"]

//var
firstItem = shoppingList[0]
//firstItem  is equal to "Eggs"

shoppingList[4...6] = ["Bananas","Apples"]
//shoppingList now contains 6 items



//Remove Values from Array
let apples = shoppingList.removeLast()
//the last item in the array has just been removed
//shoppingList now contains 5 item,and no apples
//the apples constant is now equal to the removed "apples" string

let mapleSyrup = shoppingList.removeAtIndex(0)
//the item that was at index 0 has just been removed
//shoppingList now contains 6 item,and no Maple Syrup
//the apples constant is now equal to the removed "Maple Syrup" string








