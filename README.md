## GLUI for Oregon State University CS 419/553 

### My Development Environment
  
  - OS: Mac OS X 10.8.3



### How-To

1. `make` then copy the **lib** folder to your project
  
2. cpp header will 
	 
	    #ifdef __APPLE__
	    #include <GLUT/glut.h>
	    #include <OpenGL/gl.h>
	    #include <OpenGL/glu.h>
	    #else
	    #include <GL/gl.h>
	    #include <GL/glu.h>
	    #include "glut.h"
	    #endif
	    #include "glui.h"
	

3. **Makefile** in your project will look as follow
	
		default:
			g++ -framework GLUT -framework OpenGL -framework Cocoa  demo.cpp -o demo lib/libglui.a
