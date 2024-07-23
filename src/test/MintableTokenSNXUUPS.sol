// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.10;

import "lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import "lib/openzeppelin-contracts/contracts/access/Ownable.sol";
import "@synthetixio/core-contracts/contracts/proxy/UUPSImplementation.sol";

contract MintableTokenSNXUUPS is ERC20, Ownable, UUPSImplementation {
    uint8 immutable _decimals;

    /**
     * @param name Token Name
     * @param symbol Token Symbol
     * @param initialSupply Initial Supply
     */
    constructor(
        address owner,
        string memory name,
        string memory symbol,
        uint8 tokenDecimals,
        uint256 initialSupply
    ) payable ERC20(name, symbol) {
        _decimals = tokenDecimals;
        _transferOwnership(owner);
        _mint(owner, initialSupply);
    }

    /**
     * @dev Creates `amount` tokens and assigns them to `to`, increasing
     * the total supply. Only accessible by the contract owner.
     */
    function mint(uint256 amount, address to) external onlyOwner {
        _mint(to, amount);
    }

    function decimals() public view virtual override returns (uint8) {
        return _decimals;
    }

    function upgradeTo(address newImplementation) public override {
        _upgradeTo(newImplementation);
    }
}
