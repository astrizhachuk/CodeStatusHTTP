# Работа с кодами ответов HTTP для "1С:Предприятие 8"

[![Quality Gate Status](https://sonar.openbsl.ru/api/project_badges/measure?project=HTTPStatusCodes&metric=alert_status)](https://sonar.openbsl.ru/dashboard?id=HTTPStatusCodes)

После проверки пары проектов с помощью [BSL Language Server](https://1c-syntax.github.io/bsl-language-server/) захотелось избавиться от "магических чисел" в коде при работе с HTTP-запросами. Использование данной небольшой библиотеки позволяет сделать работу с кодами ответов HTTP нагляднее и в соответствии со стандартами 1С.

Рекомендую к ознакомлению и библиотеку [КоннекторHTTP](https://github.com/vbondarevsky/Connector) by [Vladimir Bondarevskiy](https://www.linkedin.com/in/vbondarevsky/).

## Возможности

Основные возможности библиотеки:

- Получение числовых значений кодов ответа по краткому идентификатору;
- Получение кратких идентификаторов по числовому коду ответа;
- Получение представлений кодов ответа;
- Проверка значений переменных через соответствующие кодам ответов функции;
- Определения принадлежности кода ответа к группе кодов (информационные, ошибка клиента, ошибка сервера и т.д.);

## Требования

Платформа **8.3.10** и выше.

## Зависимости

При разработке используются:

1. [1C:Enterprise](https://1c-dn.com) 8.3.14.1993 (8.3.14 compatibility mode);
2. [1C:Enterprise Development Tools](https://edt.1c.ru) (2020.1.0+640);
3. [1Unit](https://github.com/DoublesunRUS/ru.capralow.dt.unit.launcher);
4. [vanessa-automation](https://github.com/Pr-Mex/vanessa-automation);
5. [dt.bslls.validator](https://github.com/DoublesunRUS/ru.capralow.dt.bslls.validator);
6. [BSL Language Server](https://github.com/1c-syntax/bsl-language-server);

## Использование

Скопируйте все общие модули к себе в конфигурацию.

Работа осуществляется через программный интерфейс общего модуля КодОтветаHTTP как в клиентском, так и в серверном контекстах.

## Примеры

Было...

```bsl
Если ( HTTPОтвет.КодСостояния = 201 ) Тогда
    ТекстСообщения = НСтр("ru = 'Что-то сделалось ...'");
    ВызватьИсключение ТекстСообщения;
КонецЕсли;
```

Стало...

```bsl
Если ( КодОтветаHTTP.isCreated(HTTPОтвет.КодСостояния) ) Тогда
    ТекстСообщения = НСтр("ru = 'Что-то сделалось ...'");
    ВызватьИсключение ТекстСообщения;
КонецЕсли;
```

Появилась возможность сделать следующее:

```bsl
Результат = КодОтветаHTTP.ЭтоОшибкаКлиента( 407 );
```

Результат станет равен `Истина`.

```bsl
Результат = КодОтветаHTTP.КлассКодаОтвета( 407 );
```

Результат станет равен `"ОшибкаКлиента"`.

```bsl
Результат = КодОтветаHTTP.НайтиИдентификаторПоКоду( 407 );
```

Результат станет равен `PROXY_AUTHENTICATION_REQUIRED`.

```bsl
Результат = КодОтветаHTTP.НайтиКодПоИдентификатору( PROXY_AUTHENTICATION_REQUIRED );
```

Результат станет равен `407`.

```bsl
Результат = КодОтветаHTTP.НайтиОписаниеПоИдентификатору( PROXY_AUTHENTICATION_REQUIRED );
```

Результат станет равен `"Proxy Authentication Required"`.
