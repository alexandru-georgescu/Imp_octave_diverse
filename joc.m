function [] = joc()

FIN = 1;
CURENT = 0;
FULL = 9;
s1 = 0;
s2 = 0;
while(1)

 a11 = '-';
 a12 = '-';
 a13 = '-';
 a21 = '-';
 a22 = '-';
 a23 = '-';
 a31 = '-';
 a32 = '-';
 a33 = '-';

 CURENT = 0;

 PATTERN = input("Introduce cu ce vrei sa joci(1 = X sau 0 = 0): " );

 if ( PATTERN == 0 )
   PLAYER = ['0'];
   COMPUTER = ['X'];
 else
   PLAYER = ['X'];
   COMPUTER = ['0'];
 endif 


 while( CURENT < FULL )

 mutare = input("Introduce linia si coloana: ");
 if( mutare == 11 ) a11 = PLAYER;
   CORECT = 1;
 endif
 if( mutare == 12 ) a12 = PLAYER;
   CORECT = 1;
 endif
 if( mutare == 13 ) a13 = PLAYER;
   CORECT = 1;
 endif
 if( mutare == 21 ) a21 = PLAYER;
   CORECT = 1;
 endif
 if( mutare == 22 ) a22 = PLAYER; 
   CORECT = 1;
 endif
 if( mutare == 23 ) a23 = PLAYER;
   CORECT = 1;
 endif
 if( mutare == 31 ) a31 = PLAYER; 
   CORECT = 1;
 endif
 if( mutare == 32 ) a32 = PLAYER;
   CORECT = 1;
 endif
 if( mutare == 33 ) a33 = PLAYER;
   CORECT = 1;
 endif
 
 if( CORECT != 1 ) 
  disp("Esti retardat.."); return; 
 endif
 CORECT = 0;
 
 if( mutare == 11 )

  if( a31 == '-' ) 
    a33 = COMPUTER;
 
  elseif( a33 == '-' ) 
    a33 = COMPUTER;

  elseif( a13 == '-' ) 
    a13 = COMPUTER;

  elseif( a12 == '-' ) 
    a12 = COMPUTER;
  endif

 endif

 if( mutare == 12 ) 
%
  if( a21 == '-' ) 
    a21 = COMPUTER;
 
  elseif( a32 == '-' ) 
    a32 = COMPUTER;

  elseif( a23 == '-' ) 
    a23 = COMPUTER;
  
  elseif( a13 == '-' ) 
    a13 = COMPUTER;

  endif

 endif

 if( mutare == 13 )

  if( a11 == '-' ) 
    a11 = COMPUTER;
 
  elseif( a31 == '-' ) 
    a31 = COMPUTER;

  elseif( a33 == '-' ) 
    a33 = COMPUTER;
 
  elseif( a23 == '-' ) 
    a23 = COMPUTER;

 endif

 endif

 if( mutare == 21 ) 

  if( a32 == '-' ) 
    a32 = COMPUTER;
 
  elseif( a23 == '-' ) 
    a23 = COMPUTER;

  elseif( a12 == '-' ) 
    a12 = COMPUTER;
 
  elseif( a32 == '-' ) 
    a32 = COMPUTER;

 endif

 endif 
 if( mutare == 22 ) 

  if( a11 == '-' ) 
    a11 = COMPUTER;
 
  elseif( a13 == '-' ) 
    a13 = COMPUTER;

  elseif( a31 == '-' ) 
    a31 = COMPUTER;

  elseif( a33 == '-' ) 
    a33 = COMPUTER;
  endif

 endif
 if( mutare == 23 ) 

  if( a12 == '-' ) 
    a12 = COMPUTER;
 
  elseif( a21 == '-' ) 
    a21 = COMPUTER;

  elseif( a32 == '-' ) 
    a32 = COMPUTER;
 
  elseif( a33 == '-' ) 
    a33 = COMPUTER;

 endif

 endif
 if( mutare == 31 )
  
  if( a33 == '-' ) 
    a33 = COMPUTER;
 
  elseif( a13 == '-' ) 
    a13 = COMPUTER;

  elseif( a11 == '-' ) 
    a11 = COMPUTER;

 
  elseif( a32 == '-' ) 
    a11 = COMPUTER;

 endif

 endif

 if( mutare == 32 ) 
 
  if( a23 == '-' ) 
    a23 = COMPUTER;
 
  elseif( a12 == '-' ) 
    a12 = COMPUTER;

  elseif( a21 == '-' ) 
    a21 = COMPUTER;
 
  elseif( a33 == '-' ) 
    a33 = COMPUTER;

 endif

 endif

 if( mutare == 33 ) 
  
  if( a13 == '-' ) 
    a13 = COMPUTER;
 
  elseif( a11 == '-' ) 
    a11 = COMPUTER;

  elseif( a31 == '-' ) 
    a31 = COMPUTER;
 
  elseif( a23 == '-' ) 
    a23 = COMPUTER;

  endif

 endif
   
 
printf(" '%c' '%c' '%c'\n '%c' '%c' '%c' \n '%c' '%c' '%c'\n" , a11 ,a12, a13,a21,a22,a23,a31,a32,a33);

if( ( a11 == PLAYER && a21 == PLAYER && a31 == PLAYER ) || 
    ( a12 == PLAYER && a22 == PLAYER && a32 == PLAYER ) ||
    ( a13 == PLAYER && a23 == PLAYER && a33 == PLAYER ) ||
    ( a11 == PLAYER && a12 == PLAYER && a13 == PLAYER ) ||
    ( a21 == PLAYER && a22 == PLAYER && a23 == PLAYER ) ||
    ( a31 == PLAYER && a32 == PLAYER && a33 == PLAYER ) || 
    ( a11 == PLAYER && a22 == PLAYER && a33 == PLAYER ) ||
    ( a13 == PLAYER && a22 == PLAYER && a31 == PLAYER ) 
  )

  disp("Ai castigat PISI!");
  s1++;
  CURENT = 7;

endif

if( ( a11 == COMPUTER && a21 == COMPUTER && a31 == COMPUTER ) || 
    ( a12 == COMPUTER && a22 == COMPUTER && a32 == COMPUTER ) ||
    ( a13 == COMPUTER && a23 == COMPUTER && a33 == COMPUTER ) ||
    ( a11 == COMPUTER && a12 == COMPUTER && a13 == COMPUTER ) ||
    ( a21 == COMPUTER && a22 == COMPUTER && a23 == COMPUTER ) ||
    ( a31 == COMPUTER && a32 == COMPUTER && a33 == COMPUTER ) || 
    ( a11 == COMPUTER && a22 == COMPUTER && a33 == COMPUTER ) ||
    ( a13 == COMPUTER && a22 == COMPUTER && a31 == COMPUTER ) 
  )

  disp("Ai piredut PISI!");
  s2++;
  CURENT = 7;
endif

if( CURENT == 8 )
   disp("REMIZA!");
endif


CURENT = CURENT+2;
endwhile
printf("NOOB:'%d' - '%d':PC:MASTER\n" , s1,s2);
STOP = input("Apasa 1 daca vrei sa iesi: ");
if( STOP == FIN)
 return;
endif

endwhile

endfunction
