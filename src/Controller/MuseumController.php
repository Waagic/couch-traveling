<?php

namespace App\Controller;

use App\Model\MuseumManager;

class MuseumController extends AbstractController
{

    /**
     * Display home page
     *
     * @return string
     * @throws \Twig\Error\LoaderError
     * @throws \Twig\Error\RuntimeError
     * @throws \Twig\Error\SyntaxError
     */
    public function show($id)
    {
        $museumManager = new MuseumManager();
        $museum = $museumManager->selectOneById($id);

        return $this->twig->render('Museum/index.html.twig', ['museum' => $museum]);
    }
}
