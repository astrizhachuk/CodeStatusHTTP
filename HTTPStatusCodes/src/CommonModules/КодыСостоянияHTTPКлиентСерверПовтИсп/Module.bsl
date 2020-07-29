// HTTPStatusCodes - https://github.com/astrizhachuk/HTTPStatusCodes
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
// 
// Copyright © 2020 Alexander Strizhachuk
// version: 2.0.0
//
//	Коды состояния (RFC 2068):
//		100, "CONTINUE", "Continue"
// 		101, "SWITCHING_PROTOCOLS", "Switching Protocols"
//      102, "PROCESSING", "Processing"
//      103, "CHECKPOINT", "Checkpoint"
//
//		200, "OK", "OK"
//		201, "CREATED", "Created"
//		202, "ACCEPTED", "Accepted"
//		203, "NON_AUTHORITATIVE_INFORMATION", "Non-Authoritative Information"
//		204, "NO_CONTENT", "No Content"
//		205, "RESET_CONTENT", "Reset Content"
//		206, "PARTIAL_CONTENT", "Partial Content"
//		207, "MULTI_STATUS", "Multi-Status"
//		208, "ALREADY_REPORTED", "Already Reported"
//		226, "IM_USED", "IM Used"
//
//		300, "MULTIPLE_CHOICES", "Multiple сhoices"
//		301, "MOVED_PERMANENTLY", "Moved Permanently"
//		302, "FOUND", "Found"
//		303, "SEE_OTHER", "See Other"
//		304, "NOT_MODIFIED", "Not Modified"
//		305, "USE_PROXY", "Use Proxy"
//		307, "TEMPORARY_REDIRECT", "Temporary Redirect"
//		308, "PERMANENT_REDIRECT", "Permanent Redirect"
//
//		400, "BAD_REQUEST", "Bad Request"
//		401, "UNAUTHORIZED", "Unauthorized"
//		402, "PAYMENT_REQUIRED", "Payment Required"
//		403, "FORBIDDEN", "Forbidden"
//		404, "NOT_FOUND", "Not Found"
//		405, "METHOD_NOT_ALLOWED", "Method Not Allowed"
//		406, "NOT_ACCEPTABLE", "Not Acceptable"
//		407, "PROXY_AUTHENTICATION_REQUIRED", "Proxy Authentication Required"
//		408, "REQUEST_TIMEOUT", "Request Timeout"
//		409, "CONFLICT", "Conflict"
//		410, "GONE", "Gone"
//		411, "LENGTH_REQUIRED", "Length Required"
//		412, "PRECONDITION_FAILED", "Precondition Failed"
//		413, "PAYLOAD_TOO_LARGE", "Payload Too Large"
//		414, "URI_TOO_LONG", "URI Too Long"
//		415, "UNSUPPORTED_MEDIA_TYPE", "Unsupported Media Type"
//		416, "REQUESTED_RANGE_NOT_SATISFIABLE", "Requested range not satisfiable"
//		417, "EXPECTATION_FAILED", "Expectation Failed"
//		418, "I_AM_A_TEAPOT", "I'm a teapot"
//		421, "DESTINATION_LOCKED", "Destination Locked"
//		422, "UNPROCESSABLE_ENTITY", "Unprocessable Entity"
//		423, "LOCKED", "Locked"
//		424, "FAILED_DEPENDENCY", "Failed Dependency"
//		426, "UPGRADE_REQUIRED", "Upgrade Required"
//		428, "PRECONDITION_REQUIRED", "Precondition Required"
//		429, "TOO_MANY_REQUESTS", "Too Many Requests"
//		431, "REQUEST_HEADER_FIELDS_TOO_LARGE", "Request Header Fields Too Large"
//		451, "UNAVAILABLE_FOR_LEGAL_REASONS", "Unavailable For Legal Reasons"
//
//		500, "INTERNAL_SERVER_ERROR", "Internal Server Error"
//		501, "NOT_IMPLEMENTED", "Not Implemented"
//		502, "BAD_GATEWAY", "Bad Gateway"
//		503, "SERVICE_UNAVAILABLE", "Service Unavailable"
//		504, "GATEWAY_TIMEOUT", "Gateway Timeout"
//		505, "HTTP_VERSION_NOT_SUPPORTED", "HTTP Version not supported"
//		506, "VARIANT_ALSO_NEGOTIATES", "Variant Also Negotiates"
//		507, "INSUFFICIENT_STORAGE", "Insufficient Storage"
//		508, "LOOP_DETECTED", "Loop Detected"
//		509, "BANDWIDTH_LIMIT_EXCEEDED", "Bandwidth Limit Exceeded"
//		510, "NOT_EXTENDED", "Not Extended"
//		511, "NETWORK_AUTHENTICATION_REQUIRED", "Network Authentication Required"

