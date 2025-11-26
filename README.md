# 114-1 Econometrics (I) — Homework Assignments  
TA : **張文誠**  

本專案收錄 114-1 學期《計量經濟學（一）》各次作業的題目說明與示範程式。

---

## 📘 Homework 1 — Variance and Covariance using the \( M_i \) Matrix  

### 題目說明
Students are asked to compute:  
1. The numerator of the **variance** of \( X \)  
2. The numerator of the **covariance** between \( X \) and \( Y \)  

using the definition based on the centering matrix  
\[
M_i = I - \frac{1}{N}\mathbf{1}\mathbf{1}^T
\]

### 要求
- Use **R** to perform the calculations.  
- Include clear **comments** explaining each step.  
- Do **not** directly use `var()` or `cov()`.  
- Verify that  
  \[
  X'M_iY = \sum_i (X_i - \bar{X})(Y_i - \bar{Y})
  \]  
  and confirm consistency with built-in functions.

---

## 📗 Homework 2 — Eigenvalues and Eigenvectors  

### 題目說明
Let  
\[
A = 
\begin{bmatrix}
1 & 2 & 3\\
2 & 9 & 6\\
3 & 6 & 7
\end{bmatrix}
\]

Tasks:  
1. Find the **eigenvalues** and **eigenvectors** of \( A \).  
2. Verify that:  
   - \( \mathrm{tr}(A) = \sum \text{eigenvalues} \)  
   - \( \det(A) = \prod \text{eigenvalues} \)  
   - The eigenvectors are **orthonormal**.  
3. Determine whether \( A \) is a **full-rank** matrix.

---

## 📘 Homework 3 — Square Root of a Matrix  

### 題目說明
Given the matrix  
\[
A =
\begin{bmatrix}
5 & 2 \\
1 & 4
\end{bmatrix}
\]

Tasks:  
1. Use eigen decomposition to express  
   \[
   A = X \Lambda X^{-1}
   \]  
2. Construct  
   \[
   \Lambda^{1/2} = \operatorname{diag}(\sqrt{\lambda_1}, \sqrt{\lambda_2})
   \]  
3. Compute the matrix square root  
   \[
   A^{1/2} = X \Lambda^{1/2} X^{-1}
   \]  
4. Verify that  
   \[
   A^{1/2}A^{1/2} = A
   \]

---

## 📗 Homework 4 — Create a 3×3 Positive Definite Matrix with Negative Elements  

### 題目說明  
Design a **3×3 matrix** that satisfies the following two conditions:

1. The matrix must **contain at least one negative element**.  
2. The matrix must be **positive definite**.

---

## 📘 Homework 5 — OLS Using Matrix Algebra  

### Description
Using the dataset **HW5data**, consider the regression model:
\[
Y = \beta_0 \cdot \text{constant} + \beta_1 T + \beta_2 G + \beta_3 R + \beta_4 P + u.
\]

Tasks:  
1. Compute the OLS estimator  
   \[
   \hat{\beta} = (X'X)^{-1}X'Y.
   \]
2. Compute the residual vector  
   \[
   e = Y - X\hat{\beta}.
   \]
3. Verify the orthogonality condition  
   \[
   X'e = 0.
   \]
4. Verify the residual-sum-to-zero property  
   \[
   \sum e_i = 0.
   \]
   (This holds because the model includes an intercept.)

### Requirements
- Must use **matrix operations** (`t()`, `%*%`, `solve()`) in R.  
- Do **not** use `lm()` except for double-checking.  
- Output must include:  
  - Estimated β vector  
  - Residual vector  
  - Verification of \( X'e = 0 \)  
  - Verification of \( \sum e_i = 0 \)

---

## 📗 Homework 6 — Partitioned Regression (Blockwise Estimation)

### Description
Using **HW5data**, partition the regressors into two blocks:

- First block (estimate these coefficients together):  
  \[
  X_1 = [\text{constant},\, T]
  \]
- Second block:  
  \[
  X_2 = [G,\, R,\, P]
  \]

Tasks:  
1. Using the formulas taught in class (partitioned inverse / Frisch–Waugh–Lovell),  
   estimate the **first two coefficients** \( (\beta_0, \beta_1) \).  
2. Using the same approach, estimate the **last three coefficients** \( (\beta_2, \beta_3, \beta_4) \).  
3. Compare your block-wise estimates with the full OLS estimate from Homework 5,  
   and verify that they are identical.

### Requirements
- Implement the block-matrix formulas in **R**.  
- Add comments linking each line of code to the partitioned regression theorem.  
- Output should include:  
  - Estimated \( \hat{\beta}_1 \) (first block)  
  - Estimated \( \hat{\beta}_2 \) (second block)  
  - Comparison with full OLS estimates  

---

## 📘 Homework 7 — Restricted Least Squares Estimation  

### Description
Using **HW5data**, consider the same regression model:
\[
Y = \beta_0 + \beta_1 T + \beta_2 G + \beta_3 R + \beta_4 P + u.
\]

Impose the following **linear restrictions**:

- \( \beta_2 = 1 \)  
- \( \beta_3 + \beta_4 = 2 \)

These can be written as:
\[
R\beta = r.
\]

Tasks:  
1. Write the matrices \( R \) and \( r \) corresponding to the restrictions.  
2. Compute the restricted estimator  
   \[
   \hat{\beta}_R
   = \hat{\beta}_U
   - (X'X)^{-1}R'\big(R(X'X)^{-1}R'\big)^{-1} (R\hat{\beta}_U - r),
   \]
   where \( \hat{\beta}_U \) is the unrestricted OLS estimate (from HW5).  
3. Compute the restricted residuals  
   \[
   e_R = Y - X\hat{\beta}_R,
   \]
   and restricted RSS  
   \[
   RSS_R = e_R'e_R.
   \]
4. Compare  
   - \( RSS_U \) (unrestricted model from HW5)  
   - \( RSS_R \) (restricted model)  

   and verify whether  
   \[
   RSS_R \ge RSS_U
   \]
   holds as theory predicts.

### Requirements
- Must use **matrix algebra** only.  
- Clearly show the matrices \(R\) and \(r\).  
- Output must include:  
  - \( \hat{\beta}_U \) vs. \( \hat{\beta}_R \)  
  - \( RSS_U \) vs. \( RSS_R \)  
- Brief explanation of why restricted models cannot reduce RSS.





