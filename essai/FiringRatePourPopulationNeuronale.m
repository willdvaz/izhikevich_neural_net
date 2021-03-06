% feuille de test: Calcul du Firing Rate pour une population neuronale

InitRegularSpiking

%connection � peu pr�s al�atoire
M=random('bino',1,1/2,6,6);
for i=1:6
    if M(i,i)==1
        M(i,i)=0;
    end
end
R=5;
Te=0.05;
Ts=10000;
N=Ts/Te;
Tf=1000;
[V,A]=NeuronePourInterconnection(0.02,0.2,-65,8,50,100,Te,Ts,M,R);
FiringRatePopulation(A,Te,Ts,Tf);
