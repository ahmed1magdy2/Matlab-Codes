function [encoded_text,key] = simple_sub_encode(text)

    %Remove whitespaces
    text = text(text ~= ' ');
    % Convert text to uppercase
    text = upper(text);
    % Intialize the alphabet
    alphabet = 'A':'Z';
    % Intiatalize the encoded text string
    encoded_text = '';
    % Get a random alphabet for a key
    key = alphabet(randperm(26));

    for i=1 :length(text)
       index = alphabet == text(i);
       encoded_text(i) = key(index);
    end
end

