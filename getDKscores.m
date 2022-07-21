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

function [Dscores, Kscores ] = getDKscores(L)
    n=sum(sum(L));
    o1=L(1,1)/(1+L(1,1)+L(2,1)+L(3,1));
    o2=L(1,2)/(1+L(1,2)+L(2,2)+L(3,2));
    o3=L(1,3)/(1+L(1,3)+L(2,3)+L(3,3));
    DO=o1+0.5*o2-o3;
    
    c1=L(1,1)/(1+L(1,1)+L(1,2)+L(1,3));
    c2=L(2,1)/(1+L(2,1)+L(2,2)+L(2,3));
    c3=L(3,1)/(1+L(3,1)+L(3,2)+L(3,3));
    DC=c1+0.5*c2-c3;
    
    ko1=(L(1,1)+L(2,1)+L(3,1))/n;
    ko2=(L(1,2)+L(2,2)+L(3,2))/n;
    ko3=(L(1,3)+L(2,3)+L(3,3))/n;
    KO=ko1+0.5*ko2-ko3;
    
    kc1=(L(1,1)+L(1,2)+L(1,3))/n;
    kc2=(L(2,1)+L(2,2)+L(2,3))/n;
    kc3=(L(3,1)+L(3,2)+L(3,3))/n;
    KC=kc1+0.5*kc2-kc3;
    
    KT=(L(1,1)+L(1,2)+L(2,1)+L(2,2))/n;
    
    Dscores=[DO DC];
    Kscores=[KO KC KT];
end