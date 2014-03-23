numVertices=input('enter the number of vertices')
adjMat=input('enter the adjacency matrix for the graph')
numColours=input('enter the number of colors')
populationSize=input('enter the population size')

%integer encoding
 population=round(rand(populationSize,numVertices)*(numColours-1));    % assigning random colours to the vertices
 population=population+1;
 
fitnessFlag=0;   % it is used to indicate whether the valid colouring is obtained

% fitness function for calculating fitness for every chromosome
fitness=calculatefitness(adjMat,population)         

for i=1:size(fitness,1)
    if fitness(i)==0
        fitness(i);
        population(i,:);                      % if any of the randomly generated chromosome is fit then stop the iteration
        fitnessFlag=1;
        break;
    end    
end

if fitnessFlag==0
while 1
   [chromosome1 chromosome2]=findmaxfitness(population,fitness)
   [newchromosome1 newchromosome2]=crossover_hux(chromosome1,chromosome2)
   if getfitness(adjMat,newchromosome1)==0 | getfitness(adjMat,newchromosome2)==0 
      break; 
   [population fitness]=replacepopulation(adjmat,c1,c2)
   end
end
end