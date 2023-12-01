% Define symptoms and conditions
symptom(fever).
symptom(cough).
symptom(headache).
symptom(rash).
symptom(fatigue).

condition(cold, [cough, fever]).
condition(fl flu, [fever, fatigue, cough, headache]).
condition(measles, [fever, rash]).
condition(allergy, [rash]).

% Rule for diagnosing a condition based on symptoms
diagnose_condition(Symptoms, Condition) :-
    condition(Condition, RequiredSymptoms),
    subset(RequiredSymptoms, Symptoms).

% Helper predicate to check if a list is a subset of another list
subset([], _).
subset([H|T], List) :-
    member(H, List),
    subset(T, List).


