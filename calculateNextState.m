function s=calculateNextState (MapToUpdate,i,j)
% game of life rule
sm=0;
% count number of alive neighbors
sm=sm+ MapToUpdate(i-1,j-1)+MapToUpdate(i-1,j)+MapToUpdate(i-1,j+1);
sm=sm+ MapToUpdate(i,j-1)+           MapToUpdate(i,j+1);
sm=sm+ MapToUpdate(i+1,j-1)+MapToUpdate(i+1,j)+MapToUpdate(i+1,j+1);
% compute the new state of the current cell
sm = sm/255;
s=MapToUpdate(i,j);
if MapToUpdate(i,j)==255
    if (sm>1)&&(sm<4)
        s=255;
    else
        s=0 ;   
    end
else
    if sm==3
       s=255;
    end
end