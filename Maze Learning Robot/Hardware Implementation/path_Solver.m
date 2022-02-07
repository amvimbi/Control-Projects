%% Variable Set Up
load Data_To_Solve
width = min(size(path_raw));
height = max(size(path_raw));
path_long = path_raw(2:height, width);
route = zeros(1,100);
u = 1;
v = 2;
%% Maze Solving
%1 is Left
%2 is Backwards
%3 is Straight
%4 is Right
while u <= (97)
    junction_1 = path_long(u);
    junction_2 = path_long(u+1);
    junction_3 = path_long(u+2);
    if junction_1 == 1 && junction_2 == 2 && junction_3 == 4 
        route(v) = 2;
        u = u+3;
        v = v+1;
    elseif junction_1 == 1 && junction_2 == 2 && junction_3 == 3
        route(v) = 4;
        u = u+3;
        v = v+1;
    elseif junction_1 == 4 && junction_2 == 2 && junction_3 == 1
        route(v) = 2;
        u = u+3;
        v = v+1;
    elseif junction_1 == 3 && junction_2 == 2 && junction_3 == 1
        route(v) = 4;
        u = u+3;
        v = v+1;
    elseif junction_1 == 3 && junction_2 == 2 && junction_3 == 3
        route(v) = 2;
        u = u+3;
        v = v+1;
    elseif junction_1 == 1 && junction_2 == 2 && junction_3 == 1
        route(v) = 3;
        u = u+3;
        v = v+1;
    else
        route(v) = junction_1;
        u = u+1;
        v = v+1;
    end
    if u == (97)
        for i = 1:97
            if route(i) == 2
                u = 1;
                v = 1;
                path_long = route;
            end    
        end    
    end
end
