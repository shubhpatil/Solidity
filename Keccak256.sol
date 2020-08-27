pragma solidity >=0.4.22 <0.6.0;

contract MyContract {
    bytes public _hash = "0x125";
    string public _code = "abc";

    function getKeccak256() public view returns (bytes32) {
        return keccak256(_hash);    // OR keccak256(_code)
    }
}