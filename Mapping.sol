pragma solidity >=0.4.22 <0.6.0;

contract MyContract {

    uint public peopleCount = 0;
    mapping(uint => Person) public people;

    struct Person{
        uint id;
        string firstName;
        string lastName;
    }

    function addPerson(string memory _fname, string memory _lname) public {
        peopleCount += 1;
        people[peopleCount] = Person(peopleCount, _fname, _lname);
    }

}