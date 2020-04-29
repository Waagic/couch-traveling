<?php


namespace App\Model;

class CountryManager extends AbstractManager
{
    const TABLE = 'country';

    public function __construct()
    {
        parent::__construct(self::TABLE);
    }

    public function selectMusicByCountry($id)
    {

        $query = 'SELECT Artist, Title, url FROM ' . self::TABLE . ' c JOIN  music ON c.id = music.idCountry WHERE c.id =' . $id;

        $statement = $this-> pdo->prepare($query);
        $statement->bindValue(':id', $id);
        $statement -> execute();


        return $statement->fetchAll(\PDO::FETCH_ASSOC);
    }
}
