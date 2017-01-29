function idx = getindex(usermovie)
%getindex reads the fixed movie list in movie.txt and returns a
%index to the movie provided in the parameter.



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
		%Setting return value to the index of the movie
		idx = i;
		break;
	end

end
fclose(sid);

end
