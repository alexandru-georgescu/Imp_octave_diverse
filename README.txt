%%%%%%%%%%%%%%%%%%%%%%%%%%|IMPLEMENTARE|%%%%%%%%%%%%%%%%%%%%%%%%%%%
IMPLEMENTARI FARA AJUTORUL FUNCTILOR STANDARD DIN OCTAVE.
BAZA:
  In primul rand am pus conditiile incare sa fiu sigur ca baza este
  buna cat si stringul.
  Exista o conditie in care se verifica daca b1 este egal cu b2 
  daca da atunci se va afisa stringrul, altfel se transforma 
  numarul in baza 10 cu algoritmii invatati din liceu apoi se
  cat timp restul numarului nu este 0 o sa se efectueze numar
  mod baza si incepe creearea numarului, dupa ce numarul este
  complet se afiseaza si caracterele puse in functie de valoarea
  modului se va afisa numarul.

ZIGZAG:
  Aici se verifica daca numarul nu e cumva mai mic ca 1, daca este 
  mai mic atunci se va da return.
  Functia consta intr-un while in care cat timp numarul care trebuie
  adaugat este diferit de n^2-1 se intra in el si se verifica daca 
  i<j daca da atunci i creste j scade pana cand i devine cat j vechi
  sta inseamna ca parcuge pe diagonala iar apoi verifica daca i=n
  daca da atunci j va creste altfej i va creste apoi o sa fie if
  daca j < i si se aplica acelasi algoritm lafel ca la i
  Asa se va parcurge in diagonala si se vor adauga elementele.

MORSE:
  Morse: este creat morse dupa modelul prezentat dar este modificat
  in caz ca un caracter de pe inaltimea 3 nu are urmasi am adaugat 
  ca urmasi o celula ab care are ca valoarea pe 1 * pentru ca nu 
  stiam daca pot sa folosesc functia de isEmpty.

  Morse decode: Imi salvez radacina principala si apoi in functie
  de ce caracter este dat variabilei ii se adauga ramura 2 sau 3
  iar la sfarsit afiseaza caracterul specific.

  Morse encode: Imi iau un string de tip {0.-} 0 nu conteaza dar . 
  si - reprezinta pozitia 2 si 3. Apoi parcurg 4 foruri de la 2 la 3
  care reprezinta ramura 2 si e si verifica daca pe ramura respecti-
  va se gaseste caracterul daca da atunci x o sa primeasca strcat de
  caracterul din string . sau -, asa parcurg tot arborele, neefici-
  end dar altfel nu ma gandeam in momentul respectiv.

  Multipe encode\decode : se apeleaza functia intr-un while cat in functie de lungimea sirului sau spatierea acestuia, voiam sa fiu mai explicit dar mai am 5 minute si este deadline.


JOC:
  Pai folosesc 9 variabile in care salvez fiecare pozitie si un 2 
  while primul pentru a repeta jocul cat timp nu se da tasta 1 si 
  al doilea pentru a repeta fiecare miscare pana nr miscarilor se 
  face noua, implementarea nu este una super ok se poate spune ca
  am implementat un x si 0 in care playerul castiga "mereu".

%%%%%%%%%%%%%%%%%%%%%%%%%%|IMPLEMENTARE|%%%%%%%%%%%%%%%%%%%%%%%%%%%
  

  
