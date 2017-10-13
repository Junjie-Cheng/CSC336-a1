function result = exp2(x)
	if x >= 0;
		result = exp1(x);
	else;
		result = 1/exp(-x);
end