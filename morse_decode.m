function x = morse_decode(sir)


M = morse();
y = M;
inaltime = length(sir);

%Am modificat arborele pentru a nu aparea erori.
%Este acelasi output.
%In caz ca depaseste latimea arborelui.

if ( inaltime > 4 ) 

  x = "*";
  return;

endif

%Un for de parcurgere
for i = 1:1:inaltime;
 %Conditii de apartententa
 if ( sir(i) == "." || sir(i) == "-" )
   %Cand da .
   if (sir(i) == ".")

       y = y{1,2};

   endif
   %Cand da -
   if (sir(i) == "-")
        
       y = y{1,3};

   endif
 else
   %Can da altceva.
   x = "*";
   return;

 endif

endfor
 %Afisare x.
 x = y{1};

endfunction
