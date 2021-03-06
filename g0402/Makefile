.SUFFIXES: .cpp .hpp

SHARED_LIB=TRUE
FILENAME=mymake

#target names
NOLIBEXE=build_4_exe
LIBEXE=cs296_04_exelib

#
SRCFILES=./src/*.cpp
HEADERFILES=./src/*.hpp
NOMAINSRCFILES=$(subst ./src/main.cpp,,$(SRCFILES))

# Library Paths
BOX2D_ROOT=./external
GLUI_ROOT=/usr
GL_ROOT=/usr/include/

#Libraries
#LIBS = -lBox2D -lglui -framework GLUT -framework OpenGL
LIBS = -lBox2D -lglui -lglut -lGLU -lGL

# Compiler and Linker flags
CPPFLAGS =-g -O3 -Wall -fno-strict-aliasing
CPPFLAGS+=-I $(BOX2D_ROOT)/include -I $(GLUI_ROOT)/include
CPPFLAGS_debug =-pg -g -Wall -fno-strict-aliasing
CPPFLAGS_debug+=-I $(BOX2D_ROOT)/include -I $(GLUI_ROOT)/include
CPPFLAGS_release =-pg -g -O3 -Wall -fno-strict-aliasing
CPPFLAGS_release+=-I $(BOX2D_ROOT)/include -I $(GLUI_ROOT)/include
LDFLAGS+=-L $(BOX2D_ROOT)/lib -L $(GLUI_ROOT)/lib

.PHONY: all setup exe obj report doc

all: exe
	
report:
	cd ./doc; \
	latex cs296_report_04; \
	bibtex cs296_report_04; \
	latex cs296_report_04; \
	latex cs296_report_04; \
	dvipdf cs296_report_04; \
	cd ..

doc:
	@echo Generating Documentation... ; \
	rm -R -f ./doc/html; \
	doxygen ./doc/Doxyfile; \
	echo Done

setup:
	@mkdir -p ./mybins ./myobjs ./mylibs; \
	if [ ! -d ./external/include/Box2D ] || [ ! -d ./external/lib/libBox2D.a ]; then \
	if [ ! -d ./external/src/Box2D ]; then \
	tar xzf ./external/src/Box2D.tgz; \
	mv Box2D ./external/src/; \
	fi; \
	mkdir -p ./external/src/Box2D/build296; \
	cd ./external/src/Box2D/build296; \
	cmake ../; \
	make; \
	make install; \
	fi;

obj: setup $(SRCFILES) $(HEADERFILES)
	@g++ -fPIC $(CPPFLAGS) -c $(SRCFILES) -MD; \
	mv *.o *.d ./myobjs;

OBJFILES=./myobjs/*.o
NOMAINOBJFILES=./myobjs/callbacks.o ./myobjs/cs296_base.o ./myobjs/dominos.o ./myobjs/render.o

-include $(OBJFILES:.o=.d)

exe: setup obj
	@g++ -o cs296_04_exe $(CPPFLAGS) $(LDFLAGS) $(OBJFILES) $(LIBS); \
	mv cs296_04_exe ./mybins;

staticlib: setup obj
	@ar rvs libCS296test.a $(NOMAINOBJFILES); \
	mv libCS296test.a ./mylibs/; \
	cd ..; \

sharedlib: setup obj
	@g++ -shared -o libCS296test.so $(NOMAINOBJFILES); \
	mv libCS296test.so ./mylibs/; \

exelib: setup $(SRCFILES) $(HEADERFILES)
	@if [ $(SHARED_LIB) = FALSE ]; then \
	make staticlib; \
	g++ -o ./mybins/cs296_04_exelib $(CPPFLAGS) $(LDFLAGS) -L ./mylibs/ ./myobjs/main.o ./mylibs/libCS296test.a $(LIBS); \
	else \
	make sharedlib; \
	g++ -o ./mybins/cs296_04_exelib $(CPPFLAGS) $(LDFLAGS) -L ./mylibs/ ./myobjs/main.o ./mylibs/libCS296test.so $(LIBS); \
	fi; \

data: exe
	@rm -rf ./data; \
	mkdir -p ./data; \
	cd ./scripts; \
	./g04_gen_data.sh; \
	./g04_gen_csv.sh; \
	./g04_gen_data_csv.sh; \
	./g04_gen_data_random.sh; \
	cd ../; \
#fit.log			g04_gen_data.sh		g04_gen_data_random.sh	g04_plot02.gpt		g04_plot04.gpt		plot_data_01.sh		plot_data_random.sh
#g04_gen_csv.sh		g04_gen_data_csv.sh	g04_plot01.gpt		g04_plot03.gpt		g04_plot05.gpt		plot_data_02.sh

plot:
	rm -rf ./plots; \
	mkdir  -p ./plots; \
	cd ./scripts; \
	./plot_data_01.sh; \
	./plot_data_02.sh; \
	./plot_data_random.sh; \
	gnuplot g04_plot01.gpt; \
	gnuplot g04_plot02.gpt; \
	gnuplot g04_plot03.gpt; \
	gnuplot g04_plot04.gpt; \
	gnuplot g04_plot05.gpt; \
	rm -rf ../data/*.dat ./fit.log; \

debug_prof:
	@mkdir -p ./mybins ./myobjs ./mylibs; \
	if [ ! -d ./external/include/Box2D ] || [ ! -d ./external/lib/libBox2D.a ]; then \
	if [ ! -d ./external/src/Box2D ]; then \
	tar xzf ./external/src/Box2D.tgz; \
	mv Box2D ./external/src/; \
	fi; \
	mkdir -p ./external/src/Box2D/build296; \
	cd ./external/src/Box2D/build296; \
	cmake -DCMAKE_BUILD_TYPE=Debug ../; \
	echo "hello"; \
	make; \
	make install; \
	fi;
	@g++ -fPIC $(CPPFLAGS_debug) -c $(SRCFILES) -MD; \
	mv *.o *.d ./myobjs;
	@g++ -o cs296_04_exe $(CPPFLAGS_debug) $(LDFLAGS) $(OBJFILES) $(LIBS); \
	mv cs296_04_exe ./mybins;
	perf record ./mybins/cs296_04_exe 50000; 
	perf report > g04_debug_prof.dat

release_prof:	
	@mkdir -p ./mybins ./myobjs ./mylibs; \
	if [ ! -d ./external/include/Box2D ] || [ ! -d ./external/lib/libBox2D.a ]; then \
	if [ ! -d ./external/src/Box2D ]; then \
	tar xzf ./external/src/Box2D.tgz; \
	mv Box2D ./external/src/; \
	fi; \
	mkdir -p ./external/src/Box2D/build296; \
	echo hello; \
	cd ./external/src/Box2D/build296; \
	cmake -DCMAKE_BUILD_TYPE=Release ../; \
	make; \
	make install; \
	fi;
	@g++ -fPIC $(CPPFLAGS_release) -c $(SRCFILES) -MD; \
	mv *.o *.d ./myobjs;
	@g++ -o cs296_04_exe $(CPPFLAGS_release) $(LDFLAGS) $(OBJFILES) $(LIBS); \
	mv cs296_04_exe ./mybins;
	perf record ./mybins/cs296_04_exe 50000; 
	perf report > g04_release_prof.dat

clean:
	@rm -R -f ./mylibs ./myobjs ./mybins *.o *.d ./gmon.out ./perf.data; \
	echo "Cleaning up.. Done" \

distclean: clean
	@rm -R -f ./external/src/Box2D ./external/lib/* ./external/include/*; \
	rm -rf ./data ./plots; \
	rm -R -f ./doc/*.aux ./doc/*.bbl ./doc/*.blg ./doc/*.dvi ./doc/*.pdf ./doc/*.log; \
	echo "Cleaning up Box2D stuff... Done" \
