gpa(labib,19102001,3.24).
gpa(hridoy,19102002,3.52).
gpa(touhid,19102003,3.11).
gpa(mahfuz,19102005,3.71).
findgpa:-
    write("Enter student name :"),
    read(X),
    write("Enter the Roll :"),
    read(Y),
    gpa(X,Y,Z),nl,
    write("The GPA is : "),
    write(Z).


