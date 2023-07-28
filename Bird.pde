class Bird {

  int x;
  int y;
  int counter;

  PImage img1 = loadImage("bird1.png");
  PImage img2 = loadImage("bird2.png");
  PImage img3 = loadImage("bird3.png");
  PImage img4 = loadImage("bird4.png");

  Bird(int x, int y) {
    this.x = x;
    this.y = y;
  }

  void update() {
    move();
    render();
  }

  void move() {
    x -= random(2, 5);
  }

  void render() {

    if (counter < 10) { 
      image(img1, x, y);
    } else if (counter < 20) { 
      image(img2, x, y);
    } else if (counter < 30) { 
      image(img3, x, y);
    } else if (counter < 40) { 
      image(img4, x, y);
    } else { 
      counter=0;
    }

    counter++;
  }
}
