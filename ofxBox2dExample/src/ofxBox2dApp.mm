#include "ofxBox2dApp.h"

//--------------------------------------------------------------
void ofxBox2dApp::setup(){

	ofSetFrameRate(30);
	ofBackground(255, 255, 255);
    
    box2d.init();
	box2d.setGravity(0, 10);
    box2d.setFPS(60);
//    box2d.registerGrabbing();
    box2d.createBounds();
    box2d.setIterations(1, 1);
}

//--------------------------------------------------------------
void ofxBox2dApp::update(){
    box2d.update();
}

void ofxBox2dApp::draw() {
    ofSetColor(175);
    
    // Display all the boxes
    for(vector<ofxBox2dCircle>::iterator it = circles.begin(); it != circles.end(); ++it) {
        it->draw();
    }
}

//--------------------------------------------------------------
void ofxBox2dApp::exit(){
    
}

//--------------------------------------------------------------
void ofxBox2dApp::touchDown(int x, int y, int id){

}

//--------------------------------------------------------------
void ofxBox2dApp::touchMoved(int x, int y, int id){
	
}

//--------------------------------------------------------------
void ofxBox2dApp::touchUp(int x, int y, int id){

    ofxBox2dCircle c;
    c.setPhysics(1, 0.4, 0.4);
    c.setup(box2d.getWorld(), x, y, ofRandom(13, 25));
    circles.push_back(c);
}

//--------------------------------------------------------------
void ofxBox2dApp::touchDoubleTap(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofxBox2dApp::touchCancelled(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void ofxBox2dApp::lostFocus(){
    
}

//--------------------------------------------------------------
void ofxBox2dApp::gotFocus(){

}

//--------------------------------------------------------------
void ofxBox2dApp::gotMemoryWarning(){    

}

//--------------------------------------------------------------
void ofxBox2dApp::deviceOrientationChanged(int newOrientation){    

}
