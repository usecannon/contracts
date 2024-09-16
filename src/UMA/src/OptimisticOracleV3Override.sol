// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import { OptimisticOracleV3 as OptimisticOracleV3Base } from '@uma/core/contracts/optimistic-oracle-v3/implementation/OptimisticOracleV3.sol';
import { FinderInterface } from '@uma/core/contracts/data-verification-mechanism/interfaces/FinderInterface.sol';
import "lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";


contract OptimisticOracleV3Override is OptimisticOracleV3Base {
      using SafeERC20 for IERC20;

      /**
     * @notice Construct the OptimisticOracleV3 contract.
     * @param _finder keeps track of all contracts within the UMA system based on their interfaceName.
     * @param _defaultCurrency the default currency to bond asserters in assertTruthWithDefaults.
     * @param _defaultLiveness the default liveness for assertions in assertTruthWithDefaults.
     */
    constructor(
        FinderInterface _finder,
        IERC20 _defaultCurrency,
        uint64 _defaultLiveness
    ) OptimisticOracleV3Base(_finder, _defaultCurrency, _defaultLiveness) { }  // solhint-disable line no-empty-blocks
}
