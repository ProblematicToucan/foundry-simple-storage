// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorages;

    function createSimpleStorageContract() public {
        simpleStorages.push(new SimpleStorage());
    }

    function sfStore(
        uint256 _simpleStorageIndex,
        uint256 _newSimpleStorageNumber
    ) public {
        SimpleStorage mySimpleStorage = simpleStorages[_simpleStorageIndex];
        mySimpleStorage.store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        SimpleStorage mySimpleStorage = simpleStorages[_simpleStorageIndex];
        return mySimpleStorage.myFavoriteNumber();
    }
}
