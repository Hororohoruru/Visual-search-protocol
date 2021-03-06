function init_inst

inst_counter = 0;

for n = 1:3
    if inst_counter == 0
        inst = sprintf(['Now you will perform a visual search experiment.\n'...
    'Your objective is to look for a black-colored ''O''\nas fast' ...
    ' as you can.\n\n(Press any key to continue)']);
    elseif inst_counter == 1
        inst = sprintf(['If you spot a black ''O'', press the ''s'' key.' ...
    '\nIf not, press the ''l'' key. There are\n4 different blocks' ...
    ' with an increasing number\nof elements in screen.\n\n(Press' ...
    ' any key to continue)']);
    else
        inst = sprintf(['When you are ready, press any key to start the' ...
    ' experiment.\nA cross will appear on the center of the screen' ...
    '\nbefore each block starts.\n\nPlease do not press any key\n' ...
    'while the cross is on screen']);
    end
    axis off
    text(0.5, 0.5, inst, 'HorizontalAlignment', 'center', 'FontSize', 14)
    pause
    delete(gca)
    inst_counter = inst_counter + 1;
end