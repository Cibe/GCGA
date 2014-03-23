function [ fitnessVal ] = getfitness( adjMat,chromosom )
fitnessVal=0;
for i=1:size(adjMat,1)
  for j=1:size(adjMat,2)
      if adjMat(i,j)==1 && chromosom(i)==chromosom(j) 
        fitnessVal=fitnessVal+1;
      end
  end
end
end
