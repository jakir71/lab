% Define the directed graph as a set of edges with corresponding costs
% For example, edges(a, b, 1) means there is a directed edge from a to b with cost 1
edges(a, b, 1).
edges(a, c, 2).
edges(b, c, 3).
edges(b, d, 4).
edges(c, d, 5).
edges(d, e, 6).
edges(e, f, 7).

% Heuristic function: Estimate the cost from a node to the goal (this is problem-specific)
heuristic(a, f, 10).

% A* search algorithm
a_star(Start, Goal, Path) :-
    astar_search([[(0, Start)]], Goal, Path).

% Helper predicate for A* search using a priority queue
astar_search([(_, Node) | _], Node, Path) :- !.
astar_search([Path | Rest], Goal, FinalPath) :-
    Path = [(_, Node) | _],
    findall((HeuristicCost + NewCost, Next),
            (edges(Node, Next, StepCost),
            NewCost is Cost + StepCost,
            heuristic(Next, Goal, HeuristicCost),
            \+ member(Next, Path)),
            NextPaths),
    append(NextPaths, Rest, UpdatedQueue),
    keysort(UpdatedQueue, SortedQueue),
    astar_search(SortedQueue, Goal, FinalPath).

% Example usage
main :-
    Start = a,
    Goal = f,
    a_star(Start, Goal, Path),
    reverse(Path, PathInOrder),
    format("A* Path from ~w to ~w: ~w~n", [Start, Goal, PathInOrder]).

% Run the program
:- initialization(main).
