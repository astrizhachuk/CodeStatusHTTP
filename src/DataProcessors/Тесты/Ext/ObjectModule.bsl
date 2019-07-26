﻿#Если Сервер Или ТолстыйКлиентОбычноеПриложение Или ВнешнееСоединение Тогда

Процедура ВыполнитьТестыНаСервере() Экспорт
		
	Тест_КодыОтветаHTTP();
	Тест_НайтиКодПоИдентификатору();
	Тест_НайтиИдентификаторПоКоду();
	Тест_НайтиОписаниеПоИдентификатору();

	Тест_isInformational();
	Тест_isSuccess();
	Тест_isRedirection();
	Тест_isClientError();
	Тест_isServerError();
	
КонецПроцедуры

#Область Тесты

Процедура Тест_КодыОтветаHTTP() Экспорт
	
	КоличествоКодов = 62;
	
	Результат = КодОтветаHTTP.КодыОтветаHTTP();
	УтверждениеВерно( Результат.Количество(), КоличествоКодов );

	ТестПройден( "Тест_КодыОтветаHTTP" );
	
КонецПроцедуры

Процедура Тест_НайтиКодПоИдентификатору() Экспорт
	
	Идентификатор = "CONTInue";
	Результат = КодОтветаHTTP.НайтиКодПоИдентификатору( Идентификатор );	
	УтверждениеВерно( Результат, 100 );
	
	Идентификатор = "БАБАБАБАБАББУ";
	Результат = КодОтветаHTTP.НайтиКодПоИдентификатору( Идентификатор );	
	УтверждениеВерно( Результат, Неопределено );
	
	Идентификатор = 10;
	Результат = КодОтветаHTTP.НайтиКодПоИдентификатору( Идентификатор );	
	УтверждениеВерно( Результат, Неопределено );

	ТестПройден( "Тест_НайтиКодПоИдентификатору" );
	
КонецПроцедуры

Процедура Тест_НайтиИдентификаторПоКоду() Экспорт
	
	Код = 100;
	Результат = КодОтветаHTTP.НайтиИдентификаторПоКоду( Код );	
	УтверждениеВерно( Результат, "CONTINUE" );
	
	Код = 9000;
	Результат = КодОтветаHTTP.НайтиИдентификаторПоКоду( Код );	
	УтверждениеВерно( Результат, Неопределено );
	
	Код = "а100";
	Результат = КодОтветаHTTP.НайтиИдентификаторПоКоду( Код );	
	УтверждениеВерно( Результат, Неопределено );

	ТестПройден( "Тест_НайтиИдентификаторПоКоду" );
	
КонецПроцедуры

Процедура Тест_НайтиОписаниеПоИдентификатору() Экспорт
	
	Идентификатор = "CONTInue";
	Результат = КодОтветаHTTP.НайтиОписаниеПоИдентификатору( Идентификатор );	
	УтверждениеВерно( Результат, "Continue" );
	
	Идентификатор = 10;
	Результат = КодОтветаHTTP.НайтиОписаниеПоИдентификатору( Идентификатор );	
	УтверждениеВерно( Результат, Неопределено );

	ТестПройден( "Тест_НайтиОписаниеПоИдентификатору" );
	
КонецПроцедуры

