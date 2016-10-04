<?php
/**
 * Created by PhpStorm.
 * User: boris_2
 * Date: 04.10.2016
 * Time: 10:53
 */

namespace app\controllers;

use app\models\Product;
use app\models\Cart;
use Yii;

class CartController extends AppController
{
    /**
     * @return Action
     */
    public function actionAdd()
    {
        $id = Yii::$app->request->get('id');
        $product = Product::findOne($id);
        if(empty($product)) return false;
        $session = Yii::$app->session;
        $session->open();
        $cart = new Cart();
        $cart->addToCart($product);
    }
}