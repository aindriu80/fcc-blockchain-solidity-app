// SPDX-Licence-Identifier: MIT
pragma solidity ^0.8.8; // 0.8.8

contract SimpleStorage{
	// Simple types
	// boolean, uint, int, address, bytes 
	bool hasFavouriteNumber = true;
	uint256  favouriteNumber = 5;
	string favouriteNumberInText = "Five";
	int256 favouriteInt = -5;
	address myAddress = 0x233223;
	bytes32 favouriteBytes = "cat";
	// This get initialed to zero
	uint256 favouriteNumberTwo;  

}