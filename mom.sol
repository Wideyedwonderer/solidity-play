pragma solidity ^0.4.17;

contract SuperMom {
    address public firstBornAddress;
    address public secondBornAddress;
    uint public totalEthereumSent;
    
    constructor(address firstBorn, address secondBorn) public {
        firstBornAddress = firstBorn;
        secondBornAddress = secondBorn;
    }
    function give() public payable {
        firstBornAddress.transfer(msg.value/2);
        secondBornAddress.transfer(msg.value/2);
        totalEthereumSent+=msg.value;
    }
    
}