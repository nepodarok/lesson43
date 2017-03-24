
# language: ru

Функционал: Удаление и обновление корзины
	Как пользователь (после авторизации)
	Я хочу иметь возможность редактировать корзину и очистить ее
	Чтобы не заказать не вкусняшку
  @javascript
	Сценарий: Обновление и удаление корзины
    Допустим пользователь с email "bla@bla.bla" и паролем "password"
    Если перейдет в магазин, добавив первое блюдо в корзину
    То ссылка "Оформить заказ" видна в боковом сайдбаре
		И клик по "Очистить корзину" скроет ссылку на "Оформить заказ"