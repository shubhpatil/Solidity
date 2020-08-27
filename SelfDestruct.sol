pragma solidity >=0.4.22 <0.6.0;

contract MyContract {

    address public owner = msg.sender;
    uint public balance;

    function ReceiveEther() public payable returns (uint) {
        balance = address(this).balance;
        return balance;
    }

    // calling selfdestruct(address) sends all of the contract's current balance to "address"
    function selfDestruct(address payable _address) public {
        selfdestruct(_address);
    }
}