clear variables
close all

h = figure('Color', 'w', 'ToolBar', 'none', 'MenuBar', 'none');

%Start of pop search

init_inst

%4 stimuli per trial (pop)

init_cross(5)
pop_4 = visual_search_pop(4);

%8 stimuli per trial (pop)

init_cross(5)
pop_8 = visual_search_pop(8);

%12 stimuli per trial (pop)

init_cross(5)
pop_12 = visual_search_pop(12);

%16 stimuli per trial (pop)

init_cross(5)
pop_16 = visual_search_pop(16);

%Start of conjunction search

conj_inst

%4 stimuli per trial (conj)

init_cross(5)
conj_4 = visual_search_conj(4);

%8 stimuli per trial (conj)

init_cross(5)
conj_8 = visual_search_conj(8);

%12 stimuli per trial (conj)

init_cross(5)
conj_12 = visual_search_conj(12);

%16 stimuli per trial (conj)

init_cross(5)
conj_16 = visual_search_conj(16);

close all
