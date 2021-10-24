---
title: "Math in Solidity"
date: 2021-10-10T16:30:31-07:00
summary: "Solidity is an object-oriented, high-level language for implementing smart contracts. Smart contracts are programs which govern the behavior of accounts within the Ethereum state."
---

# Testing Highlighting 


```solidity
contract Sqrt {
  function sqrt (uint x) public pure returns (uint y) {
    if (x > 0) {
      y = 1;

      uint z = x;
      if (z >= 0x100000000000000000000000000000000) { y <<= 64; z >>= 128; }
      if (z >= 0x10000000000000000) { y <<= 32; z >>= 64; }
      if (z >= 0x100000000) { y <<= 16; z >>= 32; }
      if (z >= 0x10000) { y <<= 8; z >>= 16; }
      if (z >= 0x100) { y <<= 4; z >>= 8; }
      if (z >= 0x10) { y <<= 2; z >>= 4; }
      if (z >= 0x4) { y <<= 1; }

      // Seven iterations should be enough for 128 bits of precision
      y = (x / y + y) / 2;
      y = (x / y + y) / 2;
      y = (x / y + y) / 2;
      y = (x / y + y) / 2;
      y = (x / y + y) / 2;
      y = (x / y + y) / 2;
      y = (x / y + y) / 2;
    } else y = 0;
  }
}