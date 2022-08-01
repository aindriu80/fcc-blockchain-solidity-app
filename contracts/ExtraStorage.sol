// SPDX-Licence-Identifier: MIT

pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract ExtraStorage is SimpleStorage {
	//  Add 5 to any number
	// using override and virtual
	function store(uint256 _favoriteNumber) public override {
		favoriteNumber = _favoriteNumber + 5;
	}


}