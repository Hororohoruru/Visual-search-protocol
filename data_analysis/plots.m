%Creation of figure

h = figure;
condition = [4 8 12 16];

%Subplot 1 (Pop search: Target present vs Target absent)

sub1 = subplot(1,2,1);
plot(condition, avg_1_pop)
hold on
plot(condition, avg_0_pop, '--')
hold off
title('Pop search', 'FontSize', 16, 'FontWeight', 'bold')
xlabel('Set size','FontSize',14,'FontWeight','bold')
ylabel('Reaction time','FontSize',14,'FontWeight','bold')
set(sub1, 'XLim', [4 16], 'XTick', condition, 'YLim', [0.4 2], 'YTick', (0.4:0.1:2))
legend('Target present','Target absent')

%Subplot 2 (Conjunction search: Target present vs Target absent

sub2 = subplot(1,2,2);
plot(condition, avg_1_conj)
hold on
plot(condition, avg_0_conj, '--')
hold off
title('Conjunction search', 'FontSize', 16, 'FontWeight', 'bold')
xlabel('Set size','FontSize',14,'FontWeight','bold')
ylabel('Reaction time','FontSize',14,'FontWeight','bold')
set(sub2, 'XLim', [4 16], 'XTick', condition, 'YLim', [0.4 2], 'YTick', (0.4:0.1:2))
legend('Target present','Target absent')