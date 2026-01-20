class FoodManager {
  
  //feilds
  ArrayList<FoodItem> customFoods;
  ArrayList<FoodItem> breakfastFoods;
  ArrayList<FoodItem> lunchFoods;
  ArrayList<FoodItem> dinnerFoods;
  ArrayList<FoodItem> snackFoods;
  
  //constructor
  FoodManager(){
    customFoods = new ArrayList<FoodItem>();
    breakfastFoods = new ArrayList<FoodItem>();
    lunchFoods = new ArrayList<FoodItem>();
    dinnerFoods = new ArrayList<FoodItem>();
    snackFoods = new ArrayList<FoodItem>();
    
  }
  
  //methods
  
  //to add the new custom foods to a arraylist where we can display it to the preset dropbox
  void addFood(FoodItem f) {
    customFoods.add(f);
  }
  
  //to return a summery
  void allFood( ) {
    for(int i = 0; i < customFoods.size(); i++){
      FoodItem printVar = customFoods.get(i);
      println(printVar.foodItemToString());
    }
  }
  
 String[] getNames() {
   String[] foodNames = new String[customFoods.size()];
   
   for(int i = 0; i < customFoods.size(); i++){
      foodNames[i] = customFoods.get(i).name;
    } 
    
    return foodNames;
   
 }
 
 void addPresets() {
   
   FM.addFood(new FoodItem("Egg", 6, 1, 5, 0.5));
   FM.addFood(new FoodItem("Apple", 0, 25, 0, 0.75));
   FM.addFood(new FoodItem("Chicken Breast", 31, 0, 3.6, 2.0));
   
 }
  
  FoodItem getFoodByName(String searchName) {
    for(int i = 0; i < customFoods.size(); i++) {
      if (customFoods.get(i).name.equals(searchName)) {
        return customFoods.get(i);
      }
    }
    //return ___; ask teacher what do i put there to get null
    return null;
  }
  
  void drawFood(String mealType, float x, float y) {
    //the method will want to get the meal type and the x and y
    
    if(mealType.equals("Breakfast")) {
       for (int i = 0; i < breakfastFoods.size(); i++) {
        text(breakfastFoods.get(i).name, x, y);
        y += 20;
      }
    }
    
    if(mealType.equals("Lunch")) {
       for (int i = 0; i < breakfastFoods.size(); i++) {
        text(breakfastFoods.get(i).name, x, y);
        y += 20;
      }
    }
    
    if(mealType.equals("Dinner")) {
       for (int i = 0; i < breakfastFoods.size(); i++) {
        text(breakfastFoods.get(i).name, x, y);
        y += 20;
      }
    }
    
    if(mealType.equals("Snack")) {
       for (int i = 0; i < breakfastFoods.size(); i++) {
        text(breakfastFoods.get(i).name, x, y);
        y += 20;
      }
    }
   
    
  }
}
