<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Buysell</title>
</head>
<body>
<h1>Buysell</h1> <hr>
<h4>Все товары</h4>
<form action="/" method="get">
    Поиск по названию объявления:
    <input type="text" name="title"/><br>
    <input type="submit" value="Поиск"/>
</form>
<#list products as product>
<div>
    <p><b>${product.title}</b> ${product.price} | <a href="/product/${product.id}">Подробнее... </a> </p>
</div>
</#list>
<hr>
<h3>Создать новый товар</h3>
<form action="/product/create" method="post" enctype="multipart/form-data">
    Название объявления: <input type="text" name="title"/><br/><br/>
    Описание объявления: <input type="text" name="description"/><br/><br/>
    Цена: <input type="text" name="price"/><br/><br/>
    Город: <input type="text" name="city"/><br/><br/>
    Имя: <input type="text" name="author"/><br/><br/>
    Первая фотография: <input type="file" name="file1"/><br/><br/>
    Вторая фотография: <input type="file" name="file2"/><br/><br/>
    Третья фотография: <input type="file" name="file3"/><br/><br/>

    <input type="submit" value="Добавить товар"/>


</form>
</body>
</html>