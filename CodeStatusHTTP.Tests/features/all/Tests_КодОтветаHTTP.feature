# language: ru

@tree
@classname=ModuleExceptionPath

Функционал: Код ответа HTTP
	Как Разработчик
	Я Хочу чтобы возвращаемое значение метода совпадало с эталонным
	Чтобы я мог гарантировать работоспособность метода

@OnServer
Сценарий: Tests_КодОтветаHTTP (сервер): Тест_НайтиКодПоИдентификатору
	И я выполняю код встроенного языка на сервере
	| 'Tests_КодОтветаHTTP.Тест_НайтиКодПоИдентификатору(Контекст());' |