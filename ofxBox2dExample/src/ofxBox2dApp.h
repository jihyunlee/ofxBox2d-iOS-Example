#pragma once

#include "ofMain.h"
#include "ofxiPhone.h"
#include "ofxBox2d.h"
//#include "Box.h"

class ofxBox2dApp : public ofxiPhoneApp {
	
public:

    void setup();
	void update();
	void draw();	
    void exit();
    
    void touchDown(int x, int y, int id);
    void touchMoved(int x, int y, int id);
    void touchUp(int x, int y, int id);
    void touchDoubleTap(ofTouchEventArgs & touch);
    void touchCancelled(ofTouchEventArgs & touch);
	
    void lostFocus();
    void gotFocus();
    void gotMemoryWarning();
    void deviceOrientationChanged(int newOrientation);

    
    ofxBox2d box2d; // the box2d world
    vector<ofxBox2dCircle> circles;
    
};
