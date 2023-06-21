// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ManualToken {
  mapping(address => uint256) public balanceOf;
  mapping(address => mapping(address => uint256)) public allowance;

  function _transfer(address from, address to, uint256 amount) public {
    require(amount <= allowance[from][msg.sender]);

    balanceOf[from] -= amount;

    balanceOf[to] += amount;
  }
}
