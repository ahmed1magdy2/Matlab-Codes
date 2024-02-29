function encoded_text = rowColumn_encode(text, key)

    % Intialize the decoded_text (output)
    encoded_text = '';
    
    % Remove whitespaces and upper the text
    text = upper(text);
    text = text(text ~= ' ');
    
    % Remove whitespaces from the key
    key = key(key ~= ' ');
    
    % Get the number of rows and columns for the matrix
    rows = ceil(length(text) / length(key));
    cols = length(key);    
    
    % Pads the text with 'X' characters to fill the last row of the matrix if needed
    padding = repmat('X', 1, (rows * cols) - length(text)); % can use ``` strcat(text,'x') ``` instead
    text = [text, padding];  

    % Create the matrix
    matrix = char(rows, cols);
    index = 1;
    
    % Fill the matrix
    for i = 1:rows
        for j = 1:cols
            matrix(i, j) = text(index);
            index = index + 1;
        end
    end
    
    % Sort the key and apply on the matrix
    [~, key_indices] = sort(key);
    matrix = matrix(:, key_indices);
    
    % Reshape the output to 1D
    encoded_text = reshape(matrix, 1, []);
end
