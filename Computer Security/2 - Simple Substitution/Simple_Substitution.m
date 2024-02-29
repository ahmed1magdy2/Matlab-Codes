plaintext = 'Hello World';
disp(['Original Text: ',plaintext]);


[encoded_text,key] = simple_sub_encode(plaintext);
disp(['Key: ',key]);
disp(['Encoded Text: ',encoded_text]);

decoded_text = simple_sub_decode(encoded_text, key);
disp(['Decoded Text: ',decoded_text]);
