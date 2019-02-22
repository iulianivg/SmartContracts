pragma solidity ^0.5.2;  

import "http://github.com/OpenZeppelin/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "http://github.com/OpenZeppelin/openzeppelin-solidity/contracts/ownership/Ownable.sol";
import "http://github.com/OpenZeppelin/openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";

  /**  
  * @title ExampleToken is basic ERC20 Token  
  */  
contract ExampleCoin is ERC20, ERC20Detailed, Ownable{  

  uint256 public initialSupply  = 100000000000000000000000000; 
  

  constructor() public payable ERC20Detailed("ExampleCoin", "EXC", 18) {  
  /**  
  * @dev assign totalSupply to account creating this contract 
  */  
   _mint(msg.sender, initialSupply);

 }
    
}
