// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import { MockOracleAncillary as MockOracleAncillaryBase } from '@uma/core/contracts/data-verification-mechanism/test/MockOracleAncillary.sol';

contract MockOracleAncillaryOverride is MockOracleAncillaryBase {
    constructor(
        address _finder,
        address _timerAddress
    ) MockOracleAncillaryBase(_finder, _timerAddress) { }
}