Процедура Тест_isInformational() Экспорт
	
	КодОтвета = 100;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isContinue( КодОтвета );	
	УтверждениеВерно( Результат, Истина );
	
	КодОтвета = 101;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isSwitchingProtocols( КодОтвета );	
	УтверждениеВерно( Результат, Истина );
	
	КодОтвета = 102;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isProcessing( КодОтвета );	
	УтверждениеВерно( Результат, Истина );
	
	КодОтвета = 103;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isCheckpoint( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	ТестПройден( "Тест_isInformational" );
	
КонецПроцедуры

Процедура Тест_isSuccess() Экспорт
	
	КодОтвета = 200;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isOk( КодОтвета );	
	УтверждениеВерно( Результат, Истина );
	
	КодОтвета = 201;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isCreated( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 202;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isAccepted( КодОтвета );	
	УтверждениеВерно( Результат, Истина );
	
	КодОтвета = 203;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isNonAuthoritative( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 204;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isNoContent( КодОтвета );	
	УтверждениеВерно( Результат, Истина );
	
	КодОтвета = 205;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isResetContent( КодОтвета );	
	УтверждениеВерно( Результат, Истина );
	
	КодОтвета = 206;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isPartialContent( КодОтвета );	
	УтверждениеВерно( Результат, Истина );
	
	КодОтвета = 207;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isMultiStatus( КодОтвета );	
	УтверждениеВерно( Результат, Истина );
	
	КодОтвета = 208;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isAlreadyReported( КодОтвета );	
	УтверждениеВерно( Результат, Истина );
	
	КодОтвета = 226;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isIMUsed( КодОтвета );	
	УтверждениеВерно( Результат, Истина );
	
	ТестПройден( "Тест_isSuccess" );
	
КонецПроцедуры

Процедура Тест_isRedirection() Экспорт
	
	КодОтвета = 300;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isMultipleChoices( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 301;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isMovedPermanently( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 302;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isFound( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 303;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isSeeOther( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 304;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isNotModified( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 305;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isUseProxy( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 307;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isTemporaryRedirect( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 308;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isPermanentRedirect( КодОтвета );	
	УтверждениеВерно( Результат, Истина );	

	ТестПройден( "Тест_isRedirection" );
	
КонецПроцедуры

Процедура Тест_isClientError() Экспорт

	КодОтвета = 400;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isBadRequest( КодОтвета );	
	УтверждениеВерно( Результат, Истина );	

	КодОтвета = 401;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isUnauthorized( КодОтвета );	
	УтверждениеВерно( Результат, Истина );	

	КодОтвета = 402;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isPaymentRequired( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 403;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isForbidden( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 404;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isNotFound( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 405;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isMethodNotAllowed( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 406;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isNotAcceptable( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 407;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isProxyAuthentication( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 408;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isRequestTimeout( КодОтвета );	
	УтверждениеВерно( Результат, Истина );	

	КодОтвета = 409;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isConflict( КодОтвета );	
	УтверждениеВерно( Результат, Истина );	

	КодОтвета = 410;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isGone( КодОтвета );	
	УтверждениеВерно( Результат, Истина );	

	КодОтвета = 411;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isLengthRequired( КодОтвета );	
	УтверждениеВерно( Результат, Истина );	

	КодОтвета = 412;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isPreconditionFailed( КодОтвета );	
	УтверждениеВерно( Результат, Истина );	

	КодОтвета = 413;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isPayloadTooLarge( КодОтвета );	
	УтверждениеВерно( Результат, Истина );	

	КодОтвета = 414;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isURITooLong( КодОтвета );	
	УтверждениеВерно( Результат, Истина );	

	КодОтвета = 415;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isUnsupportedMedia( КодОтвета );	
	УтверждениеВерно( Результат, Истина );	

	КодОтвета = 416;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isRequestedRangeNotSatisfiable( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 417;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isExpectationFailed( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 418;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isImATeapot( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 421;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isDestinationLocked( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 422;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isUnprocessableEntity( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 423;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isLocked( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 424;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isFailedDependency( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 426;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isUpgradeRequired( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 428;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isPreconditionRequired( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 429;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isTooManyRequests( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 431;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isRequestHeaderTooLarge( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 451;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isUnavailableReasons( КодОтвета );	
	УтверждениеВерно( Результат, Истина );
		
	ТестПройден( "Тест_isClientError" );
	
КонецПроцедуры

Процедура Тест_isServerError() Экспорт
	
	КодОтвета = 500;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isInternalServerError( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 501;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isNotImplemented( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 502;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isBadGateway( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 503;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isServiceUnavailable( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 504;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isGatewayTimeout( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 505;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isHTTPVersionNotSupported( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 506;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isVariantAlsoNegotiates( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 507;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isInsufficientStorage( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 508;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isLoopDetected( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 509;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isBandwidthLimitExceeded( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 510;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isNotExtended( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 511;
	Результат = Ложь;
	Результат = КодОтветаHTTP.isNetworkAuthentication( КодОтвета );	
	УтверждениеВерно( Результат, Истина );
	
	ТестПройден( "Тест_isClientError" );
	
КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

Процедура УтверждениеВерно(ЛевоеЗначение, ПравоеЗначение, Пояснение = "")
	
	Если ЛевоеЗначение <> ПравоеЗначение Тогда
		ВызватьИсключение(СтрШаблон("<%1> не равно <%2>: %3", ЛевоеЗначение, ПравоеЗначение, Пояснение));
	КонецЕсли;
	
КонецПроцедуры

Процедура ТестПройден(Тест)
	
	Сообщить(СтрШаблон("Сервер [OK] %1", Тест));
	
КонецПроцедуры

#КонецОбласти

#КонецЕсли