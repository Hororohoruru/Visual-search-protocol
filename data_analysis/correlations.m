%Linear correlations and p

cond = [4 8 12 16]';
[cocoef_1_pop, p_1_pop] = corr(avg_1_pop', cond);    %Pop search, target present
[cocoef_0_pop, p_0_pop] = corr(avg_0_pop', cond);    %Pop search, target absent
[cocoef_1_conj, p_1_conj] = corr(avg_1_conj', cond); %Conj search, target present
[cocoef_0_conj, p_0_conj] = corr(avg_0_conj', cond); %Conj search, target absent

clear cond

fprintf(['\n  The linear correlation coefficient for pop search, target present is',...
    ' %f, with a significance value of p = %f\n'], cocoef_1_pop, p_1_pop)
fprintf(['  The linear correlation coefficient for pop search, target absent is',...
    ' %f, with a significance value of p = %f\n'], cocoef_0_pop, p_0_pop)
fprintf(['  The linear correlation coefficient for conj search, target present is',...
    ' %f, with a significance value of p = %f\n'], cocoef_1_conj, p_1_conj)
fprintf(['  The linear correlation coefficient for conj search, target absent is',...
    ' %f, with a significance value of p = %f\n\n'], cocoef_0_conj, p_0_conj)