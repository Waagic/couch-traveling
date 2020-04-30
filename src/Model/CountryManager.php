<?php

namespace App\Model;

/**
 *
 */
class CountryManager extends AbstractManager
{
    /**
     *
     */
    const TABLE = 'country';

    /**
     *  Initializes this class.
     */
    public function __construct()
    {
        parent::__construct(self::TABLE);
    }

    public function selectCurrencyByCountry(int $id)
    {
        // prepared request
        $query = 'SELECT * FROM country  JOIN currency ON country.idcurrency = currency.id  WHERE  country.id =' .$id;

        $statement = $this-> pdo->prepare($query);
        $statement->bindValue('id', $id, \PDO::PARAM_INT);
        $statement->execute();

        return $statement->fetch(\PDO::FETCH_ASSOC);
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

    public function selectMusicByCountry($id)
    {

        $query = 'SELECT Artist, Title, url FROM ' . self::TABLE .
            ' c JOIN  music ON c.id = music.idCountry WHERE c.id =' . $id;

        $statement = $this-> pdo->prepare($query);
        $statement->bindValue(':id', $id);
        $statement -> execute();


        return $statement->fetchAll(\PDO::FETCH_ASSOC);
    }
}
