function conj_inst

inst_counter = 0;

for n = 1:2
    if inst_counter == 0 
        inst = sprintf(['Ok, now we enter the second part of the experiment\n' ...
    'The experiment will start all over again from the beginning,\n' ...
    'but now, some of the ''X'' may be black colored too.\nYour task' ...
    'is still the same: Press ''s'' only if you spot a black ''O''.' ...
    '\n\n(Press any key to continue)']);
    else
        inst = sprintf(['When you are ready, press any key to start the' ...
    ' experiment.']);
    end
    axis off
    text(0.5, 0.5, inst, 'HorizontalAlignment', 'center', 'FontSize', 14)
    pause
    delete(gca)
    inst_counter = inst_counter + 1;
end