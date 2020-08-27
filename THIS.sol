pragma solidity >=0.4.22 <0.6.0;

contract MyContract {
    // Balance of Contract
    function getThis() public view returns (uint) {
        return address(this).balance;
    }

    // Balance of the specified account address
    function getBalance(address _address) public view returns (uint) {
        return address(_address).balance;
    }
}