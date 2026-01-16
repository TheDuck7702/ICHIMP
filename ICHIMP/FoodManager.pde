class FoodManager {
  
  //feilds
  ArrayList<FoodItem> customFoods;
  
  //constructor
  FoodManager(){
    customFoods = new ArrayList<FoodItem>();
    
  }
  
  //methods
  
  //to add the new custom foods to a arraylist where we can display it to the preset dropbox
  void addFood(FoodItem f) {
    customFoods.add(f);
  }
  
  //to return a summery
  void allFood(FoodItem f) {
    printArray(customFoods);
  }
  
  
  
}
