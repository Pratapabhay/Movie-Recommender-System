function idx = getindex(usermovie)
%GETMOVIELIST reads the fixed movie list in movie.txt and returns a
%cell array of the words
%   movieList = GETMOVIELIST() reads the fixed movie list in movie.txt 
%   and returns a cell array of the words in movieList.


%% Read the fixed movieulary list
sid = fopen('movie_ids.txt');

% Store all movies in cell array movie{}
n = 1682;  % Total number of movies 
idx = 0;
movieList = cell(n, 1);
for i = 1:n
    % Read line
    line = fgets(sid);
    % Word Index (can ignore since it will be = i)
    [id, movieName] = strtok(line, ' ');
    % Actual Word
    movieList{i} = strtrim(movieName);
	if(strcmp(usermovie,movieList{i})==1)
		idx = i;
	end

end
fclose(sid);

end
