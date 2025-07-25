﻿
#Если Сервер Или ТолстыйКлиентОбычноеПриложение Или ВнешнееСоединение Тогда

#Область ОбработчикиСобытий

Процедура ОбработкаПроверкиЗаполнения(Отказ, ПроверяемыеРеквизиты)
	
	Если ЭтоГруппа Тогда
		Возврат;
	КонецЕсли;
	
	НепроверяемыхРеквизиты = Новый Массив;
	
	Если Не Использовать Тогда
		ОбщегоНазначенияКлиентСервер.ДополнитьМассив(НепроверяемыхРеквизиты, ПроверяемыеРеквизиты);
	КонецЕсли;
	
	ОбщегоНазначения.УдалитьНепроверяемыеРеквизитыИзМассива(ПроверяемыеРеквизиты, НепроверяемыхРеквизиты); 
	
КонецПроцедуры

Процедура ПередЗаписью(Отказ)
	ПроверитьИспользование();
КонецПроцедуры

Процедура ПередУдалением(Отказ)
	ПроверитьИспользование();
КонецПроцедуры

Процедура ПроверитьИспользование()
	
	Если ПометкаУдаления 
		И Использовать
		И Не ЭтоГруппа Тогда
		ВызватьИсключение НСтр("ru = 'Для пометки удаления необходимо снять флаг использования.'", "ru");
	КонецЕсли;
	
КонецПроцедуры

#КонецОбласти

#Иначе
ВызватьИсключение НСтр("ru = 'Недопустимый вызов объекта на клиенте.'");
#КонецЕсли

