<?php


namespace App\Controller;

use App\Model\CountryManager;
use App\Model\LanguageManager;
use App\Model\CurrencyManager;

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
        $language = $countryManager->selectLanguageByCountry($id);
        $currency = $countryManager->selectCurrencyByCountry($id);

        return $this->twig->render('Country/show.html.twig', ['country' => $country,
            'language' => $language, 'currency' => $currency,  'musics' => $musics]);
    }
}
