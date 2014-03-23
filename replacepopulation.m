function [ population fitness ] = replacepopulation( adjmat,chromosome1,chromosome2 )
% function for replacing population remove less fit chromosomes
f1=getfitness(adjmat,chromosome1)
f2=getfitness(adjmat,chromosome2)
fitness=[fitness ; f1 ; f2]
population=[population ; chromosome1 ; chromosome2]
[mval maxi]=max(fitness)
fitness(maxi,:)=[]
population(maxi,:)=[]
[mval maxi]=max(fitness)
fitness(maxi,:)=[]
population(maxi,:)=[]
end
