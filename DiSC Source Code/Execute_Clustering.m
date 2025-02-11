clear;
clc;
% experimental settings
rep_time = 10; % repeat 10 times 
mode_initial_type = 2; % initialization type of cluster modes, ...
                                      %1 for random initialization, 2 for non-duplicated random initializati

%% Clustering for CA
load CA.mat;
x= CA;
CA=zeros(rep_time,1);
ARI=zeros(rep_time,1);
F1=zeros(rep_time,1);
[ pm.n , pm.d ] = size( x );
label = x( : , pm.d );
pm.d = pm.d - 1;
x = x( : , 1 : pm.d );
pm.k = length( unique( label ) );
for t = 1 : pm.d
    pm.no_values( t ) = length( unique( x( : , t ) ) );
end
rand('seed', 70);
for t=1:rep_time
    [CA(t),ARI(t), F1(t)] = DiSC(x , label , pm , mode_initial_type);
end
AccMean=mean(CA);
ACCStd=std(CA);
ARIMean=mean(ARI);
ARIStd=std(ARI);
F1Mean=mean(F1);
F1Std=std(F1); 
disp('clustering performance on CA data set:');
fprintf('%.4f ± %.4f   %.4f ± %.4f   %.4f ± %.4f \n', AccMean, ACCStd, ARIMean, ARIStd, F1Mean, F1Std);

%% Clustering for CC
load CC_c.mat;
x= CC_c;
CA=zeros(rep_time,1);
ARI=zeros(rep_time,1);
F1=zeros(rep_time,1);
[ pm.n , pm.d ] = size( x );
label = x( : , pm.d );
pm.d = pm.d - 1;
x = x( : , 1 : pm.d );
pm.k = length( unique( label ) );
%     disp(pm.k);
for t = 1 : pm.d
    pm.no_values( t ) = length( unique( x( : , t ) ) );
end
rand('seed', 16);
for t=1:rep_time
      [CA(t),ARI(t), F1(t)] = DiSC(x , label , pm , mode_initial_type);
end
AccMean=mean(CA);
ACCStd=std(CA);
ARIMean=mean(ARI);
ARIStd=std(ARI);
F1Mean=mean(F1);
F1Std=std(F1);
 
disp('clustering performance on CC data set:');
fprintf('%.4f ± %.4f   %.4f ± %.4f   %.4f ± %.4f \n', AccMean, ACCStd, ARIMean, ARIStd, F1Mean, F1Std);
 

%% Clustering for AP
load AP_c.mat;
x= AP_c;
CA=zeros(rep_time,1);
ARI=zeros(rep_time,1);
F1=zeros(rep_time,1);
[ pm.n , pm.d ] = size( x );
label = x( : , pm.d );
pm.d = pm.d - 1;
x = x( : , 1 : pm.d );
pm.k = length( unique( label ) );
%     disp(pm.k);
for t = 1 : pm.d
    pm.no_values( t ) = length( unique( x( : , t ) ) );
end
rand('seed', 22);
for t=1:rep_time
      [CA(t),ARI(t), F1(t)] = DiSC(x , label , pm , mode_initial_type);
end
AccMean=mean(CA);
ACCStd=std(CA);
ARIMean=mean(ARI);
ARIStd=std(ARI);
F1Mean=mean(F1);
F1Std=std(F1);
 
disp('clustering performance on AP data set:');
fprintf('%.4f ± %.4f   %.4f ± %.4f   %.4f ± %.4f \n', AccMean, ACCStd, ARIMean, ARIStd, F1Mean, F1Std);
 
%% Clustering for DT
load DT_c.mat;
x= Dt_c;
CA=zeros(rep_time,1);
ARI=zeros(rep_time,1);
F1=zeros(rep_time,1);
[ pm.n , pm.d ] = size( x );
label = x( : , pm.d );
pm.d = pm.d - 1;
x = x( : , 1 : pm.d );
pm.k = length( unique( label ) );
%     disp(pm.k);
for t = 1 : pm.d
    pm.no_values( t ) = length( unique( x( : , t ) ) );
end
rand('seed', 99);
for t=1:rep_time
      [CA(t),ARI(t), F1(t)] = DiSC(x , label , pm , mode_initial_type);
end
AccMean=mean(CA);
ACCStd=std(CA);
ARIMean=mean(ARI);
ARIStd=std(ARI);
F1Mean=mean(F1);
F1Std=std(F1);
 
