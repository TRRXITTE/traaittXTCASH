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
include external/argon2/CMakeFiles/argon2.dir/depend.make

# Include the progress variables for this target.
include external/argon2/CMakeFiles/argon2.dir/progress.make

# Include the compile flags for this target's objects.
include external/argon2/CMakeFiles/argon2.dir/flags.make

external/argon2/CMakeFiles/argon2.dir/lib/argon2.c.o: external/argon2/CMakeFiles/argon2.dir/flags.make
external/argon2/CMakeFiles/argon2.dir/lib/argon2.c.o: ../external/argon2/lib/argon2.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/traaitt/Documents/GitHub/traaittCASH/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object external/argon2/CMakeFiles/argon2.dir/lib/argon2.c.o"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/argon2.dir/lib/argon2.c.o -c /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/lib/argon2.c

external/argon2/CMakeFiles/argon2.dir/lib/argon2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/argon2.dir/lib/argon2.c.i"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/lib/argon2.c > CMakeFiles/argon2.dir/lib/argon2.c.i

external/argon2/CMakeFiles/argon2.dir/lib/argon2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/argon2.dir/lib/argon2.c.s"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/lib/argon2.c -o CMakeFiles/argon2.dir/lib/argon2.c.s

external/argon2/CMakeFiles/argon2.dir/lib/core.c.o: external/argon2/CMakeFiles/argon2.dir/flags.make
external/argon2/CMakeFiles/argon2.dir/lib/core.c.o: ../external/argon2/lib/core.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/traaitt/Documents/GitHub/traaittCASH/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object external/argon2/CMakeFiles/argon2.dir/lib/core.c.o"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/argon2.dir/lib/core.c.o -c /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/lib/core.c

external/argon2/CMakeFiles/argon2.dir/lib/core.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/argon2.dir/lib/core.c.i"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/lib/core.c > CMakeFiles/argon2.dir/lib/core.c.i

external/argon2/CMakeFiles/argon2.dir/lib/core.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/argon2.dir/lib/core.c.s"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/lib/core.c -o CMakeFiles/argon2.dir/lib/core.c.s

external/argon2/CMakeFiles/argon2.dir/lib/encoding.c.o: external/argon2/CMakeFiles/argon2.dir/flags.make
external/argon2/CMakeFiles/argon2.dir/lib/encoding.c.o: ../external/argon2/lib/encoding.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/traaitt/Documents/GitHub/traaittCASH/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object external/argon2/CMakeFiles/argon2.dir/lib/encoding.c.o"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/argon2.dir/lib/encoding.c.o -c /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/lib/encoding.c

external/argon2/CMakeFiles/argon2.dir/lib/encoding.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/argon2.dir/lib/encoding.c.i"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/lib/encoding.c > CMakeFiles/argon2.dir/lib/encoding.c.i

external/argon2/CMakeFiles/argon2.dir/lib/encoding.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/argon2.dir/lib/encoding.c.s"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/lib/encoding.c -o CMakeFiles/argon2.dir/lib/encoding.c.s

external/argon2/CMakeFiles/argon2.dir/lib/genkat.c.o: external/argon2/CMakeFiles/argon2.dir/flags.make
external/argon2/CMakeFiles/argon2.dir/lib/genkat.c.o: ../external/argon2/lib/genkat.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/traaitt/Documents/GitHub/traaittCASH/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object external/argon2/CMakeFiles/argon2.dir/lib/genkat.c.o"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/argon2.dir/lib/genkat.c.o -c /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/lib/genkat.c

external/argon2/CMakeFiles/argon2.dir/lib/genkat.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/argon2.dir/lib/genkat.c.i"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/lib/genkat.c > CMakeFiles/argon2.dir/lib/genkat.c.i

external/argon2/CMakeFiles/argon2.dir/lib/genkat.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/argon2.dir/lib/genkat.c.s"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/lib/genkat.c -o CMakeFiles/argon2.dir/lib/genkat.c.s

external/argon2/CMakeFiles/argon2.dir/lib/impl-select.c.o: external/argon2/CMakeFiles/argon2.dir/flags.make
external/argon2/CMakeFiles/argon2.dir/lib/impl-select.c.o: ../external/argon2/lib/impl-select.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/traaitt/Documents/GitHub/traaittCASH/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object external/argon2/CMakeFiles/argon2.dir/lib/impl-select.c.o"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/argon2.dir/lib/impl-select.c.o -c /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/lib/impl-select.c

external/argon2/CMakeFiles/argon2.dir/lib/impl-select.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/argon2.dir/lib/impl-select.c.i"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/lib/impl-select.c > CMakeFiles/argon2.dir/lib/impl-select.c.i

external/argon2/CMakeFiles/argon2.dir/lib/impl-select.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/argon2.dir/lib/impl-select.c.s"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/lib/impl-select.c -o CMakeFiles/argon2.dir/lib/impl-select.c.s

