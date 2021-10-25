---
weight: 1
title: Introduction
type: docs
---

# Ecosystem Hub

Governance, Development and Community resources. This will take you the appropriate resource / information. Cant find what you are looking for? [Open an issue on GitHub](https://github.com/manifoldfinance/hub/issues) or [Ask a question on our forums](https://forums.manifoldfinance.com) 

{{< columns >}}
## Developer Hub

- [VSCode Extensions](https://github.com/manifoldfinance/vscode-recommendations) Curated list
- [@openmev/sdk](https://github.com/manifoldfinance/openmev-sdk) Well-typed Nodejs SDK
- [Docker Hub](https://github.com/openmev/docker-hub)
- [qAbiEncoder](https://github.com/manifoldfinance/qAbiEncode) C Library for q/kdb+ to process EVM ABI
- [qBig Integer](https://github.com/manifoldfinance/qBigInt)
Library for big integer support for q/kdb+
- [qQuarticRoots](https://github.com/manifoldfinance/qQuarticRoots)

<--->

## Community Hub

[![telegram - manifold finance](https://img.shields.io/badge/telegram-manifold_finance-blue?logo=telegram&logoColor=white)](https://t.me/manifoldfinance)  <br />
[![twitter - @foldfinance](https://img.shields.io/static/v1?label=twitter&message=%40foldfinance&color=blue&logo=twitter&logoColor=white)](https://twitter.com/foldfinance) <br />

![Discord](https://img.shields.io/discord/833691260472393729?color=%237289DA&label=Manifold%20Community&logo=discord)
![Discourse posts](https://img.shields.io/discourse/posts?label=Community%20Forums&logo=discourse&server=https%3A%2F%2Fforums.manifoldfinance.com)

{{< /columns >}}


## OpenMEV

The @openmev/sdk offers multiple packages, for example here is an ethers.js provider
using OpenMEVs backend platform to provide trade execution services to end users.

```typescript
/**
* @package OpenMEV Ethereum Provider Example
* @summary Provides RPC Connectivity to DApps/Wallets
*  connects to multiple RPC endpoints
* @tldr: openmev aggregates multiple MEV protection solutions, seamlessly.
* @since 2021.09
*/

import { Wallet } from "@ethersproject/wallet";
import * as providers from "@ethersproject/providers";
import { OpenMEVBundleProvider } from "@OpenMEV/sdk-ethers-provider";
// (...)
```

### Code of Conduct

[Please read our brief and sensible code of conduct](https://github.com/manifoldfinance/.github/blob/master/CODE_OF_CONDUCT.md)

## Support and Help

<ops@manifoldfinnace.com> - or via discord / telegram  <br />
Never send anyone tokens/currency/money/passwords/logins/etc.   <br />
**We will never need these things**.


#### Software Defects

[Full version is found here](https://github.com/manifoldfinance/.github/blob/master/SECURITY.adoc)

At Manifold Finance, Inc, security is a priority. But regardless of
how much effort we put into system security, there may still be
vulnerabilities present. If you discover a vulnerability, we want to
know about it so we can take steps to address it as quickly as possible.
We would like to ask you to help us better protect our clients and our
systems.

### Defect Response

If you think you have discovered a security issue in any of the
our projects, we’d love to hear from you. We will take all
security bugs seriously and if confirmed upon investigation we will
patch it within a reasonable amount of time and release a public
security bulletin discussing the impact and credit the discoverer.

Sam Bacha <sam@manifoldfinnance.com>  <br />
Network Operations <ops@manifoldfinance.com>  <br />
SRE On Call <janitor@manifoldfinance.com>  <br />
