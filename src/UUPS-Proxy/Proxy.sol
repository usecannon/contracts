//SPDX-License-Identifier: MIT
pragma solidity >=0.8.11 <0.9.0;

import {UUPSProxyWithOwner} from "@synthetixio/core-contracts/contracts/proxy/UUPSProxyWithOwner.sol";

/**
 * Upgradeable Proxy Contract
 *
 * Visit https://github.com/usecannon/upgradeable-proxy to learn more
 */
contract Proxy is UUPSProxyWithOwner {
    constructor(
        address firstImplementation,
        address initialOwner
    ) UUPSProxyWithOwner(firstImplementation, initialOwner) {} // solhint-disable line no-empty-blocks
}
