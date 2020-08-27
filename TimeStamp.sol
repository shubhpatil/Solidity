pragma solidity >=0.4.22 <0.6.0;

contract MyContract {

    uint currentTimeStamp = 1576150967;
    uint public peopleCount = 0;
    mapping(uint => Person) public people;

    struct Person{
        uint id;
        string firstName;
        string lastName;
    }

    modifier blockTimeReady() {
        require(block.timestamp >= currentTimeStamp);
        _;
    }

    function addPerson(string memory _fname, string memory _lname) public blockTimeReady {
        peopleCount += 1;
        people[peopleCount] = Person(peopleCount, _fname, _lname);
    }

}