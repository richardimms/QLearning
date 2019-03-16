function [updated_table,counter] =  update_table(q_table,state,grid)

%State will be a random starting state from each episode.
learning_rate = 0.2;
discount = 0.9;
goal_state = 0;
counter = 0;
%View the reward
while goal_state == 0
        %Choose the action from the tate using the policy from Q_Table.
        max_action = action_selection(q_table,state);
        %Take the action A and observe the reward and new state(move).
        new_state = transition_function(state,grid,max_action);
        
        if(new_state == 0)
            q_table(state,max_action) = 0;
        else
            reward = reward_function(state,max_action);
            %Using the new state we find the index of the max action.
            new_state_action_index = action_selection(q_table,new_state);
            %With the new action and new state we can search the Q-Table for these
            %values.
            new_state_action = q_table(new_state,new_state_action_index);
            %Update function.
            q_table(state,max_action) = q_table(state,max_action) + (learning_rate.*(reward ...
                + discount.*new_state_action - q_table(state,max_action)));                       
            state = new_state;
            if state == 2
                goal_state = 1;
            elseif ~state == 2
                goal_state = 0;
            end
            
            counter = counter + 1;
        end
end

updated_table = q_table;    
end
