// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import { OracleSpoke as OracleSpokeBase } from '@uma/core/contracts/cross-chain-oracle/OracleSpoke.sol';

contract OracleSpokeOverride is OracleSpokeBase {
    constructor(
        address _finder,
        address _timerAddress
    ) OracleSpokeBase(_finder, _timerAddress) { }
}
