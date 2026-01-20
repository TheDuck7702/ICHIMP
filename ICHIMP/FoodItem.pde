//a tab for the class that makes the new food and manages the different info of that foofd.

class FoodItem {
  
//Feilds:
  String name;
  float protein;
  float carbs;
  float fats;
  float cost;
  
  


  // Constructor
  FoodItem(String name, float protein, float carbs, float fats, float cost) {
    this.name = name;
    this.protein = protein;
    this.carbs = carbs;
    this.fats = fats;
    this.cost = cost;
  
  }
  
  //Methods
  void getSummery() {
    println(name, "has", protein, "grams of protein, ", carbs, "grams of carbs, ", fats, "grams of fat, and is",cost,"dollers"   );
  }
  
  void getCalories() {
    println(name, "has", protein * 4 + carbs * 4 + fats * 9, "calories");
    
  }
  
  String foodItemToString() {
    return  name + " has  " + fats + " grams of fat, " + protein + " grams of protein " + carbs + " grams of carbs, and " + cost + " dollers.";
  }

}
