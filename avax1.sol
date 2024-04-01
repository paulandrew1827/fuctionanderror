// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {
    string public name;
    string public symbol;
    mapping(address => uint256) public balances;

    event Mint(address indexed account, uint256 amount);
    event Burn(address indexed account, uint256 amount);


    constructor() {
        name = "Andrew";
        symbol = "AP";
    }

    function mint(uint256 amount) external {
        require(amount > 0, "Mint amount must be greater than zero");
        assert(amount <= type(uint256).max / 2);

        balances[msg.sender] += amount;
        emit Mint(msg.sender, amount);
    }

    function burn(uint256 amount) external {
        if (amount > 60) {
            revert("Burn amount exceeds maximum limit");
        }
        require(amount > 0, "Burn amount must be greater than zero");
        balances[msg.sender] -= amount;
        emit Burn(msg.sender, amount);
    }

}
