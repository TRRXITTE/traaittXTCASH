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
        {0, "bc37a906324a096c79c853d4b1838e87af45c47a735f99c0311f86da5b9bf2df"},
        {2, "712e54cba2e6b08388e1f716091447b4077f2df4fc63ff78e22829f386bd84db"},
        {100, "f60d6f3b841b2edaaa4534e9d2e498c3e624f1b0c7f65d01507cd0f0cc9a3382"},
        {100000, "88eebf5551f79b0d35b6c50e11128d087ba6a9c239c53d8fc6221a0655cc3d7e"},
        {200000, "6977268547352703b0c84e3dd50943703b4f635641f1c0cf75f355f7a54616ff"},
        {300000, "c1bfea154a19b7454fd50aa188888755ac26999b227b3ece21bf4851854031c7"},
        {400000, "96b6c428d0908eda4d7d254b3c5f5a1c1b91b3b07e99dc7ad508eec7721f2523"},
        {440000, "4f6fc0e1d0546a906b2e3bc947bf4aa4d0a7e06d3efd3c6aa4f7913af9e72964"}};
} // namespace CryptoNote