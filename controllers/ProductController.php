<?php
/**
 * Created by PhpStorm.
 * User: boris_2
 * Date: 21.09.2016
 * Time: 10:37
 */

namespace app\controllers;

use app\models\Product;
use yii\web\HttpException;
use Yii;

class ProductController extends AppController
{
    public function actionView($id){
        //$id = Yii::$app->request->get('id');
        $product = Product::findOne($id);
        if (empty($product))
            throw new HttpException(404, 'Такого товара нет');
        //$product = Product::with('category')->where(['id' => $id])-limit(1)->one();
        $hits = Product::find()->where(['hit' => '1'])->limit(6)->all();
        $this->setMeta('E-SHOPPER | '. $product->name, $product->keywords, $product->description);
        return $this->render('view', compact('product', 'hits'));
    }
}