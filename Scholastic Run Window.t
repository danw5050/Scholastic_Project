var stream, backup, maker, perf, x, y, button, colour1, third_font,large_font, fourth_font, keyboardwin, instructions, smallfont : int
var rat2, testtube2 : array 1 .. 36 of int
var line : int := 68
var newstring, newstring2 : string := ""
var first, last, input, got : string
var xshow : int := 10
var keyboard : int := Pic.FileNew ("keyboardfinal.jpg")
third_font := Font.New ("comicsans:40")
fourth_font := Font.New ("comicsans:40")
smallfont := Font.New ("comicsans:35")
large_font:= Font.New ("comicsans:100")
var full, part, check : string
var move, seeker, done, counter, books, turn, turn2, drawy, movey : int := 0
var arrowx : int := 400
var logo : int := Pic.FileNew ("logofinal.jpg")
var book1 : int := Pic.FileNew ("boo1.bmp")
var book2 : int := Pic.FileNew ("boo2.bmp")
var book3 : int := Pic.FileNew ("boo3.bmp")
var book4 : int := Pic.FileNew ("boo4.bmp")
var book5 : int := Pic.FileNew ("boo5.bmp")
var book6 : int := Pic.FileNew ("boo6.bmp")
var rat : int := Pic.FileNew ("labratfinal.bmp")
var testtube : int := Pic.FileNew ("testtubefinal.bmp")
var arrowfirst : int := Pic.FileNew ("arrowfirstfinal.bmp")
var arrowlast : int := Pic.FileNew ("arrowlastfinal.bmp")
var ydrop : int := 100
%the variable that i added
var winnerleft : int := Pic.FileNew ("winnerleftfinal.jpg")
var winnerright : int := Pic.FileNew ("winnerrightfinal.jpg")
var crowd : int := Pic.FileNew ("crowdrealrealfinal.jpg")
for angle : 1 .. 36
    turn := turn + 10
    turn2 := turn2 - 10
    rat2 (angle) := Pic.Rotate (rat, turn, -1, -1)
    testtube2 (angle) := Pic.Rotate (testtube, turn2, -1, -1)
