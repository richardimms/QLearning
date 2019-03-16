function new_state = transition_function(state,grid,action)

%If you go north you -1 from the row.

%If you go south you +1 from the row.

%If you go east you + 1 from the column.

%If you go west you -1 from the column.

%So - take in a value called state - find the index of that value within
%the matrix and apply the action. If you try to minus from the row but you
%are in row (1) you cannot. If you try and go to a 0 you cannot. etc.
inds = find(grid==state);
[row, col] = ind2sub(size(grid),inds);


%Given the initial state and some action (north,south,east,west) what state
%Do I end up in.
if(action == 1)
    %North
    row = row - 1;
elseif(action == 2)
    %East
    col = col + 1;
elseif(action == 3)
    %South
    row = row + 1;
elseif(action == 4)
    %West
    col = col - 1;
end

    if row > 3 || col < 1 ||  col > 5 || row < 1
    %Ensure that the value being returned isn't 0
        new_state = 0;
    else 
        if(grid(row,col)) == 0
            new_state = 0;
        else
            new_state = grid(row,col);
        end
    end

end
