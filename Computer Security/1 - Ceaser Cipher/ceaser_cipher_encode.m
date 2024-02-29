function encoded_text = ceaser_cipher_encode(text, key)
    % Remove whitespaces of text
    text = text(text ~= ' ');
    % Convert text to uppercase
    text = upper(text);
    
    % Define alphabet
    alphabet = 'A':'Z';
    
    % Initialize empty string for encoded text
    encoded_text = '';
    
    % Iterate over each character in the text
    for i = 1:length(text)
        % Find the index of the character in the alphabet
        index = find(alphabet == text(i));
        % Apply caesar cipher shift
        index = index + key;
        index=mod(index-1,26)+1; % To control range from 1 to 26
        
        % Append the encoded character to the encoded text
        encoded_text(i) = alphabet(index) ;
    end
end


