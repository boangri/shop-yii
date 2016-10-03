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
use yii\data\Pagination;
use yii\web\HttpException;

class CategoryController extends AppController
{
    public function actionIndex(){
        $hits = Product::find()->where(['hit' => '1'])->limit(6)->all();
        $this->setMeta('E-SHOPPER');
        return $this->render('index', ['hits' => $hits]);
    }

    public function actionView() {
        
        $id = Yii::$app->request->get('id');
        //$products = Product::find()->where(['category_id' => $id])->all();
        $category = Category::findOne($id);
        if (empty($category))
            throw new HttpException(404, 'Такой категории нет');

        $query = Product::find()->where(['category_id' => $id]);

        $pages = new Pagination([
            'totalCount' => $query->count(), 
            'pageSize' => 3,
            'forcePageParam' => false,
            'pageSizeParam' => false,
        ]);
        $products = $query->offset($pages->offset)->limit($pages->limit)->all();

        $this->setMeta('E-SHOPPER | '. $category->name, $category->keywords, $category->description);
        return $this->render('view', compact('products', 'category', 'pages'));
    }
}