function result = exp1(x)
    exp_result = 0;
    new_result = 1;
    i = 1;
    while exp_result ~= new_result;
        exp_result = new_result;
        new_result = new_result + (power(x, i)/factorial(i));
        i = i + 1;
    end
    result = exp_result;
end
