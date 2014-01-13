function [ p ] = isNotLessTTest( x1, x2, y1, y2 )
%isLessTTest 'left' "mean of X is less than mean of X2"
%   High p -> Hnull: X1 = X2 (X1 >= X2)
%   Low  p -> Halt : X1 < X2 
%x2 should be rt. 
x1 = round(x1); %convert to classifications
x2 = round(x2);
y1 = round(y1);
y2 = round(y2);
x1Success = (x1 == y1);
x2Success = (x2 == y2);
[is, p, confInt, stats] = ttest2(x1Success, x2Success, 'tail', 'left', 'Vartype', 'unequal');

%should change to just return is so can use as a logic test

end

