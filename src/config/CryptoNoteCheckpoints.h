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
        {440000, "4f6fc0e1d0546a906b2e3bc947bf4aa4d0a7e06d3efd3c6aa4f7913af9e72964"},
        {500000, "e7edb0c87ee5e7ab70642e9afb8c9b44a04ffbf92583634ff71b9d68f95331b6"},
        {600000, "e617faf540c49f140f3414e042a0d17c603c216c58cf6a698ec01b0d9a6e641e"},
        {700000, "ed58df51bddffa31b4b667599d4ebb8cbefbab610db7207ca59cb3df341d1d42"},
        {800000, "1fd712068a8c81d5c7c1106469bdb8c9bd29194bb5511a797e4e001e2336acd5"},
        {900000, "7883b3eff553bf45e31cebaf6da32b29ffee1dca1409a94a71ab341bd998426b"},
        {1000000, "709602cab8eb1fe2b5a343ffea31fcd4c7e7f847bc6d1c62bdc1da4f67bc0af2"},
        {1100000, "353c82a30793e7407b2ff00508c70e0bd828429be8786d20ead3ba5dc9a32853"},
        {1200000, "56b8539e345cf67c25e73ba96877fc371b1d8aaf376079525ce278b592cc3c16"},
        {1300000, "28c9e6e41229951c3c63eec6f673c5c13d4d90655e83810f336794da69a93e6b"},
        {1400000, "5f13cc4293af4c24c11ad3302ce35a731ae4d0a2e1cee8dce0e1069b307fc66d"},
        {1500000, "b03ce6835c503eee46ea824db55b656f9e9204a6f579b48ddcdd2f2dbb089ac0"},
        {1600000, "c280e995d7eca1aa976fb30c399189354f04097989d7bac031222f98af2acb5e"},
        {1700000, "8ef9b85d0f9882e41c3f88324bc6bc5795986a44d1aa3d88853299110068f141"},
        {1800000, "47b708a8bb4137b28e807ddb87f8af283910993b021348a3b0a3c27ddfea7b76"},
        {1825000, "cdfe7bc7b389d0206599189b3c0f03163ce548fd6faa3d9db599984871a43284"}};
} // namespace CryptoNote