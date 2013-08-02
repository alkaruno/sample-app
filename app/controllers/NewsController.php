<?php

class NewsController extends Controller
{
    public function handle()
    {
        return array('news.tpl', array(
            'news' => NewsModel::getLast()
        ));
    }
} 