disp('clustering performance on DT data set:');
fprintf('%.4f ± %.4f   %.4f ± %.4f   %.4f ± %.4f \n', AccMean, ACCStd, ARIMean, ARIStd, F1Mean, F1Std);
 

%% Clustering for AV
load AV.mat;
x= AV;
CA=zeros(rep_time,1);
ARI=zeros(rep_time,1);
F1=zeros(rep_time,1);
[ pm.n , pm.d ] = size( x );
label = x( : , pm.d );
pm.d = pm.d - 1;
x = x( : , 1 : pm.d );
pm.k = length( unique( label ) );
%     disp(pm.k);
for t = 1 : pm.d
    pm.no_values( t ) = length( unique( x( : , t ) ) );
end
rand('seed', 66);
for t=1:rep_time
      [CA(t),ARI(t), F1(t)] = DiSC(x , label , pm , mode_initial_type);
end
AccMean=mean(CA);
ACCStd=std(CA);
ARIMean=mean(ARI);
ARIStd=std(ARI);
F1Mean=mean(F1);
F1Std=std(F1);
 
disp('clustering performance on AV data set:');
fprintf('%.4f ± %.4f   %.4f ± %.4f   %.4f ± %.4f \n', AccMean, ACCStd, ARIMean, ARIStd, F1Mean, F1Std);
 
%% Clustering for OB
load OB.mat;
x= obesity;
CA=zeros(rep_time,1);
ARI=zeros(rep_time,1);
F1=zeros(rep_time,1);
[ pm.n , pm.d ] = size( x );
label = x( : , pm.d );
pm.d = pm.d - 1;
x = x( : , 1 : pm.d );
pm.k = length( unique( label ) );
%     disp(pm.k);
for t = 1 : pm.d
    pm.no_values( t ) = length( unique( x( : , t ) ) );
end
rand('seed', 162);
for t=1:rep_time
      [CA(t),ARI(t), F1(t)] = DiSC(x , label , pm , mode_initial_type);
end
AccMean=mean(CA);
ACCStd=std(CA);
ARIMean=mean(ARI);
ARIStd=std(ARI);
F1Mean=mean(F1);
F1Std=std(F1);
 
disp('clustering performance on OB data set:');
fprintf('%.4f ± %.4f   %.4f ± %.4f   %.4f ± %.4f \n', AccMean, ACCStd, ARIMean, ARIStd, F1Mean, F1Std);
 

%% Clustering for TA
load TA.mat;
x= TA_c;
CA=zeros(rep_time,1);
ARI=zeros(rep_time,1);
F1=zeros(rep_time,1);
[ pm.n , pm.d ] = size( x );
label = x( : , pm.d );
pm.d = pm.d - 1;
x = x( : , 1 : pm.d );
pm.k = length( unique( label ) );
%     disp(pm.k);
for t = 1 : pm.d
    pm.no_values( t ) = length( unique( x( : , t ) ) );
end
rand('seed', 156);
for t=1:rep_time
      [CA(t),ARI(t), F1(t)] = DiSC(x , label , pm , mode_initial_type);
end
AccMean=mean(CA);
ACCStd=std(CA);
ARIMean=mean(ARI);
ARIStd=std(ARI);
F1Mean=mean(F1);
F1Std=std(F1);
 
disp('clustering performance on TA data set:');
fprintf('%.4f ± %.4f   %.4f ± %.4f   %.4f ± %.4f \n', AccMean, ACCStd, ARIMean, ARIStd, F1Mean, F1Std);
 


%% Clustering for CV
load CV.mat;
x= CV;
CA=zeros(rep_time,1);
ARI=zeros(rep_time,1);
F1=zeros(rep_time,1);
[ pm.n , pm.d ] = size( x );
label = x( : , pm.d );
pm.d = pm.d - 1;
x = x( : , 1 : pm.d );
pm.k = length( unique( label ) );
%     disp(pm.k);
for t = 1 : pm.d
    pm.no_values( t ) = length( unique( x( : , t ) ) );
end
rand('seed', 1);
for t=1:rep_time
      [CA(t),ARI(t), F1(t)] = DiSC(x , label , pm , mode_initial_type);
end
AccMean=mean(CA);
ACCStd=std(CA);
ARIMean=mean(ARI);
ARIStd=std(ARI);
F1Mean=mean(F1);
F1Std=std(F1);
 
disp('clustering performance on CV data set:');
fprintf('%.4f ± %.4f   %.4f ± %.4f   %.4f ± %.4f \n', AccMean, ACCStd, ARIMean, ARIStd, F1Mean, F1Std);
 

