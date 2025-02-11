function [ acc , ari ,f1 ] = DiSC( x , label , pm , mode_initial_type )
% initialize the k modes according to mode_initial_type
if mode_initial_type == 1
    modes = x( randperm( pm.n , pm.k ) , 1 : pm.d );
end
if mode_initial_type == 2
    modes( 1 , : ) = x( randperm( pm.n , 1 ) , 1 : pm.d );
    no_initial_mode = 1;
    while no_initial_mode ~= pm.k
        no_initial_mode = no_initial_mode + 1;
        modes( no_initial_mode , : ) = x( randperm( pm.n , 1 ) , 1 : pm.d );
        if sum ( sum( modes == modes( no_initial_mode , : ) , 2 ) == pm.d ) ~= 1
            no_initial_mode = no_initial_mode - 1;
        end
    end
end
[modes,LctRecFOld]=Initialization(x, pm, modes);
SDT_matrix=DiSCD(x,pm,LctRecFOld);
%% ---------------------------Finish initialize-----------------------------
LctRecC=zeros(pm.n,1); 
FChange=1; 
LoopD=0; 
while FChange==1 && LoopD<=50 
    LoopD=LoopD+1;
    [LctRecC,modes,~]=IDiSC(x,pm,SDT_matrix,LctRecC,modes);
    if  Eva_ARI(LctRecC,LctRecFOld)==1 
        FChange=0;
    else 
        LctRecFOld=LctRecC; 
        SDT_matrix=DiSCD(x,pm,LctRecFOld);
    end      
end
acc=Eva_CA(LctRecC,label); % CA evaluation
ari=Eva_ARI(LctRecC, label, 'adjusted'); % ARI evaluation
results=ClusteringMeasure(label,LctRecC);
f1=results(7); % F1-score evaluation
end
