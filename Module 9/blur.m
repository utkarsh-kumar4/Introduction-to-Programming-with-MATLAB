function output = blur(img,w)
    input_image = imread(img);
    if (size(input_image,3)==3)
        % Check for coloured image.
        output = zeros(size(input_image),'like',input_image);
        for k = 1:3
            output(:,:,k) = process_RGB_channel(input_image(:,:,k),w);
        end
    else
        % If grayscale image, directly go to the 'process_channel' function.
        output = process_RGB_channel(input_image,w);
    end
    imshow(output);
end

function output_RGB_channel = process_RGB_channel(channel,w)
    [row,col] = size(channel);
    output_RGB_channel = zeros(row,col);
    
    for i = 1:row
        for j = 1:col
            sub_matrix = channel(max(1,i-w):min(row,i+w),max(1,j-w):min(col,j+w));
            output_RGB_channel(i,j) = mean(sub_matrix(:));
        end
    end
    output_RGB_channel = uint8(output_RGB_channel);
end