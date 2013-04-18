#include "ofMain.h"
#include "ofxBox2dApp.h"

int main(){
    ofSetupOpenGL(1024, 768, OF_FULLSCREEN);
	ofRunApp(new ofxBox2dApp());
}