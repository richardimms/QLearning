function reward = reward_function(state,action)

%If the state is 5 and the action is 3, you have reached the reward state.
    if(state == 5 && action == 3)
        reward_val = 10;
    else
        reward_val = 0;
    end

    reward = reward_val;

end 
