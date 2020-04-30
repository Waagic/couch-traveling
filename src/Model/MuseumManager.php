<?php

namespace App\Model;

/**
 *
 */
class MuseumManager extends AbstractManager
{
    /**
     *
     */
    const TABLE = 'museum';

    /**
     *  Initializes this class.
     */
    public function __construct()
    {
        parent::__construct(self::TABLE);
    }

    public function selectByCountry($id)
    {
        //prepared request
        $query =
            "SELECT m.id, m.name, m.cam1 FROM " . self::TABLE . " m JOIN country c ON m.idCountry=c.id WHERE c.id=:id";
        $statement = $this->pdo->prepare($query);
        $statement->bindValue(':id', $id, \PDO::PARAM_INT);
        $statement->execute();

        return $statement->fetchAll(\PDO::FETCH_ASSOC);
    }
}
