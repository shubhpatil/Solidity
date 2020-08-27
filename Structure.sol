pragma solidity >=0.4.22 <0.6.0;

contract MyContract {

    Person[] public people;
    int public peopleCount = 0;

    struct Person{
        string firstName;
        string lastName;
    }

    function addPerson(string memory _fname, string memory _lname) public {
        people.push(Person(_fname, _lname));
        peopleCount += 1;
    }

}