<?php

namespace App\Model;

/**
 *
 */
class LanguageManager extends AbstractManager
{
    /**
     *
     */
    const TABLE = 'language';

    /**
     *  Initializes this class.
     */
    public function __construct()
    {
        parent::__construct(self::TABLE);
    }

    public function selectLanguageByCountry(int $id)
    {
        // prepared request
        $query = 'SELECT * FROM country  JOIN language ON country.idLanguage = language.id  WHERE  country.id =' .$id;

        $statement = $this-> pdo->prepare($query);
        $statement->bindValue('id', $id, \PDO::PARAM_INT);
        $statement->execute();

        return $statement->fetch(\PDO::FETCH_ASSOC);
    }
}
