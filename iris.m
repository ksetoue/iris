function lbp = extractIrisFeaturesLBP(im)
    [temp, mask] = createiristemplate(im);    
    lbp = extractLBPFeatures(temp, 'Upright', false);     
end