#Область ПрограммныйИнтерфейс

// Поиск числового кода ответа HTTP по его идентификатору (См. КодыСостоянияHTTPПовтИсп()).
//
// Параметры:
//  Имя - Строка - идентификатор для кода ответа HTTP.
// 
// Возвращаемое значение:
//	- Неопределено - если код по идентификатору не найден.
//	- Число - код ответа HTTP.
//
Функция НайтиКодПоИдентификатору( Знач Идентификатор ) Экспорт
	
	Перем КодыСостояния;
	Перем Результат;

	КодыСостояния = КодыСостоянияHTTPКлиентСерверПовтИсп.КодыСостоянияHTTPПовтИсп();
	
	Результат = Неопределено;
	
	Попытка
	
		Результат = КодыСостояния[ ВРег(Идентификатор) ];
	
	Исключение
		
		Результат = Неопределено;
	
	КонецПопытки;

	Возврат Результат;
 
КонецФункции

// Поиск идентификатора кода ответа HTTP по его числовому коду (См. КодыСостоянияHTTPПовтИсп()).
//
// Параметры:
//  Код - Число - код ответа HTTP. 
// 
// Возвращаемое значение:
//	- Неопределено - если идентификатор не найдено.
//	- Строка - идентификатор для кода ответа HTTP.
//
Функция НайтиИдентификаторПоКоду( Знач Код ) Экспорт
	
	Перем ИдентификаторыКодовСостояния;
	
	ИдентификаторыКодовСостояния = КодыСостоянияHTTPКлиентСерверПовтИсп.ИдентификаторыКодовСостоянияHTTPПовтИсп();

	Возврат ИдентификаторыКодовСостояния.Получить( Код );

КонецФункции

// Поиск описания для кода ответа HTTP по его идентификатору (См. КодыСостоянияHTTPПовтИсп()).
//
// Параметры:
//  Имя - Строка - идентификатор для кода ответа HTTP.
// 
// Возвращаемое значение:
//	- Неопределено - если описание не найдено.
//	- Строка - описание кода ответа HTTP.
//
Функция НайтиОписаниеПоИдентификатору( Знач Идентификатор ) Экспорт
	
	Перем ОписанияКодовСостояния;
	
	ОписанияКодовСостояния = КодыСостоянияHTTPКлиентСерверПовтИсп.ПричиныКодовСостоянияHTTPПовтИсп();
	
	Возврат ОписанияКодовСостояния.Получить( ВРег(Идентификатор) );

КонецФункции

