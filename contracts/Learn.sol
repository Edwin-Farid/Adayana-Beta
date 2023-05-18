// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Learn{
    string public textRaw;
    address private owner;
    uint256 public angka;

    constructor() {
        owner = msg.sender;
    }

    function setText(string calldata _text) external{
        textRaw = _text;
    }

    function count() external{
        require(msg.sender == owner,"Anda bukan owner");

        angka++;
    }

    function getOwner() public view returns(address){
        return owner;
    }


}