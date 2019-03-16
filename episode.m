function [q_table,counter] = episode(q_table,grid)

 %Find an initial random starting state.
 state = starting_state();
 %Calculate, using the updatefunction the new q_table and the
 %counter.
 [q_table,counter] = update_table(q_table,state,grid);
  %assign the counter to another variable to enable return.

end
