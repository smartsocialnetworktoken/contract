pragma solidity ^0.4.17;
import "zeppelin-solidity/contracts/token/ERC20/StandardToken.sol";
import "zeppelin-solidity/contracts/ownership/Ownable.sol";

contract Ssnc is StandardToken, Ownable {
  string public name = "Smart Social Network"; 
  string public symbol = "SSNC";
  uint public decimals = 8;
  uint public INITIAL_SUPPLY = 100000000 * (10 ** decimals);

  function Ssnc() public {
    totalSupply_ = INITIAL_SUPPLY;
    owner = msg.sender;
    balances[msg.sender] = INITIAL_SUPPLY;
  }
}
