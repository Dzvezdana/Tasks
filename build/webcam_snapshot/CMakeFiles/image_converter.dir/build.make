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
include webcam_snapshot/CMakeFiles/image_converter.dir/depend.make

# Include the progress variables for this target.
include webcam_snapshot/CMakeFiles/image_converter.dir/progress.make

# Include the compile flags for this target's objects.
include webcam_snapshot/CMakeFiles/image_converter.dir/flags.make

webcam_snapshot/CMakeFiles/image_converter.dir/src/image_converter.cpp.o: webcam_snapshot/CMakeFiles/image_converter.dir/flags.make
webcam_snapshot/CMakeFiles/image_converter.dir/src/image_converter.cpp.o: /home/arsovska/Tasks/src/webcam_snapshot/src/image_converter.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/arsovska/Tasks/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object webcam_snapshot/CMakeFiles/image_converter.dir/src/image_converter.cpp.o"
	cd /home/arsovska/Tasks/build/webcam_snapshot && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/image_converter.dir/src/image_converter.cpp.o -c /home/arsovska/Tasks/src/webcam_snapshot/src/image_converter.cpp

webcam_snapshot/CMakeFiles/image_converter.dir/src/image_converter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/image_converter.dir/src/image_converter.cpp.i"
	cd /home/arsovska/Tasks/build/webcam_snapshot && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/arsovska/Tasks/src/webcam_snapshot/src/image_converter.cpp > CMakeFiles/image_converter.dir/src/image_converter.cpp.i

webcam_snapshot/CMakeFiles/image_converter.dir/src/image_converter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/image_converter.dir/src/image_converter.cpp.s"
	cd /home/arsovska/Tasks/build/webcam_snapshot && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/arsovska/Tasks/src/webcam_snapshot/src/image_converter.cpp -o CMakeFiles/image_converter.dir/src/image_converter.cpp.s

webcam_snapshot/CMakeFiles/image_converter.dir/src/image_converter.cpp.o.requires:
.PHONY : webcam_snapshot/CMakeFiles/image_converter.dir/src/image_converter.cpp.o.requires

webcam_snapshot/CMakeFiles/image_converter.dir/src/image_converter.cpp.o.provides: webcam_snapshot/CMakeFiles/image_converter.dir/src/image_converter.cpp.o.requires
	$(MAKE) -f webcam_snapshot/CMakeFiles/image_converter.dir/build.make webcam_snapshot/CMakeFiles/image_converter.dir/src/image_converter.cpp.o.provides.build
.PHONY : webcam_snapshot/CMakeFiles/image_converter.dir/src/image_converter.cpp.o.provides

webcam_snapshot/CMakeFiles/image_converter.dir/src/image_converter.cpp.o.provides.build: webcam_snapshot/CMakeFiles/image_converter.dir/src/image_converter.cpp.o

# Object files for target image_converter
image_converter_OBJECTS = \
"CMakeFiles/image_converter.dir/src/image_converter.cpp.o"

# External object files for target image_converter
image_converter_EXTERNAL_OBJECTS =

