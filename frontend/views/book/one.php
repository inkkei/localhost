<?php
/**
 * Created by PhpStorm.
 * User: Demid
 * Date: 09.06.2019
 * Time: 12:17
 */

$this->title = $book->title;
?>
<div class="row">
    <div class="col-lg-12">
        <h2><?=$book->title;?></h2>
            <p><?=$book->desc;?></p>
            <p><?=$book->author;?></p>
            <p>(<?=$book->year;?>)</p>
    </div>
</div>