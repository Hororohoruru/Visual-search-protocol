function correct_m = visual_search_conj(stim, trials)

if nargin == 1
    trials = 40;
end

correct_m = zeros(trials, 4);

for n = 1:trials     
    axis off
    for i = 1:(stim/2)
        O = text(rand(1,1), rand(1,1), 'O', 'Color', 'b', 'FontSize', 12);
        X = text(rand(1,1), rand(1,1), 'X', 'Color', 'b', 'FontSize', 12);
        distr_chance = rand(1,1);      %This four lines will generate a random
        if distr_chance < 0.5          %number between 0 and 1 and, if said
            set(X, 'Color', 'k')       %number is lower than 0.5, the corresponding                    
        end                            %distractor 'X' will be turned black
    end
    target_chance = rand(1,1);   
    if target_chance < 0.5       
        set(O, 'Color', 'k')     
        correct_m(n,1) = 1;          
    end
    tic
    pause
    answer = get(gcf, 'CurrentCharacter');
    correct_m(n,4) = toc;        
    if answer == 's'
        answer = 1;
    elseif answer == 'l'
        answer = 0;
    else                         
        answer = 2;              
    end                          
    correct_m(n,2) = answer;         
    if correct_m(n,1) == correct_m(n,2)  
        correct_m(n,3) = 1;
    end
    delete(gca)
end
