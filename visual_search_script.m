clear variables
close all

h = figure('Color', 'w', 'ToolBar', 'none', 'MenuBar', 'none');

%4 stimuli per trial

[raw_4, correct_4] = visual_search(4);

%8 stimuli per trial

[raw_8, correct_8] = visual_search(8);

%12 stimuli per trial

[raw_12, correct_12] = visual_search(12);

%16 stimuli per trial

[raw_16, correct_16] = visual_search(16);

close all