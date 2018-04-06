pragma solidity ^0.4.8; 

/*
* @author Jean Carlos Nunez
*/
contract D {
    uint x;
    function D(uint a) payable public {
        x = a;
    }
}


contract C {
    D d = new D(4); // will be executed as part of C's constructor

    function createD(uint arg) public {
        D newD = new D(arg);
    }

    function createAndEndowD(uint arg, uint amount) public {
        // Send ether along with the creation
        D newD = (new D).value(amount)(arg);
    }
}
