<?php
/**
 * Created by PhpStorm.
 * User: Demid
 * Date: 09.06.2019
 * Time: 20:45
 */

namespace common\models;


use yii\db\ActiveRecord;

class BookCategory extends ActiveRecord

{

    public function getCategory()

    {

        return $this->hasOne(Category::className(), ['id' => 'category_id']);


    }

    public function getBook()

    {

        return $this->hasOne(Book::className(), ['id' => 'book_id']);


    }

}