end for
%first  name
procedure keyboardz
    movey := 0
    for i : 1 .. 50
	View.Set ("offscreenonly")
	cls
	Pic.Draw (logo, 0, 305, picCopy)
	Pic.Draw (rat, 0, 550, picMerge)
	Pic.Draw (testtube, 850, 550, picMerge)
	Pic.Draw (keyboard, 0, 0, picCopy)
	Pic.Draw (arrowfirst, 400 - movey, 0, picCopy)
	movey := movey - 2
	View.Update
    end for
    for i : 1 .. 50
	View.Set ("offscreenonly")
	cls
	Pic.Draw (logo, 0, 305, picCopy)
	Pic.Draw (rat, 0, 550, picMerge)
	Pic.Draw (testtube, 850, 550, picMerge)
	Pic.Draw (keyboard, 0, 0, picCopy)
	Pic.Draw (arrowfirst, 400 - movey, 0, picCopy)
	movey := movey + 2
	View.Update
    end for

    for i : 1 .. 50
	View.Set ("offscreenonly")
	cls
	Pic.Draw (logo, 0, 305, picCopy)
	Pic.Draw (rat, 0, 550, picMerge)
	Pic.Draw (testtube, 850, 550, picMerge)
	Pic.Draw (keyboard, 0, 0, picCopy)
	Pic.Draw (arrowfirst, 400 - movey, 0, picCopy)
	movey := movey - 2
	View.Update
    end for

    for i : 1 .. 50
	View.Set ("offscreenonly")
	cls
	Pic.Draw (logo, 0, 305, picCopy)
	Pic.Draw (rat, 0, 550, picMerge)
	Pic.Draw (testtube, 850, 550, picMerge)
	Pic.Draw (keyboard, 0, 0, picCopy)
	Pic.Draw (arrowfirst, 400 - movey, 0, picCopy)
	movey := movey + 2
	View.Update
    end for


    open : maker, "Maker.scholastic", put, get, seek
    loop
	View.Set ("offscreenonly")
	part := ""
	randint (colour1, 1, 15)
	if colour1 = 8 or colour1 = 14 then
	    colour1 := 55
	end if
	Mouse.Where (x, y, button)
	%q
	if x > 5 and x < 38 and y > 138 and y < 171 and button = 1 then
	    Font.Draw ("Q", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "Q"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %w
	elsif x > 45 and x < 77 and y > 138 and y < 171 and button = 1 then
	    Font.Draw ("W", xshow, 200, third_font, colour1)
	    xshow := xshow + 50
	    part := "W"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %e
	elsif x > 85 and x < 116 and y > 138 and y < 171 and button = 1 then
	    Font.Draw ("E", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "E"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %r
	elsif x > 124 and x < 156 and y > 138 and y < 171 and button = 1 then
	    Font.Draw ("R", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "R"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %t
	elsif x > 164 and x < 196 and y > 138 and y < 171 and button = 1 then
	    Font.Draw ("T", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "T"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %y
	elsif x > 203 and x < 237 and y > 138 and y < 171 and button = 1 then
	    Font.Draw ("Y", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "Y"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %u
	elsif x > 243 and x < 276 and y > 138 and y < 171 and button = 1 then
	    Font.Draw ("U", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "U"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %i
	elsif x > 284 and x < 316 and y > 138 and y < 171 and button = 1 then
	    Font.Draw ("I", xshow, 200, third_font, colour1)
	    xshow := xshow + 10
	    part := "I"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %o
	elsif x > 322 and x < 356 and y > 138 and y < 171 and button = 1 then
	    Font.Draw ("O", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "O"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %p
	elsif x > 364 and x < 387 and y > 138 and y < 171 and button = 1 then
	    Font.Draw ("P", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "P"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %a
	elsif x > 24 and x < 59 and y > 93 and y < 128 and button = 1 then
	    Font.Draw ("A", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "A"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %s
	elsif x > 64 and x < 99 and y > 93 and y < 128 and button = 1 then
	    Font.Draw ("S", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "S"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %d
	elsif x > 104 and x < 139 and y > 93 and y < 128 and button = 1 then
	    Font.Draw ("D", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "D"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %f
	elsif x > 144 and x < 179 and y > 93 and y < 128 and button = 1 then
	    Font.Draw ("F", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "F"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %g
	elsif x > 183 and x < 218 and y > 93 and y < 128 and button = 1 then
	    Font.Draw ("G", xshow, 200, third_font, colour1)
	    xshow := xshow + 40
	    part := "G"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %h
	elsif x > 223 and x < 258 and y > 93 and y < 128 and button = 1 then
	    Font.Draw ("H", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "H"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %j
	elsif x > 263 and x < 298 and y > 93 and y < 128 and button = 1 then
	    Font.Draw ("J", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "J"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %k
	elsif x > 303 and x < 338 and y > 93 and y < 128 and button = 1 then
	    Font.Draw ("K", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "K"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %l
	elsif x > 343 and x < 378 and y > 93 and y < 128 and button = 1 then
	    Font.Draw ("L", xshow, 200, third_font, colour1)
	    xshow := xshow + 30
	    part := "L"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %z
	elsif x > 44 and x < 79 and y > 51 and y < 85 and button = 1 then
	    Font.Draw ("Z", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "Z"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %x
	elsif x > 84 and x < 119 and y > 51 and y < 85 and button = 1 then
	    Font.Draw ("X", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "X"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %c
	elsif x > 123 and x < 158 and y > 51 and y < 85 and button = 1 then
	    Font.Draw ("C", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "C"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %v
	elsif x > 164 and x < 199 and y > 51 and y < 85 and button = 1 then
	    Font.Draw ("V", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "V"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %b
	elsif x > 205 and x < 240 and y > 51 and y < 85 and button = 1 then
	    Font.Draw ("B", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "B"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %n
	elsif x > 243 and x < 278 and y > 51 and y < 85 and button = 1 then
	    Font.Draw ("N", xshow, 200, third_font, black)
	    xshow := xshow + 35
	    part := "N"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %m
	elsif x > 283 and x < 318 and y > 51 and y < 85 and button = 1 then
	    Font.Draw ("M", xshow, 200, third_font, black)
	    xshow := xshow + 40
	    part := "M"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %done
	elsif x > 276 and x < 358 and y > 9 and y < 42 and button = 1 then
	    if part = "" then

	    end if
	    part := "completed"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %clear
	elsif x > 15 and x < 123 and y > 9 and y < 44 and button = 1 then
	    part := ""
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    Draw.FillBox (0, 180, 400, 250, white)
	    xshow := 10
	    close : maker
	    open : maker, "Maker.scholastic", get, put, seek
	    seeker := 0
	end if
	if not part = "" then
	    if part = "completed" then
		exit
	    end if
	    seek : maker, seeker
	    put : maker, part
	    seeker := seeker + 1
	end if
	View.Update
    end loop
end keyboardz
%last name
procedure keyboardz2
    movey := 0
    for i : 1 .. 50
	View.Set ("offscreenonly")
	cls
	Pic.Draw (logo, 0, 305, picCopy)
	Pic.Draw (rat, 0, 550, picMerge)
	Pic.Draw (testtube, 850, 550, picMerge)
	Pic.Draw (keyboard, 0, 0, picCopy)
	Pic.Draw (arrowlast, 400 - movey, 0, picCopy)
	movey := movey - 2
	View.Update
    end for

    for i : 1 .. 50
	View.Set ("offscreenonly")
	cls
	Pic.Draw (logo, 0, 305, picCopy)
	Pic.Draw (rat, 0, 550, picMerge)
	Pic.Draw (testtube, 850, 550, picMerge)
	Pic.Draw (keyboard, 0, 0, picCopy)
	Pic.Draw (arrowlast, 400 - movey, 0, picCopy)
	movey := movey + 2
	View.Update
    end for
    movey := 0
    for i : 1 .. 50
	View.Set ("offscreenonly")
	cls
	Pic.Draw (logo, 0, 305, picCopy)
	Pic.Draw (rat, 0, 550, picMerge)
	Pic.Draw (testtube, 850, 550, picMerge)
	Pic.Draw (keyboard, 0, 0, picCopy)
	Pic.Draw (arrowlast, 400 - movey, 0, picCopy)
	movey := movey - 2
	View.Update
    end for

    for i : 1 .. 50
	View.Set ("offscreenonly")
	cls
	Pic.Draw (logo, 0, 305, picCopy)
	Pic.Draw (rat, 0, 550, picMerge)
	Pic.Draw (testtube, 850, 550, picMerge)
	Pic.Draw (keyboard, 0, 0, picCopy)
	Pic.Draw (arrowlast, 400 - movey, 0, picCopy)
	movey := movey + 2
	View.Update
    end for

    open : maker, "Maker.scholastic", put, get, seek
    seek : maker, 0
    loop
	View.Set ("offscreenonly")
	part := ""
	randint (colour1, 1, 15)
	if colour1 = 8 or colour1 = 14 then
	    colour1 := 55
	end if
	Mouse.Where (x, y, button)
	%q
	if x > 5 and x < 38 and y > 138 and y < 171 and button = 1 then
	    Font.Draw ("Q", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "Q"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %w
	elsif x > 45 and x < 77 and y > 138 and y < 171 and button = 1 then
	    Font.Draw ("W", xshow, 200, third_font, colour1)
	    xshow := xshow + 50
	    part := "W"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %e
	elsif x > 85 and x < 116 and y > 138 and y < 171 and button = 1 then
	    Font.Draw ("E", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "E"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %r
	elsif x > 124 and x < 156 and y > 138 and y < 171 and button = 1 then
	    Font.Draw ("R", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "R"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %t
	elsif x > 164 and x < 196 and y > 138 and y < 171 and button = 1 then
	    Font.Draw ("T", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "T"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %y
	elsif x > 203 and x < 237 and y > 138 and y < 171 and button = 1 then
	    Font.Draw ("Y", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "Y"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %u
	elsif x > 243 and x < 276 and y > 138 and y < 171 and button = 1 then
	    Font.Draw ("U", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "U"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %i
	elsif x > 284 and x < 316 and y > 138 and y < 171 and button = 1 then
	    Font.Draw ("I", xshow, 200, third_font, colour1)
	    xshow := xshow + 10
	    part := "I"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %o
	elsif x > 322 and x < 356 and y > 138 and y < 171 and button = 1 then
	    Font.Draw ("O", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "O"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %p
	elsif x > 364 and x < 387 and y > 138 and y < 171 and button = 1 then
	    Font.Draw ("P", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "P"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %a
	elsif x > 24 and x < 59 and y > 93 and y < 128 and button = 1 then
	    Font.Draw ("A", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "A"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %s
	elsif x > 64 and x < 99 and y > 93 and y < 128 and button = 1 then
	    Font.Draw ("S", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "S"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %d
	elsif x > 104 and x < 139 and y > 93 and y < 128 and button = 1 then
	    Font.Draw ("D", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "D"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %f
	elsif x > 144 and x < 179 and y > 93 and y < 128 and button = 1 then
	    Font.Draw ("F", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "F"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %g
	elsif x > 183 and x < 218 and y > 93 and y < 128 and button = 1 then
	    Font.Draw ("G", xshow, 200, third_font, colour1)
	    xshow := xshow + 40
	    part := "G"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %h
	elsif x > 223 and x < 258 and y > 93 and y < 128 and button = 1 then
	    Font.Draw ("H", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "H"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %j
	elsif x > 263 and x < 298 and y > 93 and y < 128 and button = 1 then
	    Font.Draw ("J", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "J"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %k
	elsif x > 303 and x < 338 and y > 93 and y < 128 and button = 1 then
	    Font.Draw ("K", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "K"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %l
	elsif x > 343 and x < 378 and y > 93 and y < 128 and button = 1 then
	    Font.Draw ("L", xshow, 200, third_font, colour1)
	    xshow := xshow + 30
	    part := "L"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %z
	elsif x > 44 and x < 79 and y > 51 and y < 85 and button = 1 then
	    Font.Draw ("Z", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "Z"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %x
	elsif x > 84 and x < 119 and y > 51 and y < 85 and button = 1 then
	    Font.Draw ("X", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "X"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %c
	elsif x > 123 and x < 158 and y > 51 and y < 85 and button = 1 then
	    Font.Draw ("C", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "C"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %v
	elsif x > 164 and x < 199 and y > 51 and y < 85 and button = 1 then
	    Font.Draw ("V", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "V"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %b
	elsif x > 205 and x < 240 and y > 51 and y < 85 and button = 1 then
	    Font.Draw ("B", xshow, 200, third_font, colour1)
	    xshow := xshow + 35
	    part := "B"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %n
	elsif x > 243 and x < 278 and y > 51 and y < 85 and button = 1 then
	    Font.Draw ("N", xshow, 200, third_font, black)
	    xshow := xshow + 35
	    part := "N"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %m
	elsif x > 283 and x < 318 and y > 51 and y < 85 and button = 1 then
	    Font.Draw ("M", xshow, 200, third_font, black)
	    xshow := xshow + 40
	    part := "M"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %done
	elsif x > 276 and x < 358 and y > 9 and y < 42 and button = 1 then
	    part := "completed"
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    %clear
	elsif x > 15 and x < 123 and y > 9 and y < 44 and button = 1 then
	    part := ""
	    loop
		Mouse.Where (x, y, button)
		if button = 0 then
		    x := 0
		    y := 0
		    exit
		end if
	    end loop
	    Draw.FillBox (0, 180, 400, 250, white)
	    xshow := 10
	    close : maker
	    open : maker, "Maker.scholastic", get, put, seek
	    seeker := 0
	end if
	if not part = "" then
	    if part = "completed" then
		exit
	    end if
	    seek : maker, seeker
	    put : maker, part
	    seeker := seeker + 1
	end if
	View.Update
    end loop
end keyboardz2

procedure menu


    Pic.Draw (logo, 0, 305, picCopy)
    %button for book


    Pic.Draw (rat, 0, 550, picMerge)
    Pic.Draw (testtube, 850, 550, picMerge)
end menu


procedure menucircle
    turn := 0
    turn2 := 0
    for i : 1 .. 2
	for angle : 1 .. 36
	    View.Set ("offscreenonly")
	    Draw.Text ("Good Job " + first + " " + last, 20, 220, third_font, blue)
	    Draw.Text ("for purchasing " + intstr (books) + " books!", 170, 150, third_font, green)
	    Draw.Text ("GOOD LUCK", 300, 50, third_font, red)
	    turn := turn + 10
	    turn2 := turn2 - 10
	    Pic.Draw (logo, 0, 305, picCopy)
	    Pic.Draw (rat2 (angle), 0, 550, picMerge)
	    Pic.Draw (testtube2 (angle), 850, 550, picMerge)
	    delay (50)
	    View.Update
	end for
    end for
    turn := 0
    turn2 := 0
    for i : 1 .. 3
	for angle : 1 .. 36
	    View.Set ("offscreenonly")
	    cls
	    drawy := drawy + 3
	    Draw.Text ("Good Job " + first + " " + last, 20, 220 - drawy, third_font, blue)
	    Draw.Text ("for purchasing " + intstr (books) + " books!", 170, 150 - drawy, third_font, green)
	    Draw.Text ("GOOD LUCK", 300, 50 - drawy, third_font, red)
	    turn := turn + 10
	    turn2 := turn2 - 10
	    Pic.Draw (logo, 0, 305, picCopy)
	    Pic.Draw (rat2 (angle), 0, 550, picMerge)
	    Pic.Draw (testtube2 (angle), 850, 550, picMerge)
	    delay (50)
	    View.Update
	end for
    end for
end menucircle

%main program
loop
    setscreen ("graphics:1010,705,nobuttonbar")
    menu
    Pic.Draw (book1, 30, ydrop, picCopy)
    Pic.Draw (book2, 190, ydrop, picCopy)
    Pic.Draw (book3, 350, ydrop, picCopy)
    Pic.Draw (book4, 510, ydrop, picCopy)
    Pic.Draw (book5, 670, ydrop, picCopy)
    Pic.Draw (book6, 830, ydrop, picCopy)

    loop
	Mouse.Where (x, y, button)
	%book 1
	if x > 30 and x < 177 and y > 100 and y < 237 and button = 1 then
	    books := 1
	    for i : 1 .. 300
		View.Set ("offscreenonly")
		menu
		ydrop := ydrop - 1
		Pic.Draw (book2, 190, ydrop, picCopy)
		Pic.Draw (book3, 350, ydrop, picCopy)
		Pic.Draw (book4, 510, ydrop, picCopy)
		Pic.Draw (book5, 670, ydrop, picCopy)
		Pic.Draw (book6, 830, ydrop, picCopy)
		delay (5)
		View.Update
	    end for
	    exit

	    %book 2
	elsif x > 190 and x < 333 and y > 100 and y < 237 and button = 1 then
	    books := 2
	    for i : 1 .. 300
		View.Set ("offscreenonly")
		menu
		ydrop := ydrop - 1
		Pic.Draw (book1, 30, ydrop, picCopy)
		Pic.Draw (book3, 350, ydrop, picCopy)
		Pic.Draw (book4, 510, ydrop, picCopy)
		Pic.Draw (book5, 670, ydrop, picCopy)
		Pic.Draw (book6, 830, ydrop, picCopy)
		delay (5)
		View.Update
	    end for
	    exit
	    % book 3
	elsif x > 350 and x < 498 and y > 100 and y < 237 and button = 1 then
	    books := 3
	    for i : 1 .. 300
		View.Set ("offscreenonly")
		menu
		ydrop := ydrop - 1
		Pic.Draw (book1, 30, ydrop, picCopy)
		Pic.Draw (book2, 190, ydrop, picCopy)
		Pic.Draw (book4, 510, ydrop, picCopy)
		Pic.Draw (book5, 670, ydrop, picCopy)
		Pic.Draw (book6, 830, ydrop, picCopy)
		delay (5)
		View.Update
	    end for
	    exit
	    %book 4
	elsif x > 510 and x < 657 and y > 100 and y < 237 and button = 1 then
	    books := 4
	    for i : 1 .. 300
		View.Set ("offscreenonly")
		menu
		ydrop := ydrop - 1
		Pic.Draw (book1, 30, ydrop, picCopy)
		Pic.Draw (book2, 190, ydrop, picCopy)
		Pic.Draw (book3, 350, ydrop, picCopy)
		Pic.Draw (book5, 670, ydrop, picCopy)
		Pic.Draw (book6, 830, ydrop, picCopy)
		delay (5)
		View.Update
	    end for
	    exit
	    %book 5
	elsif x > 670 and x < 819 and y > 100 and y < 237 and button = 1 then
	    books := 5
	    for i : 1 .. 300
		View.Set ("offscreenonly")
		menu
		ydrop := ydrop - 1
		Pic.Draw (book1, 30, ydrop, picCopy)
		Pic.Draw (book2, 190, ydrop, picCopy)
		Pic.Draw (book3, 350, ydrop, picCopy)
		Pic.Draw (book4, 510, ydrop, picCopy)
		Pic.Draw (book6, 830, ydrop, picCopy)
		delay (5)
		View.Update
	    end for
	    exit
	    %book 6
	elsif x > 830 and x < 976 and y > 100 and y < 237 and button = 1 then
	    books := 6
	    for i : 1 .. 300
		View.Set ("offscreenonly")
		menu
		ydrop := ydrop - 1
		Pic.Draw (book1, 30, ydrop, picCopy)
		Pic.Draw (book2, 190, ydrop, picCopy)
		Pic.Draw (book3, 350, ydrop, picCopy)
		Pic.Draw (book4, 510, ydrop, picCopy)
		Pic.Draw (book5, 670, ydrop, picCopy)
		delay (5)
		View.Update
	    end for
	    exit
	end if
    end loop
    loop
	Mouse.Where (x, y, button)
	exit when button = 0
    end loop
    cls

    keyboardz
    seek : maker, 0
    get : maker, first
    close : maker
    xshow := 0
    seeker := 0
    cls
    keyboardz2
    seek : maker, 0
    get : maker, last
    close : maker

    if first = "YRDSB" and last = "YRDSB" then
	%open the stream
	open : stream, "studentnames.scholastic", mod, get, seek
	counter := -2
	line := 68
	counter := 0
	got := ""
	loop
	    seek : stream, line
	    counter := counter + 1
	    line := line + 32
	    exit when eof (stream)
	end loop

	line := Rand.Int (1, counter)
	line := line * 32 + 68
	seek : stream, line
	put line
	get : stream, got
	for i : 1 .. length (got)
	    if got (i) = "~" then
		newstring := newstring + " "
	    else
		newstring := newstring + got (i)
	    end if
	end for

	for i : 1 .. length (newstring)
	    if newstring (i) = "$" then
		newstring2 := newstring2 + " "
	    else
		newstring2 := newstring2 + newstring (i)
	    end if
	end for


	View.Set ("offscreenonly")
	cls
	Draw.Text ("Winner is: ", 180, 470, large_font, black)
	Draw.Text (newstring2, 180, 300, fourth_font, black)
	Pic.Draw (winnerleft, 0, 555, picCopy)
	Pic.Draw (winnerright, 770, 555, picCopy)
	Pic.Draw (crowd, 0, 0, picCopy)

	View.Update
	close : stream
	delay (999999999)
    else
	%open the stream
	open : stream, "studentnames.scholastic", mod, put, get, seek
	open : backup, "studentnamesbackup.scholastic", mod, put, seek
	%seek to the beggining
	seek : stream, (0)
	%add the title
	put : stream, "This is a file from the Scholastic Randomiser. Please do not delete."
	put : backup, "This is a backup file for the scholastic randomiser, do not delete.."
	newstring := ""
	newstring2 := ""
	input := ""
	got := ""
	cls
	%make the first and last name 30 characters
	input := first + "~" + last
	perf := length (input)
	for count : 1 .. (30 - perf)
	    input := input + "$"
	end for

	for i : 1 .. books
	    %seek to the end of the file for the stream
	    seek : stream, *
	    %input the name
	    put : stream, input
	    %seek to the end of the file for the backup
	    seek : backup, *
	    %input the name
	    put : backup, input
	end for

    end if
    menucircle
    for i : 1 .. 300
	View.Set ("offscreenonly")
	cls
	menu
	ydrop := ydrop + 1
	Pic.Draw (book1, 30, ydrop, picCopy)
	Pic.Draw (book2, 190, ydrop, picCopy)
	Pic.Draw (book3, 350, ydrop, picCopy)
	Pic.Draw (book4, 510, ydrop, picCopy)
	Pic.Draw (book5, 670, ydrop, picCopy)
	Pic.Draw (book6, 830, ydrop, picCopy)
	delay (5)
	View.Update
    end for
    seeker := 0
    drawy := 0
    close : stream
    close : backup

end loop



