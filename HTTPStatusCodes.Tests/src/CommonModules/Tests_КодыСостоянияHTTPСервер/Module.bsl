// @unit-test
Процедура НайтиКодПоИдентификатору( Фреймворк ) Экспорт

	Идентификатор = "CONTInue";
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.НайтиКодПоИдентификатору( Идентификатор );	
	УтверждениеВерно( Результат, 100 );
	
	Идентификатор = "БАБАБАБАБАББУ";
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.НайтиКодПоИдентификатору( Идентификатор );	
	УтверждениеВерно( Результат, Неопределено );
	
	Идентификатор = 10;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.НайтиКодПоИдентификатору( Идентификатор );	
	УтверждениеВерно( Результат, Неопределено );

КонецПроцедуры

// @unit-test
Процедура НайтиИдентификаторПоКоду( Фреймворк ) Экспорт
	
	Код = 100;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.НайтиИдентификаторПоКоду( Код );	
	УтверждениеВерно( Результат, "CONTINUE" );
	
	Код = 9000;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.НайтиИдентификаторПоКоду( Код );	
	УтверждениеВерно( Результат, Неопределено );
	
	Код = "а100";
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.НайтиИдентификаторПоКоду( Код );	
	УтверждениеВерно( Результат, Неопределено );
	
КонецПроцедуры

// @unit-test
Процедура НайтиПричиныПоИдентификатору( Фреймворк ) Экспорт
	
	Идентификатор = "CONTInue";
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.НайтиОписаниеПоИдентификатору( Идентификатор );	
	УтверждениеВерно( Результат, "Continue" );
	
	Идентификатор = 10;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.НайтиОписаниеПоИдентификатору( Идентификатор );	
	УтверждениеВерно( Результат, Неопределено );
	
КонецПроцедуры

