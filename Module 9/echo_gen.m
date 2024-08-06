function output = echo_gen(input,fs,delay,amp)
    echo_N = round(delay*fs);
    audio1 = [input;zeros(echo_N,1)];
    audio2 = [zeros(echo_N,1);input.*amp];
    output = audio1+audio2;
    if (max(abs(output))>1)
        output = output./max(abs(output));
    end
    sound(output);
end