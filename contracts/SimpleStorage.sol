// SPDX-Licence-Identifier: MIT
pragma solidity ^0.8.8; // 0.8.8

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

    struct People {
        uint256 favouriteNumber;
        string name;
    }

    mapping(string =>uint256)public nameTofavouriteNumber;

    // uint256[] public favouriteNumberList;
    People[] public people;


    // view pure
    function store(uint256 _favourite) public {
        favouriteNumber = _favouriteNumber;
    }

    function retreve() public view returns (wint256) {
        return favouriteNumber;
    }

    // calldata, memory, storage
    function addPerson(string memory _name, uint256 _favouriteNumber) public {
	People memory newPerson = People({favouriteNumber; _favouriteNumber, name: _name});
	people.push(newPerson);
    nameTofavouriteNumber[_name] = favouriteNumber;
    }
}
