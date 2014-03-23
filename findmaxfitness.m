function [ fitchromosome1 fitchromosome2 ] = findmaxfitness(population , fitness )
% finds two chromosomes with maximum fitness in population
[minv mini]=min(fitness)
fitchromosome1=population(mini,:)
fitness(mini)=1000;
[minv mini]=min(fitness)
fitchromosome2=population(mini,:)
end
