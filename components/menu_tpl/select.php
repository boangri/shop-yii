<option value="<?= $category['id'] ?>"<?php if ($category['id'] == $this->model->parent_id) echo ' selected' ?><?php if ($category['id'] == $this->model->id) echo ' disabled' ?>><?= $category['name'] ?></option>
<?php if (isset($category['childs'])) : ?>
    <?= $this->getMenuHtml($category['childs']) ?>
<?php endif; ?>

