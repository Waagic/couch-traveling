<?php


namespace App\Controller;

use App\Model\CountryManager;

class CountryController extends AbstractController
{
    public function index()
    {
        return  $this->twig->render('Country/index.html.twig');
    }

    public function show($id)
    {
        $countryManager = new CountryManager();
        $musics = $countryManager->selectMusicByCountry($id);


        return  $this->twig->render('Country/show.html.twig', ['musics'=>$musics]);
    }
}
