// SPDX-Licence-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorage;

    //  Creating simple storage contracts - then saves to array
    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    // Call functions on array 
    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber)
        public
    {
        // Address
        // ABI - Application Binary Interface

        // SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        // simpleStorage.store(_simpleStorageNumber);
	simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
    }

    // Read values from simple storage contract
    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        return simpleStorageArray[_simpleStorageIndex].retrieve();
    }
}
