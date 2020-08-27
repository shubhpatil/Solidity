pragma solidity >=0.4.0 <0.6.0;

contract A {

    string name = "Shubh";

    function setName(string memory _name) public {
        name = _name;
    }

    function getName() public view returns(string memory){
        return name;
    }

}

contract B is A {

    string public newName = A.name;

    function getNewName() public view returns(string memory){
        return A.getName();
    }

    function setNewName(string memory _name) public {
        A.setName(_name);
    }

}