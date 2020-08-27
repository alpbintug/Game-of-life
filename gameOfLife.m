function gameOfLife
width = 50;
height = 50;
randVals = rand(width,height);
Map = randVals>0.7;
Map = Map * 255;
disp(Map(1,1))
dummyMap = Map;
image(Map);
drawnow;
pause(10);
stop = false;
max_iterations = 2000;
cur_iterations = 0;

while ~stop && cur_iterations<max_iterations
   for i=2:height-1
        for j=2:width-1           
            % apply Game of life rule     
            Map(i,j)=calculateNextState(dummyMap,i,j)            ;
        end
   end
   
   image(Map);
   drawnow;
   %pause(0.1);
   if Map == dummyMap
       stop=true;
   end
   dummyMap = Map;
   cur_iterations = cur_iterations+1;
end
