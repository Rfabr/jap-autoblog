<?php

declare(strict_types=1);

namespace App\Controller;

use App\Entity\Article;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class PageController extends AbstractController
{
    /**
     * @Route("/", name="app_page_home")
     */
    public function home(): Response
    {
        $repository = $this->getDoctrine()->getRepository(Article::class);

        $articles = $repository->findAll();

        return $this->render('page/home.html.twig', [
            'articles' => $articles,
        ]);
    }

    /**
     * @Route("/add", name="app_page_add")
     */
    public function add(Request $request): Response
    {   
        $method = $request->getMethod();

        if('POST' === $method)
        {
            $article = new Article();
            $article->setTitle($request->request->get('title'));
            $article->setDescription($request->request->get('description'));
            $article->setContents($request->request->get('contents'));
            $article->setPicture($request->request->get('picture'));
            $article->setBrand($request->request->get('brand'));

            $manager = $this->getDoctrine()->getManager();

            $manager->persist($article);

            $manager->flush();

            return $this->redirectToRoute('app_page_article', [
                'id' => $article->getId(),
            ]);
        }

        return $this->render('page/add.html.twig');
    }

    /**
     * @Route("/search", name="app_page_search")
     */
    public function search(Request $request): Response
    {
        $brand = $request->query->get('brand');

        $repository = $this->getDoctrine()->getRepository(Article::class);

        if(empty($brand))
        {
            $articles = $repository->findAll();
        }
        else
        {
            $articles = $repository->findBy([
                'brand' => $brand,
            ]);
        }

        return $this->render('page/search.html.twig', [
            'articles' => $articles,
        ]);
    }

    /**
     * @Route("/article/{id}", name="app_page_article")
     */
    public function article(Article $article): Response
    {
        return $this->render('page/article.html.twig', [
            'article' => $article
        ]);
    }

    /**
     * @Route("/article/{id}/edit", name="app_page_edit")
     */
    public function edit(Article $article, Request $request): Response
    {
        if($request->isMethod(Request::METHOD_POST))
        {
            $article
                ->setTitle($request->request->get('title'))
                ->setDescription($request->request->get('description'))
                ->setContents($request->request->get('contents'))
                ->setPicture($request->request->get('picture'))
                ->setBrand($request->request->get('brand'));

            $manager = $this->getDoctrine()->getManager();

            $manager->persist($article);

            $manager->flush();

            return $this->redirectToRoute('app_page_article', [
                'id' => $article->getId(),
            ]);
        }

        return $this->render('page/edit.html.twig', [
            'article' => $article,
        ]);
    }

    /**
     * @Route("/article/{id}/delete", name="app_page_delete")
     */
    public function delete(Article $article): Response
    {
        $manager = $this->getDoctrine()->getManager();

        $manager->remove($article);

        $manager->flush();

        return $this->render('page/delete.html.twig', [
            'article' => $article
        ]);
    }
}
