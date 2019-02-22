pragma solidity ^0.5.2;  

import "http://github.com/OpenZeppelin/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "http://github.com/OpenZeppelin/openzeppelin-solidity/contracts/ownership/Ownable.sol";
import "http://github.com/OpenZeppelin/openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";

  /**  
  * @title UselessCoin is basic ERC20 Token  
  */  
contract UselessCoin is ERC20, ERC20Detailed, Ownable{  

  uint256 public initialSupply  = 1000000000000; 
  /**  
  * @dev assign totalSupply to account creating this contract 
  */  
  IERC20 private _token;
  address icoAddress;
  address icoOwner;
  constructor() public payable ERC20Detailed("UselessCoin", "USC", 4) {  

   _mint(msg.sender, initialSupply);

 }
 function assignICO(address _address)public onlyOwner{
     icoAddress = _address;
 }
 function assignOwner(address _address) public onlyOwner{
     icoOwner = _address;
 }
 /// simulate an ICO 
    function buyCoin(address _to) payable public{
        require(msg.value == .1 ether);
        _token = IERC20(icoAddress);
        _token.transferFrom(icoOwner,_to, 250000000);
    }
    
}
