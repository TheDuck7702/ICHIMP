import g4p_controls.*;

FoodManager FM = new FoodManager();

void setup(){
  //i didnt make this too i think it was g4p. I dont know whats java2d is but it doesent work when i remove it.
  size(1000, 320, JAVA2D);
  createGUI();
  customGUI();

  FM = new FoodManager();
  FM.addPresets();
  Preset_Meals_DB.setItems(FM.getNames(), FM.getNames().length - 1);
  //setItems is a command in the g4p Library (http://lagers.org.uk/g4ptool/ref/functions.html) that sets the items in a drop down menu.
  //get names is a method i made in food manager.
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
  rect(10, 180, 150, 120);
  //summary box
  rect(180, 180, 150, 120);

  //for the labels on the screen
  fill(0);
  textSize(16);
  text("Breakfast", 15, 30);
  text("Lunch", 185, 30);
  text("Dinner", 355, 30);
  text("Snack", 15, 205);
  text("Summery", 185, 205);
  
  //to draw the names of the food on the screen in their boxs
  FM.drawFood("Breakfast", 20, 50);
  FM.drawFood("Lunch", 190, 50);
  FM.drawFood("Dinner", 360, 50);
  FM.drawFood("Snack", 20, 225);
  
  //to draw and build the summery statment
  FM.buildSummery();
  FM.drawSummary(200, 230);
}

// Use this method to add additional statements
// to customise the GUI controls
// i didnt add this btw it think it was G4P
void customGUI(){
}
