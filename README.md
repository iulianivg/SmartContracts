# SmartContracts

Guidance:

# Sendable.sol

This file contains the smart contract logic for exchanging cryptocurrencies. It allow us to define which ERC20 we can accept and establish a value that we want to exchange for. Furthermore, we can define whether we want to burn the cryptocurrency by send it to 0x0 or 0x0000...1 (in case the cryptocurrency is protected from being sent to 0x0)

# ExampleCoin.sol

This file contains the smart contract logic for the cryptocurrency that we release. We send this cryptocurrency's entire supply to the smart contract created by Sendable.sol, therefore making burning tokens the only way to withdraw ExampleCoins. 



------Not to be reviewed------
# UselessCoin

This is an example of a dead cryptocurrency. The code is exact the same and it satisfies the following conditions:
- Smart contract owners can't create new UselessCoins 
- Smart contract owners can't transact cryptocurrencies from one wallet to another (example: sending UselessCoin from 0x0 back to the original smart contract) 
