    //------------------------ REMOÇÃO DE DADOS ------------------------//
    $rmv = $pdo->prepare('DELETE FROM pessoa WHERE id = ?');
    $rmv->execute(array(1));
