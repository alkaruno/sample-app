<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sample App</title>
    <link rel="stylesheet" href="/css/styles.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

<div class="container">
    <div class="row">
        <div class="column column-10">
            <h1>News</h1>
            <ul>
                {foreach $news as $item}
                    <h2><a href="#">{$item.title}</a></h2>
                    <p>
                        {$item.content}
                    </p>
                {/foreach}
            </ul>
        </div>
        <div class="column column-6">
            <h2>Last news</h2>
            <ul>
                {foreach NewsModel::getLast(1) as $item}
                    <li><a href="#">{$item.title}</a></li>
                {/foreach}
            </ul>
        </div>
    </div>
</div>

<script src="/js/all.min.js"></script>

</body>
</html>