/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: webcam_snapshot/CMakeFiles/image_converter.dir/src/image_converter.cpp.o
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: webcam_snapshot/CMakeFiles/image_converter.dir/build.make
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /home/arsovska/Tasks/devel/lib/libusb_cam.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /opt/ros/jade/lib/libcv_bridge.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /opt/ros/jade/lib/libimage_transport.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /opt/ros/jade/lib/libmessage_filters.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /opt/ros/jade/lib/libclass_loader.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/libPocoFoundation.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libdl.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /opt/ros/jade/lib/libroscpp.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /opt/ros/jade/lib/librosconsole.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /opt/ros/jade/lib/librosconsole_log4cxx.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /opt/ros/jade/lib/librosconsole_backend_interface.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/liblog4cxx.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /opt/ros/jade/lib/libxmlrpcpp.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /opt/ros/jade/lib/libroslib.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /opt/ros/jade/lib/librospack.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libpython2.7.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /opt/ros/jade/lib/libroscpp_serialization.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /opt/ros/jade/lib/librostime.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /opt/ros/jade/lib/libcpp_common.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/local/lib/libopencv_calib3d.so.3.2.0
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/local/lib/libopencv_core.so.3.2.0
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/local/lib/libopencv_features2d.so.3.2.0
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/local/lib/libopencv_flann.so.3.2.0
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/local/lib/libopencv_highgui.so.3.2.0
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/local/lib/libopencv_imgcodecs.so.3.2.0
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/local/lib/libopencv_imgproc.so.3.2.0
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/local/lib/libopencv_ml.so.3.2.0
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/local/lib/libopencv_objdetect.so.3.2.0
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/local/lib/libopencv_photo.so.3.2.0
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/local/lib/libopencv_shape.so.3.2.0
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/local/lib/libopencv_stitching.so.3.2.0
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/local/lib/libopencv_superres.so.3.2.0
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/local/lib/libopencv_video.so.3.2.0
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/local/lib/libopencv_videoio.so.3.2.0
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/local/lib/libopencv_videostab.so.3.2.0
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/local/lib/libopencv_viz.so.3.2.0
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /opt/ros/jade/lib/libcamera_info_manager.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /opt/ros/jade/lib/libimage_transport.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /opt/ros/jade/lib/libmessage_filters.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /opt/ros/jade/lib/libclass_loader.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/libPocoFoundation.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libdl.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /opt/ros/jade/lib/libroscpp.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /opt/ros/jade/lib/librosconsole.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /opt/ros/jade/lib/librosconsole_log4cxx.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /opt/ros/jade/lib/librosconsole_backend_interface.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/liblog4cxx.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /opt/ros/jade/lib/libxmlrpcpp.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /opt/ros/jade/lib/libroslib.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /opt/ros/jade/lib/librospack.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libpython2.7.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /opt/ros/jade/lib/libroscpp_serialization.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /opt/ros/jade/lib/librostime.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /opt/ros/jade/lib/libcpp_common.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/local/lib/libopencv_objdetect.so.3.2.0
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/local/lib/libopencv_calib3d.so.3.2.0
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/local/lib/libopencv_features2d.so.3.2.0
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/local/lib/libopencv_flann.so.3.2.0
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/local/lib/libopencv_highgui.so.3.2.0
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/local/lib/libopencv_ml.so.3.2.0
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/local/lib/libopencv_photo.so.3.2.0
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/local/lib/libopencv_video.so.3.2.0
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/local/lib/libopencv_videoio.so.3.2.0
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/local/lib/libopencv_imgcodecs.so.3.2.0
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/local/lib/libopencv_imgproc.so.3.2.0
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: /usr/local/lib/libopencv_core.so.3.2.0
/home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter: webcam_snapshot/CMakeFiles/image_converter.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter"
	cd /home/arsovska/Tasks/build/webcam_snapshot && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/image_converter.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
webcam_snapshot/CMakeFiles/image_converter.dir/build: /home/arsovska/Tasks/devel/lib/webcam_snapshot/image_converter
.PHONY : webcam_snapshot/CMakeFiles/image_converter.dir/build

webcam_snapshot/CMakeFiles/image_converter.dir/requires: webcam_snapshot/CMakeFiles/image_converter.dir/src/image_converter.cpp.o.requires
.PHONY : webcam_snapshot/CMakeFiles/image_converter.dir/requires

webcam_snapshot/CMakeFiles/image_converter.dir/clean:
	cd /home/arsovska/Tasks/build/webcam_snapshot && $(CMAKE_COMMAND) -P CMakeFiles/image_converter.dir/cmake_clean.cmake
.PHONY : webcam_snapshot/CMakeFiles/image_converter.dir/clean

webcam_snapshot/CMakeFiles/image_converter.dir/depend:
	cd /home/arsovska/Tasks/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/arsovska/Tasks/src /home/arsovska/Tasks/src/webcam_snapshot /home/arsovska/Tasks/build /home/arsovska/Tasks/build/webcam_snapshot /home/arsovska/Tasks/build/webcam_snapshot/CMakeFiles/image_converter.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : webcam_snapshot/CMakeFiles/image_converter.dir/depend

