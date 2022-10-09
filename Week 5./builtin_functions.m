function [mmr,mmm] = minimax(M)
A = M';
maxx = max(A);
minn = min(A);
mmr = maxx-minn;
mmm = max(maxx)-min(minn);
end
