pragma solidity ^0.4.8;

/*
* @author Jean Carlos Nunez
*/

contract Feline {
    function utterance() public returns (bytes32);
}

contract Cat is Feline {
    function utterance() public returns (bytes32) { return "miaow"; }
}


