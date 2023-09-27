% initMyData(+NBoxesToPick, -ProgramDataInitial).
% Aici trebuie aleasa si initializata o structura ProgramData
% Intuitie:
%   ProgramData reprezinta "carnetelul" in care robotul retine
%     - unde se afla (X,Y)
%     - in ce stare se afla: true (cu cutie in brate) / false (fara cutie in brate)
%     - ultima camera in care a ajuns (Xlast,Ylast)
%     - cate cutii mai are de strans

initMyData(N, ((0,0),false,(0,0),N)).


% perform(+ProgramData, +ContainsBox, -Action, -ProgramDataUpdated)
%

perform(((0,0),X,Y,0),_,done,((0,0),X,Y,0)):-!.
perform(((0,0),true,LasPosn,N),B,deliverBox,((0,0),false,LastPosn,N1)):-N1 is N-1,!.
perform(((X,Y),false,)

p(stareVeche,stareNoua) :- conditie, !, N1 is N-1, .....