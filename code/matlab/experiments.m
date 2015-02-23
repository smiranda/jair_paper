loadit = false;
if ~loadit
    clear
    disp('computing');
    [mats, wrds, docs, invdoc, didx, widx, langnames] = alignProcessDocs({'en','es','de'});
    disp('saving');
    quicksave;
else
    quickload;
end

%%
nrp = 10;
niter = 5;
[projectors, centers] = kmeansprojector(mats, nrp, niter);

[projectors2, centers2] = svdprojector(mats, nrp);