# MyToken

## Overview
MyToken is a Solidity smart contract representing a basic ERC20 token with the functionalities of minting and burning tokens.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Solidity Version
This contract is developed using Solidity version ^0.8.0. Make sure you have the appropriate compiler version installed.

## Functionality
- **Minting Tokens**: Users can mint tokens by calling the `mint` function, specifying the amount of tokens to mint. The contract ensures that the mint amount is greater than zero and does not exceed half of the maximum value of `uint256`.
- **Burning Tokens**: Users can burn tokens by calling the `burn` function, specifying the amount of tokens to burn. The contract ensures that the burn amount is greater than zero and does not exceed 60 tokens.
- **Token Metadata**: The contract stores metadata for the token including its name and symbol.

## Events
- `Mint`: Triggered when tokens are minted. It includes the account address and the minted amount.
- `Burn`: Triggered when tokens are burned. It includes the account address and the burned amount.
