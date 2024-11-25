%main project
Song;

define_all_train_label_test;

%predic for frequency feature 
[k_all, rate_freq] = predict(all_train_freq, all_label_freq, all_test_freq, correct_label_freq);
plot(k_all, rate_freq, 'green')
title('recognition rate frequency feature')
grid on;
xlabel('k - number of neighbors');
ylabel('recognition rate (%) ');


%predict for time feature
[k_all, rate_time] = predict(all_train_time, all_label_time, all_test_time, correct_label_time);
plot(k_all, rate_time, 'blue')
title('recognition rate time feature')
grid on;
xlabel('k - number of neighbors');
ylabel('recognition rate (%) ');

%predict for all feature 
[k_all, rate_all] = predict(all_train, all_label, all_test, correct_label);
plot(k_all, rate_all, 'yellow')
title('recognition rate all feature')
grid on;
xlabel('k - number of neighbors');
ylabel('recognition rate (%) ');


%plot all
plot(k_all,rate_freq, 'green', k_all, rate_time,'blue',  k_all, rate_all, 'yellow');
title('recognition rate')
grid on;
xlabel('k - number of neighbors');
ylabel('recognition rate (%) ');