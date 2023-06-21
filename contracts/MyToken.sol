// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    // uint256 initialSupplyy = 1e18;

    constructor(uint256 initialSupply) ERC20("MYTOKEN", "MT") {
        _mint(msg.sender, initialSupply);
    }
}
