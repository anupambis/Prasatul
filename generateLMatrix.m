
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



function [ LMatrix] = generateLMatrix(P,Q)
P=sort(P);
Q=sort(Q);
U=[P,Q];
r=size(P,2);
Ubest=min(U);
Umean=mean(U);
Uworst=max(U);
C=[0 0 0 0 0 0 0 0 0 ];
   for i=1:r
      if(P(i)<=Ubest)
         if(P(i)<Q(i))
         C(1)=C(1)+1;
         elseif(P(i)==Q(i))
         C(4)=C(4)+1;
         elseif(P(i)>Q(i))
         C(7)=C(7)+1;
         end
     elseif(P(i)<=Umean)
         if(P(i)<Q(i))
         C(2)=C(2)+1;
         elseif(P(i)==Q(i))
         C(5)=C(5)+1;
         elseif(P(i)>Q(i))
         C(8)=C(8)+1;
         end
     elseif(P(i)<=Uworst)
         if(P(i)<Q(i))
         C(3)=C(3)+1;
         elseif(P(i)==Q(i))
         C(6)=C(6)+1;
         elseif(P(i)>Q(i))
         C(9)=C(9)+1;
         end
      end
   end
  LMatrix=zeros(3,3);
   for i=1:3
       for j=1:3
         if i==1
            k=i+j-1;
         elseif i==2
            k=2*i+j-1;
         elseif i==3
            k=2*i+j;
         end
         LMatrix(i,j)=C(k);
       end
   end   
end

