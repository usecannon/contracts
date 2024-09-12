// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import { Store as StoreBase } from '@uma/core/contracts/data-verification-mechanism/implementation/Store.sol';
import { FixedPoint } from '@uma/core/contracts/common/implementation/FixedPoint.sol';

contract StoreOverride is StoreBase {
      constructor(
        uint256 _fixedOracleFeePerSecondPerPfc,
        uint256 _weeklyDelayFeePerSecondPerPfc,
        address _timerAddress
    ) StoreBase(FixedPoint.fromUnscaledUint(_fixedOracleFeePerSecondPerPfc), FixedPoint.fromUnscaledUint(_weeklyDelayFeePerSecondPerPfc), _timerAddress) { }

        /**
     * @notice Sets a new final fee for a particular currency.
     * @param currency defines the token currency used to pay the final fee.
     * @param newFinalFee final fee amount.
     */
    function setFinalFee(address currency, uint256 newFinalFee)
        public
    {
        setFinalFee(currency, FixedPoint.Unsigned(newFinalFee));
    }
}
