//a tab for the class that makes the new food and manages the different info of that foofd.

class FoodItem {
  
// Feilds: ///
  String name;
  float protein;
  float carbs;
  float fats;
  float cost;
  
/// Constructors: ///
  FoodItem(String name, float protein, float carbs, float fats, float cost) {
    this.name = name;
    this.protein = protein;
    this.carbs = carbs;
    this.fats = fats;
    this.cost = cost;
  }
  
/// Methods ///
  void getSummery() { //print summery to console for debugging resons
    println(name, "has", protein, "grams of protein, ", carbs, "grams of carbs, ", fats, "grams of fat, and is",cost,"dollers"   );
  }
  
  void getCalories() { //print the total calories
    println(name, "has", protein * 4 + carbs * 4 + fats * 9, "calories");
  }

  String foodItemToString() { //to changed the FoodItem objects into a string to ddisplay on the console
    return  name + " has  " + fats + " grams of fat, " + protein + " grams of protein " + carbs + " grams of carbs, and " + cost + " dollers.";
  }
  
  //I plan to be able to export as CSV by just exporting strings to a .txt file.
  String toCSVformat() { //CSV has very spicific formatting of the commas (,) so i cant use getSummery
    return name + "," + protein + "," + carbs + "," + fats + "," + cost;
  }
}
