% initMyData(+NBoxesToPick, -ProgramDataInitial).

initMyData(N,(N,(0,0),false,(0,0))).

% perform(+ProgramData, +ContainsBox, -Action, -ProgramDataUpdated)
%

perform((0,(0,0),false,P),_,done,(0,(0,0),false,P)):-!.
perform((N,(0,0),true,P),_,deliverBox,(N1,(0,0),false,P)):-!,N1 is N-1.
perform((N,(X,Y),false,(X,Y)),true,pickBox,(N,(X,Y),true,(X,Y))):-!.

perform((N,(X,Y),false,(XL,YL)),_,move(east),(N,(X1,Y),false,(XL,YL))):-
   X<XL,!,X1 is X+1.
perform((N,(X,Y),false,(XL,YL)),_,move(west),(N,(X1,Y),false,(XL,YL))):-
   X>XL,!,X1 is X-1.
perform((N,(XL,Y),false,(XL,YL)),_,move(north),(N,(XL,Y1),false,(XL,YL))):-
   Y<YL,!,Y1 is Y+1.
perform((N,(XL,Y),false,(XL,YL)),_,move(south),(N,(XL,Y1),false,(XL,YL))):-
   Y>YL,!,Y1 is Y-1.

perform((N,(XL,YL),false,(XL,YL)),false,move(east), (N,(X1,YL),false,(X1,YL))):-
   YL=<0,abs(XL)=< -YL,!,X1 is XL+1. 
perform((N,(XL,YL),false,(XL,YL)),false,move(north),(N,(XL,Y1),false,(XL,Y1))):- 
   XL>0,abs(YL)<XL,!,Y1 is YL+1.
perform((N,(XL,YL),false,(XL,YL)),false,move(west), (N,(X1,YL),false,(X1,YL))):-
   YL>0,-YL<XL,XL=<YL,!,X1 is XL-1. 
perform((N,(XL,YL),false,(XL,YL)),false,move(south),(N,(XL,Y1),false,(XL,Y1))):- 
   XL<0,XL<YL,YL=< -XL,!,Y1 is YL-1.

perform((N,(X,Y), true,P),_,moveWithBox(east),(N,(X1,Y),true,P)):-
   X<0,!,X1 is X+1.
perform((N,(X,Y), true,P),_,moveWithBox(west),(N,(X1,Y),true,P)):-
   X>0,!,X1 is X-1.
perform((N,(0,Y), true,P),_,moveWithBox(north),(N,(0,Y1),true,P)):-
   Y<0,!,Y1 is Y+1.
perform((N,(0,Y), true,P),_,moveWithBox(south),(N,(0,Y1),true,P)):-
   Y>0,!,Y1 is Y-1.
