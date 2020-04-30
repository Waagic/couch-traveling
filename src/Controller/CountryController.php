<?php


namespace App\Controller;

use App\Model\CountryManager;
use App\Model\MuseumManager;

/**
 * Class CountryController
 *
 */
class CountryController extends AbstractController
{
    /**
     * Display item listing
     *
     * @return string
     * @throws \Twig\Error\LoaderError
     * @throws \Twig\Error\RuntimeError
     * @throws \Twig\Error\SyntaxError
     */

    /**
     * Display country informations specified by $id
     *
     * @param int $id
     * @return string
     * @throws \Twig\Error\LoaderError
     * @throws \Twig\Error\RuntimeError
     * @throws \Twig\Error\SyntaxError
     */

    public function show(int $id)
    {
        $countryManager = new CountryManager();

        $country = $countryManager->selectOneById($id);
        $musics = $countryManager->selectMusicByCountry($id);
        $foods = $countryManager->selectFoodByCountry($id);
        $language = $countryManager->selectLanguageByCountry($id);
        $currency = $countryManager->selectCurrencyByCountry($id);
        $museumManager = new MuseumManager();
        $museums = $museumManager->selectByCountry($id);

        $apis = [1 => 39720,
            2 => 32955,
            3 => 58180,
            4 => 59421,
            5 => 112505,
            6 => 63798,
            7 => 102007,
            8 => 80812,
            9 => 72686,
            10 => 114949,
            11 => 98086,
            12 => 85605];

        $weatherJson = file_get_contents('https://api.tutiempo.net/json/?lan=fr&apid=zwTXqzqXaqqq7xj&lid='
            .$apis[$id]);
        $weatherArray = json_decode($weatherJson, true);



        return $this->twig->render('Country/show.html.twig', ['country' => $country,
            'language' => $language, 'currency' => $currency, 'musics' => $musics, 'foods' => $foods,
            'meteo' => $weatherArray, 'museums' =>$museums]);
    }
}
