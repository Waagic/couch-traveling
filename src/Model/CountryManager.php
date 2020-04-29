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
}
