<?php
/**
 * Created by PhpStorm.
 * User: Boris
 * Date: 06.09.2016
 * Time: 19:43
 */

namespace app\models;


use yii\db\ActiveRecord;

class Category extends ActiveRecord
{
    public static function tableName() {
        return('category');
    }

    public function getProducts() {
        return $this->hasMany(Product::className(), ['category_id' => 'id']);
    }
}