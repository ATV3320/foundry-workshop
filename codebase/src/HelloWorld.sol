// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "ds-test/test.sol";

interface CheatCodes {
   // Gets address for a given private key, (privateKey) => (address)
   function addr(uint256) external returns (address);
}

contract HelloWorld {
  string private greeting;
  uint public version = 0;
  
  address public addr1;
  CheatCodes cheats = CheatCodes(HEVM_ADDRESS);
  
  constructor (string memory _greeting) {
    greeting = _greeting;
    addr1 = cheats.addr(1);
  }

  function greet() public view returns(string memory) {
    return greeting;
  }

  function updateGreeting(string memory _greeting) public {
    version += 1;
    greeting = _greeting;

  }
}