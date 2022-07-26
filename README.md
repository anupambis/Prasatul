# LMatrix
The Prasatul Matrix is prepared by directly comparing the solutions produced by two optimization algorithms for r numbers of trials. It has three levels of abstractions both in rows and columns.

For quality comparision, you can simply use best values obtained with two evolutionary optimization algorithms on r runs. 

For convergence comparison, you can use best values obtained with two evolutionary optimization algorithms in i itarations on a single run (or if r runs are considered then take iteration-wise average).

For solution quality, an example with solutions obtained with SCA and WOA on CEC 2005 f5 in dimension 20 over 50 runs are given. You just need to replace the csv files of any pair of algorithms to generate L-Matrix and D-scores and K-scores.
