function matrix = sparse2matrix(cellvec)
sz = cellvec{1};
cell_sz = size(cellvec);
num = cell_sz(2);
matrix = ones(sz)*cellvec{2};
for i = 3:num
    matrix(cellvec{i}(1),cellvec{i}(2))=cellvec{i}(3); 
end
end
