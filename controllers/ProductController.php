<?php
/**
 * Created by PhpStorm.
 * User: boris_2
 * Date: 21.09.2016
 * Time: 10:37
 */

namespace app\controllers;

use app\models\Category;
use app\models\Product;
use Yii;

class ProductController extends AppController
{
    public function actionView(){
        $id = Yii::$app->request->get('id');
        $product = Product::findOne($id);
        //$product = Product::with('category')->where(['id' => $id])-limit(1)->one();
        return $this->render('view', compact('product'));
    }
}