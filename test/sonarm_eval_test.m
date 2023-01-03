function sonarm_eval_test(func, testvals, allowerr)
    if nargin < 3
        allowerr = 1e-12;
    end

    nIn = nargin(func);
    %nOut = nargout(func);
    nOut = numel(fieldnames(testvals)) - nIn;
    res = cell(1,nOut);
    
    ok = false(numel(testvals), 1);
    for i = 1:numel(testvals)
        args = struct2cell(testvals(i));
        [res{:}] = func(args{1:nIn});
        a = cell2mat(args(end-nOut+1:end));
        b = cell2mat(res);
        ok(i,:) = all(abs(a(:)-b(:)) < allowerr) ;
    end

    stack = dbstack;
    if all(ok)
        disp([stack(end).name ' PASSED']);
    else
        warning([stack(end).name ' FAILED'])
    end
end