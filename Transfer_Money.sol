pragma solidity >=0.4.22 <0.6.0;

contract MyContract {

    address public myAddress = msg.sender;
    address payable receiverAddress;
    uint public _transferAmount;

    mapping(address => uint) public balances;

    modifier ownerOnly() {
        require(msg.sender == myAddress);
        _;
    }

    function setReceiverAddress(address payable _receiver) public {
        receiverAddress = _receiver;
    }

    function getReceiverAddress() public view returns(address) {
        return receiverAddress;
    }

    function transferAmount(uint amount) public ownerOnly {
        _transferAmount = amount;
    }

    function transaction() public payable ownerOnly {
        balances[myAddress] += 1;
        receiverAddress.transfer(msg.value);
    }

}