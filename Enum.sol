pragma solidity >=0.4.0 <0.6.0;

contract MyContract {

   enum Technology{ Angular, React, Hyperledger }
   Technology choice;
   Technology constant defaultChoice = Technology.React;

   function setHyperledger() public {
      choice = Technology.Hyperledger;
   }

   function getChoice() public view returns (Technology) {
      return choice;
   }

   function getDefaultChoice() public pure returns (Technology) {
      return defaultChoice;
   }

}