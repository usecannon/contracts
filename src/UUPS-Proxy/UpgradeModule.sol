//SPDX-License-Identifier: MIT
pragma solidity >=0.8.11 <0.9.0;

import { UUPSImplementation } from "@synthetixio/core-contracts/contracts/proxy/UUPSImplementation.sol";
import { OwnableStorage } from "@synthetixio/core-contracts/contracts/ownership/OwnableStorage.sol";

contract UpgradeModule is UUPSImplementation {
    function upgradeTo(address newImplementation) public override {
        OwnableStorage.onlyOwner();

        // If the current implementation is the same as the new one, we return blank to avoid the NoChange Error event.
        // This is helpful when trying to build the package for the first time, so that we can smoothly upgrade the proxy impl
        if (newImplementation == this.getImplementation()) {
          emit Upgraded(address(this), newImplementation); 
          return;
        }
        
        _upgradeTo(newImplementation);
    }
}
