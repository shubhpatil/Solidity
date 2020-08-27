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

contract B{

    A a = new A();

    function getNewName() public view returns(string memory){
        return a.getName();
    }

    function setNewName(string memory _name) public {
        a.setName(_name);
    }

}