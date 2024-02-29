function decoded_text = simple_sub_decode( encoded_text,key )

    % Intialize the alphabet
    alphabet = 'A':'Z';
    % Intiatalize the encoded text string
    decoded_text = '';
    
    for i=1:length(encoded_text)
        index = key == encoded_text(i);
        decoded_text(i) = alphabet(index);
    end
end

