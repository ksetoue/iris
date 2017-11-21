function gabor = extractIrisFeaturesGabor(im)
    [mag,phase] = imgaborfilt(im,2,45);
    gabor = [mag, phase];
end