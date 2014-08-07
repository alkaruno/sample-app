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
            {foreach $news as $item}
                <div>
                    <h2><a href="#">{$item.title}</a></h2>
                    <p>
                        {$item.content}
                    </p>
                </div>
            {/foreach}
        </div>
        <div class="column column-6">
            <h2>Last news</h2>
            {foreach NewsModel::getLast(1) as $item}
                <div><a href="#">{$item.title}</a></div>
            {/foreach}
        </div>
    </div>
</div>

<script src="/js/all.min.js"></script>

</body>
</html>