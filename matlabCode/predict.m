function [k,rate] = predict(all_train, all_labels, all_test, correct_label)

    k=[1 5 10 15 20 25 30 35 40 45 50 55 60 65 70 75 80 85 90 95 100 105 110 115 120 125 130 1350 140 1450 150 155 160 165 170 175 180 185 190 195 200 205 210 215 220 225 230 235 240 245 250 255 260 265 270 275 280 285 290 295 300];
    rate = [];
    for kk=1:length(k)
        disp(['set-up the kNN... number of neighbors: ',mat2str(k(kk))])
        Mdl = fitcknn(all_train',all_labels','NumNeighbors',k(kk));

        % test the kNN
        predicted_label = predict(Mdl,all_test');

        % measure the performance
        correct = 0;
        for i=1:length(predicted_label)
            if predicted_label(i)==correct_label(i)
                correct=correct+1;            
            end
        end
        disp('recognition rate:')
        rate(kk) = (correct/length(predicted_label))*100;
    end
    [a,b]=max(rate);
    disp('----------results----------------')
    disp(['the maximum recognition rate is ',mat2str(a)])
    disp(['and it is achieved with ',mat2str(k(b)),' nearest neighbors'])
    
end


