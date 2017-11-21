function ubiris = loadUbiris()
% Read 1.jpg through m.jpg.  
% Files are in the "yourFolder" directory.

classes = 20; 
labels = 5;

samples = struct;

sampleIndex = 1;
yourFolder = sprintf('samples/');

count = 1; 
for i = 1:classes
    
    for k = 1:labels        
        filename = sprintf('Img_%d_1_%d.jpg', i, k);
%         fullFileName = fullfile(yourFolder, filename);
        if exist(filename, 'file')
            [temp, mask] = createiristemplate(filename); 
%             imageData = imread(fullFileName );
            z = extractIrisFeaturesLBP(temp);
            y = extractIrisFeaturesGLCM(temp);
            x = extractIrisFeaturesGabor(temp);
    %         plot(abs(z));
            samples(sampleIndex).class = i; 
            samples(sampleIndex).label = k; 
            samples(sampleIndex).lbp = z;
            samples(sampleIndex).glcm = y;
            samples(sampleIndex).gabor = x;
            sampleIndex = sampleIndex + 1;
            count = count + 1; 
        else
%             warningMessage = sprintf('Warning: image file does not exist:\n%s', filename);
%             uiwait(warndlg(warningMessage));
        end
        % BW = imbinarize(imageData);
        % imshow(imageData);
        
        
    end    
end
ubiris = samples;
end