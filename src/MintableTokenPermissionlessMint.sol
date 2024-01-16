// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.10;

import "lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract MintableTokenPermissionlessMint is ERC20 {

	uint8 immutable _decimals;

  /**
   * @param name Token Name
   * @param symbol Token Symbol
   */
  constructor(string memory name, string memory symbol, uint8 tokenDecimals) payable ERC20(name, symbol) {
		_decimals = tokenDecimals;
  }

  /**
   * @dev Creates `amount` tokens and assigns them to `to`, increasing
   * the total supply. Only accessible by the contract owner.
   */
  function mint(uint256 amount, address to) external {
    _mint(to, amount);
  }

	function decimals() public view virtual override returns (uint8) {
		return _decimals;
	}
}
