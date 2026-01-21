class FoodManager {
  
// Feilds: ///
  ArrayList<FoodItem> customFoods;
  ArrayList<FoodItem> breakfastFoods;
  ArrayList<FoodItem> lunchFoods;
  ArrayList<FoodItem> dinnerFoods;
  ArrayList<FoodItem> snackFoods;
  ArrayList<NutritionSorter> summaryTotals;

/// Constructors: ///
  FoodManager() {
    customFoods = new ArrayList<FoodItem>();
    breakfastFoods = new ArrayList<FoodItem>();
    lunchFoods = new ArrayList<FoodItem>();
    dinnerFoods = new ArrayList<FoodItem>();
    snackFoods = new ArrayList<FoodItem>();
  }
 
/// Methods: ///  
  void addFood(FoodItem f) { //to add the new custom foods to a arraylist where we can display it to the preset dropbox
    customFoods.add(f);
  }
  
  void allFood( ) { //to return a summery
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
 
 void addPresets() { // to add presets  on the gui drpodown
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
    return null; // to make sure it returns nothing or a foodITem oject
  }
  
  void drawFood(String mealType, float x, float y) { //the method will want to get the meal type and the x and y
    if(mealType.equals("Breakfast")) {
       for (int i = 0; i < breakfastFoods.size(); i++) {
        text(breakfastFoods.get(i).name, x, y);
        y += 20;
      }
    }
    
    if(mealType.equals("Lunch")) {
       for (int i = 0; i < lunchFoods.size(); i++) {
        text(lunchFoods.get(i).name, x, y);
        y += 20;
      }
    }
    
    if(mealType.equals("Dinner")) {
       for (int i = 0; i < dinnerFoods.size(); i++) {
        text(dinnerFoods.get(i).name, x, y);
        y += 20;
      }
    }
    
    if(mealType.equals("Snack")) {
       for (int i = 0; i < snackFoods.size(); i++) {
        text(snackFoods.get(i).name, x, y);
        y += 20;
      }
    }
  }
  
  void buildSummery() { // to build a final summery of the plan.
    //to make temp var to save each object's info
    //set all to 0 then loop through every meal
    
    float protein = 0;
    float carbs = 0;
    float fats = 0;
    float cost = 0;
    
    //looping breakfast to get it out of the arraylist
    for (int i = 0; i < breakfastFoods.size(); i++) {
      FoodItem f = breakfastFoods.get(i);
      protein = protein + f.protein;
      fats = fats + f.fats;
      carbs = carbs + f.carbs;
      cost = cost + f.cost;
    }
    
    for (int i = 0; i < lunchFoods.size(); i++) {
      FoodItem f = lunchFoods.get(i);
      protein = protein + f.protein;
      fats = fats + f.fats;
      carbs = carbs + f.carbs;
      cost = cost + f.cost;
    }
    
        for (int i = 0; i < dinnerFoods.size(); i++) {
      FoodItem f = dinnerFoods.get(i);
      protein = protein + f.protein;
      fats = fats + f.fats;
      carbs = carbs + f.carbs;
      cost = cost + f.cost;
    }
    
        for (int i = 0; i < snackFoods.size(); i++) {
      FoodItem f = snackFoods.get(i);
      protein = protein + f.protein;
      fats = fats + f.fats;
      carbs = carbs + f.carbs;
      cost = cost + f.cost;
    }
    
    summaryTotals.clear();
    summaryTotals.add(new NutritionSorter("Protien", protein));
    summaryTotals.add(new NutritionSorter("Carbs", carbs));
    summaryTotals.add(new NutritionSorter("Fats", fats));
    summaryTotals.add(new NutritionSorter("Cost ($)", cost));
  }
  
  void sortSummery() {
    
    //use merge sort
    
  }
