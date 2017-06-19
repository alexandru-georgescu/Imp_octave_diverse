function x = morse_encode(c)

M = morse();

if ( length(c) != 1 )
  x = "*";
  return;
endif

test = c - '0';
save = M;

%CONDITII SA FIE INTRE A-Z
if( test > 16 && test < 43 )

 string = "0.-";
 %iau un sir unde o sa pozitionez . la val 2 si - la 3.
 %0 e random, doar pentru ca sa pun . si - pe pozitile lor.
 %AM CAUTAT LITERA PE FIECARE RAND.
 
 %TESTEZA PE FIECARE INALTIME DACA SE GASESTE CARACTERUL.
 %DACA DA SE RETURNEAZA PARCURGEREA DE . SI SAU -.
 %DACA NU, SE CONTINUA PANA SE GASESTE.
 %DACA NU SE GASESTE ATUNCI SE VA AFISA *.
 for r1 = 2 : 3
   if ( M{r1}{1} == c )

     x = strcat(string(r1)); 
   return;
   else

     for r2 = 2 : 3
       if ( M{r1}{r2}{1} == c )

          x = strcat(string(r1) , string(r2) );
       return;
       else

          for r3 = 2 : 3
            if ( M{r1}{r2}{r3}{1} == c )

               x = strcat(string(r1), string(r2), string(r3));
            return;
            else

              for r4 = 2 : 3
                if ( M{r1}{r2}{r3}{r4}{1} == c )

                    x = strcat(string(r1), string(r2), string(r3), string(r4));
                return;
                endif

              endfor

            endif

          endfor

         endif

     endfor

   endif

 endfor

else
 x = "*";
 return;
endif
endfunction

