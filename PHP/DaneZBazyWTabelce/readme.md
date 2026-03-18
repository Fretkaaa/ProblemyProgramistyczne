# Wstawianie danych z pliku sql do tabeli w html

> [!IMPORTANT]
> Aby wszystko działało poprawnie należy najpierw stworzyć bazę danych:<br>
> a) przez interfejs **MySQL**<br>
> b) zapytaniem
> ```sql
>  CREATE DATABASE egzaminbaza
> ```
>
> albo na istniejącej już bazie importowac plik `tabelahtml.sql`
> oraz zmienić bazę danych z którą php ma się połączyć
> ### Index.php
> ```sql
>  $conn = mysqli_connect('localhost', 'root', '', 'nazwa_bazy');
> ```
