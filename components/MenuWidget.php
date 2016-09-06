<?php

/**
 * Created by PhpStorm.
 * User: Boris
 * Date: 06.09.2016
 * Time: 20:00
 */
namespace app\components;

use yii\base\Widget;

class MenuWidget extends Widget
{
    public $tpl;

    public function init() {
        parent::init();
        if($this->tpl === null) {
            $this->tpl = 'menu';
        }
        $this->tpl .= '.php';
    }

    public function run() {
        return $this->tpl;
    }
}