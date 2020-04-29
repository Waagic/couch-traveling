<?php


namespace App\Controller;

use App\Model\CountryManager;

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

        return $this->twig->render('Country/show.html.twig', ['country' => $country, 'musics'=>$musics]);
        

    }
}