// Определяет к какому классу кодов ответа относится переданный в функции код.
//
// Параметры:
//  Код	 - Число - код ответа HTTP.
// 
// Возвращаемое значение:
//   - Строка - возможные значения: "Informational", "Success", "Redirection", "ClientError", "ServerError".
//
Функция КлассКодаСостояния( Знач Код ) Экспорт
	
	Перем НомерГруппы;
	Перем Результат;

	КОЛИЧЕСТВО_КОДОВ_В_ГРУППЕ = 100;
	ПЕРВЫЙ_КЛАСС = 1;
	ПОСЛЕДНИЙ_КЛАСС = 5;
	
	Результат = Неопределено;
	
	Если ( НайтиИдентификаторПоКоду( Код ) = Неопределено ) Тогда
		
		Возврат Результат;
		
	КонецЕсли;

	НомерГруппы = Цел( Код / КОЛИЧЕСТВО_КОДОВ_В_ГРУППЕ );
	
	Если ( НомерГруппы < ПЕРВЫЙ_КЛАСС И НомерГруппы > ПОСЛЕДНИЙ_КЛАСС ) Тогда
		
		Возврат Результат;
		
	КонецЕсли;
	
	Возврат КлассыКодовСостояния()[ НомерГруппы - 1 ];
	
КонецФункции

// Определяет относится ли переданный в функцию код к классу кодов "Informational".
//
// Параметры:
//  Код	 - Число - код ответа HTTP.
// 
// Возвращаемое значение:
//   - Булево - Истина, код относится к классу "Informational", иначе - Ложь.
//
Функция ЭтоИнформация( Знач Код ) Экспорт
	
	Возврат ( КлассКодаСостояния( Код ) = "Informational" );
	
КонецФункции

// Определяет относится ли переданный в функцию код к классу кодов "Success".
//
// Параметры:
//  Код	 - Число - код ответа HTTP.
// 
// Возвращаемое значение:
//   - Булево - Истина, код относится к классу "Success", иначе - Ложь.
//
Функция ЭтоУспех( Знач Код ) Экспорт
	
	Возврат ( КлассКодаСостояния( Код ) = "Success" );
	
КонецФункции

// Определяет относится ли переданный в функцию код к классу кодов "Redirection".
//
// Параметры:
//  Код	 - Число - код ответа HTTP.
// 
// Возвращаемое значение:
//   - Булево - Истина, код относится к классу "Redirection", иначе - Ложь.
//
Функция ЭтоПеренаправление( Знач Код ) Экспорт
	
	Возврат ( КлассКодаСостояния( Код ) = "Redirection" );
	
КонецФункции

// Определяет относится ли переданный в функцию код к классу кодов "ClientError".
//
// Параметры:
//  Код	 - Число - код ответа HTTP.
// 
// Возвращаемое значение:
//   - Булево - Истина, код относится к классу "ClientError", иначе - Ложь.
//
Функция ЭтоОшибкаКлиента( Знач Код ) Экспорт
	
	Возврат ( КлассКодаСостояния( Код ) = "ClientError" );
	
КонецФункции

// Определяет относится ли переданный в функцию код к классу кодов "ServerError".
//
// Параметры:
//  Код	 - Число - код ответа HTTP.
// 
// Возвращаемое значение:
//   - Булево - Истина, код относится к классу "ServerError", иначе - Ложь.
//
Функция ЭтоОшибкаСервера( Знач Код ) Экспорт
	
	Возврат ( КлассКодаСостояния( Код ) = "ServerError" );
	
КонецФункции

#Область Informational_1xx

Функция isContinue( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["CONTINUE"] );
	
КонецФункции

Функция isSwitchingProtocols( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["SWITCHING_PROTOCOLS"] );
	
КонецФункции

Функция isProcessing( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["PROCESSING"] );
	
КонецФункции

Функция isCheckpoint( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["CHECKPOINT"] );
	
КонецФункции

#КонецОбласти

#Область Success_2xx

Функция isOk( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["OK"] );

КонецФункции

Функция isCreated( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["CREATED"] );

КонецФункции

Функция isAccepted( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["ACCEPTED"] );

КонецФункции

Функция isNonAuthoritative( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["NON_AUTHORITATIVE_INFORMATION"] );

КонецФункции

Функция isNoContent( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["NO_CONTENT"] );

КонецФункции

Функция isResetContent( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["RESET_CONTENT"] );

КонецФункции

