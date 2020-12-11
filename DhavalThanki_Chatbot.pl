

pen(ballpoint, black, 2.50, 450).
pen(ballpoint, blue, 2.50, 463).
pen(ballpoint, red, 2.50, 550).
pen(ballpoint, green, 2.50, 150).


pen(fountain, black, 9.50, 70).
pen(fountain, blue, 9.50, 59).
pen(fountain, red, 9.50, 32).
pen(fountain, green, 9.50, 21).

pen(ink, black, 4.50, 212).
pen(ink, blue, 4.50, 256).
pen(ink, red, 4.50, 90).
pen(ink, green, 4.50, 45).

pen(gel, black, 5.50, 227).
pen(gel, blue, 5.50, 263).
pen(gel, red, 5.50, 55).
pen(gel, green, 5.50, 21).

pen(calligraphy, black, 10.0, 43).
pen(calligraphy, bamboo, 12.50, 22).



run:-
    format('	Welcome to the store that sells just pens, any kind of pen you need. 
	You can start off by typing the type of pen you want to know more about.
		Examples include; Ballpoint, Ink, Fountain, etc.'),
	  responseLoop(_).  
    


responseLoop(_):-
    format('\nPlease make a selection now'),
	    read(X),
    format('Choice recorded was: ~w\n', [X]),
		check(X).
    

check(stop):-
    format('Have a nice day, goodbye!').
    
check(fountain):-
        format('We do a have a few here and there, allow me to look it up.'),
		fountain_pen(fountain).


check(ballpoint):-
        format('We do a have a few here and there, allow me to look it up.'),
		ballpoint_pen(ballpoint).


check(ink):-
        format('We do a have a few here and there, allow me to look it up.'),
		ink_pen(ink).

check(gel):-
        format('We do a have a few here and there, allow me to look it up.'),
		gel_pen(gel).

check(calligraphy):-
        format('We do a have a few here and there, allow me to look it up.'),
		calligraphy_pen(calligraphy).


fountain_pen(W):-
    pen(W, X, Y, Z),
    format('~nFor ~w pens we have about ~2f ~w pens left in stock, each one costs $~2f', [W, Z, X, Y]),
	  responseLoop(_).  
    
ballpoint_pen(W):-
    pen(W, X, Y, Z),
    format('~nFor ~w pens we have about ~2f ~w pens left in stock, each one costs $~2f', [W, Z, X, Y]),
	  responseLoop(_).  
    
ink_pen(W):-
    pen(W, X, Y, Z),
    format('~nFor ~w pens we have about ~2f ~w pens left in stock, each one costs $~2f', [W, Z, X, Y]),
	  responseLoop(_).  
    
gel_pen(W):-
    pen(W, X, Y, Z),
    format('~nFor ~w pens we have about ~2f ~w pens left in stock, each one costs $~2f', [W, Z, X, Y]),
	  responseLoop(_).  
    
calligraphy_pen(W):-
    pen(W, X, Y, Z),
    format('~nFor ~w pens we have about ~2f ~w pens left in stock, each one costs $~2f', [W, Z, X, Y]),
	  responseLoop(_).  
        
    