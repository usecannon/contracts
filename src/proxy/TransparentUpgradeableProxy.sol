// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import {TransparentUpgradeableProxy as TransparentUpgradeableProxyBase} from "lib/openzeppelin-contracts/contracts/proxy/transparent/TransparentUpgradeableProxy.sol";

contract TransparentUpgradeableProxy is TransparentUpgradeableProxyBase {
  constructor(address _logic, address admin_, bytes memory _data) payable TransparentUpgradeableProxyBase(_logic, admin_, _data) {

  }
}