external/argon2/CMakeFiles/argon2.dir/lib/thread.c.o: external/argon2/CMakeFiles/argon2.dir/flags.make
external/argon2/CMakeFiles/argon2.dir/lib/thread.c.o: ../external/argon2/lib/thread.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/traaitt/Documents/GitHub/traaittCASH/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object external/argon2/CMakeFiles/argon2.dir/lib/thread.c.o"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/argon2.dir/lib/thread.c.o -c /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/lib/thread.c

external/argon2/CMakeFiles/argon2.dir/lib/thread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/argon2.dir/lib/thread.c.i"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/lib/thread.c > CMakeFiles/argon2.dir/lib/thread.c.i

external/argon2/CMakeFiles/argon2.dir/lib/thread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/argon2.dir/lib/thread.c.s"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/lib/thread.c -o CMakeFiles/argon2.dir/lib/thread.c.s

external/argon2/CMakeFiles/argon2.dir/lib/blake2/blake2.c.o: external/argon2/CMakeFiles/argon2.dir/flags.make
external/argon2/CMakeFiles/argon2.dir/lib/blake2/blake2.c.o: ../external/argon2/lib/blake2/blake2.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/traaitt/Documents/GitHub/traaittCASH/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object external/argon2/CMakeFiles/argon2.dir/lib/blake2/blake2.c.o"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/argon2.dir/lib/blake2/blake2.c.o -c /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/lib/blake2/blake2.c

external/argon2/CMakeFiles/argon2.dir/lib/blake2/blake2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/argon2.dir/lib/blake2/blake2.c.i"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/lib/blake2/blake2.c > CMakeFiles/argon2.dir/lib/blake2/blake2.c.i

external/argon2/CMakeFiles/argon2.dir/lib/blake2/blake2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/argon2.dir/lib/blake2/blake2.c.s"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/lib/blake2/blake2.c -o CMakeFiles/argon2.dir/lib/blake2/blake2.c.s

external/argon2/CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-sse2.c.o: external/argon2/CMakeFiles/argon2.dir/flags.make
external/argon2/CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-sse2.c.o: ../external/argon2/arch/x86_64/lib/argon2-sse2.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/traaitt/Documents/GitHub/traaittCASH/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object external/argon2/CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-sse2.c.o"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-sse2.c.o -c /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/arch/x86_64/lib/argon2-sse2.c

external/argon2/CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-sse2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-sse2.c.i"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/arch/x86_64/lib/argon2-sse2.c > CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-sse2.c.i

external/argon2/CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-sse2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-sse2.c.s"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/arch/x86_64/lib/argon2-sse2.c -o CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-sse2.c.s

external/argon2/CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-sse3.c.o: external/argon2/CMakeFiles/argon2.dir/flags.make
external/argon2/CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-sse3.c.o: ../external/argon2/arch/x86_64/lib/argon2-sse3.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/traaitt/Documents/GitHub/traaittCASH/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object external/argon2/CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-sse3.c.o"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-sse3.c.o -c /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/arch/x86_64/lib/argon2-sse3.c

external/argon2/CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-sse3.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-sse3.c.i"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/arch/x86_64/lib/argon2-sse3.c > CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-sse3.c.i

external/argon2/CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-sse3.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-sse3.c.s"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/arch/x86_64/lib/argon2-sse3.c -o CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-sse3.c.s

external/argon2/CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-xop.c.o: external/argon2/CMakeFiles/argon2.dir/flags.make
external/argon2/CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-xop.c.o: ../external/argon2/arch/x86_64/lib/argon2-xop.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/traaitt/Documents/GitHub/traaittCASH/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object external/argon2/CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-xop.c.o"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-xop.c.o -c /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/arch/x86_64/lib/argon2-xop.c

external/argon2/CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-xop.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-xop.c.i"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/arch/x86_64/lib/argon2-xop.c > CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-xop.c.i

external/argon2/CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-xop.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-xop.c.s"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/arch/x86_64/lib/argon2-xop.c -o CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-xop.c.s

external/argon2/CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-avx2.c.o: external/argon2/CMakeFiles/argon2.dir/flags.make
external/argon2/CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-avx2.c.o: ../external/argon2/arch/x86_64/lib/argon2-avx2.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/traaitt/Documents/GitHub/traaittCASH/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object external/argon2/CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-avx2.c.o"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-avx2.c.o -c /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/arch/x86_64/lib/argon2-avx2.c

external/argon2/CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-avx2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-avx2.c.i"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/arch/x86_64/lib/argon2-avx2.c > CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-avx2.c.i

external/argon2/CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-avx2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-avx2.c.s"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/arch/x86_64/lib/argon2-avx2.c -o CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-avx2.c.s

