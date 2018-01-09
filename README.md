# Visual-search-protocol

This protocol will create a blank figure and present several stimuli
to the participant. The script will generate an image, and then proceed
to call several functions, with the input and
output variables needed to perform the complete experiment.

In each trial, the participant must quickly perform a visual search
in order to determine whether there is a target stimulus (black 'O')
or not. The participant must press the 's' key if there is a target,
and the 'l' key if it isn't.

There are two main conditions: pop search and conjunction search.
In the pop condition, all the stimuli apart from the black 'O' will 
be blue. In the conjunction condition, there is a random chance
of some of the 'X' stimuli becoming black too.

There are  4 blocks with 4, 8, 12 and 16 stimuli per trial in each 
condition (total 320 trials). There is a 50% probability that a target 
stimulus appears. Before the two main conditions, a set of instructions
will be displayed. Also, before each block, a big black cross will appear
at the center of the screen, so the subject can be ready for the start.

Each block is composed by 40 trials by default, the functions that carry
out the experiment admit a second imput argument to determine the number of
trials. 

For the data collection, the matrix called 'correct_number' collects the participant's
answer in its second column. If there is a target in the corresponding trial, the 
first column digit will be '1', and be left with the default '0' otherwise.

After collecting the data corresponding to the 40 trials, the two first 
columns of the matrix will be compared, and if their values are equal, it will
be considered a correct answer. Then, the third column will get a value of '1' 
in the corresponding trial if the answer is correct, while the fourth column 
will collect the reaction times of each trial.

Lastly, the folder 'data_analysis' contains a function that takes the resulting matrices
from the experiment, and creates two row vectors containing the mean reaction times for
the different stimuli conditions (it uses data from correct answers only), separating 
them between the trials with target present and the ones with target absent. Additionally,
the script named 'average' will run the function twice in order to obtain mean reaction
times for all 4 conditions, for both target present and absent, for both pop and conjunction
search.
