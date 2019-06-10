<?php
/**
 * Created by PhpStorm.
 * User: Demid
 * Date: 09.06.2019
 * Time: 11:31
 */

namespace frontend\controllers;

use common\models\Book;
use Yii;
use yii\data\ActiveDataProvider;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\web\NotAcceptableHttpException;
class BookController extends Controller
{

    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'rules' => [
                    [
                        'allow' => true,
                        'roles' => ['@'],
                    ],

                ],
            ]
        ];
    }


    public function actionIndex()
    {
        $books = Book::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $books,
            'pagination' => [
                'pageSize' => 10,
            ],
        ]);

        return $this->render('all', ['dataProvider' => $dataProvider]);
    }

    public function actionOne($id)
    {
        $book = Book::find()->where(['id' => $id])->one();

        return $this->render('one', ['book' => $book]);
    }


}