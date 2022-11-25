program CinemaXIC;
uses crt;

var
  seat : array[1..5] of string;
  menu, menu1, menu2, getFilm, getTime, qty, i, j : integer;
  film , schedule: string;
begin
  repeat
    CLRSCR;
    writeln('-------------------------------------');
    writeln('Selamat datang di CinemaXIC');
    writeln('-------------------------------------');
    writeln('1. Film hari ini');
    writeln('2. Pesan tiket sekarang');
    writeln('0. Keluar Aplikasi');
    writeln('-------------------------------------');
    readln(menu);

    if(menu = 1) then
      begin
        repeat
          CLRSCR;
          writeln('-------------------------------------');
          writeln('Film yang sedang tayang hari ini');
          writeln('-------------------------------------');
          writeln('1. Sri Asih');
          writeln('2. Black panther : wakanda forever');
          writeln('3. Black Adam');
          writeln('Jika anda ingin kembali, anda bisa mengetikkan angka 0');
      
          readln(menu1);
        until (menu1 = 0);
      end
    else if(menu = 2) then
      begin
        repeat
          CLRSCR;
          writeln('-------------------------------------');
          writeln('1. Sri Asih');
          writeln('2. Black panther : wakanda forever');
          writeln('3. Black Adam');
          writeln('-------------------------------------');
          writeln('Silahkan pilih film yang ingin kamu tonton');
          readln(getFilm);

          if(getFilm = 1) then
            begin  
              film := 'Sri Asih';
            end
          else if(getFilm = 2) then
            begin  
              film := 'Black panther : wakanda forever';
            end
          else if(getFilm = 3) then
            begin  
              film := 'Black Adam';
            end
          else if(getFilm = 0) then
            begin
              menu2 := getFilm;
            end;
          CLRSCR;
          writeln('-------------------------------------');
          writeln('Silahkan pilih jam tayang');
          writeln('-------------------------------------');
          writeln('1. 13:00 WIB');
          writeln('2. 19:00 WIB');
          writeln('3. 22:00 WIB');
          writeln('-------------------------------------');
          readln(getTime);

          if(getTime = 1) then
            begin
              schedule := '13:00 WIB';
            end
          else if(getTime = 2) then
            begin
              schedule := '19:00 WIB';
            end
          else if(getTime = 3) then
            begin
              schedule := '22:00 WIB';
            end;
          
          CLRSCR;
          writeln('Berapa tiket yang ingin kamu pesan? ');
          readln(qty);

          CLRSCR;
          writeln('Silahkan tentukan tempat duduk');
          writeln('Kolom [A - G] Baris [1 - 20]');

          for i := 1 to qty do
            begin
              readln(seat[i]);
            end;

          CLRSCR;
          writeln('-------------------------------------');
          writeln('Invoice Ticket CinemaXIC');
          writeln('-------------------------------------');
          writeln('Judul Film : ');
          writeln('   ' + film);
          writeln('Jam tayang : ');
          writeln('   ' + schedule);
          write('Jumlah tiket : ');
          writeln(qty);
          writeln('Tempat duduk : ');
          for j := 1 to Length(seat) do
            begin
              writeln('  ' + seat[j]);
            end;
          write('Total Harga : Rp. ');
          writeln(50000 * qty);
          

          writeln('Apakah kamu ingin memesan tiket lagi? ');
          writeln('Jika tidak, anda dapat menekan 0');
          readln(menu2);
          
          
        until (menu2 = 0);
      end;
  until (menu = 0);
  writeln('Sampai jumpa');
end.