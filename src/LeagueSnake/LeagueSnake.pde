//*
// ***** SEGMENT CLASS *****
// This class will be used to represent each part of the moving snake.
//*

class Segment {

//Add x and y member variables. They will hold the corner location of each segment of the snake.
  private int x;
  private int y;
// Add a constructor with parameters to initialize each variable.
  Segment(int x, int y) {
    this.x = x;
    this.y = y;
  }

}


//*
// ***** GAME VARIABLES *****
// All the game variables that will be shared by the game methods are here
//*

Segment head;

int foodX;
int foodY;

int direction = UP;
int eaten;

//*
// ***** SETUP METHODS *****
// These methods are called at the start of the game.
//*

void setup() {
  size(500, 500); 
  head = new Segment(0, 0);
  frameRate(4);
  dropFood();
  
}

void dropFood() {
  //Set the food in a new random location
  foodX = ((int)random(10)*50);
  foodY = ((int)random(10)*50);
  
}



//*
// ***** DRAW METHODS *****
// These methods are used to draw the snake and its food 
//*

void draw() {
  background(#000000);
  drawFood();
  move();
  drawSnake();
  eat();
  
}

void drawFood() {
  //Draw the food
  fill(#FFFF64);
  rect(foodX, foodY, 50, 50);
  
}

void drawSnake() {
  //Draw the head of the snake followed by its tail
  fill(#FF6464);
  rect(head.x, head.y, 50, 50);
  
}


//*
// ***** TAIL MANAGEMENT METHODS *****
// These methods make sure the tail is the correct length.
//*

void drawTail() {
  //Draw each segment of the tail 
  for (int i = 0; i < eaten; i++) {
    rect(head.x, head.y, 50, 50);
  }
}

void manageTail() {
  //After drawing the tail, add a new segment at the "start" of the tail and remove the one at the "end" 
  //This produces the illusion of the snake tail moving.
  
}

void checkTailCollision() {
  //If the snake crosses its own tail, shrink the tail back to one segment
  
}



//*
// ***** CONTROL METHODS *****
// These methods are used to change what is happening to the snake
//*

void keyPressed() {
  //Set the direction of the snake according to the arrow keys pressed
  if ((direction == UP && keyCode != DOWN) || (direction == DOWN && keyCode != UP) || (direction == LEFT && keyCode != RIGHT) || (direction == RIGHT && keyCode != LEFT)) {
    direction = keyCode;
  }
}

void move() {
  //Change the location of the Snake head based on the direction it is moving.
  
  switch(direction) {
  case UP:
    head.y -= 50;
    break;
  case DOWN:
    head.y += 50; 
    break;
  case LEFT:
    head.x -= 50;
    break;
  case RIGHT:
    head.x += 50;
    break;
  }
  checkBoundaries();
  
}

void checkBoundaries() {
  //If the snake leaves the frame, make it reappear on the other side
  if (head.x > 450) { 
    head.x -= 500;
  } else if (head.x < 0) { 
    head.x += 500; 
  } else if (head.y > 450) {
    head.y -= 500;
  } else if (head.y < 0) {
    head.y += 500;
  }
  
}



void eat() {
  //When the snake eats the food, its tail should grow and more food appear
  if (head.x == foodX && head.y == foodY) {
    eaten += 1;
    dropFood();
    
  }
}
