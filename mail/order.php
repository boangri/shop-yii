<div class="table-responsive">
    <table style="width:100%; border: 1px solid #ddd; border-collapse:collapse;" class="table table-hover table-striped">
        <thead>
        <tr style="background: #f9f9f9">
            <th stayle="padding: 8px; border: 1px solid #ddd;">Наименование</th>
            <th stayle="padding: 8px; border: 1px solid #ddd;">Количество</th>
            <th stayle="padding: 8px; border: 1px solid #ddd;">Цена</th>
            <th stayle="padding: 8px; border: 1px solid #ddd;">Сумма</th>
        </tr>
        </thead>
        <tbody>
        <?php foreach ($session['cart'] as $id => $item) : ?>
            <tr>
                <td stayle="padding: 8px; border: 1px solid #ddd;">
                    <a href="<?= \yii\helpers\Url::to(['product/view', 'id'=> $id], true) ?>"><?= $item['name'] ?></a></td>
                <td stayle="padding: 8px; border: 1px solid #ddd;"><?= $item['qty'] ?></td>
                <td stayle="padding: 8px; border: 1px solid #ddd;"><?= $item['price'] ?></td>
                <td stayle="padding: 8px; border: 1px solid #ddd;"><?= $item['price'] * $item['qty'] ?></td>
            </tr>
        <?php endforeach; ?>
        <tr>
            <td colspan="3" stayle="padding: 8px; border: 1px solid #ddd;">Итого:</td>
            <td stayle="padding: 8px; border: 1px solid #ddd;"><?= $session['cart.qty'] ?></td>
        </tr>
        <tr>
            <td colspan="3" stayle="padding: 8px; border: 1px solid #ddd;">На сумму:</td>
            <td stayle="padding: 8px; border: 1px solid #ddd;"><?= $session['cart.sum'] ?></td>
        </tr>
        </tbody>

    </table>
</div>
