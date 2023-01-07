// Copyright (c) 2018-2019, The TurtleCoin Developers
// Copyright (c) 2020, TRRXITTE Int., incorporate

// Please see the included LICENSE file for more information
#pragma once




#include <string>

const std::string nonwindowsAsciiArt = "\n                                                                      \n"
"CCCC U U RRR RRR EEE N N CCC Y Y|||2020 - TODAY||||||\n"
"CC   U U RR  RR  E   NNN C    Y |||||||||||||||||||||\n"
"CCCC UUU RRR RRR EEE N N CCC  Y |||||||||||||||||||||\n"
"                                TRRXITTE INT. XTCASH \n"
"HTTPS://TRAAITTCASH.COM         |||||||||||||||||||||\n";

const std::string windowsAsciiArt ="\n\n"
"CCCC U U RRR RRR EEE N N CCC Y Y|||2020 - TODAY||||||\n"
"CC   U U RR  RR  E   NNN C    Y |||||||||||||||||||||\n"
"CCCC UUU RRR RRR EEE N N CCC  Y |||||||||||||||||||||\n"
"                                TRRXITTE INT. XTCASH \n"
"HTTPS://TRAAITTCASH.COM         |||||||||||||||||||||\n";

#ifdef _WIN32

const std::string asciiArt = windowsAsciiArt;

#else
const std::string asciiArt = nonwindowsAsciiArt;
#endif
