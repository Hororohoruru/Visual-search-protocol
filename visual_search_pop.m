function correct_m = visual_search_pop(stim, trials)

if nargin == 1
    trials = 40;
end

correct_m = zeros(trials, 4);

for n = 1:trials     %This loop will generate the trials for each condition
    axis off
    for i = 1:(stim/2)
        O = text(rand(1,1), rand(1,1), 'O', 'Color', 'b', 'FontSize', 12);
        X = text(rand(1,1), rand(1,1), 'X', 'Color', 'b', 'FontSize', 12);
    end
    target_chance = rand(1,1);   %A random number between 0 and 1 is generated,
    if target_chance < 0.5       %if it-s lower than 0.5, the last printed 'O'
        set(O, 'Color', 'k')     %is turned black, becoming a target
        correct_m(n,1) = 1;          
    end
    tic
    pause
    answer = get(gcf, 'CurrentCharacter');
    correct_m(n,4) = toc;        %Reaction time is stored in the correct matrix
    if answer == 's'
        answer = 1;
    elseif answer == 'l'
        answer = 0;
    else                                 %If the answer provided by the participant
        answer = 2;                      %is neither 's' nor 'l', the value in the
    end                                  %matrix becomes 2, thus always resulting on
    correct_m(n,2) = answer;             %an incorrect answer, but providing additional
    if correct_m(n,1) == correct_m(n,2)  %information
        correct_m(n,3) = 1;
    end
    delete(gca)
end
