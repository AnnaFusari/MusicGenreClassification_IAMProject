%define sets for all feature

all_train = [trainClassic trainSoul trainPop];
all_label = [labelClassic labelSoul labelPop];
all_test = [testClassic testSoul testPop];
correct_label = [testlabelClassic testlabelSoul testlabelPop];



%define sets for frequency feature 

all_train_freq = [trainClassic_freq trainSoul_freq trainPop_freq];
all_label_freq = [labelClassic_freq labelSoul_freq labelPop_freq];
all_test_freq = [testClassic_freq testSoul_freq testPop_freq];
correct_label_freq = [testlabelClassic_freq testlabelSoul_freq testlabelPop_freq];



%define sets for time feature 

all_train_time = [trainClassic_time trainSoul_time trainPop_time];
all_label_time = [labelClassic_time labelSoul_time labelPop_time];
all_test_time = [testClassic_time testSoul_time testPop_time];
correct_label_time = [testlabelClassic_time testlabelSoul_time testlabelPop_time];