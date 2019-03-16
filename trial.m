function init_count =  trial()

    %Define the grid to define the states.
    grid = draw_grid();
    %Initialise Q-Table.
    q_table = initQ();
    init_count = [];
    %A trial is 100 episodes.
    for i = 1:100
        [q_table,count] = episode(q_table,grid);
        init_count = [init_count;count];
    end
    
end
