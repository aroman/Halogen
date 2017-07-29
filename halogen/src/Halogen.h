#pragma once

#include "ofBaseApp.h"
#include "ofImage.h"
#include "Kinect.h"
#include "ofxCv.h"
#undef Status
#undef None

class Halogen : public ofBaseApp {

private:
  void updateKinect();
  Kinect *kinect = nullptr;

  ofPixels colorPixels;
  ofFloatPixels depthPixels;
  ofTexture colorTexture;

  cv::CascadeClassifier face_cascade;
  // std::vector<ofRectangle> faces;
  bool hasData = false;

public:
  void setup();
  void update();
  void draw();
  ~Halogen();

  void keyPressed(int key);
  void keyReleased(int key);
  void mouseMoved(int x, int y );
  void mouseDragged(int x, int y, int button);
  void mousePressed(int x, int y, int button);
  void mouseReleased(int x, int y, int button);
  void mouseEntered(int x, int y);
  void mouseExited(int x, int y);
  void windowResized(int w, int h);
  void dragEvent(ofDragInfo dragInfo);
  void gotMessage(ofMessage msg);

};