// @unit-test
Процедура КлассКодаСостояния( Фреймворк ) Экспорт
	
	КодОтвета = 0;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.КлассКодаСостояния( КодОтвета );	
	УтверждениеВерно( Результат, Неопределено );
	
	КодОтвета = -1;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.КлассКодаСостояния( КодОтвета );	
	УтверждениеВерно( Результат, Неопределено );

	КодОтвета = 99;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.КлассКодаСостояния( КодОтвета );	
	УтверждениеВерно( Результат, Неопределено );
	
	КодОтвета = "фыва";
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.КлассКодаСостояния( КодОтвета );	
	УтверждениеВерно( Результат, Неопределено );

	КодОтвета = 600;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.КлассКодаСостояния( КодОтвета );	
	УтверждениеВерно( Результат, Неопределено );
	
	КодОтвета = 102;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.КлассКодаСостояния( КодОтвета );	
	УтверждениеВерно( Результат, "Informational" );
	
	КодОтвета = 199;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.КлассКодаСостояния( КодОтвета );	
	УтверждениеВерно( Результат, Неопределено );

	КодОтвета = 102;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.ЭтоИнформация( КодОтвета );	
	УтверждениеВерно( Результат, Истина );
	
	КодОтвета = 199;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.ЭтоИнформация( КодОтвета );	
	УтверждениеВерно( Результат, Ложь );
	
	КодОтвета = 202;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.КлассКодаСостояния( КодОтвета );	
	УтверждениеВерно( Результат, "Success" );
	
	КодОтвета = 299;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.КлассКодаСостояния( КодОтвета );	
	УтверждениеВерно( Результат, Неопределено );
	
	КодОтвета = 202;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.ЭтоУспех( КодОтвета );	
	УтверждениеВерно( Результат, Истина );
	
	КодОтвета = 299;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.ЭтоУспех( КодОтвета );	
	УтверждениеВерно( Результат, Ложь );
	
	КодОтвета = 302;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.КлассКодаСостояния( КодОтвета );	
	УтверждениеВерно( Результат, "Redirection" );
	
	КодОтвета = 399;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.КлассКодаСостояния( КодОтвета );	
	УтверждениеВерно( Результат, Неопределено );	
	
	КодОтвета = 302;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.ЭтоПеренаправление( КодОтвета );	
	УтверждениеВерно( Результат, Истина );
	
	КодОтвета = 399;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.ЭтоПеренаправление( КодОтвета );	
	УтверждениеВерно( Результат, Ложь );
	
	КодОтвета = 402;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.КлассКодаСостояния( КодОтвета );	
	УтверждениеВерно( Результат, "ClientError" );
	
	КодОтвета = 499;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.КлассКодаСостояния( КодОтвета );	
	УтверждениеВерно( Результат, Неопределено );	

	КодОтвета = 402;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.ЭтоОшибкаКлиента( КодОтвета );	
	УтверждениеВерно( Результат, Истина );
	
	КодОтвета = 499;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.ЭтоОшибкаКлиента( КодОтвета );	
	УтверждениеВерно( Результат, Ложь );
	
	КодОтвета = 502;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.КлассКодаСостояния( КодОтвета );	
	УтверждениеВерно( Результат, "ServerError" );
	
	КодОтвета = 599;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.КлассКодаСостояния( КодОтвета );	
	УтверждениеВерно( Результат, Неопределено );
	
	КодОтвета = 502;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.ЭтоОшибкаСервера( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 599;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.ЭтоОшибкаСервера( КодОтвета );	
	УтверждениеВерно( Результат, Ложь );

КонецПроцедуры

// @unit-test
Процедура КодыСостояния( Фреймворк ) Экспорт
	
	// is1xxInformational
	КодОтвета = 100;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsContinue( КодОтвета );	
	УтверждениеВерно( Результат, Истина );
	
	КодОтвета = 101;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsSwitchingProtocols( КодОтвета );	
	УтверждениеВерно( Результат, Истина );
	
	КодОтвета = 102;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsProcessing( КодОтвета );	
	УтверждениеВерно( Результат, Истина );
	
	КодОтвета = 103;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsCheckpoint( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	//is2xxSuccessful
	КодОтвета = 200;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsOk( КодОтвета );	
	УтверждениеВерно( Результат, Истина );
	
	КодОтвета = 201;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsCreated( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 202;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsAccepted( КодОтвета );	
	УтверждениеВерно( Результат, Истина );
	
	КодОтвета = 203;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsNonAuthoritative( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 204;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsNoContent( КодОтвета );	
	УтверждениеВерно( Результат, Истина );
	
	КодОтвета = 205;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsResetContent( КодОтвета );	
	УтверждениеВерно( Результат, Истина );
	
	КодОтвета = 206;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsPartialContent( КодОтвета );	
	УтверждениеВерно( Результат, Истина );
	
	КодОтвета = 207;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsMultiStatus( КодОтвета );	
	УтверждениеВерно( Результат, Истина );
	
	КодОтвета = 208;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsAlreadyReported( КодОтвета );	
	УтверждениеВерно( Результат, Истина );
	
	КодОтвета = 226;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsIMUsed( КодОтвета );	
	УтверждениеВерно( Результат, Истина );
	
	// is3xxRedirection
	КодОтвета = 300;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsMultipleChoices( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 301;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsMovedPermanently( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 302;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsFound( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 303;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsSeeOther( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 304;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsNotModified( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 305;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsUseProxy( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 307;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsTemporaryRedirect( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 308;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsPermanentRedirect( КодОтвета );	
	УтверждениеВерно( Результат, Истина );	
	
	// is4xxClientError

	КодОтвета = 400;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsBadRequest( КодОтвета );	
	УтверждениеВерно( Результат, Истина );	

	КодОтвета = 401;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsUnauthorized( КодОтвета );	
	УтверждениеВерно( Результат, Истина );	

	КодОтвета = 402;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsPaymentRequired( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 403;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsForbidden( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 404;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsNotFound( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 405;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsMethodNotAllowed( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 406;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsNotAcceptable( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 407;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsProxyAuthentication( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 408;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsRequestTimeout( КодОтвета );	
	УтверждениеВерно( Результат, Истина );	

	КодОтвета = 409;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsConflict( КодОтвета );	
	УтверждениеВерно( Результат, Истина );	

	КодОтвета = 410;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsGone( КодОтвета );	
	УтверждениеВерно( Результат, Истина );	

	КодОтвета = 411;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsLengthRequired( КодОтвета );	
	УтверждениеВерно( Результат, Истина );	

	КодОтвета = 412;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsPreconditionFailed( КодОтвета );	
	УтверждениеВерно( Результат, Истина );	

	КодОтвета = 413;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsPayloadTooLarge( КодОтвета );	
	УтверждениеВерно( Результат, Истина );	

	КодОтвета = 414;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsURITooLong( КодОтвета );	
	УтверждениеВерно( Результат, Истина );	

	КодОтвета = 415;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsUnsupportedMedia( КодОтвета );	
	УтверждениеВерно( Результат, Истина );	

	КодОтвета = 416;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsRequestedRangeNotSatisfiable( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 417;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsExpectationFailed( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 418;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsImATeapot( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 421;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsDestinationLocked( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 422;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsUnprocessableEntity( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 423;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsLocked( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 424;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsFailedDependency( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 426;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsUpgradeRequired( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 428;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsPreconditionRequired( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 429;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsTooManyRequests( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 431;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsRequestHeaderTooLarge( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 451;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsUnavailableReasons( КодОтвета );	
	УтверждениеВерно( Результат, Истина );
	
	// is5xxServerError
	КодОтвета = 500;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsInternalServerError( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 501;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsNotImplemented( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 502;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsBadGateway( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 503;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsServiceUnavailable( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 504;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsGatewayTimeout( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 505;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsHTTPVersionNotSupported( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 506;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsVariantAlsoNegotiates( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 507;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsInsufficientStorage( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 508;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsLoopDetected( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 509;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsBandwidthLimitExceeded( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 510;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsNotExtended( КодОтвета );	
	УтверждениеВерно( Результат, Истина );

	КодОтвета = 511;
	Результат = Ложь;
	Результат = КодыСостоянияHTTPКлиентСерверПовтИсп.IsNetworkAuthentication( КодОтвета );	
	УтверждениеВерно( Результат, Истина );
	
КонецПроцедуры

#Область СлужебныеПроцедурыИФункции

Процедура УтверждениеВерно(ЛевоеЗначение, ПравоеЗначение, Пояснение = "")
	
	Если ЛевоеЗначение <> ПравоеЗначение Тогда
		
		ВызватьИсключение(СтрШаблон("<%1> не равно <%2>: %3", ЛевоеЗначение, ПравоеЗначение, Пояснение));
	
	КонецЕсли;
	
КонецПроцедуры

#КонецОбласти