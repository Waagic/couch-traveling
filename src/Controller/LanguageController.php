<?php
namespace App\Controller;

use App\Model\LanguageManager;

/**
 * Class LanguageController
 *
 */
class LanguageController extends AbstractController
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
     * Display language informations specified by $id
     *
     * @param int $id
     * @return string
     * @throws \Twig\Error\LoaderError
     * @throws \Twig\Error\RuntimeError
     * @throws \Twig\Error\SyntaxError
     */

    public function language(int $id)
    {
        $languageManager = new LanguageManager();
        $language = $languageManager->selectOneById($id);

        return $this->twig->render('Country/language.html.twig', ['language' => $language]);
    }
}
