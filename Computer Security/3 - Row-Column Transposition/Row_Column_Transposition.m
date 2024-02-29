
plaintext = 'HELLO WORLD';

key = 'hell';

encoded_text = rowColumn_encode(plaintext, key);
disp(['Encoded text: ',encoded_text]);


decoded_text = rowColumn_decode(encoded_text, key);
disp(['Decoded text: ',decoded_text ]);