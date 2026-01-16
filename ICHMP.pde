
import g4p_controls.*;


public void setup(){
  size(480, 320, JAVA2D);//ask teach
  createGUI();
  customGUI();
  // Place your setup code here
  
  
  FoodItem food1 = new FoodItem("egg", 6,3,8,6);
  food1.getSummery();
  food1.getCalories();
  
  
}

public void draw(){
  background(230);
  
}

// Use this method to add additional statements
// to customise the GUI controls
public void customGUI(){

}
