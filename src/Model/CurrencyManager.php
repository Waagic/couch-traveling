<?php

namespace App\Model;

/**
 *
 */
class CurrencyManager extends AbstractManager
{
    /**
     *
     */
    const TABLE = 'currency';

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

        return $statement->fetchAll(\PDO::FETCH_ASSOC);
    }
}
