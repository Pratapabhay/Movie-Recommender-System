function [userList n] = loadUserList()
%GETMOVIELIST reads the fixed movie list in movie.txt and returns a
%cell array of the words
%   movieList = GETMOVIELIST() reads the fixed movie list in movie.txt 
%   and returns a cell array of the words in movieList.


%% Read the fixed movieulary list
%fid = fopen('movie_ids.txt');
pid = fopen('UserRatings.txt');


% Store all movies in cell array movie{}
n = 8;  % Total number of movies 

userList = cell(n, 2);
for i = 1:n
    % Read line
    line = fgets(pid);
    % Word Index (can ignore since it will be = i)
    [idx, movieName] = strtok(line, ' ');

    % Actual Word
    userList{i,2} = strtrim(movieName);
    userList{i,1} = strtrim(idx);
end
fclose(pid);

end
