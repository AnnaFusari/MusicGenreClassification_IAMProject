function [y,fs] = stereomono(filename)
    [y,fs] = audioread(filename)
    % convert from stereo to mono
    y = sum(y,2)
end