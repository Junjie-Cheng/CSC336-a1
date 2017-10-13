function Question5c(~)
	x_array = -25:1:25;
    for j = x_array(1:end);
        fprintf('exp(%d)=%f, relative error = %f\n', j, exp2(j), rErr(j))
    end

    function relativeError = rErr(x)
        relativeError = (exp2(x) - exp(x))/exp(x);
    end
end