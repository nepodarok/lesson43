# language: ru

Функционал: Редактирование блюда
	Как адмнистратор (после авторизации)
	Я хочу иметь возможность добавлять редактирование блюд
	Чтобы поддерживать актуальность информации
  @javascript
	Сценарий: Редактирование блюда
		Допустим залогинен пользователь по адресу /admin с email "admin@test.test" и паролем "test.test"
		Если перейдет в админку и кликнет на "Dishes" и нажмет на "Edit" и укажет новую цену "397"
		То после редактирования цены новая цена "397" отобразится на фронтенде
