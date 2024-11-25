%import data for the train classic

%import classic

%save feature of classic1.wav
classic1_freq = signal_freq('classic1.wav');
classic1_time = signal_time('classic1.wav');
classic1 = [classic1_freq; classic1_time];

%save feature of classic2.wav
classic2_freq = signal_freq('classic2.wav');
classic2_time = signal_time('classic2.wav');
classic2 = [classic2_freq; classic1_time];

%save feature of classic3.wav
classic3_freq = signal_freq('classic3.wav');
classic3_time = signal_time('classic3.wav');
classic3 = [classic3_freq; classic3_time];

%define classic training set
trainClassic = [classic1 classic2 classic3];
trainClassic_freq = [classic1_freq classic2_freq classic3_freq];
trainClassic_time = [classic1_time classic2_time classic3_time];

%define Classic label
labelClassic = ones(1,length(trainClassic));
labelClassic_freq = repmat(1, 1, length(trainClassic_freq));
labelClassic_time = repmat(1, 1, length(trainClassic_time));

%save feature of classic4.wav
classic4_freq = signal_freq('classic4.wav');
classic4_time = signal_time('classic4.wav');
classic4 = [classic4_freq; classic4_time];

%save feature of classic5.wav
classic5_freq = signal_freq('classic5.wav');
classic5_time = signal_time('classic5.wav');
classic5 = [classic5_freq; classic5_time];

%save feature of classic6.wav
classic6_freq = signal_freq('classic6.wav');
classic6_time = signal_time('classic6.wav');
classic6 = [classic6_freq; classic6_time];

%define classic data set
dataClassic = [classic4 classic5 classic6];
dataClassic_freq = [classic4_freq classic5_freq classic6_freq];
dataClassic_time = [classic4_time classic5_time classic6_time];

%define classic test data and test label
testClassic = dataClassic(:,floor(length(dataClassic)/2)+1:end);
testlabelClassic = repmat(1, 1,length(testClassic));

testClassic_freq = dataClassic_freq(:,floor(length(dataClassic_freq)/2)+1:end);
testlabelClassic_freq = repmat(1, 1,length(testClassic_freq));

testClassic_time = dataClassic_time(:,floor(length(dataClassic_time)/2)+1:end);
testlabelClassic_time = repmat(1, 1,length(testClassic_time));


%import soul

%save feature of soul1.wav
soul1_freq = signal_freq('soul1.wav');
soul1_time = signal_time('soul1.wav');
soul1 = [soul1_freq; soul1_time];

%save feature of soul2.wav
soul2_freq = signal_freq('soul2.wav');
soul2_time = signal_time('soul2.wav');
soul2 = [soul2_freq; soul2_time];

%save feature of soul3.wav
soul3_freq = signal_freq('soul3.wav');
soul3_time = signal_time('soul3.wav');
soul3 = [soul3_freq; soul3_time];

%define soul training set
trainSoul = [soul1 soul2 soul3];
trainSoul_freq = [soul1_freq soul2_freq soul3_freq];
trainSoul_time = [soul1_time soul2_time soul3_time];

%define soul label
labelSoul = repmat(2,1,length(trainSoul));
labelSoul_freq = repmat(2,1, length(trainSoul_freq));
labelSoul_time = repmat(2,1, length(trainSoul_time));


%save feature of soul4.wav
soul4_freq = signal_freq('soul4.wav');
soul4_time = signal_time('soul4.wav');
soul4 = [soul4_freq; soul4_time];

%save feature of soul5.wav
soul5_freq = signal_freq('soul5.wav');
soul5_time = signal_time('soul5.wav');
soul5 = [soul5_freq; soul5_time];

%save feature of soul6.wav
soul6_freq = signal_freq('soul6.wav');
soul6_time = signal_time('soul6.wav');
soul6 = [soul6_freq; soul6_time];

%define soul data set
dataSoul = [soul4 soul5 soul6];
dataSoul_freq = [soul4_freq soul5_freq soul6_freq];
dataSoul_time = [soul4_time soul5_time soul6_time];

%define pop test data and test label
testSoul = dataSoul(:,floor(length(dataSoul)/2)+1:end);
testlabelSoul = repmat(2,1,length(testSoul));

testSoul_freq = dataSoul_freq(:,floor(length(dataSoul_freq)/2)+1:end);
testlabelSoul_freq = repmat(2,1,length(testSoul_freq));

testSoul_time = dataSoul_time(:,floor(length(dataSoul_time)/2)+1:end);
testlabelSoul_time = repmat(2,1,length(testSoul_time));




%import pop

%save feature of pop1.wav
pop1_freq = signal_freq('pop1.wav');
pop1_time = signal_time('pop1.wav');
pop1 = [pop1_freq; pop1_time];

%save feature of pop2.wav
pop2_freq = signal_freq('pop2.wav');
pop2_time = signal_time('pop2.wav');
pop2 = [pop2_freq; pop2_time];

%save feature of pop3.wav
pop3_freq = signal_freq('pop3.wav');
pop3_time = signal_time('pop3.wav');
pop3 = [pop3_freq; pop3_time];

%define pop training set
trainPop = [pop1 pop2 pop3];
trainPop_freq = [pop1_freq pop2_freq pop3_freq];
trainPop_time = [pop1_time pop2_time pop3_time];

%define Pop label
%labelPop = repmat(3,1,length(trainPop));
labelPop_freq = repmat(3,1, length(trainPop_freq));
labelPop_time = repmat(3,1, length(trainPop_time));


%save feature of pop4.wav
pop4_freq = signal_freq('pop4.wav');
pop4_time = signal_time('pop4.wav');
pop4 = [pop4_freq; pop4_time];

%save feature of pop5.wav
pop5_freq = signal_freq('pop5.wav');
pop5_time = signal_time('pop5.wav');
pop5 = [pop5_freq; pop5_time];

%save feature of pop6.wav
pop6_freq = signal_freq('pop6.wav');
pop6_time = signal_time('pop6.wav');
pop6 = [pop6_freq; pop6_time];

%define pop data set
dataPop = [pop4 pop5 pop6];
dataPop_freq = [pop4_freq pop5_freq pop6_freq];
dataPop_time = [pop4_time pop5_time pop6_time];

%define pop test data and test label
testPop = dataPop(:,floor(length(dataPop)/2)+1:end);
testlabelPop = repmat(3,1,length(testPop));

testPop_freq = dataPop_freq(:,floor(length(dataPop_freq)/2)+1:end);
testlabelPop_freq = repmat(3,1,length(testPop_freq));

testPop_time = dataPop_time(:,floor(length(dataPop_time)/2)+1:end);
testlabelPop_time = repmat(3,1,length(testPop_time));

