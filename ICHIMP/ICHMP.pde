
import g4p_controls.*;

//global var
FoodManager = manager;

public void setup(){
  size(480, 320, JAVA2D);//ask teach
  createGUI();
  customGUI();

  manager = new foodManager();
  
  FoodItem food1 = new FoodItem("egg", 6,3,8,6);
  food1.getSummery();
  food1.getCalories();
  
  //foodLibrary = new ArrayList<FoodItem>();
  
}

public void draw(){
  background(230);
  
}

// Use this method to add additional statements
// to customise the GUI controls
public void customGUI(){

}
