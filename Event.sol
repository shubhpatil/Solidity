pragma solidity >=0.4.22 <0.6.0;

contract MyContract {

    address public myAddress = msg.sender;
    address payable receiverAddress;

    mapping(address => uint) public balances;

    event Purchase ( address indexed _buyer, uint _amount );

    constructor( address payable _wallet ) public {
        receiverAddress = _wallet;
    }

    function getReceiverAddress() public view returns(address) {
        return receiverAddress;
    }

    function transaction() public payable {
        balances[myAddress] += 1;
        receiverAddress.transfer(msg.value);
        emit Purchase(myAddress, 1);
    }

}