function r = baza(sursa,b1,b2)
if( b1 == b2 ) 
r = sursa;
  return;
endif

%NU S-A SPUS SA FACEM PENTRU NEGATIVE.
%AR TREBUI ALTA IMPLEMENTARE.

%CONDITI MULTE CA LA SD.
if( b1 < 2 || b1 > 30 || b2 < 2 || b2 > 30 )
%  disp("Nu se poate realiza.");
  return;
endif


%Conversie baza 10.

%CREEZ UN VECTOR CU TOATE COMPENETELE NUMARULUI.
%PRIN SIMPLA DOCUMENTATIE AM GASIT ASTA.
Generator = sursa - '0';

%DIN CATE STIU SE POT SALVA MAXIM 50 DE CARACTER.
%FARA CONDITIA ASTA SE POATE SA IASA DIN RANGE.
%AM INCERCAT SA FAC ASTA CAT MAI BENEFIC.

%if( Generator(1) < 0 || length(Generator) > 10000 ) 
 % disp("Ai introdus o sursa negativa sau una peste 50 de caractere.");
 % return;
%endif

%SALVEZ LUNGIMEA PENTRU CA AM NEVOIE DE EA.
Lungime = length(Generator);


count = 0;

%CONVERSIE ASCI
%IMI ADUC NUMERELE DUPA BAZA ASCII
for i = 1 : Lungime 
  if( Generator(i) > 9 && Generator(i) < 37 )
    Generator(i) = Generator(i) - 7;
  endif   

  if( Generator(i) > 48 && Generator(i) < 69 )
    Generator(i) = Generator(i) - 39;
  endif
endfor

%O CHESTIE DE CARE PROBABIL MULTA LUME NU TINE CONT;
%CEVA DE GENU DE CE SA NU CONVERSTI ABCD DIN BAZA 10 IN CE VAZA VREI?
for i = 1 : Lungime 

  if( Generator(i) >= b1 ) 
 %     disp("Numarul nu este in baza potrivita.");
  return;
  endif

endfor 
%IMI CREEZ NUMARUL IN BAZA 10
for i = 1 : Lungime
 
 Generator(i) =  Generator(i) * b1^(Lungime-i);
 count = count + Generator(i);
endfor


%In caz de vrea cineva sa vada cum arata.
%disp(Generator);
%disp(count);

%CONVERSIA BAZA RANDOM.
%ACUM CA AM BAZA 10 IMI PERMITE SA TRANSFORM IN ORICE BAZA DORESC(2-30).

%RESTUL RAMAS(LA INCEPUT ESTE CHIAR NUMARUL)



rest = count;
rest1 = count;

i = 1;

%RELIZEZ OPERATIE DE MOD SI DIV PANA CAND RESTUL E 0.
%MODUL DE PASTREAZA PENTRU FORMARA NUMARULUI IAR.
%RESTUL SE FOLOSESTE MAI DEPARTE.
while ( rest != 0 )


%%tre sa resetezi modu   
   
   a(i) = mod(rest,b2);
   %  a(i) = rest - b2 .* floor(rest./b2);
  
   rest = floor(rest/b2);
   
%HARDCODAT, DACA NU PUTEM SA FOLOSIM FUNCTII.
%CHIAR NI S-A RECOMANDAT SA HARDCODAM DIN CATE AM CITIT PRIN TEMA.
%CAT TIMP NU POT SA FOLOSESC CA IN ALTE LIMBAJE UN FOR IN FUNCTIE
%DE CHAR PENTRU CA NU IMI IESE AICI NU STIU DE CE.
%SI NU STIU DACA AVEM VOIE CU FUNCTIA TOASCII
 
   if( a(i) == 0 ) a(i) = ["0"]; endif
   if( a(i) == 1 ) a(i) = ["1"]; endif
   if( a(i) == 2 ) a(i) = ["2"]; endif
   if( a(i) == 3 ) a(i) = ["3"]; endif
   if( a(i) == 4 ) a(i) = ["4"]; endif
   if( a(i) == 5 ) a(i) = ["5"]; endif
   if( a(i) == 6 ) a(i) = ["6"]; endif
   if( a(i) == 7 ) a(i) = ["7"]; endif
   if( a(i) == 8 ) a(i) = ["8"]; endif
   if( a(i) == 9 ) a(i) = ["9"]; endif
   if( a(i) == 10  ) a(i) = ["A"]; endif
   if( a(i) == 11  ) a(i) = ["B"]; endif
   if( a(i) == 12  ) a(i) = ["C"]; endif
   if( a(i) == 13  ) a(i) = ["D"]; endif
   if( a(i) == 14  ) a(i) = ["E"]; endif
   if( a(i) == 15  ) a(i) = ["F"]; endif
   if( a(i) == 16  ) a(i) = ["G"]; endif
   if( a(i) == 17  ) a(i) = ["H"]; endif
   if( a(i) == 18  ) a(i) = ["I"]; endif
   if( a(i) == 19  ) a(i) = ["J"]; endif
   if( a(i) == 20  ) a(i) = ["K"]; endif
   if( a(i) == 21  ) a(i) = ["L"]; endif
   if( a(i) == 22  ) a(i) = ["M"]; endif
   if( a(i) == 23  ) a(i) = ["N"]; endif
   if( a(i) == 24  ) a(i) = ["O"]; endif
   if( a(i) == 25  ) a(i) = ["P"]; endif
   if( a(i) == 26  ) a(i) = ["Q"]; endif
   if( a(i) == 27  ) a(i) = ["R"]; endif
   if( a(i) == 28  ) a(i) = ["S"]; endif
   if( a(i) == 29  ) a(i) = ["T"]; endif

 i++;

endwhile

%V1: 
%VARIANTA 1 CAND FOLOSESC UN FOR CARE SA IMI INTOARCA VECTORUL
%PENTRU CA NU AVEM VOIE FUNCTII SI NU AM STIUT DACA AM VOIE
%SA FOLOSESC CLIPLR.

%MARIMEA VECTORULUI.
y = length(a);

%INTORC LA 180 DE GRADE.
for i = 1:y
    b(i) = a(y-i+1);
endfor

%FOLOSESC CA SA NU IMI MAI APARA ANS= , E HORROR CHESTIA AIA.
%CONVERSIA IN CHAR SAU INT.
%CHIAR NU STIU DACA MERGE SA MARESC RANGE LA CHAR.

r = char(b);

%V2 IN CAZ CA PUTEAM FOLOSI ACEASTA FUNCTIE. 
%FINISH = fliplr(a);
%disp(FINISH);

%SI CAM ATAT, MAI MULTE COMENTARII DECAT LINII DE COD.

endfunction
