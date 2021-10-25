---
title: "UniSwap V3"
date: 2021-10-14T16:30:31-07:00
summary: "Uniswap V3"
---

# UniSwap V3 

_For Uniswap V3,
  $\left(
  r_1 + \frac{C_1}{\sqrt{\mathcal{A}}-1}
  \right) \cdot
  \left(
  r_2 + \frac{C_2}{\sqrt{\mathcal{A}}-1}
  \right) = \frac{
  \mathcal{A} \cdot C_1 \cdot C_2}{(\sqrt{\mathcal{A}} -1)^2}$
  and the formula from the white paper

$(x+\frac{L}{\sqrt{pb}})(y+L\sqrt{pa}) = L^2$

equation (2.2) page 2 from Adams, H., Zinsmeister, N., Salem moody, M., River Keefer, uniswaporg, & Robinson, D. (2021). Uniswap v3 Core.

are in fact **equivalent**.

This can be seen by equating their notation with ours in the following way:

$L = \frac{\sqrt{\mathcal{A} \cdot C_1 \cdot C_2}}{\sqrt{\mathcal{A}} -1}$

$x = r_1$

$y = r_1$

$pa = \frac{C_1 \cdot \mathcal{A}}{C_2}$

$pb = \frac{C_1}{C_2 \cdot \mathcal{A}}$

In particular, given any $L, pa, pb > 0$, one should be able to back out the corresponding $C_1, C_2, \mathcal{A}$ using the equation set above and arrive at:

$\mathcal{A} = \sqrt{pa \cdot pb}$

$C_1 = \frac{L[(pa \cdot pb)^\frac{1}{4}-1]}{\sqrt{pb}}$

$C_2 = L[(pa \cdot pb)^\frac{1}{4}-1] \sqrt{pa}$

Thus, our formula, same as the official formula, does not assume price range symmetry. There is therefore no need for $A_{lower}$ and $A_{upper}$.