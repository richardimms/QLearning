function random_value = coin_toss()

    %Create a y value containing 100 0's
    y = zeros(100,1);
    %Create an x value containing 100 random values.
    x = rand(100,1);
    %90% of the time have x instead of y.
    y(x<0.9) = 1;
    %Store the values of y in an array.
    cointoss = [];
    cointoss = [cointoss;y];
    %Return the number of elements within an array.
    msize = numel(cointoss);
    %Get a random value within coin toss.
    idx = randperm(msize);
    %Retyrb the random value.
    random_value = cointoss(idx(1:1));
end