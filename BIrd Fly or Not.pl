% Facts representing the database of birds and their flying capabilities
bird(swan, can_fly).
bird(sparrow, can_fly).
bird(eagle, can_fly).
bird(duck, can_fly).
bird(crow, can_fly).
bird(ostrich, cannot_fly).
bird(puffin, can_fly).
bird(albatross, can_fly).
bird(starling, can_fly).
bird(owl, can_fly).
bird(kingfisher, can_fly).
bird(thrush, can_fly).

% Query to check if a particular bird can fly
can_fly(Bird) :-
    bird(Bird, can_fly),
    write(Bird), write(' can fly.'), nl.

can_fly(Bird) :-
    bird(Bird, cannot_fly),
    write(Bird), write(' cannot fly.'), nl.
