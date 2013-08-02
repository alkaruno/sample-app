<?php

class NewsModel
{
    public static function getLast($limit = 10)
    {
        return Db::getRows('SELECT * FROM news ORDER BY id DESC limit ?', $limit);
    }
} 