function gaborFilter = extractIrisFeaturesGabor(im)
    wavelength = 4;
    orientation = 0;
    g = gabor(wavelength,orientation);
%     [mag,phase] = imgaborfilt(im,g);
    outMag = imgaborfilt(im,g);
%     gaborFilter = [mag, phase];
    gaborFilter = outMag;
end