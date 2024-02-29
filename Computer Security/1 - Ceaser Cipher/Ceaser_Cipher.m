
plaintext = 'Hello World';
key = 3;
disp(['Original Text:',plaintext]);


encoded_text = ceaser_cipher_encode(plaintext, key);
disp(['Encoded Text: ',encoded_text]);


decoded_text = ceaser_cipher_decode(encoded_text, key);
disp(['Decoded Text: ',decoded_text]);
