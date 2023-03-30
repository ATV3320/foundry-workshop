//SPDX-License-Identifier: Unlicense
pragma solidity 0.8.18;

contract A{
    address owner;
    uint public theNum;
    event changedNum(address indexed x, uint indexed newnum);

    constructor(){
        owner = msg.sender;
    }

    function changeNum() external {
        theNum++;
        emit changedNum(msg.sender, theNum);
    }

    function changeNum(uint change) external {
        require(change>0 && msg.sender == owner,"not owner");
        theNum+=change;
    }
}