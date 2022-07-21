%______________________________________________________________________________________________
%  Prasatul Matrix (simply L-Matrix) for direct comparison of optimzation algorithms                                                          
%  Source codes demo version 1.0                                                                      
%                                                                                                     
%  Developed in MATLAB R2015a(8.5)                                                                   
%                                                                                                     
%  Author and programmer: Anupam Biswas                                                          
%                                                                                                     
%         e-Mail: abanumail@gmail.com                                                             
%                 anupam@cse.nits.ac.in                                               
%                                                                                                     
%       Homepage: http://cs.nits.ac.in/anupam/                                                         
%                                                                                                     
%_______________________________________________________________________________________________
% For quality comparision, you can simply use best values obtained with two evolutionary
% optimization algorithms on r runs. 
% For convergence comparison, you can use best values obtained with two evolutionary
% optimization algorithms in i itarations on a single run (or if r runs are
% considered then take iteration-wise average)
%
%______________________________________________________________________________________________


%For solution quality, an example with solutions obtained with SCA and WOA on CEC 2005 f5 in 
%dimension 20 over 50 runs are given. You just need to replace the csv files of any pair of algorithms 
%to generate L-Matrix and D-scores and K-scores.  
%______________________________________________________________________________________________

P=csvread('SCA_F5_D20_valBest.csv');
Q=csvread('WOA_F5_D20_valBest.csv');


[LMatrix] = generateLMatrix(P,Q)
[ Dscores, Kscores] = getDKscores(LMatrix);


display(['D-scores of SCA vs WOA: DO=', num2str(Dscores(1)) '    DC=', num2str(Dscores(2))]);
display(['K-scores of SCA vs WOA: KO=', num2str(Kscores(1)) '    KC=', num2str(Kscores(2)) '    KT=', num2str(Kscores(3))]);

