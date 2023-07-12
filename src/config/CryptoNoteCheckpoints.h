// Copyright (c) 2012-2017, The CryptoNote developers, The Bytecoin developers
//
// This file is part of Bytecoin.
//
// Bytecoin is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// Bytecoin is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public License
// along with Bytecoin.  If not, see <http://www.gnu.org/licenses/>.

#pragma once

#include <cstddef>
#include <initializer_list>

namespace CryptoNote
{
    struct CheckpointData
    {
        uint32_t index;
        const char *blockId;
    };


    const std::initializer_list<CheckpointData> CHECKPOINTS = {
        {0, "0c1465a002c8ddfa3331865ad23824f1ed8cb13a5c88a266daa4345e087f1552"},
        {2, "465dea996bb5d92e82edf57bfd386a255d831418e365b6c91a345a6b648212bf"},
        {5000, "2fbf2f596b37f7b084a66be2a23f60b524f0658ab944a9ca025caee324e2b277"},
		{10000, "9f0d9bb55256bab38c34ab6e762b87a9488709ce6126f6d30987c4c028000c99"},
        {15000, "b52e5a3f13bd95fcc74f7905793b13c940095cca067a6beca1bb131e1b3a1835"},
		{20000, "a3046d68c2b66a6d26c77e0fda1b60bb16fc20efbe4e73cadaf8e4cc245ca455"},
		{25000, "fc3562ec4ea22da04424970423982d14461fff2a18d41598923b7812794eb4ff"},
		{30000, "5911e0b3729aaaf59e8c0b4378db70b616d4a512169d9fc1c9d9b1a6a0af926f"},
        {35000, "e60be55575958eb6eb0fd293bb4937674d70b9fd8d7d5a6bb740a03d31523429"},
		{40000, "7c6b559b6b441abebb7b6c017998af022b20dcbe3fb8e79c2481d3692cbac1c2"},
		{45000, "4f8b6e3e3bcbf2b79071876c277a471fefd669fa89ad796f55bbda92b1728046"},
        {50000, "89c3f6efe360bbd84fd048ee645128c4a18ab498cf259ecbda7269172a687e83"},
		{55000, "587580ae47baa2315d1f6e51737aa874fd553a6b1feca0e6ed09717cf472a734"},
        {60000, "bfbca427e34b2ae068e3988b15947e582e79bd0967e0ecb7b7efe6b6c599a7bb"},
		{75000, "b4d7219155c73569585eefebc62ebb6c5d8c26143934910263ee4c2f958604da"},
		{100000, "8f5df019aab1ce4e6e14b77218326916dd6f41867a6cf61bb9397332da11a6c3"},
		{145000, "32b5f771f0bc227fcfb065c6d9321d2d00ab33473d1da6bc6d77bbaa8db3a874"},
        {175000, "8b3e806a2b65a276f4b93fcf15264d2ac98cc3279c7e74434bf7955727f9eb16"},
        {275000, "f73ccd2667b8a875d8c68d454ae5a0923296eb78ac9ed005e8ae33e2db7cab00"},
        {375000, "794d572d32b66f9402af00ef2c57aef666da84ccc8455c49212bde098eb14344"},
        {400000, "e7909b0c997209f9cf46aff4767ef4cb0b00403a270d1a16ff8e34480bb647d1"},
		{445000, "4d2a973389bf112e68c883417af359ee52628bf43faea14cb27f25b30ac6a1dd"},
		{475000, "dc014d821198708ce3df1b429aebf7a65e3b833c57d3d901092bc6f4c212dabc"},
		{500000, "b9436beb40260cc6993a67b96640b6cbee06cc84f89ea107db054c36f1f90163"},
        {545000, "3b9f3930f4faae2991e58fa3b840151b58ba01e86e24fba9af18aa8609035526"},
        {600000, "9788ba855d87d0764c63a58420d466bdc64d132af564a5279d878c1315459ebd"},
        {680000, "fa486a33265938b5d4ba22823fdbecca096b45e90008bfdfa6338825e05c69b3"}};
        
} // namespace CryptoNote

