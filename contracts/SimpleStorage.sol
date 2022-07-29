// SPDX-Licence-Identifier: MIT
pragma solidity ^0.8.8; // 0.8.8

// EVM, Ethereum Virtual Machine
// Avalanche, Fantom, Polygon

contract SimpleStorage {
    // Simple types
    // boolean, uint, int, address, bytes
    bool hasFavouriteNumber = true;
    uint256 favouriteNumber = 5;
    string favouriteNumberInText = "Five";
    int256 favouriteInt = -5;
    address myAddress = 0x233223;
    bytes32 favouriteBytes = "cat";
    // This get initialed to zero
    uint256 favouriteNumberTwo;
    People public person = People({favouriteNumber: 2, name: "Aindriú"});

    // Creating a struct
    struct People {
        uint256 favouriteNumber;
        string name;
    }

    mapping(string =>uint256)public nameTofavouriteNumber;

    // uint256[] public favouriteNumberList;
    // creating a function that modifies the state of the blockchain
    People[] public people;

    // view pure
    // creating a function that does not modifies the state of the blockchain
    function store(uint256 _favourite) public {
        favouriteNumber = _favouriteNumber;
    }

    function retreve() public view returns (wint256) {
        return favouriteNumber;
    }

    // calldata, memory, storage
    // specifying different data locaiton
    function addPerson(string memory _name, uint256 _favouriteNumber) public {
	People memory newPerson = People({favouriteNumber; _favouriteNumber, name: _name});
	people.push(newPerson);
    nameTofavouriteNumber[_name] = favouriteNumber;
    }
}