Функция isPartialContent( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["PARTIAL_CONTENT"] );

КонецФункции

Функция isMultiStatus( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["MULTI_STATUS"] );

КонецФункции

Функция isAlreadyReported( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["ALREADY_REPORTED"] );

КонецФункции

Функция isIMUsed( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["IM_USED"] );

КонецФункции

#КонецОбласти

#Область Redirection_3xx

Функция isMultipleChoices( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["MULTIPLE_CHOICES"] );

КонецФункции

Функция isMovedPermanently( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["MOVED_PERMANENTLY"] );

КонецФункции

Функция isFound( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["FOUND"] );

КонецФункции

Функция isSeeOther( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["SEE_OTHER"] );

КонецФункции

Функция isNotModified( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["NOT_MODIFIED"] );

КонецФункции

Функция isUseProxy( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["USE_PROXY"] );

КонецФункции

Функция isTemporaryRedirect( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["TEMPORARY_REDIRECT"] );

КонецФункции

Функция isPermanentRedirect( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["PERMANENT_REDIRECT"] );

КонецФункции

#КонецОбласти

#Область ClientError_4xx

Функция isBadRequest( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["BAD_REQUEST"] );

КонецФункции

Функция isUnauthorized( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["UNAUTHORIZED"] );

КонецФункции

Функция isPaymentRequired( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["PAYMENT_REQUIRED"] );

КонецФункции

Функция isForbidden( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["FORBIDDEN"] );

КонецФункции

Функция isNotFound( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["NOT_FOUND"] );

КонецФункции

Функция isMethodNotAllowed( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["METHOD_NOT_ALLOWED"] );

КонецФункции

Функция isNotAcceptable( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["NOT_ACCEPTABLE"] );

КонецФункции

Функция isProxyAuthentication( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["PROXY_AUTHENTICATION_REQUIRED"] );

КонецФункции

Функция isRequestTimeout( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["REQUEST_TIMEOUT"] );

КонецФункции

Функция isConflict( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["CONFLICT"] );

КонецФункции

Функция isGone( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["GONE"] );

КонецФункции

Функция isLengthRequired( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["LENGTH_REQUIRED"] );

КонецФункции

Функция isPreconditionFailed( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["PRECONDITION_FAILED"] );

КонецФункции

Функция isPayloadTooLarge( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["PAYLOAD_TOO_LARGE"] );

КонецФункции

Функция isURITooLong( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["URI_TOO_LONG"] );

КонецФункции

Функция isUnsupportedMedia( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["UNSUPPORTED_MEDIA_TYPE"] );

КонецФункции

Функция isRequestedRangeNotSatisfiable( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["REQUESTED_RANGE_NOT_SATISFIABLE"] );

КонецФункции

Функция isExpectationFailed( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["EXPECTATION_FAILED"] );

КонецФункции

Функция isImATeapot( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["I_AM_A_TEAPOT"] );

КонецФункции

Функция isDestinationLocked( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["DESTINATION_LOCKED"] );

КонецФункции

Функция isUnprocessableEntity( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["UNPROCESSABLE_ENTITY"] );

КонецФункции

Функция isLocked( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["LOCKED"] );

КонецФункции

Функция isFailedDependency( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["FAILED_DEPENDENCY"] );

КонецФункции

Функция isUpgradeRequired( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["UPGRADE_REQUIRED"] );

КонецФункции

Функция isPreconditionRequired( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["PRECONDITION_REQUIRED"] );

КонецФункции

Функция isTooManyRequests( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["TOO_MANY_REQUESTS"] );

КонецФункции

Функция isRequestHeaderTooLarge( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["REQUEST_HEADER_FIELDS_TOO_LARGE"] );

КонецФункции

Функция isUnavailableReasons( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["UNAVAILABLE_FOR_LEGAL_REASONS"] );

КонецФункции

#КонецОбласти

#Область ServerError_5xx

Функция isInternalServerError( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["INTERNAL_SERVER_ERROR"] );

