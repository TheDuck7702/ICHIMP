
import g4p_controls.*;
//
FoodManager FM = new FoodManager();

void setup(){
  size(1000, 320, JAVA2D);
  createGUI();
  customGUI();
  //
  FM = new FoodManager();
  FM.addPresets();
  Preset_Meals_DB.setItems(FM.getNames(), FM.getNames().length - 1);

  
  FoodItem food1 = new FoodItem("egg", 6,3,8,6);
  food1.getSummery();
  food1.getCalories();
  
  //foodLibrary = new ArrayList<FoodItem>();
  
}

void draw(){
  background(230);
 

  //Draw boxes for each meal type
  stroke(0);
  strokeWeight(1);
  noFill();

  //Breakfast
  rect(10, 10, 150, 150);
  //Lunch
  rect(180, 10, 150, 150);
  //Dinner
  rect(350, 10, 150, 150);
  //Snack
  rect(10, 180, 150, 100);

//for the labels on the screen
  fill(0);
  textSize(16);
  text("Breakfast", 15, 30);
  text("Lunch", 185, 30);
  text("Dinner", 355, 30);
  text("Snack", 15, 205);
  
  //to draw the names of the food on the screen in their boxs
  FM.drawFood("Breakfast", 20, 50);
  FM.drawFood("Lunch", 190, 50);
  FM.drawFood("Dinner", 360, 50);
  FM.drawFood("Snack", 20, 225);

}

// Use this method to add additional statements
// to customise the GUI controls
void customGUI(){

}
