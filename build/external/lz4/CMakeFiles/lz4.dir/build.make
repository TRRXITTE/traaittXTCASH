# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.19.6/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.19.6/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/traaitt/Documents/GitHub/traaittCASH

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/traaitt/Documents/GitHub/traaittCASH/build

# Include any dependencies generated for this target.
include external/lz4/CMakeFiles/lz4.dir/depend.make

# Include the progress variables for this target.
include external/lz4/CMakeFiles/lz4.dir/progress.make

# Include the compile flags for this target's objects.
include external/lz4/CMakeFiles/lz4.dir/flags.make

external/lz4/CMakeFiles/lz4.dir/lz4.c.o: external/lz4/CMakeFiles/lz4.dir/flags.make
external/lz4/CMakeFiles/lz4.dir/lz4.c.o: ../external/lz4/lz4.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/traaitt/Documents/GitHub/traaittCASH/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object external/lz4/CMakeFiles/lz4.dir/lz4.c.o"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/lz4 && /usr/local/opt/llvm@8/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lz4.dir/lz4.c.o -c /Users/traaitt/Documents/GitHub/traaittCASH/external/lz4/lz4.c

external/lz4/CMakeFiles/lz4.dir/lz4.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lz4.dir/lz4.c.i"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/lz4 && /usr/local/opt/llvm@8/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/traaitt/Documents/GitHub/traaittCASH/external/lz4/lz4.c > CMakeFiles/lz4.dir/lz4.c.i

external/lz4/CMakeFiles/lz4.dir/lz4.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lz4.dir/lz4.c.s"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/lz4 && /usr/local/opt/llvm@8/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/traaitt/Documents/GitHub/traaittCASH/external/lz4/lz4.c -o CMakeFiles/lz4.dir/lz4.c.s

external/lz4/CMakeFiles/lz4.dir/lz4hc.c.o: external/lz4/CMakeFiles/lz4.dir/flags.make
external/lz4/CMakeFiles/lz4.dir/lz4hc.c.o: ../external/lz4/lz4hc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/traaitt/Documents/GitHub/traaittCASH/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object external/lz4/CMakeFiles/lz4.dir/lz4hc.c.o"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/lz4 && /usr/local/opt/llvm@8/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lz4.dir/lz4hc.c.o -c /Users/traaitt/Documents/GitHub/traaittCASH/external/lz4/lz4hc.c

external/lz4/CMakeFiles/lz4.dir/lz4hc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lz4.dir/lz4hc.c.i"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/lz4 && /usr/local/opt/llvm@8/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/traaitt/Documents/GitHub/traaittCASH/external/lz4/lz4hc.c > CMakeFiles/lz4.dir/lz4hc.c.i

external/lz4/CMakeFiles/lz4.dir/lz4hc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lz4.dir/lz4hc.c.s"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/lz4 && /usr/local/opt/llvm@8/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/traaitt/Documents/GitHub/traaittCASH/external/lz4/lz4hc.c -o CMakeFiles/lz4.dir/lz4hc.c.s

external/lz4/CMakeFiles/lz4.dir/lz4frame.c.o: external/lz4/CMakeFiles/lz4.dir/flags.make
external/lz4/CMakeFiles/lz4.dir/lz4frame.c.o: ../external/lz4/lz4frame.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/traaitt/Documents/GitHub/traaittCASH/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object external/lz4/CMakeFiles/lz4.dir/lz4frame.c.o"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/lz4 && /usr/local/opt/llvm@8/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lz4.dir/lz4frame.c.o -c /Users/traaitt/Documents/GitHub/traaittCASH/external/lz4/lz4frame.c

external/lz4/CMakeFiles/lz4.dir/lz4frame.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lz4.dir/lz4frame.c.i"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/lz4 && /usr/local/opt/llvm@8/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/traaitt/Documents/GitHub/traaittCASH/external/lz4/lz4frame.c > CMakeFiles/lz4.dir/lz4frame.c.i

external/lz4/CMakeFiles/lz4.dir/lz4frame.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lz4.dir/lz4frame.c.s"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/lz4 && /usr/local/opt/llvm@8/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/traaitt/Documents/GitHub/traaittCASH/external/lz4/lz4frame.c -o CMakeFiles/lz4.dir/lz4frame.c.s

external/lz4/CMakeFiles/lz4.dir/xxhash.c.o: external/lz4/CMakeFiles/lz4.dir/flags.make
external/lz4/CMakeFiles/lz4.dir/xxhash.c.o: ../external/lz4/xxhash.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/traaitt/Documents/GitHub/traaittCASH/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object external/lz4/CMakeFiles/lz4.dir/xxhash.c.o"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/lz4 && /usr/local/opt/llvm@8/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lz4.dir/xxhash.c.o -c /Users/traaitt/Documents/GitHub/traaittCASH/external/lz4/xxhash.c

external/lz4/CMakeFiles/lz4.dir/xxhash.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lz4.dir/xxhash.c.i"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/lz4 && /usr/local/opt/llvm@8/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/traaitt/Documents/GitHub/traaittCASH/external/lz4/xxhash.c > CMakeFiles/lz4.dir/xxhash.c.i

external/lz4/CMakeFiles/lz4.dir/xxhash.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lz4.dir/xxhash.c.s"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/lz4 && /usr/local/opt/llvm@8/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/traaitt/Documents/GitHub/traaittCASH/external/lz4/xxhash.c -o CMakeFiles/lz4.dir/xxhash.c.s

# Object files for target lz4
lz4_OBJECTS = \
"CMakeFiles/lz4.dir/lz4.c.o" \
"CMakeFiles/lz4.dir/lz4hc.c.o" \
"CMakeFiles/lz4.dir/lz4frame.c.o" \
"CMakeFiles/lz4.dir/xxhash.c.o"

# External object files for target lz4
lz4_EXTERNAL_OBJECTS =

external/lz4/liblz4.a: external/lz4/CMakeFiles/lz4.dir/lz4.c.o
external/lz4/liblz4.a: external/lz4/CMakeFiles/lz4.dir/lz4hc.c.o
external/lz4/liblz4.a: external/lz4/CMakeFiles/lz4.dir/lz4frame.c.o
external/lz4/liblz4.a: external/lz4/CMakeFiles/lz4.dir/xxhash.c.o
external/lz4/liblz4.a: external/lz4/CMakeFiles/lz4.dir/build.make
external/lz4/liblz4.a: external/lz4/CMakeFiles/lz4.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/traaitt/Documents/GitHub/traaittCASH/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C static library liblz4.a"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/lz4 && $(CMAKE_COMMAND) -P CMakeFiles/lz4.dir/cmake_clean_target.cmake
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/lz4 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lz4.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/lz4/CMakeFiles/lz4.dir/build: external/lz4/liblz4.a

.PHONY : external/lz4/CMakeFiles/lz4.dir/build

external/lz4/CMakeFiles/lz4.dir/clean:
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/lz4 && $(CMAKE_COMMAND) -P CMakeFiles/lz4.dir/cmake_clean.cmake
.PHONY : external/lz4/CMakeFiles/lz4.dir/clean

external/lz4/CMakeFiles/lz4.dir/depend:
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/traaitt/Documents/GitHub/traaittCASH /Users/traaitt/Documents/GitHub/traaittCASH/external/lz4 /Users/traaitt/Documents/GitHub/traaittCASH/build /Users/traaitt/Documents/GitHub/traaittCASH/build/external/lz4 /Users/traaitt/Documents/GitHub/traaittCASH/build/external/lz4/CMakeFiles/lz4.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/lz4/CMakeFiles/lz4.dir/depend
