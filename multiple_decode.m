function x = multiple_decode(str)

LUNGIME = length(str);
START = 1;
PASS = '';
x = '';
%cat tim nu s-a parcurs tot sirul se executa.
while( START <= LUNGIME )
   %cat timp nu se pune spatiu se citesc caractere intr-o variabila.
   while( str(START) != ' ')
   
    PASS = strcat( PASS , str(START) );
    
    %daca devin de aceasi lungime iese din while.
    if( START == LUNGIME ) 
        break;
    endif 

    START++;

   endwhile
   %creeaza caracterul.
   PASS = morse_decode(PASS); 
   %creaza cuvatul.
   x = strcat( x , PASS ); 
   PASS = '';
   START++;

endwhile
endfunction
%se termina exercitiul.
