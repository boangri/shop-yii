<?php
/**
 * Created by PhpStorm.
 * User: boris_2
 * Date: 04.10.2016
 * Time: 10:57
 */

namespace app\models;

use yii\db\ActiveRecord;

class Cart extends ActiveRecord
{
    public function addToCart($product, $qty = 1){
        echo "It works!";
    }
}