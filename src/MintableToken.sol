// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.10;

import "lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import "lib/openzeppelin-contracts/contracts/access/Ownable.sol";

contract MintableToken is ERC20, Ownable {

	uint8 immutable _decimals;

  /**
   * @param name Token Name
   * @param symbol Token Symbol
   * @param initialSupply Initial Supply
   */
  constructor(address owner, string memory name, string memory symbol, uint8 tokenDecimals, uint256 initialSupply) payable ERC20(name, symbol) {
		_decimals = tokenDecimals;
		_transferOwnership(owner);
    _mint(owner, initialSupply);
  }

  /**
   * @dev Creates `amount` tokens and assigns them to `to`, increasing
   * the total supply. Only accessible by the contract owner.
   */
  function mint(address to, uint256 amount) onlyOwner external {
    _mint(to, amount);
  }

	function decimals() public view virtual override returns (uint8) {
		return _decimals;
	}
}
