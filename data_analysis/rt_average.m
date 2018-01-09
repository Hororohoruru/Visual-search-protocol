function [avg_1, avg_0] =  rt_average(m1, m2, m3, m4)

switch nargin                             %Creates a cell array with all
    case 1                                %the input matrices, depending
        cell_m = {m1};                    %on the number of conditions used
    case 2
        cell_m = {m1, m2};
    case 3
        cell_m = {m1, m2, m3};
    case 4
        cell_m = {m1, m2, m3, m4};
end
                                         
avg_1 = zeros(1, nargin);
avg_0 = zeros(1, nargin);

for x = 1:nargin
    size_1 = 0;
    size_0 = 0;
    
    curr_m = cell_m{1,x};                 %Extracts a matrix from cell array
    
    for n = 1:size(curr_m,1)              %This loop will determine how many   
        if curr_m(n,3) == 1               %correct answers are for both target
            if curr_m(n,1) == 1           %present or absent, in order to
                size_1 = size_1 + 1;      %preallocate
            elseif curr_m(n,1) == 0
                size_0 = size_0 + 1;
            end
        end
    end
    
    rt_1 = zeros(size_1, 1);
    rt_0 = zeros(size_0, 0);
    count_1 = 1;
    count_0 = 1;
    
    for n = 1:size(curr_m,1)                   %This loop will separate the values 
        if curr_m(n,3) == 1                    %into 2 separated matrices, only if
            if curr_m(n,1) == 1                %the response was correct
                rt_1(count_1, 1) = curr_m(n,4);
                count_1 = count_1 + 1;
            elseif curr_m(n,1) == 0
                rt_0(count_0, 1) = curr_m(n,4);
                count_0 = count_0 + 1;
            end
        end
    end
    
    avg_1(1,x) = mean(rt_1);
    avg_0(1,x) = mean(rt_0);
end

