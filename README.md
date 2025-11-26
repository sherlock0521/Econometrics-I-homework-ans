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

### 題目說明
Given a dataset containing  
\[
Y,\; \text{constant},\; T,\; G,\; R,\; P,
\]  
students must use **matrix algebra** to verify the core algebraic properties of Ordinary Least Squares (OLS).

Tasks:  
1. Compute the OLS estimator  
   \[
   \hat{\beta} = (X'X)^{-1} X'Y
   \]  
2. Compute the residual vector  
   \[
   e = Y - X\hat{\beta}
   \]  
3. Verify the orthogonality condition  
   \[
   X'e = 0
   \]  
4. Verify that residuals sum to zero  
   \[
   \sum_i e_i = 0
   \]  
   (This holds because the regression includes a constant term.)

### 要求
- All calculations must be performed using **matrix operations in R** (`t()`, `%*%`, `solve()`).  
- Do **not** use `lm()` except for verification.  
- Final output must include:  
  - β̂ 向量  
  - 殘差向量 e  
  - 驗證 \(X'e = 0\)  
  - 驗證 \(\sum e = 0\)





