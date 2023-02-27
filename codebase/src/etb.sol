// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Foo {
    uint public x = 1;

    function set(uint _x) external {
        x = _x;
    }

    function double() external {
        x = x*2;
    }
}

contract FooTest{
    Foo foo;
    
    function setUp() public {
        foo = new Foo();
    }

    function testDouble() public {
        require(foo.x() == 1);
        foo.double();
        require(foo.x()==2);
    }

    function testFailDouble() public {
        require(foo.x()==1);
        foo.double();
        require(foo.x()==4);
    }
}