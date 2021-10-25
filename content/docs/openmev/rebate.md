---
weight: 15
title: Rebating Transaction Costs
description: Overview of OpenMEV Platform
---

# Rebating Transaction Costs

Rebating a transaction is determined by:

- Is the function that is called in the transaction eligible?

  - By tracking contract function calls we are better able to provide
    observability in the rebating process, we can also coordinate with teams
    wishing to provide more incentives for specific actions and behaviors

- If yes, what is the percentage that can be rebated?

  - This percentage value is a protocol value that can be adjusted

- What is the transaction cost for the eligible transaction?

  - Thi s the value that the end user utilized in submitting their transaction.

- Calculate the Gas Reporting Index value

  - This uses the gas pricing information from api.txprice.com to calculate the
    gas pricing information to be used in calculating the rebate amount for your
    transaction

- Calculate the rebate amount from the bundle profit surplus
  - We take how much profit the arbitrage made and split it among all eligible
    trades within that bundle

## Rebate Mechanism

1. Eligible transactions are rebated based on the 80th confidence interval for
   gas estimation pricing.

2. This is proportionally distributed based on transactional weight. _Note: a
   naive formula would consider pairings, then slippage tolerance and finally
   transactional amount_

3. The amount of compensation is the remainderless fees to miners and network
   operational transactional costs.

4. Compensation payouts occur no later than a half hour

### Contract Function Eligibility

|                    **$function_calls**                    | **%eligible** |
| :-------------------------------------------------------: | :-----------: |
|                 swapExactTokensForTokens                  |      100      |
|                   swapExactTokensForETH                   |      100      |
|                   swapExactETHForTokens                   |      100      |
|                   swapETHForExactTokens                   |      100      |
|                       getAmountsOut                       |     null      |
|                      addLiquidityETH                      |      50       |
|                       addLiquidity                        |      50       |
|                 swapTokensForExactTokens                  |      100      |
|                       getAmountOut                        |     null      |
|               removeLiquidityETHWithPermit                |      100      |
|                   swapTokensForExactETH                   |      100      |
|                 removeLiquidityWithPermit                 |      25       |
|                    removeLiquidityETH                     |      25       |
|                      removeLiquidity                      |      25       |
|                          factory                          |     null      |
|    swapExactTokensForETHSupportingFeeOnTransferTokens     |       #       |
|   swapExactTokensForTokensSupportingFeeOnTransferTokens   |       #       |
|                       getAmountsIn                        |     null      |
|                           WETH                            |     null      |
|    swapExactETHForTokensSupportingFeeOnTransferTokens     |       #       |
|                        getAmountIn                        |     null      |
| removeLiquidityETHWithPermitSupportingFeeOnTransferTokens |       #       |
|      removeLiquidityETHSupportingFeeOnTransferTokens      |       #       |

## Rebate Calculations

_Note_: naive implementation, expect changes

bundleCost = mev bribe + bundleTxs[1,2,...]

gasAllowance = mev bribe - bundleTxs[1,2,...]

BundleTransactionGas[1,2,...] = Individual Gas Cost

BundleId = The Block Number (or hash?) in which the bundle was included

max_gasRebate = (BundleId(BundleTransactionGas[1,2,...]))

```json
{
  "confidence": 80,
  "price": 150,
  "maxPriorityFeePerGas": 1.75,
  "maxFeePerGas": 100
}
```

### Workflow Diagram

<Image
  src="/GAS_REBATE.svg"
  alt="gas-rebate-diagram"
  width={750}
  height={750}
/>
