function decoded_text = rowColumn_decode(encoded_text, key)
    
    % Intialize the decoded_text (output)
    decoded_text = '';

    % Get the number of rows and columns for the matrix
    rows = ceil(length(encoded_text) / length(key));
    cols = length(key);

    % Create the matrix
    matrix = char(rows, cols);

    % Sort the key
    [~, key_indices] = sort(key);

    % Fill the matrix 
    index = 1;
    for i = 1:cols
        for j = 1:rows
            matrix(j, key_indices(i)) = encoded_text(index);
            index = index + 1;
        end
    end
    
    % Reshape the output to 1D
    decoded_text = reshape(matrix', 1, []);
end
