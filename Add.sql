-> Utilizando Php->PDO 

$sql = $pdo->prepare('INSERT INTO pessoa(nome, telefone, email) VALUES(?, ?, ?)');
    $sql->execute(array("Valter", "89996928345", "wferreirarjr@gmail.com"));

    #2ª Forma:
    //$pdo->query('INSERT INTO pessoa(nome, telefone, email) VALUES("Walter", "79996928345", "wferreirarjr@gmail.com")');
