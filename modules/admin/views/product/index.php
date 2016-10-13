<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Products';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="product-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Product', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            //'category_id',
            [
                'attribute' => 'category_id',
                'value' => function($data) {
                    return $data->category->name;
                },
            ],
            'name',
            //'content:ntext',
            'price',
            // 'keywords',
            // 'description',
            // 'img',
            //'hit',
            [
                'attribute' => 'hit',
                'value' => function($data){
                    return $data->hit ? 'Да' : 'Нет';
                },
            ],
            // 'new',
            [
                'attribute' => 'new',
                'value' => function($data){
                    return $data->new ? 'Да' : 'Нет';
                },
            ],
             //'sale',
            [
                'attribute' => 'sale',
                'value' => function($data){
                    return $data->sale ? 'Да' : 'Нет';
                },
            ],

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
