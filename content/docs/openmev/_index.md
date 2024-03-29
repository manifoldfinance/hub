---
weight: 10
title: OpenMEV Documentation
description: Knowledgebase for OpenMEV
---


# OpenMEV Platform Documentation

- Strategy and Implementation details
- End User information
- Help Desk and Troubleshooting
- Searcher Integration
- Formulas and Proofs
- Technical: Technical overview on specific category

## SDK

NodeJS Packaging

- [@openmev/ethers-provider](https://github.com/manifoldfinance/openmev-provider) 
- [use-react-wallet](https://github.com/manifoldfinance/openmev-sdk/tree/fix/repo-subdir/packages/use-react-wallet)
  * react-hook with zustand state mgmt for providing wallet connectivity to OpenMEV RPC Endpoints
- [@openmev/sdk](https://github.com/manifoldfinance/openmev-sdk/tree/master)

Do you require integration in a different programming language? Reach out to us and we can help facilitate a solution for you

## SushiSwap

The SushiSwap integration provides a service that realizes profit by transaction
batching for the purposes of arbitrage by controlling transaction ordering.

Right now every user sends a transaction directly to the network mempool and
thus give away the arbitrage, front-running, back-running opportunities to
miners(or random bots).

OpenMEV provides a credibly neutral platform that enables aggregation of
transactions (batching) for the purposes of extracting MEV profits and returning
them back to the traders.

### What is `credible neutrality`?

> "...that it is not just neutrality that is required here, it is credible
> neutrality. That is, it is not just enough for a mechanism to not be designed
> to favor specific people or outcomes over others; it’s also crucially
> important for a mechanism to be able to convince a large and diverse group of
> people that the mechanism at least makes that basic effort to be fair."
>
> - Vitalik Buterin,
>   [credible neutrality as a guiding principle](https://nakamoto.com/credible-neutrality/)

This ethos is at the heart of OpenMEV. Part of establishing credible neutrality
is having a clear and comprehensive rulebook that regulates off-chain behavior
and activities. Our assumption concerning governance is that methods and
processes that work in legacy markets may not be applicable in adversarial
environments such as permissionless blockchains. With that understanding it is
important not to rely solely on such systems and mechanics long term.

Discuss this and more on our
[discourse forums](https://forums.manifoldfinance.com)
