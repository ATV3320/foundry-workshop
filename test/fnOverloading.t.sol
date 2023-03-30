//SPDX-License-Identifier: Unlicense
pragma solidity 0.8.18;

import "forge-std/Test.sol";
import "../src/fnOverloading.sol";

contract fnOverloadingTest is Test {
    functionOverloading public myContract;
    function setUp() public {
        myContract = new functionOverloading();
    }

    function testIncrement() public {
        myContract.changeNum();
        require(myContract.theNum()==1, "not equal lol");
    }

    function testIncrementMod() public {
        uint p = 21;
        myContract.changeNum(p);
        require(myContract.theNum()==p,"not equal to p");
    }

    function testFailIncrementMod() public {
        uint p = 20;
        myContract.changeNum(p);
        require(myContract.theNum()==1,"correct answer somehow");
    }

    function testFailDiffAccounts() public {
        vm.prank(address(1));
        myContract.changeNum(2);
        require(myContract.theNum()==2,"won't happen");
    }
}