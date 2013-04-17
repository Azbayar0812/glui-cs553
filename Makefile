.SUFFIXES: .cpp

CPPFLAGS += -I./

LIBGLUI = -L./lib -lglui
LIBGL   = -lGLU -lGL
LIBS    = -lXmu -lXext -lX11 -lXi -lm

GLUI_LIB = lib/libglui.a

LIBGLUT   = -L/usr/X11R6/lib -lglut
CPPFLAGS += -I/usr/X11R6/include


#GLUI_OBJS = glui_add_controls.o glui.o glui_bitmap_img_data.o glui_bitmaps.o glui_button.o glui_edittext.o glui_checkbox.o glui_node.o glui_radio.o glui_statictext.o glui_panel.o glui_separator.o glui_spinner.o glui_control.o glui_column.o glui_translation.o glui_rotation.o glui_mouse_iaction.o glui_listbox.o glui_rollout.o arcball.o algebra3.o quaternion.o viewmodel.o 
GLUI_OBJS = algebra3.o arcball.o glui.o glui_add_controls.o glui_bitmap_img_data.o glui_bitmaps.o glui_button.o glui_checkbox.o glui_column.o glui_control.o glui_edittext.o glui_hslider.o glui_listbox.o glui_mouse_iaction.o glui_node.o glui_panel.o glui_radio.o glui_rollout.o glui_rotation.o glui_separator.o glui_spinner.o glui_statictext.o glui_translation.o quaternion.o

all: setup $(GLUI_LIB)


setup:
	mkdir -p lib

$(GLUI_LIB): $(GLUI_OBJS)
	ar -r $(GLUI_LIB) $(GLUI_OBJS)

.cpp.o:
	$(CXX) $(CPPFLAGS) -c $<

.c.o:
	$(CXX) $(CPPFLAGS) -c $<

clean:
	rm -f *.o $(GLUI_LIB) $(GLUI_EXAMPLES) $(GLUI_TOOLS) 


./algebra3.o: algebra3.h 
./arcball.o: arcball.h 
./glui.o: glui.h stdinc.h
./glui_add_controls.o:  glui.h stdinc.h
./glui_bitmaps.o: glui.h stdinc.h
./glui_button.o: glui.h stdinc.h
./glui_checkbox.o: glui.h stdinc.h
./glui_column.o: glui.h stdinc.h
./glui_control.o: glui.h stdinc.h
./glui_edittext.o: glui.h stdinc.h
./glui_hslider.o:  glui.h stdinc.h
./glui_listbox.o: glui.h stdinc.h
./glui_mouse_iaction.o: glui.h stdinc.h
./glui_node.o: glui.h stdinc.h
./glui_panel.o: glui.h stdinc.h
./glui_radio.o: glui.h stdinc.h
./glui_rollout.o: glui.h stdinc.h
./glui_rotation.o: glui.h arcball.h algebra3.h
./glui_separator.o: glui.h stdinc.h
./glui_spinner.o: glui.h stdinc.h
./glui_statictext.o: glui.h stdinc.h
./glui_translation.o: glui.h stdinc.h algebra3.h
./quaternion.o: quaternion.h stdinc.h
#./glui_window.o: glui.h stdinc.h
#./viewmodel.o: viewmodel.h algebra3.h ./include/GL/glui.h



#./glui_commandline.o: glui.h stdinc.h
#./glui_list.o: glui.h stdinc.h
#./glui_scrollbar.o: glui.h stdinc.h
#./glui_string.o: ./include/GL/glui.h
#./glui_textbox.o: glui.h stdinc.h
#./glui_tree.o: glui.h stdinc.h
#./glui_treepanel.o: .glui.h
