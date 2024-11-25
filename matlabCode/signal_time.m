function feat_time = signal_time(filename)
    [y, fs] = stereomono(filename);
    y = y(floor(length(y)/2):floor((length(y)/2)+60*fs));
    
    windowLength = fs*1;
    
    [M,nf]=windowize(y,windowLength,windowLength/2); % 50% overlap between subsequent frames
   
    
    % time feature inizialization 
    E=zeros(1,nf);
    Z=zeros(1,nf);
    
    for i=1:nf
        E(i) = feature_energy(M(:,i));
        Z(i) = feature_zcr(M(:,i));
    end
    feat_time= [Z;E];
   
end 