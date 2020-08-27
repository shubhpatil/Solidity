pragma solidity >=0.4.22 <0.6.0;

contract MyContract {

    address public owner;
    uint public balance = 10;

    constructor() public {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(owner == msg.sender, "Only Contract Owner Can Execute this function :)");
        _;
    }

    function getAddress() public onlyOwner view returns (address) {
        return owner;
    }

    function sendMoney(uint _amount) public {
        assert(_amount != 0);
        if(_amount > balance){
            revert("You Dont have Enough Balance !");
        }else {
            balance -= _amount;
        }
    }

}