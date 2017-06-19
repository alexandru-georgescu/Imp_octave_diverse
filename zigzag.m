function Z = zigzag(n)

%15 puncte boys!

%Conditia in caz de doreste cineva sa afiseze ceva imposibil.
if ( n < 1 )
  return;
endif


%Creez o matrice On. (plina cu zero)
A = zeros(n);

if( n == 1 )
Z = 0; %  disp(A);
  return;
endif

%Dau swap la pozitia 1 2 de unde incep parcurgerea.
%Setez si valoarea de prnire.
i = 1 ; j = 2;
p = 1;


%Cat timp numarul e mai mic decat n^2-1 trece mai departe
while( p != n^2-1)
 
%Caz in care trebuie sa parcuga diagonala de sus in jos.
 if ( i <  j )
  COUNT = j ;

%Mai jos multe chestii foarte horor.

  while( i <= COUNT && i < n+1) 
    
    A(i,j) = p;
    i = i + 1;
    j = j - 1;
    p = p + 1;

  endwhile

  i = i - 1;
  j = j + 1;
 
  if ( i == n )
       j++;
  endif

  if ( i < n ) 
       i++;
  endif
 
 endif

 
%Caz in care trebuie sa parcuga diagonala de jos in sus.
 if( j < i )
  
  COUNT = i;
  while( j <= COUNT && j < n+1 )
     
    A(i,j) = p;
    i = i - 1;
    j = j + 1;
    p = p + 1;

  endwhile

  i = i + 1;
  j = j - 1;
 
  
  if ( j == n )
       i++;
 endif
 
  if ( j < n ) 
       j++;
  endif

 endif


%Caz in care se afla pe ultima pozitie.
  if( i == n && j == n ) 
       A(i , j ) = p;
  endif

endwhile

%Afisare.
Z = A;

%Aici ne despartim.
endfunction
