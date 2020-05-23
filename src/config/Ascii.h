// Copyright (c) 2018-2019, The TurtleCoin Developers
// Copyright (c) 2020, The traaittCASH Developers

// Please see the included LICENSE file for more information
#pragma once




#include <string>

const std::string nonwindowsAsciiArt = "\n                                                                      \n"
"█████████  ███████ ██   ██\n"
"   ██     ██       ██   ██\n"
"   ██     ██       ███████CCCC U U RRR RRR EEE N N CCC Y Y|||2020 - TODAY||||||||\n"
"   ██     ██       ██   ██CC   U U RR  RR  E   NNN C    Y |||||||||||||||||||||||\n"
"   ██      ███████ ██   ██CCCC UUU RRR RRR EEE N N CCC  Y |||||||||||||||||||||||\n"
"$$$$$$$$$$$$$$$$$$$$$$$$$$$$$                             |||||||||||||||||||||||\n"
"$$$$$$$$$$$$$$$$$$$$$$$$$$$$$   HTTPS://TRAAITTCASH.COM   |||||||||||||||||||||||\n";

const std::string windowsAsciiArt ="\n\n"
"888888888$$$$$$$$$ $$$    $$$\n"
"888888888$$$$$$$$$ $$$    $$$\n"
"  8888   $$$       $$$    $$$ CCCC U U RRR RRR EEE N N CCC Y Y|||2020 - TODAY||||||\n"
"  8888   $$$       $$$$$$$$$$ CC   U U RR  RR  E   NNN C    Y |||||||||||||||||||||\n"
"  8888   $$$       $$$    $$$ CCCC UUU RRR RRR EEE N N CCC  Y |||||||||||||||||||||\n"
"  8888   $$$$$$$$$ $$$    $$$                                 |||||||||||||||||||||\n"
"  8888   $$$$$$$$$ $$$    $$$   HTTPS://TRAAITTCASH.COM       |||||||||||||||||||||\n";

#ifdef _WIN32

const std::string asciiArt = windowsAsciiArt;

#else
const std::string asciiArt = nonwindowsAsciiArt;
#endif
