<?php
/**
 * Created by PhpStorm.
 * User: Boris
 * Date: 12.09.2016
 * Time: 20:11
 */

namespace app\controllers;
use app\models\Category;
use app\models\Product;
use Yii;

class CategoryController extends AppController
{
    public function actionIndex(){
        $hits = Product::find()->where(['hit' => '1'])->limit(6)->all();
        //debug($hits);
        return $this->render('index', ['hits' => $hits]);
    }

    public function actionView() {
        $id = Yii::$app->request->get('id');
        $products = Product::find()->where(['category_id' => $id])->all();
        return $this->render('view', compact($products));
    }
}