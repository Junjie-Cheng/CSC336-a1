function Question3b(~)
	function printConditionNumber(x, diff_x)
		fprintf('Choose x = %f, f(%f) = %f\n', x, x, log(x))
        fprintf('f(%f) = %f, conditionNumber = %f\n', x-diff_x, log(x-diff_x), cNum(x,x-diff_x))
        fprintf('f(%f) = %f, conditionNumber = %f\n', x+diff_x, log(x+diff_x), cNum(x,x+diff_x))
    end
    
    function conditionNumber = cNum(x, new_x)
        relY = log(new_x) / log(x) - 1;
        relX = new_x / x - 1;
        conditionNumber = abs(relY/relX);
    end

    printConditionNumber(0.99990, 0.000005)
    printConditionNumber(1.00010, 0.000005)
    printConditionNumber(9.99990, 0.000005)
    printConditionNumber(10.00010, 0.000005)
    
end