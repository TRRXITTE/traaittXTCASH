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
include src/CMakeFiles/SubWallets.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/SubWallets.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/SubWallets.dir/flags.make

src/CMakeFiles/SubWallets.dir/subwallets/SubWallet.cpp.o: src/CMakeFiles/SubWallets.dir/flags.make
src/CMakeFiles/SubWallets.dir/subwallets/SubWallet.cpp.o: ../src/subwallets/SubWallet.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/traaitt/Documents/GitHub/traaittCASH/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/SubWallets.dir/subwallets/SubWallet.cpp.o"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/src && /usr/local/opt/llvm@8/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SubWallets.dir/subwallets/SubWallet.cpp.o -c /Users/traaitt/Documents/GitHub/traaittCASH/src/subwallets/SubWallet.cpp

src/CMakeFiles/SubWallets.dir/subwallets/SubWallet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SubWallets.dir/subwallets/SubWallet.cpp.i"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/src && /usr/local/opt/llvm@8/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/traaitt/Documents/GitHub/traaittCASH/src/subwallets/SubWallet.cpp > CMakeFiles/SubWallets.dir/subwallets/SubWallet.cpp.i

src/CMakeFiles/SubWallets.dir/subwallets/SubWallet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SubWallets.dir/subwallets/SubWallet.cpp.s"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/src && /usr/local/opt/llvm@8/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/traaitt/Documents/GitHub/traaittCASH/src/subwallets/SubWallet.cpp -o CMakeFiles/SubWallets.dir/subwallets/SubWallet.cpp.s

src/CMakeFiles/SubWallets.dir/subwallets/SubWallets.cpp.o: src/CMakeFiles/SubWallets.dir/flags.make
src/CMakeFiles/SubWallets.dir/subwallets/SubWallets.cpp.o: ../src/subwallets/SubWallets.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/traaitt/Documents/GitHub/traaittCASH/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/SubWallets.dir/subwallets/SubWallets.cpp.o"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/src && /usr/local/opt/llvm@8/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SubWallets.dir/subwallets/SubWallets.cpp.o -c /Users/traaitt/Documents/GitHub/traaittCASH/src/subwallets/SubWallets.cpp

src/CMakeFiles/SubWallets.dir/subwallets/SubWallets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SubWallets.dir/subwallets/SubWallets.cpp.i"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/src && /usr/local/opt/llvm@8/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/traaitt/Documents/GitHub/traaittCASH/src/subwallets/SubWallets.cpp > CMakeFiles/SubWallets.dir/subwallets/SubWallets.cpp.i

src/CMakeFiles/SubWallets.dir/subwallets/SubWallets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SubWallets.dir/subwallets/SubWallets.cpp.s"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/src && /usr/local/opt/llvm@8/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/traaitt/Documents/GitHub/traaittCASH/src/subwallets/SubWallets.cpp -o CMakeFiles/SubWallets.dir/subwallets/SubWallets.cpp.s

# Object files for target SubWallets
SubWallets_OBJECTS = \
"CMakeFiles/SubWallets.dir/subwallets/SubWallet.cpp.o" \
"CMakeFiles/SubWallets.dir/subwallets/SubWallets.cpp.o"

# External object files for target SubWallets
SubWallets_EXTERNAL_OBJECTS =

src/libSubWallets.a: src/CMakeFiles/SubWallets.dir/subwallets/SubWallet.cpp.o
src/libSubWallets.a: src/CMakeFiles/SubWallets.dir/subwallets/SubWallets.cpp.o
src/libSubWallets.a: src/CMakeFiles/SubWallets.dir/build.make
src/libSubWallets.a: src/CMakeFiles/SubWallets.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/traaitt/Documents/GitHub/traaittCASH/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libSubWallets.a"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/src && $(CMAKE_COMMAND) -P CMakeFiles/SubWallets.dir/cmake_clean_target.cmake
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SubWallets.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/SubWallets.dir/build: src/libSubWallets.a

.PHONY : src/CMakeFiles/SubWallets.dir/build

src/CMakeFiles/SubWallets.dir/clean:
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/src && $(CMAKE_COMMAND) -P CMakeFiles/SubWallets.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/SubWallets.dir/clean

src/CMakeFiles/SubWallets.dir/depend:
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/traaitt/Documents/GitHub/traaittCASH /Users/traaitt/Documents/GitHub/traaittCASH/src /Users/traaitt/Documents/GitHub/traaittCASH/build /Users/traaitt/Documents/GitHub/traaittCASH/build/src /Users/traaitt/Documents/GitHub/traaittCASH/build/src/CMakeFiles/SubWallets.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/SubWallets.dir/depend

