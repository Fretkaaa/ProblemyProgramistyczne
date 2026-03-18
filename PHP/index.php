<?php

$conn = mysqli_connect('localhost', 'root', '', 'egzaminbaza');

if (!$conn) {
    die('Błąd połączenia: ' .mysqli_connect_error());
}

?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Form z tableka</title>
</head>
<body>
    <h1>Pobieranie danych do tabelki z użyciem pętli while</h1>
    <table border="1">
            <?php
            // mysql_fetch_array - Zapisuje wiersz wyniku
            // w tablicy asocjacyjnej, numerycznej lub w obu
            $sql = "SELECT * FROM tabelahtml LIMIT 2";

            // wysłanie zapytania do bazy zmienną
            $result = mysqli_query($conn, $sql);

            //Bedzie wykonywalo tyle razy ile jest rekordów
            //mozna dodac '''LIMIT liczba''' do zapytania aby ograniczyc wyswietlanie
            //(w tym przypadku do 2)


            //definiujemy pole w ''$row'', odpowiednie rekordy musimy wyswietlic zapytaniem
            while ($row = mysqli_fetch_array($result)) {
                echo "<tr>";
                echo "<td>".$row["imie"]."</td>";
                echo "<td>".$row["nazwisko"]."</td>";
                echo "<td>".$row["pesel"]."</td>";
                echo "</tr>";
            }
            ?>
    </table>
    <h1>Wersja bez pętli</h1>
    <table border="1">
        <tr>
            <?php
            //Można ograniczyć pokazanie tylko jednego wybranego rekordu
            //poprzez wskazanie go odpowiednio zapytaniem (np. za pomocą id)
            $sql2 = "SELECT * FROM tabelahtml WHERE id_osoby = '3' LIMIT 2";

            $result = mysqli_query($conn, $sql2);

            //Bedzie wykonywalo tyle razy ile jest rekordów
            //mozna dodac ''LIMIT liczba'' do zapytania aby ograniczyc wyswietlanie
            //(w tym przypadku do 2)

            $row = mysqli_fetch_array($result);

            echo "<tr>";
            echo "<td>".$row["imie"]."</td>";
            echo "<td>".$row["nazwisko"]."</td>";
            echo "<td>".$row["pesel"]."</td>";
            echo "</tr>";

            ?>

            
        </tr>
    </table>
</body>
</html>
