
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;
import "forge-std/Test.sol";
import "../src/oops1.sol";
contract oops1Test{

    A a;
    
    function setUp() public {
        a = new A();
    }

    function testNormalFn() public {
        require(a.theNum() == 0, "must be zero at the start");
        a.changeNum();
        require(a.theNum()==1,"number must increase by 1 only");
    }

    function testOtherFn() public {
        uint x = 4;
        require(a.theNum()==0,"must be zero at the start");
        a.changeNum(x);
        require(a.theNum()==x,"it needs to be increased by x");
    }
}