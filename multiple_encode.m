function x = multiple_encode(str)

lungime = length(str); 

%skip
x = '';
bas = 1;
%parcurg sirul si apelez functia pentru fiecare caratcer.
for char= 1:lungime
   if( str(char) == "*" ) 
     x = "*";
     return;
   endif

  if( bas == 1  )
    bas = 2;
    x = strcat(x , morse_encode( str(char) ) );
  %caz daca tre sa adaug spatii
  else
    x = cstrcat(x ," ", morse_encode( str(char) ) );
  endif  

endfor

endfunction
