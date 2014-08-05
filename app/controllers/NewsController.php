<?php

class NewsController extends Controller
{
    public function handle()
    {
        return ['news.tpl', [
            'news' => NewsModel::getLast()
        ]];
    }
}
