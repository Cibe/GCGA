function [ newchromosome1 newchromosome2] = crossover_hux(chromosome1,chromosome2)
numGenes=size(chromosome1,2);
for i=1:numGenes
    if round(rand()) ==1
        newchromosome1(i)=chromosome2(i);
        newchromosome2(i)=chromosome1(i);
    else
        newchromosome1(i)=chromosome1(i);
        newchromosome2(i)=chromosome2(i);
    end
end
end