pragma solidity >=0.4.0 <0.7.0;

contract MyContract {

    struct Person {
        string name;
        uint age;
        uint phone;
    }

    mapping(address => Person) public persons;
    uint public totalPersons;

    function addPerson(string memory _name, uint _age, uint _phone) public {
        totalPersons++;
        persons[msg.sender] = Person(_name, _age, _phone);
    }

}