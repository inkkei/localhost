<?php
/**
 * Created by PhpStorm.
 * User: Demid
 * Date: 09.06.2019
 * Time: 11:38
 */

use \yii\widgets\ListView;

$this -> title = "Books";
?>

<div class="body-content">

    <?= ListView::widget([
        'dataProvider' => $dataProvider,
        'itemView' => '_one',
    ]);?>

</div>