clear variables
close all

h = figure('Color', 'w', 'ToolBar', 'none', 'MenuBar', 'none');

%%Start of pop search

init_inst

%4 stimuli per trial (pop)

init_cross(5)
[raw_4_pop, correct_4_pop] = visual_search_pop(4);

%8 stimuli per trial (pop)

init_cross(5)
[raw_8_pop, correct_8_pop] = visual_search_pop(8);

%12 stimuli per trial (pop)

init_cross(5)
[raw_12_pop, correct_12_pop] = visual_search_pop(12);

%16 stimuli per trial (pop)

init_cross(5)
[raw_16_pop, correct_16_pop] = visual_search_pop(16);

%%Start of conjunction search

conj_inst

%4 stimuli per trial (conj)

init_cross(5)
[raw_4_conj, correct_4_conj] = visual_search_conj(4);

%8 stimuli per trial (conj)

init_cross(5)
[raw_8_conj, correct_8_conj] = visual_search_conj(8);

%12 stimuli per trial (conj)

init_cross(5)
[raw_12_conj, correct_12_conj] = visual_search_conj(12);

%16 stimuli per trial (conj)

init_cross(5)
[raw_16_conj, correct_16_conj] = visual_search_conj(12);

close all
