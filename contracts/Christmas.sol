// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Christmas {
    string private greeting;

    event  GreetingSet(string greeting);

    function setGreeting(string memory _input) external {
        greeting = string(abi.encodePacked("Merry Chritsmas, ", _input));
        emit GreetingSet(greeting);
    }

    function getGreeting() external view returns (string memory) {
        return greeting;
    }
}