%% Clustering for ZO
load ZO.mat;
x= ZO;
CA=zeros(rep_time,1);
ARI=zeros(rep_time,1);
F1=zeros(rep_time,1);
[ pm.n , pm.d ] = size( x );
label = x( : , pm.d );
pm.d = pm.d - 1;
x = x( : , 1 : pm.d );
pm.k = length( unique( label ) );
%     disp(pm.k);
for t = 1 : pm.d
    pm.no_values( t ) = length( unique( x( : , t ) ) );
end
rand('seed', 267);
for t=1:rep_time

      [CA(t),ARI(t), F1(t)] = DiSC(x , label , pm , mode_initial_type);
end
AccMean=mean(CA);
ACCStd=std(CA);
ARIMean=mean(ARI);
ARIStd=std(ARI);
F1Mean=mean(F1);
F1Std=std(F1);
 
disp('clustering performance on ZO data set:');
fprintf('%.4f ± %.4f   %.4f ± %.4f   %.4f ± %.4f \n', AccMean, ACCStd, ARIMean, ARIStd, F1Mean, F1Std);
 
%% Clustering for SBL
load SBL.mat;
CA=zeros(rep_time,1);
ARI=zeros(rep_time,1);
F1=zeros(rep_time,1);
[ pm.n , pm.d ] = size( x );
label = x( : , pm.d );
pm.d = pm.d - 1;
x = x( : , 1 : pm.d );
pm.k = length( unique( label ) );
%     disp(pm.k);
for t = 1 : pm.d
    pm.no_values( t ) = length( unique( x( : , t ) ) );
end
rand('seed', 142);
for t=1:rep_time
 
      [CA(t),ARI(t), F1(t)] = DiSC(x , label , pm , mode_initial_type);
end
AccMean=mean(CA);
ACCStd=std(CA);
ARIMean=mean(ARI);
ARIStd=std(ARI);
F1Mean=mean(F1);
F1Std=std(F1);
 
disp('clustering performance on SB data set:');
fprintf('%.4f ± %.4f   %.4f ± %.4f   %.4f ± %.4f \n', AccMean, ACCStd, ARIMean, ARIStd, F1Mean, F1Std);
 
%% Clustering for NU
load NU.mat;
x= NU;
CA=zeros(rep_time,1);
ARI=zeros(rep_time,1);
F1=zeros(rep_time,1);
[ pm.n , pm.d ] = size( x );
label = x( : , pm.d );
pm.d = pm.d - 1;
x = x( : , 1 : pm.d );
pm.k = length( unique( label ) );
%     disp(pm.k);
for t = 1 : pm.d
    pm.no_values( t ) = length( unique( x( : , t ) ) );
end
rand('seed', 1);
for t=1:rep_time
      [CA(t),ARI(t), F1(t)] = DiSC(x , label , pm , mode_initial_type);
end
AccMean=mean(CA);
ACCStd=std(CA);
ARIMean=mean(ARI);
ARIStd=std(ARI);
F1Mean=mean(F1);
F1Std=std(F1);
 
disp('clustering performance on NU data set:');
fprintf('%.4f ± %.4f   %.4f ± %.4f   %.4f ± %.4f \n', AccMean, ACCStd, ARIMean, ARIStd, F1Mean, F1Std);
 
%% Clustering for BM
load BM.mat;
x= BM;
CA=zeros(rep_time,1);
ARI=zeros(rep_time,1);
F1=zeros(rep_time,1);
[ pm.n , pm.d ] = size( x );
label = x( : , pm.d );
pm.d = pm.d - 1;
x = x( : , 1 : pm.d );
pm.k = length( unique( label ) );
%     disp(pm.k);
for t = 1 : pm.d
    pm.no_values( t ) = length( unique( x( : , t ) ) );
end
rand('seed', 50);
for t=1:rep_time
 
      [CA(t),ARI(t), F1(t)] = DiSC(x , label , pm , mode_initial_type);
end
AccMean=mean(CA);
ACCStd=std(CA);
ARIMean=mean(ARI);
ARIStd=std(ARI);
F1Mean=mean(F1);
F1Std=std(F1);
 
disp('clustering performance on BM data set:');
fprintf('%.4f ± %.4f   %.4f ± %.4f   %.4f ± %.4f \n', AccMean, ACCStd, ARIMean, ARIStd, F1Mean, F1Std);
 