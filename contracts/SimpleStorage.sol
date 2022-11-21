// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

// EVM, Ethereum Virtual Machine
// Avalnanche, Fantom, Polygon

contract SimpleStorage {
    uint256  favoriteNumber; // initializes to 0

    mapping(string => uint256) public nameToFavoriteNumber;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    // uint256[] public favoriteNumbersList;
    People[] public people;

    function store(uint256 _favoriteNumber) public virtual {
        favoriteNumber = _favoriteNumber;
    }

    // view, pure
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    // calldata, memory, storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        // People memory newPerson = People({favoriteNumber: _favoriteNumber, name: _name});
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
// 0xd9145CCE52D386f254917e481eB44e9943F39138