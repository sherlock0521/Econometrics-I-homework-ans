# 114-1 Econometrics (I) — Homework Assignments  
TA : [張文誠]  

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

Given the matrix
      [ 5   1 ]
  A = [ 2   4 ]

Tasks:
1. Use eigen decomposition to express:
       A = X Λ X⁻¹

2. Take the square roots of the eigenvalues to construct:
       Λ^(1/2) = diag( √λ₁ , √λ₂ )

3. Compute the matrix square root using:
       A^(1/2) = X Λ^(1/2) X⁻¹

4. Verify that:
       A^(1/2) %*% A^(1/2) = A