КонецФункции

Функция isNotImplemented( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["NOT_IMPLEMENTED"] );

КонецФункции

Функция isBadGateway( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["BAD_GATEWAY"] );

КонецФункции

Функция isServiceUnavailable( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["SERVICE_UNAVAILABLE"] );

КонецФункции

Функция isGatewayTimeout( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["GATEWAY_TIMEOUT"] );

КонецФункции

Функция isHTTPVersionNotSupported( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["HTTP_VERSION_NOT_SUPPORTED"] );

КонецФункции

Функция isVariantAlsoNegotiates( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["VARIANT_ALSO_NEGOTIATES"] );

КонецФункции

Функция isInsufficientStorage( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["INSUFFICIENT_STORAGE"] );

КонецФункции

Функция isLoopDetected( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["LOOP_DETECTED"] );

КонецФункции

Функция isBandwidthLimitExceeded( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["BANDWIDTH_LIMIT_EXCEEDED"] );

КонецФункции

Функция isNotExtended( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["NOT_EXTENDED"] );

КонецФункции

Функция isNetworkAuthentication( Знач Код ) Экспорт
	
	Возврат ( Код = КодыСостоянияHTTPПовтИсп()["NETWORK_AUTHENTICATION_REQUIRED"] );

КонецФункции

#КонецОбласти

#КонецОбласти

#Область СлужебныйПрограммныйИнтерфейс

// Соответствие кодов ответа HTTP и их краткому имени, используемого для именованого обращения к элементам структуры.
//
// Возвращаемое значение:
//   - ФиксированнаяСтруктура - соответствия числовых кодов и краткого имени ответа:
//		* Ключ - Строка - краткое имя для кода ответа HTTP.
//		* Значение - Число - код ответа HTTP.
//
// Пример:
//	CONTINUE = КодыСостоянияHTTPКлиентСерверПовтИсп.КодыСостоянияHTTPПовтИсп().CONTINUE;
//
Функция КодыСостоянияHTTPПовтИсп() Экспорт
	
	Перем КодыСостояния;
	Перем Результат;
	
	КодыСостояния = КодыСостояния();
	
	Результат = Новый Соответствие();
	
	Для каждого ОписаниеКода Из КодыСостояния Цикл
		
	 	Результат.Вставить( ОписаниеКода.Значение.Имя, ОписаниеКода.Значение.Код );
		
	КонецЦикла;
	
	Возврат ( Новый ФиксированноеСоответствие(Результат) );
	
КонецФункции

Функция ИдентификаторыКодовСостоянияHTTPПовтИсп() Экспорт
	
	Перем КодыСостояния;
	Перем Результат;
	
	КодыСостояния = КодыСостояния();
	
	Результат = Новый Соответствие();
	
	Для каждого ОписаниеКода Из КодыСостояния Цикл
		
	 	Результат.Вставить( ОписаниеКода.Значение.Код, ОписаниеКода.Значение.Имя );
		
	КонецЦикла;
	
	Возврат ( Новый ФиксированноеСоответствие(Результат) );
	
КонецФункции

Функция ПричиныКодовСостоянияHTTPПовтИсп() Экспорт
	
	Перем КодыСостояния;
	Перем Результат;
	
	КодыСостояния = КодыСостояния();
	
	Результат = Новый Соответствие();
	
	Для каждого ОписаниеКода Из КодыСостояния Цикл
		
	 	Результат.Вставить( ОписаниеКода.Значение.Имя, ОписаниеКода.Значение.Причина );
		
	КонецЦикла;
	
	Возврат ( Новый ФиксированноеСоответствие(Результат) );
	
КонецФункции

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

Функция КлассыКодовСостояния()
	
	Перем Результат;
	
	Результат = Новый Массив();
	Результат.Добавить( "Informational" );
	Результат.Добавить( "Success" );
	Результат.Добавить( "Redirection" );
	Результат.Добавить( "ClientError" );
	Результат.Добавить( "ServerError" );
	
	Возврат Результат;

