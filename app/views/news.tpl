<h1>News</h1>

<ul>
    {foreach $news as $item}
        <h2>{$item.title}</h2>
        <p>
            {$item.content}
        </p>
    {/foreach}
</ul>