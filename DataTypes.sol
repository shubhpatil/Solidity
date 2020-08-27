pragma solidity >=0.4.22 <0.6.0;

contract MyContract {

    string public name = "Shubh";               // String
    bool public Bool = false;                   // Boolean
    int public Integer = -9999;                 // Signed Integer
    uint public UnsignedInteger = 100;          // Un-signed Integer
    address public MyAddress = msg.sender;      // 20-byte hash Address of sender(Owner)
    uint public timestamp = now;                // Time-stamp of current time
    uint public day = 1 days;                   // seconds, hours, minutes, days, weeks
    int[] public Array = [1, 2, 3];             // Array

    // Constructor
    constructor() public {
        name = "Shubh";
    }

    function getName() public view returns(string memory) {
        return name;
    }

    function setName( string memory _name ) public {
        name = _name;
    }

}