КонецФункции

Функция КодыСостояния()
	
	Перем Результат;
	
	Результат = Новый Соответствие();
	
	ДобавитьКодСостояния( Результат, 100, "CONTINUE", "Continue");
	ДобавитьКодСостояния( Результат, 101, "SWITCHING_PROTOCOLS", "Switching Protocols");
	ДобавитьКодСостояния( Результат, 102, "PROCESSING", "Processing");
	ДобавитьКодСостояния( Результат, 103, "CHECKPOINT", "Checkpoint");
	
	ДобавитьКодСостояния( Результат, 200, "OK", "OK" );
	ДобавитьКодСостояния( Результат, 201, "CREATED", "Created" );
	ДобавитьКодСостояния( Результат, 202, "ACCEPTED", "Accepted" );
	ДобавитьКодСостояния( Результат, 203, "NON_AUTHORITATIVE_INFORMATION", "Non-Authoritative Information" );
	ДобавитьКодСостояния( Результат, 204, "NO_CONTENT", "No Content" );
	ДобавитьКодСостояния( Результат, 205, "RESET_CONTENT", "Reset Content" );
	ДобавитьКодСостояния( Результат, 206, "PARTIAL_CONTENT", "Partial Content" );
	ДобавитьКодСостояния( Результат, 207, "MULTI_STATUS", "Multi-Status" );
	ДобавитьКодСостояния( Результат, 208, "ALREADY_REPORTED", "Already Reported" );
	ДобавитьКодСостояния( Результат, 226, "IM_USED", "IM Used" );
	
	ДобавитьКодСостояния( Результат, 300, "MULTIPLE_CHOICES", "Multiple сhoices" );
	ДобавитьКодСостояния( Результат, 301, "MOVED_PERMANENTLY", "Moved Permanently" );
	ДобавитьКодСостояния( Результат, 302, "FOUND", "Found" );
	ДобавитьКодСостояния( Результат, 303, "SEE_OTHER", "See Other" );
	ДобавитьКодСостояния( Результат, 304, "NOT_MODIFIED", "Not Modified" );
	ДобавитьКодСостояния( Результат, 305, "USE_PROXY", "Use Proxy" );
	ДобавитьКодСостояния( Результат, 307, "TEMPORARY_REDIRECT", "Temporary Redirect" );
	ДобавитьКодСостояния( Результат, 308, "PERMANENT_REDIRECT", "Permanent Redirect" );
	
	ДобавитьКодСостояния( Результат, 400, "BAD_REQUEST", "Bad Request" );
	ДобавитьКодСостояния( Результат, 401, "UNAUTHORIZED", "Unauthorized" );
	ДобавитьКодСостояния( Результат, 402, "PAYMENT_REQUIRED", "Payment Required" );
	ДобавитьКодСостояния( Результат, 403, "FORBIDDEN", "Forbidden" );
	ДобавитьКодСостояния( Результат, 404, "NOT_FOUND", "Not Found" );
	ДобавитьКодСостояния( Результат, 405, "METHOD_NOT_ALLOWED", "Method Not Allowed" );
	ДобавитьКодСостояния( Результат, 406, "NOT_ACCEPTABLE", "Not Acceptable" );
	ДобавитьКодСостояния( Результат, 407, "PROXY_AUTHENTICATION_REQUIRED", "Proxy Authentication Required" );
	ДобавитьКодСостояния( Результат, 408, "REQUEST_TIMEOUT", "Request Timeout" );
	ДобавитьКодСостояния( Результат, 409, "CONFLICT", "Conflict" );
	ДобавитьКодСостояния( Результат, 410, "GONE", "Gone" );
	ДобавитьКодСостояния( Результат, 411, "LENGTH_REQUIRED", "Length Required" );
	ДобавитьКодСостояния( Результат, 412, "PRECONDITION_FAILED", "Precondition Failed" );
	ДобавитьКодСостояния( Результат, 413, "PAYLOAD_TOO_LARGE", "Payload Too Large" );
	ДобавитьКодСостояния( Результат, 414, "URI_TOO_LONG", "URI Too Long" );
	ДобавитьКодСостояния( Результат, 415, "UNSUPPORTED_MEDIA_TYPE", "Unsupported Media Type" );
	ДобавитьКодСостояния( Результат, 416, "REQUESTED_RANGE_NOT_SATISFIABLE", "Requested range not satisfiable" );
	ДобавитьКодСостояния( Результат, 417, "EXPECTATION_FAILED", "Expectation Failed" );
	ДобавитьКодСостояния( Результат, 418, "I_AM_A_TEAPOT", "I'm a teapot" );
	ДобавитьКодСостояния( Результат, 421, "DESTINATION_LOCKED", "Destination Locked" );
	ДобавитьКодСостояния( Результат, 422, "UNPROCESSABLE_ENTITY", "Unprocessable Entity" );
	ДобавитьКодСостояния( Результат, 423, "LOCKED", "Locked" );
	ДобавитьКодСостояния( Результат, 424, "FAILED_DEPENDENCY", "Failed Dependency" );
	ДобавитьКодСостояния( Результат, 426, "UPGRADE_REQUIRED", "Upgrade Required" );
	ДобавитьКодСостояния( Результат, 428, "PRECONDITION_REQUIRED", "Precondition Required" );
	ДобавитьКодСостояния( Результат, 429, "TOO_MANY_REQUESTS", "Too Many Requests" );
	ДобавитьКодСостояния( Результат, 431, "REQUEST_HEADER_FIELDS_TOO_LARGE", "Request Header Fields Too Large" );
	ДобавитьКодСостояния( Результат, 451, "UNAVAILABLE_FOR_LEGAL_REASONS", "Unavailable For Legal Reasons" );

	ДобавитьКодСостояния( Результат, 500, "INTERNAL_SERVER_ERROR", "Internal Server Error" );
	ДобавитьКодСостояния( Результат, 501, "NOT_IMPLEMENTED", "Not Implemented" );
	ДобавитьКодСостояния( Результат, 502, "BAD_GATEWAY", "Bad Gateway" );
	ДобавитьКодСостояния( Результат, 503, "SERVICE_UNAVAILABLE", "Service Unavailable" );
	ДобавитьКодСостояния( Результат, 504, "GATEWAY_TIMEOUT", "Gateway Timeout" );
	ДобавитьКодСостояния( Результат, 505, "HTTP_VERSION_NOT_SUPPORTED", "HTTP Version not supported" );
	ДобавитьКодСостояния( Результат, 506, "VARIANT_ALSO_NEGOTIATES", "Variant Also Negotiates" );
	ДобавитьКодСостояния( Результат, 507, "INSUFFICIENT_STORAGE", "Insufficient Storage" );
	ДобавитьКодСостояния( Результат, 508, "LOOP_DETECTED", "Loop Detected" );
	ДобавитьКодСостояния( Результат, 509, "BANDWIDTH_LIMIT_EXCEEDED", "Bandwidth Limit Exceeded" );
	ДобавитьКодСостояния( Результат, 510, "NOT_EXTENDED", "Not Extended" );
	ДобавитьКодСостояния( Результат, 511, "NETWORK_AUTHENTICATION_REQUIRED", "Network Authentication Required" );

	Возврат Результат;
	
КонецФункции

Процедура ДобавитьКодСостояния( Результат, Знач Код, Знач Имя, Знач Причина )
	
	Перем Описание;
	
	Описание = Новый Структура();
	Описание.Вставить( "Код", Код );
	Описание.Вставить( "Имя", Имя );
	Описание.Вставить( "Причина", Причина );

	Результат.Вставить( Код, Описание );

КонецПроцедуры

#КонецОбласти