external/argon2/CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-avx512f.c.o: external/argon2/CMakeFiles/argon2.dir/flags.make
external/argon2/CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-avx512f.c.o: ../external/argon2/arch/x86_64/lib/argon2-avx512f.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/traaitt/Documents/GitHub/traaittCASH/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object external/argon2/CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-avx512f.c.o"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-avx512f.c.o -c /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/arch/x86_64/lib/argon2-avx512f.c

external/argon2/CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-avx512f.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-avx512f.c.i"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/arch/x86_64/lib/argon2-avx512f.c > CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-avx512f.c.i

external/argon2/CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-avx512f.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-avx512f.c.s"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/arch/x86_64/lib/argon2-avx512f.c -o CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-avx512f.c.s

external/argon2/CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-arch.c.o: external/argon2/CMakeFiles/argon2.dir/flags.make
external/argon2/CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-arch.c.o: ../external/argon2/arch/x86_64/lib/argon2-arch.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/traaitt/Documents/GitHub/traaittCASH/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object external/argon2/CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-arch.c.o"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-arch.c.o -c /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/arch/x86_64/lib/argon2-arch.c

external/argon2/CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-arch.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-arch.c.i"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/arch/x86_64/lib/argon2-arch.c > CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-arch.c.i

external/argon2/CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-arch.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-arch.c.s"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2/arch/x86_64/lib/argon2-arch.c -o CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-arch.c.s

# Object files for target argon2
argon2_OBJECTS = \
"CMakeFiles/argon2.dir/lib/argon2.c.o" \
"CMakeFiles/argon2.dir/lib/core.c.o" \
"CMakeFiles/argon2.dir/lib/encoding.c.o" \
"CMakeFiles/argon2.dir/lib/genkat.c.o" \
"CMakeFiles/argon2.dir/lib/impl-select.c.o" \
"CMakeFiles/argon2.dir/lib/thread.c.o" \
"CMakeFiles/argon2.dir/lib/blake2/blake2.c.o" \
"CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-sse2.c.o" \
"CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-sse3.c.o" \
"CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-xop.c.o" \
"CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-avx2.c.o" \
"CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-avx512f.c.o" \
"CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-arch.c.o"

# External object files for target argon2
argon2_EXTERNAL_OBJECTS =

external/argon2/libargon2.a: external/argon2/CMakeFiles/argon2.dir/lib/argon2.c.o
external/argon2/libargon2.a: external/argon2/CMakeFiles/argon2.dir/lib/core.c.o
external/argon2/libargon2.a: external/argon2/CMakeFiles/argon2.dir/lib/encoding.c.o
external/argon2/libargon2.a: external/argon2/CMakeFiles/argon2.dir/lib/genkat.c.o
external/argon2/libargon2.a: external/argon2/CMakeFiles/argon2.dir/lib/impl-select.c.o
external/argon2/libargon2.a: external/argon2/CMakeFiles/argon2.dir/lib/thread.c.o
external/argon2/libargon2.a: external/argon2/CMakeFiles/argon2.dir/lib/blake2/blake2.c.o
external/argon2/libargon2.a: external/argon2/CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-sse2.c.o
external/argon2/libargon2.a: external/argon2/CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-sse3.c.o
external/argon2/libargon2.a: external/argon2/CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-xop.c.o
external/argon2/libargon2.a: external/argon2/CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-avx2.c.o
external/argon2/libargon2.a: external/argon2/CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-avx512f.c.o
external/argon2/libargon2.a: external/argon2/CMakeFiles/argon2.dir/arch/x86_64/lib/argon2-arch.c.o
external/argon2/libargon2.a: external/argon2/CMakeFiles/argon2.dir/build.make
external/argon2/libargon2.a: external/argon2/CMakeFiles/argon2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/traaitt/Documents/GitHub/traaittCASH/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking C static library libargon2.a"
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && $(CMAKE_COMMAND) -P CMakeFiles/argon2.dir/cmake_clean_target.cmake
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/argon2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/argon2/CMakeFiles/argon2.dir/build: external/argon2/libargon2.a

.PHONY : external/argon2/CMakeFiles/argon2.dir/build

external/argon2/CMakeFiles/argon2.dir/clean:
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 && $(CMAKE_COMMAND) -P CMakeFiles/argon2.dir/cmake_clean.cmake
.PHONY : external/argon2/CMakeFiles/argon2.dir/clean

external/argon2/CMakeFiles/argon2.dir/depend:
	cd /Users/traaitt/Documents/GitHub/traaittCASH/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/traaitt/Documents/GitHub/traaittCASH /Users/traaitt/Documents/GitHub/traaittCASH/external/argon2 /Users/traaitt/Documents/GitHub/traaittCASH/build /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2 /Users/traaitt/Documents/GitHub/traaittCASH/build/external/argon2/CMakeFiles/argon2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/argon2/CMakeFiles/argon2.dir/depend

