# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/arsovska/Tasks/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/arsovska/Tasks/build

# Include any dependencies generated for this target.
include vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/depend.make

# Include the progress variables for this target.
include vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/progress.make

# Include the compile flags for this target's objects.
include vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/flags.make

vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/cv_bridge.cpp.o: vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/flags.make
vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/cv_bridge.cpp.o: /home/arsovska/Tasks/src/vision_opencv/cv_bridge/src/cv_bridge.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/arsovska/Tasks/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/cv_bridge.cpp.o"
	cd /home/arsovska/Tasks/build/vision_opencv/cv_bridge/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/cv_bridge.dir/cv_bridge.cpp.o -c /home/arsovska/Tasks/src/vision_opencv/cv_bridge/src/cv_bridge.cpp

vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/cv_bridge.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cv_bridge.dir/cv_bridge.cpp.i"
	cd /home/arsovska/Tasks/build/vision_opencv/cv_bridge/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/arsovska/Tasks/src/vision_opencv/cv_bridge/src/cv_bridge.cpp > CMakeFiles/cv_bridge.dir/cv_bridge.cpp.i

vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/cv_bridge.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cv_bridge.dir/cv_bridge.cpp.s"
	cd /home/arsovska/Tasks/build/vision_opencv/cv_bridge/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/arsovska/Tasks/src/vision_opencv/cv_bridge/src/cv_bridge.cpp -o CMakeFiles/cv_bridge.dir/cv_bridge.cpp.s

vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/cv_bridge.cpp.o.requires:
.PHONY : vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/cv_bridge.cpp.o.requires

vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/cv_bridge.cpp.o.provides: vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/cv_bridge.cpp.o.requires
	$(MAKE) -f vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/build.make vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/cv_bridge.cpp.o.provides.build
.PHONY : vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/cv_bridge.cpp.o.provides

vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/cv_bridge.cpp.o.provides.build: vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/cv_bridge.cpp.o

vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/rgb_colors.cpp.o: vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/flags.make
vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/rgb_colors.cpp.o: /home/arsovska/Tasks/src/vision_opencv/cv_bridge/src/rgb_colors.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/arsovska/Tasks/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/rgb_colors.cpp.o"
	cd /home/arsovska/Tasks/build/vision_opencv/cv_bridge/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/cv_bridge.dir/rgb_colors.cpp.o -c /home/arsovska/Tasks/src/vision_opencv/cv_bridge/src/rgb_colors.cpp

vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/rgb_colors.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cv_bridge.dir/rgb_colors.cpp.i"
	cd /home/arsovska/Tasks/build/vision_opencv/cv_bridge/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/arsovska/Tasks/src/vision_opencv/cv_bridge/src/rgb_colors.cpp > CMakeFiles/cv_bridge.dir/rgb_colors.cpp.i

vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/rgb_colors.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cv_bridge.dir/rgb_colors.cpp.s"
	cd /home/arsovska/Tasks/build/vision_opencv/cv_bridge/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/arsovska/Tasks/src/vision_opencv/cv_bridge/src/rgb_colors.cpp -o CMakeFiles/cv_bridge.dir/rgb_colors.cpp.s

vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/rgb_colors.cpp.o.requires:
.PHONY : vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/rgb_colors.cpp.o.requires

vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/rgb_colors.cpp.o.provides: vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/rgb_colors.cpp.o.requires
	$(MAKE) -f vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/build.make vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/rgb_colors.cpp.o.provides.build
.PHONY : vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/rgb_colors.cpp.o.provides

vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/rgb_colors.cpp.o.provides.build: vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/rgb_colors.cpp.o

# Object files for target cv_bridge
cv_bridge_OBJECTS = \
"CMakeFiles/cv_bridge.dir/cv_bridge.cpp.o" \
"CMakeFiles/cv_bridge.dir/rgb_colors.cpp.o"

# External object files for target cv_bridge
cv_bridge_EXTERNAL_OBJECTS =

/home/arsovska/Tasks/devel/lib/libcv_bridge.so: vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/cv_bridge.cpp.o
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/rgb_colors.cpp.o
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/build.make
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /usr/local/lib/libopencv_calib3d.so.3.2.0
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /usr/local/lib/libopencv_core.so.3.2.0
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /usr/local/lib/libopencv_features2d.so.3.2.0
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /usr/local/lib/libopencv_flann.so.3.2.0
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /usr/local/lib/libopencv_highgui.so.3.2.0
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /usr/local/lib/libopencv_imgcodecs.so.3.2.0
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /usr/local/lib/libopencv_imgproc.so.3.2.0
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /usr/local/lib/libopencv_ml.so.3.2.0
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /usr/local/lib/libopencv_objdetect.so.3.2.0
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /usr/local/lib/libopencv_photo.so.3.2.0
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /usr/local/lib/libopencv_shape.so.3.2.0
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /usr/local/lib/libopencv_stitching.so.3.2.0
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /usr/local/lib/libopencv_superres.so.3.2.0
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /usr/local/lib/libopencv_video.so.3.2.0
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /usr/local/lib/libopencv_videoio.so.3.2.0
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /usr/local/lib/libopencv_videostab.so.3.2.0
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /usr/local/lib/libopencv_viz.so.3.2.0
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /opt/ros/jade/lib/librosconsole.so
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /opt/ros/jade/lib/librosconsole_log4cxx.so
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /opt/ros/jade/lib/librosconsole_backend_interface.so
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /usr/lib/liblog4cxx.so
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /opt/ros/jade/lib/libroscpp_serialization.so
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /opt/ros/jade/lib/librostime.so
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /opt/ros/jade/lib/libcpp_common.so
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /usr/local/lib/libopencv_objdetect.so.3.2.0
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /usr/local/lib/libopencv_calib3d.so.3.2.0
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /usr/local/lib/libopencv_features2d.so.3.2.0
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /usr/local/lib/libopencv_flann.so.3.2.0
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /usr/local/lib/libopencv_highgui.so.3.2.0
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /usr/local/lib/libopencv_ml.so.3.2.0
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /usr/local/lib/libopencv_photo.so.3.2.0
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /usr/local/lib/libopencv_video.so.3.2.0
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /usr/local/lib/libopencv_videoio.so.3.2.0
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /usr/local/lib/libopencv_imgcodecs.so.3.2.0
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /usr/local/lib/libopencv_imgproc.so.3.2.0
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: /usr/local/lib/libopencv_core.so.3.2.0
/home/arsovska/Tasks/devel/lib/libcv_bridge.so: vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library /home/arsovska/Tasks/devel/lib/libcv_bridge.so"
	cd /home/arsovska/Tasks/build/vision_opencv/cv_bridge/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cv_bridge.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/build: /home/arsovska/Tasks/devel/lib/libcv_bridge.so
.PHONY : vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/build

vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/requires: vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/cv_bridge.cpp.o.requires
vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/requires: vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/rgb_colors.cpp.o.requires
.PHONY : vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/requires

vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/clean:
	cd /home/arsovska/Tasks/build/vision_opencv/cv_bridge/src && $(CMAKE_COMMAND) -P CMakeFiles/cv_bridge.dir/cmake_clean.cmake
.PHONY : vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/clean

vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/depend:
	cd /home/arsovska/Tasks/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/arsovska/Tasks/src /home/arsovska/Tasks/src/vision_opencv/cv_bridge/src /home/arsovska/Tasks/build /home/arsovska/Tasks/build/vision_opencv/cv_bridge/src /home/arsovska/Tasks/build/vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : vision_opencv/cv_bridge/src/CMakeFiles/cv_bridge.dir/depend
