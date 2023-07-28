class Plane {

  int x = 50;
  int y;
  PImage img = loadImage("plane.png");

  Plane(int y) {
    this.y = y;
  }

  void render() {
    image(img, x, y);
  }

  boolean crash(Bird bird) {
    return abs(this.x-bird.x) < 91 && abs(this.y - bird.y) < 44;
  }
}
