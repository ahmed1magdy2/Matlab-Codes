function decoded_text = ceaser_cipher_decode(encoded_text, key)
    % call the encoding function with negative shift to decode
    decoded_text = ceaser_cipher_encode(encoded_text, -key);
end

