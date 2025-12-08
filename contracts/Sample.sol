//SPDX-License-Identifier: MIT
 
pragma solidity 0.8.14;

contract Sample {
    string public myString = "Hello";

    function updateString(string memory _myString) public {
        myString = _myString;
    }
}