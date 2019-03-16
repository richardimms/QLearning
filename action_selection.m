function random_action =  action_selection(q_table,state)

%Using coin toss to get a random 90% chance of getting 1.
%Find the maximum action within a given q_table based on the state.
    if coin_toss() == 1
        %Return the index that the max value is stored at.
        [M,index] = max(q_table(state,:));
        %Random action equals that index.
        random_action = index;
    %The other 10% of the time
    else
        %Find the size of the q_table row where the state is.
        msize = numel(q_table(state,:));
        %Randomly select a variable within this row.
        p = randperm(msize,1);
        %Return p as the random action.
        random_action = p;
    end
end
