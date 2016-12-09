﻿/**
Модуль функций WIN API для языка Динрус.
Разработчик Виталий Кулич.
*/
module sys.DFuncs;

protected import cidrus, sys.DConsts, sys.DIfaces, sys.DStructs;
public import sys.inc.kernel32;

pragma(lib, "dinrus.lib");

static this()
{
    // Win 95, 98, ME do not implement the W functions
    __ЮНИКОД__ = (ДайВерсию() < 0x80000000);
}
/+
static if( __ЮНИКОД__) version = Юникод;
version(Windows){ version = ЛитлЭндиан;
}else version = БигЭндиан;

+/
extern(C)
{

	бкрат СТАРШСЛОВО(цел l);
	бкрат МЛАДШСЛОВО(цел l);
	ббайт СТАРШБАЙТ(бкрат w);
	ббайт МЛАДШБАЙТ(бкрат w);

//ЯЗЫК
	цел СДЕЛАЙИДЪЯЗ(ПЯзык p, ППодъяз s);
	бкрат ПЕРВИЧНИДЪЯЗ(цел язид) ;
	бкрат ИДПОДЪЯЗА(цел язид);
	
//ФАЙЛЫ И ПАПКИ
/**
SetCurrentDirectoryA
*/
	бул УстановиТекущуюПапкуА(ткст путь);
/**
SetCurrentDirectoryW
*/
	бул УстановиТекущуюПапку(шткст путь);
/**
GetCurrentDirectoryA
*/
	бцел ДайТекущуюПапкуА(бцел длинаБуфера, ткст буфер);
/**
GetCurrentDirectoryW
*/
	бцел ДайТекущуюПапку(бцел длинаБуфера, шткст буфер);
/**
CreateDirectoryA
*/
	бул СоздайПапкуА(ткст путь, БЕЗАТРЫ *безАтры );
/**
CreateDirectoryW
*/
	бул СоздайПапку(шткст путь, БЕЗАТРЫ *безАтры );
/**
CreateDirectoryExA
*/
	бул СоздайПапкуДопА(ткст папкаШаблон, ткст новаяПапка, БЕЗАТРЫ *безАтры );
/**
CreateDirectoryExW
*/
	бул СоздайПапкуДоп(шткст папкаШаблон, шткст новаяПапка, БЕЗАТРЫ *безАтры );
/**
RemoveDirectoryA
*/
	бул УдалиПапкуА(ткст путь);
/**
RemoveDirectoryW
*/
	бул УдалиПапку(шткст путь);
/**
CloseHandle
*/
	бул ЗакройДескр(ук дОбъект);
/**
CreateFileA
*/
	ук СоздайФайлА(in ткст фимя, ППраваДоступа доступ, ПСовмИспФайла режСовмест, 
	АТРИБУТЫ_БЕЗОПАСНОСТИ *безАтры, ПРежСоздФайла диспозицияСозд, ПФайл фФайлАтр, ук файлШаблон);
/**
CreateFileW
*/
	ук СоздайФайл(in шткст фимя, ППраваДоступа доступ, ПСовмИспФайла режСовмест, 
	АТРИБУТЫ_БЕЗОПАСНОСТИ *безАтры, ПРежСоздФайла диспозицияСозд, ПФайл флагиИАтры, ук файлШаблон);
/**
DeleteFileA
*/
	бул УдалиФайлА(in ткст фимя);
/**
DeleteFileW
*/
	бул УдалиФайл(in шткст фимя);
/**
FindClose
*/
	бул НайдиЗакрой(ук найдиФайл);
/**
FindFirstFileA
*/
	ук НайдиПервыйФайлА(in ткст фимя, ПДАН_А* данныеПоискаФайла);
/**
FindFirstFileW
*/
	ук НайдиПервыйФайл(in шткст фимя, ПДАН* данныеПоискаФайла);
/**
FindNextFileA
*/
	бул НайдиСледующийФайлА(ук найдиФайл, ПДАН_А* данныеПоискаФайла);
/**
FindNextFileW
*/
	бул НайдиСледующийФайл(ук найдиФайл, ПДАН* данныеПоискаФайла);
/**
GetFileAttributesA
*/
	бцел ДайАтрибутыФайлаА(in ткст фимя);
/**
GetFileAttributesW
*/
	бцел ДайАтрибутыФайла(in шткст фимя);
/**
GetFileSize
*/
	бцел ДайРазмерФайла(ук файл, убцел размерФайлаВ);
/**
CopyFileA
*/
	бул КопируйФайлА(ткст имяСущФайла, ткст новФимя, бул ошЕслиСуществует);
/**
CopyFileW
*/
	бул КопируйФайл(шткст имяСущФайла, шткст новФимя, бул ошЕслиСуществует);
/**
MoveFileA
*/
	бул ПереместиФайлА(in ткст откуда, in ткст куда);
/**
MoveFileW
*/
	бул ПереместиФайл(in шткст откуда, in шткст куда);
/**
ReadFile
*/
	бул ЧитайФайл(ук файл, ук буфер, бцел члоБайтДляЧит, бцел *члоСчитБайт, АСИНХРОН* асинхрон);
/**
SetFilePointer
*/
	бцел УстановиУказательФайла(ук файл, цел дистанцияПереноса,  цел * дистанцияПереносаВ,ППозКурсора как);
/**
WriteFile
*/
	бул ПишиФайл(ук файл, in ук буфер, бцел члоБайтДляЗаписи, убцел члоЗаписанБайт, АСИНХРОН* асинхрон);
/**
GetModuleFileNameA
*/
	бцел ДайИмяФайлаМодуляА(экз модуль, ткст *фимя, бцел размер);
	
/**
GetModuleFileName
*/
	бцел ДайИмяФайлаМодуля(экз модуль, шткст *фимя, бцел размер);
/**
GetStdHandle
*/
	ук ДайСтдДескр(ПСтд стдДескр);
/**
SetStdHandle
*/
	бул УстановиСтдДескр(ПСтд стдДескр, ук дескр);
/**
GetModuleHandleA
*/
	экз ДайДескрМодуляА(ткст имя);
/**
GetModuleHandleW
*/
	экз ДайДескрМодуля(шткст имя); 
/**

*/
	проц СлейБуферыФайла(ук файлУк);
/**

*/
	бцел ДайТипФайла(ук файлУк);

//ДИНАМИЧЕСКАЯ БИБЛИОТЕКА КОДА (ДБК)
/**
LoadLibraryA
*/
	ук ЗагрузиБиблиотекуА(ткст имяФайлаБибл);
/**
LoadLibraryW
*/
	ук ЗагрузиБиблиотеку(шткст фимя);	
/**
LoadLibraryExA
*/
	ук ЗагрузиБиблиотекуДопА(ткст фимя, ук файл, ПЗагрФлаг флаги);
/**
LoadLibraryExW
*/
	ук ЗагрузиБиблиотекуДоп(шткст фимя, ук файл, ПЗагрФлаг флаги);
/**
GetProcAddress
*/
	ук ДайАдресПроц(ук модуль, ткст имяПроц);
/**
GetVersion
*/
	бцел ДайВерсию();
/**
FreeLibrary
*/
	бул ОсвободиБиблиотеку(ук библМодуль);
/**
FreeLibraryAndExitThread
*/
	проц ОсвободиБиблиотекуИВыйдиИзНити(ук библМодуль, бцел кодВыхода);
	
/**
DisableThreadLibraryCalls
*/
бул ОтключиВызовыБиблиотекиИзНити(ук модуль);

//ОКНО СООБЩЕНИЯ
/**
MessageBoxA
*/
	цел ОкноСообА(ук окно, ткст текст, ткст заголовок, ПСооб тип);
/**
MessageBoxW
*/
	цел ОкноСооб(ук окно, шткст текст, шткст заголовок, ПСооб тип);
/**
MessageBoxExA
*/
	цел ОкноСообДопА(ук окно, ткст текст, ткст заголовок, ПСооб тип, бкрат идЯзыка);
/**
MessageBoxExW
*/
	цел ОкноСообДоп(ук окно, шткст текст, шткст заголовок, ПСооб тип, бкрат идЯзыка);

//РЕЕСТР
/**
RegDeleteKeyA
*/
	цел УдалиКлючРегА(ПКлючРег ключ, ткст подключ);
/**
RegDeleteValueA
*/
	цел УдалиЗначениеРегА(ПКлючРег ключ, ткст имяЗнач);
/**
RegEnumKeyExA
*/
	цел ПеречислиКлючиРегДопА(ПКлючРег ключ, бцел индекс, ткст имя, убцел пкбИмя, убцел резерв, ткст класс, убцел пкбКласс, ФВРЕМЯ *времяПоследнейЗаписи);
/**
RegEnumValueA
*/
	цел ПеречислиЗначенияРегА(ПКлючРег ключ, бцел индекс, ткст имяЗнач, убцел пкбИмяЗнач, убцел резерв, убцел тип, уббайт данные, убцел пкбДанные);
/**
RegCloseKey
*/
	цел ЗакройКлючРег(ПКлючРег ключ);
/**
RegFlushKey
*/
	цел ПодсветиКлючРег(ПКлючРег ключ);
/**
RegOpenKeyA
*/
	цел ОткройКлючРегА(ПКлючРег ключ, ткст подключ, ук *результат);
/**
RegOpenKeyExA
*/
	цел ОткройКлючРегДопА(ПКлючРег ключ, ткст подключ, ПРеестр опции, бцел желательно, ук *результат);
/**
RegQueryInfoKeyA
*/
	цел ЗапросиИнфОКлючеРегА(ПКлючРег ключ, ткст класс, убцел пкбКласс, убцел резерв, убцел подключи, убцел максДлинаПодключа, убцел пкбМаксДлинаКласса, убцел значения, убцел пкбМаксДлинаИмениЗначения, убцел пкбМаксДлинаЗначения, убцел пкбДескрБезоп, ФВРЕМЯ *времяПоследнейЗаписи);
/**
RegQueryValueA
*/
	цел ЗапросиЗначениеРегА(ПКлючРег ключ, ткст подключ, ткст значение,  цел* пкбЗначение);
/**
RegCreateKeyExA
*/
	цел СоздайКлючРегДопА(ПКлючРег ключ, ткст подключ, бцел резерв, ткст класс, ПРеестр опции, бцел желательно, БЕЗАТРЫ *безАтры, ук *результат, убцел расположение);
/**
RegSetValueExA
*/
	цел УстановиЗначениеРегДопА(ПКлючРег ключ, ткст имяЗначения, бцел резерв, ПРеестр тип, уббайт данные, бцел кбДанные);

//ВРЕМЯ
/**
GetSystemTime
*/
	проц ДайСистВремя(СИСТВРЕМЯ* систВрем);
/**
GetFileTime
*/
	бул ДайФВремя(ук файл, ФВРЕМЯ *времяСоздания, ФВРЕМЯ *времяПоследнегоДоступа, ФВРЕМЯ *времяПоследнейЗаписи);
/**
GetSystemTimeAsFileTime
*/
	проц ДайСистВремяКакФВремя(ФВРЕМЯ* сисВремКакФВрем);
/**
SetSystemTime
*/
	бул УстановиСистВремя(СИСТВРЕМЯ* систВрем);
/**
SetFileTime
*/
	бул УстановиФВремя(ук файл, in ФВРЕМЯ *времяСоздания, in ФВРЕМЯ *времяПоследнДоступа, in ФВРЕМЯ *времяПоследнЗаписи);
/**
GetLocalTime
*/
	проц ДайМестнВремя(СИСТВРЕМЯ *систВремя);
/**
SetLocalTime
*/
	бул УстановиМестнВремя(СИСТВРЕМЯ *систВремя);
/**
SystemTimeToTzSpecificLocalTime
*/
	бул СистВремяВМестнВремяЧП(ИНФОЧП *инфОЧасПоясе, СИСТВРЕМЯ *мировВремя, СИСТВРЕМЯ *местнВремя);
/**
GetTimeZoneInformation
*/
	бцел ДайИнфОЧП(ИНФОЧП *инфОЧП);
/**
SetTimeZoneInformation
*/
	бул УстановиИнфОЧП(ИНФОЧП *инфОЧП);
/**
SystemTimeToFileTime
*/
	бул СистВремяВФВремя(in СИСТВРЕМЯ *систВрем, ФВРЕМЯ *фВрем);
/**
FileTimeToLocalFileTime
*/
	бул ФВремяВМестнФВремя(in ФВРЕМЯ *фВрем, ФВРЕМЯ *местнФВрем);
/**
LocalFileTimeToFileTime
*/
	бул МестнФВремяВФВремя(in ФВРЕМЯ *локФВрем, ФВРЕМЯ *фВрем);
/**
FileTimeToSystemTime
*/
	бул ФВремяВСистВремя(in ФВРЕМЯ *фВрем, СИСТВРЕМЯ *систВрем);
/**
CompareFileTime
*/
	цел СравниФВремя(in ФВРЕМЯ *фвр1, in ФВРЕМЯ *фвр2);
/**
FileTimeToDosDateTime
*/
	бул ФВремяВДатВремяДОС(in ФВРЕМЯ *фвр, убкрат фатДата, убкрат фатВремя);
/**
DosDateTimeToFileTime
*/
	бул ДатВремяДОСВФВремя(бкрат фатДата,  бкрат фатВремя, ФВРЕМЯ *фвр);
/**
GetTickCount
*/
	бцел ДайСчётТиков();
/**
SetSystemTimeAdjustment
*/
	бул УстановиНастрСистВремени(бцел настройкаВрем, бул настВремОтключена);
/**
GetSystemTimeAdjustment
*/
	бул ДайНастрСистВремени(убцел настрВрем, убцел инкВрем, бул* настрВремОтключена);
/**
FormatMessageA
*/
	бцел ФорматируйСообА(ПФорматСооб флаги, ук исток, бцел идСооб, бцел идЯз, ткст буф, бцел разм, ук* арги);
/**
FormatMessageW
*/
	бцел ФорматируйСооб(ПФорматСооб флаги, ук исток, бцел идСооб, бцел идЯз, шткст буф, бцел разм, ук* арги);	
	
//ПРОЦЕСС	

/**
CreateProcess
Создаёт новый процесс и его первичную нить.
*/
	бул СоздайПроцессА(ткст назвПриложения, ткст комСтр, БЕЗАТРЫ* атрыПроц, БЕЗАТРЫ* атрыНити, бул наследоватьДескр, ПФлагСоздПроц флаги , ук среда, ткст текПап, ИНФОСТАРТА* ис, ИНФОПРОЦ* пи);	//АСКИ
	
	бул СоздайПроцесс(шткст назвПриложения, шткст комСтр, БЕЗАТРЫ* атрыПроц, БЕЗАТРЫ* атрыНити, бул наследоватьДескр, ПФлагСоздПроц флаги , ук среда, шткст текПап, ИНФОСТАРТА* ис, ИНФОПРОЦ* пи);  //ЮНИКОД

/**
CreateProcessAsUser 
Создаёт новый процесс и его первичную нить. Новый процесс выполняется в контексте безопасности указанного пользователя.
*/	
	бул СоздайПроцессПользователяА(ук токен, ткст назвПрил, ткст комСтр, БЕЗАТРЫ* атрыПроц, БЕЗАТРЫ* атрыНити, бул наследоватьДескрипторы, ПФлагСоздПроц создПроцФлаги, ук блокСреды, ткст текПап, ИНФОСТАРТА* стартИнф, ИНФОПРОЦ* инфОПроц);	
	
	бул СоздайПроцессПользователя(ук токен, шткст назвПрил, шткст комСтр, БЕЗАТРЫ* атрыПроц, БЕЗАТРЫ* атрыНити, бул наследоватьДескрипторы, ПФлагСоздПроц создПроцФлаги, ук блокСреды, шткст текПап, ИНФОСТАРТА* стартИнф, ИНФОПРОЦ* инфОПроц);
	
/**
ExitProcess
Завершает процесс и все его нити.
*/
	проц ПокиньПроцесс(бцел кодВыхода);
	
/**
GetExitCodeProcess
Получает статус завершения указанного процесса.
*/
	бул ДайКодВыходаПроцесса( ук процесс, out бцел* код); 
	
/**
GetProcessTimes
Получает временную информацию для данного процесса.
*/
	бул ДайВременаПроцесса(ук процесс, ФВРЕМЯ *времяСозд, ФВРЕМЯ *времяВыхода, ФВРЕМЯ *времяЯдра, ФВРЕМЯ *времяПользователя);
	
/**
GetCurrentProcess
Получает псевдохэндл текущего процесса.
*/
	ук ДайТекущийПроцесс();

/**
GetCurrentProcessId 
Получает идентификатор вызывающего процесса.
*/
	бцел ДайИдТекущегоПроцесса();

/**
GetCommandLine 
Получает командную строку для текущего процесса.
*/
	ушим ДайКомСтроку();

/**
CommandLineToArgvW
*/
	ушим* КомСтрокаВАрги(ушим ш, уцел н);
	
/**
OpenProcess
Открывает существующий объект процесса.
*/	
ук ОткройПроцесс(ППроцесс желДоступ, бул наследоватьДескр, бцел идПроцесса);

/**
TerminateProcess
Прерывает указанный процесс и все его нити.
*/
бул ПрервиПроцесс(ук процесс, бцел кодВыхода);

/**
GetProcessAffinityMask
Возвращает маску сходства указанного процесса и маску сходства для системы.
*/
бул ДайМаскуСходстваПроцесса(ук процесс,out бцел* маскаПроц, out бцел* маскаСис );
	
//НИТЬ

/**
CreateThread
Создаёт нить для выполнения в виртуальном адресном пространстве вызывающего её процесса.
*/
ук СоздайНить(БЕЗАТРЫ* атрыНити, т_мера размСтэка, ПРОЦ_СТАРТА_НИТИ стартАдр, ук парам, ПФлагСоздПроц флагиСозд, убцел идНити);

/**
GetCurrentThread
Получает псевдохэндл текущей нити.
*/
	ук ДайТекущуюНить();
	
/**
GetThreadLocale
*/
	бцел ДайЛокальНити();
	
/**
DuplicateHandle
*/
	бул ДублируйДескр(ук исходнПроц, ук исходнНить, ук хендлПроцЦели, ук *цхендл, ППраваДоступа доступ, бул наследоватьДескр, бцел опции);
	
/**
GetCurrentThreadId 
Получает идентификатор вызывающей нити.
*/
	бцел ДайИдТекущейНити();

/**
SetThreadPriority
Устанавливает значение приоритета для указанной нити.
*/
	бул УстановиПриоритетНити(ук нить, цел приоритет);
	
/**
SetThreadPriorityBoost
 Управляет способностью системы временно увеличивать или понижать приоритет нити. 
*/
	бул УстановиПовышениеПриоритетаНити(ук нить, бул отклПовышениеПриоритета);
	
/**
GetThreadPriorityBoost 
Выводит для указанной нити состояние повышения приоритета.
*/
	бул ДайПовышениеПриоритетаНити(ук нить, бул *отклПовышениеПриоритета);
	
/**
GetThreadTimes
Выводит временную информацию для указанной нити.
*/
	бул ДайВременаНити(ук нить, ФВРЕМЯ *времяСозд, ФВРЕМЯ *времяВыхода, ФВРЕМЯ *времяЯдра, ФВРЕМЯ *времяПользователя);
	
/**
GetThreadPriority
Выводит значение приоритета для указанной нити.
*/
	цел ДайПриоритетНити(ук нить);
	
/**
GetThreadContext
*/
	бул ДайКонтекстНити(ук нить, КОНТЕКСТ *контекст);
	
/**
SetThreadContext
*/
	бул УстановиКонтекстНити(ук нить, КОНТЕКСТ *контекст);
	
/**
GetExitCodeThread
Получает статус завершения указанной нити.
*/
	бул ДайКодВыходаНити(ук нить, убцел кодВыхода);
	
/**
SuspendThread
Замораживает указанную нить.
*/
	бцел ЗаморозьНить(ук нить);
	
/**
ResumeThread
Уменьшает счётчик замороженных нитей.
*/
	бцел  РазморозьНить(ук нить);

/**
WaitForSingleObject
*/
	бцел ЖдиОдинОбъект(ук хендл, бцел миллисекк);
	
/**
WaitForMultipleObjects
*/
	бцел ЖдиНесколькоОбъектов(бцел счёт, ук *хендлы, бул ждатьВсе, бцел миллисекк);
	
/**
Sleep
Замораживает выполнение текущей нити на указанный интервал.
*/
	проц Спи(бцел миллисекк);
	
//НИТЕЛОКАЛЬНОЕ ХРАНИЛИЩЕ (НЛХ)
	
/**
TlsAlloc 
Размещает индекс НЛХ.
*/
	бцел РазместиНлх();
	
/**
TlsGetValue
 Выводит значение указанного индекса НЛХ в слоте НЛХ вызывающей нити. 
*/
	ук ДайЗначениеНлх(бцел индНлх);
	
/**
TlsSetValue
Сохраняет значение для указанного индекса НЛХ в слоте НЛХ вызывающей нити.
*/
	бул УстановиЗначениеНлх(бцел индНлх, ук лок);
	
/**
TlsFree
Освобождает индекс НЛХ.
*/
	бул ОсвободиНлх(бцел индНлх);

//ИНКРЕМЕНТ
/**
InterlockedIncrement
*/
	цел БлокированныйИнкремент( цел* увеличиваемое);
/**
InterlockedDecrement
*/
	цел БлокированныйДекремент( цел* уменьшаемое);
/**
InterlockedExchange
*/
	цел БлокированныйОбмен( цел * цель, цел значение);
/**
InterlockedExchangeAdd
*/
	цел БлокированныйОбменДобавка( цел * добавляемое, цел значение);
/**
InterlockedCompareExchange
*/
	ук БлокированныйОбменСравнение(ук *цель, ук обмен, ук сравниваемое);

//КРИТИЧЕСКАЯ СЕКЦИЯ	
/**
InitializeCriticalSection
*/
	проц ИнициализуйКритическуюСекцию(КРИТСЕКЦ *критСекц);
/**
EnterCriticalSection
*/
	проц ВойдиВКритическуюСекцию(КРИТСЕКЦ *критСекц);
/**
TryEnterCriticalSection
*/
	бул ПробуйВойтиВКритическуюСекцию(КРИТСЕКЦ *критСекц);
/**
LeaveCriticalSection
*/
	проц ПокиньКритическуюСекцию(КРИТСЕКЦ *критСекц);
/**
DeleteCriticalSection
*/
	проц УдалиКритическуюСекцию(КРИТСЕКЦ *критСекц);

//ПРОИЗВОДИТЕЛЬНОСТЬ	
/**
QueryPerformanceCounter
*/
	бул ОпросиСчётчикПроизводительности(дол *счПроизв);
/**
QueryPerformanceFrequency
*/
	бул ОпросиЧастотуПроизводительности(дол *частота);

//РЕСУРСЫ
/**
FreeResource
*/
	бул ОсвободиРес(гук данныеРес);
/**
LockResource
*/
	гук БлокируйРес(гук данныеРес);
	
//ГЛОБАЛЬНЫЕ ПЕРЕМЕННЫЕ	
/**
GlobalLock
*/
	ук БлокируйГлоб(гук укз);
/**
GlobalUnlock
*/
	бул  РазблокируйГлоб(гук пам);
/**
GlobalFree
*/
	гук  ОсвободиГлоб(гук пам);
/**
GlobalCompact
*/
	бцел СожмиГлоб(бцел минОсвоб);
/**
GlobalFix
*/
	проц ФиксируйГлоб(гук пам);
/**
GlobalUnfix
*/
	проц РасфиксируйГлоб(гук пам);
/**
GlobalWire
*/
	ук ВяжиГлоб(гук пам);
/**
GlobalUnWire
*/
	бул ОтвяжиГлоб(гук пам);
/**
GlobalMemoryStatus
*/
	проц СтатусГлобПамяти(СТАТПАМ *буф);
/**
GlobalAlloc
*/
	гук РазместиГлоб(ППамять флаги , бцел байты);
/**
GlobalReAlloc
*/
	гук ПереместиГлоб(гук укз, т_мера байты, ППамять флаги);
/**
GlobalSize
*/
	т_мера РазмерГлоб(гук укз);
/**
GlobalFlags
*/
	бцел ФлагиГлоб(гук укз);
/**
GlobalHandle
*/
	гук ХэндлГлоб(ук пам);

//ЛОКАЛЬНЫЕ ПЕРЕМЕННЫЕ
/**
LocalAlloc
*/	
	лук РазместиЛок(ППамять флаги, бцел байты);
/**
LocalReAlloc
*/
	лук ПереместиЛок(лук пам, бцел байты, ППамять флаги);
/**
LocalHandle
*/
	лук ХэндлЛок(ук пам);
/**
LocalLock
*/
ук БлокируйЛок(лук пам);
/**
LocalUnlock
*/
	бул РазблокируйЛок(лук пам);
/**
LocalSize
*/
    т_мера РазмерЛок(лук пам);
/**
LocalFlags
*/
	бцел ФлагиЛок(лук пам);
/**
LocalFree
*/
	лук ОсвободиЛок(лук пам);
/**
LocalShrink
*/
	бцел РасширьЛок(лук пам, бцел новРазм);
/**
LocalCompact
*/
	бцел СожмиЛок(бцел минОсв);
	
//ВИРТУАЛЬН ПАМ
/**
VirtualAlloc
*/
ук РазместиВирт(ук адрес, бцел разм, ППамять типРазмещения, бцел защита);
/**
VirtualFree
*/
бул ОсвободиВирт(ук адрес, бцел разм, ППамять типОсвобождения);
/**
VirtualProtect
*/
бул ЗащитиВирт(ук адр, бцел разм, бцел новЗащ, убцел старЗащ);
/**
VirtualQuery
*/
бцел ОпросиВирт(ук адр, sys.DStructs.БАЗИОП *буф, бцел длина);
/**
VirtualAllocEx
*/
ук РазместиВиртДоп(ук процесс, ук адрес, бцел разм, ППамять типРазмещ, бцел защита);
/**
VirtualFreeEx
*/
бул ОсвободиВиртДоп(ук процесс, ук адр, бцел разм, ППамять типОсвоб);
/**
VirtualProtectEx
*/
бул ЗащитиВиртДоп(ук процесс, ук адр, бцел разм, бцел новЗащ, убцел старЗащ);
/**
VirtualQueryEx
*/
бцел ОпросиВиртДоп(ук процесс, ук адр, sys.DStructs.БАЗИОП *буф, бцел длина);

//КУЧА
/**
FlushInstructionCache
*/
бул СлейКэшИнструкций(ук процесс, ук адрБаз, бцел разм);
/**
GetProcessHeap
*/
	ук ДайКучуПроцесса();
/**
GetProcessHeaps
*/
	бцел ДайКучиПроцесса(бцел члоКуч, ук *укз);
/**
HeapCreate
*/
	ук СоздайКучу(ППамять опц, т_мера начРазм, т_мера максРазм);
/**
HeapDestroy
*/
	бул УдалиКучу(ук укз);
/**
HeapAlloc
*/
	ук РазместиКучу(ук куча, ППамять флаги, т_мера байты);
/**
HeapReAlloc
*/
	ук ПереместиКучу(ук куча, ППамять флаги, ук блок, т_мера байты);
/**
HeapFree
*/
	бул ОсвободиКучу(ук куча, ППамять флаги, ук блок);
/**
HeapSize
*/
	бцел РазмерКучи(ук укз, ППамять флаги, ук блок );
/**
HeapValidate
*/
	бул ПроверьКучу(ук укз, ППамять флаги, ук блок );
/**
HeapCompact
*/
	бцел СожмиКучу(ук укз, ППамять флаги);
/**
HeapLock
*/
	бул БлокируйКучу(ук укз);
/**
HeapUnlock
*/
	бул РазблокируйКучу(ук укз);
/**
HeapWalk
*/
	бул ОбойдиКучу(ук укз, ЗАППРОЦКУЧ* зап);
/**
HeapQueryInformation
*/
	бул ЗапросиИнфОКуче (ук куча, бцел клинф, out ук инф, т_мера длинаклинф, т_мера* длвозвр);
/**
HeapSetInformation
*/
	бул УстановиИнфОКуче(ук куча, бцел клинф, ук кинф, т_мера длкинф);
	
//ПАМЯТЬ
/**
RtlCopyMemory
*/
	//проц КопируйПамять(ук куда, ук откуда, т_мера длина);
/**
RtlFillMemory
*/
	проц ЗаполниПамять(ук куда, т_мера длина, ббайт зап);
/**
GetLargePageMinimum
*/
	//т_мера ДайМинимумБСтраницы();
/**
GetWriteWatch
*/
	бцел ДайОбзорЗаписи(ППамять флаги, in ук базАдр, in т_мера размРег, ук* адры, inout бцел* счёт, out бцел* гранулярность);
/**
ResetWriteWatch
*/
бцел СбросьОбзорЗаписи(ук базАдр, т_мера размРег);
/**
IsBadCodePtr
*/
	бул ПлохойУкНаКод_ли(ук проц);
/**
IsBadReadPtr
*/
	бул ПлохойЧтенУк_ли(ук первБайтБлока, бцел размБлока);
/**
IsBadWritePtr
*/
	бул ПлохойЗапУк_ли(ук первБайтБлока, бцел размБлока);
/**
IsBadStringPtrA
*/
	бул ПлохойСтрУк_ли(усим т, бцел разм);
/**
IsBadStringPtrW
*/
	бул ПлохойШСтрУк_ли(ушим т, бцел разм);
/**
RtlMoveMemory
*/
	проц ПереместиПамять(ук куда, ук откуда, т_мера длина);
/**
RtlSecureZeroMemory
*/
	//ук ОбнулиПамятьБезоп(ук укз, т_мера разм);
/**
RtlZeroMemory
*/
	проц ОбнулиПамять(ук где, т_мера разм);

//МАППИНГ
	ук СоздайМаппингФайлаА(ук ф, БЕЗАТРЫ *ба, ППамять защ, бцел максРазмН, бцел максРазмВ, ткст имя);
	ук СоздайМаппингФайла(ук ф, БЕЗАТРЫ *ба,ППамять защ, бцел максРазмН, бцел максРазмВ, шткст имя);
	ук ОткройМаппингФайлаА(ППамять желДоступ, бул наследовать, ткст имяМаппинга);
	ук ОткройМаппингФайла(ППамять желДоступ, бул наследовать, шткст имяМаппинга);
	ук ВидФайлаВКарту(ук объектФМап, ППамять желатДоступ, бцел фСмещВ, бцел фСмещН, бцел члоБайтовДляМап);
	ук ВидФайлаВКартуДоп(ук объектФМап, ППамять желатДоступ, бцел фСмещВ, бцел фСмещН, бцел члоБайтовДляМап, ук адрОвы);
	бул СлейВидФайла(ук адрОвы, бцел члоСливБайт);
	бул ВидФайлаИзКарты(ук адрОвы);		

//ОКНА
	бул ОбновиОкно(ук ок);
	ук УстановиАктивноеОкно(ук ок);
	ук ДайФоновоеОкно();
	бул РисуйРабСтол(ук ку);
	бул УстановиФоновоеОкно(ук ок);
	ук ОкноИзКУ(ук ку);
	ук ДайКУ(ук ок);
	ук ДайКУДоп(ук ок, ук регКлип, бцел флаги);
	ук ДайКУОкна(ук ок);
	цел ОтпустиКУ(ук ок, ук ку);
	ук НачниРис(ук ок, РИССТРУКТ* рис);
	бул ЗавершиРис(ук ок, РИССТРУКТ * рис);
	бул ДайПрямОбнова(ук ок, ПРЯМ *пр, бул стереть);
	цел ДайРгнОбнова(ук ок, ук ргн, бул стереть);
	цел УстановиРгнОкна(ук ок, ук рг, бул перерисовать);
	цел ДайРгнОкна(ук ок, ук ргн);
	цел ИсключиРгнОбнова(ук ку, ук ок);
	бул ИнвалидируйПрям(ук ок, ПРЯМ *пр, бул стереть);
	бул ВалидируйПрям(ук ок, ПРЯМ *пр);
	бул ИнвалидируйРгн(ук ок, ук ргн, бул стереть);
	бул ВалидируйРгн(ук ок, ук ргн);  
	бул ПерерисуйОкно(ук ок, ПРЯМ *обн, ук ргнОб, бцел фОкПерерис); //ФЛАГИ ИЗ ПОкПерерис
	
//СОКЕТ


	бкрат х8сбк(бкрат x);	//htons
	бцел х8сбц(бцел x);//htonl
	бкрат с8хбк(бкрат x);//ntohs
	бцел с8хбц(бцел x);//ntohl

	проц УД_УДАЛИ(СОКЕТ уд, набор_уд* набор);
	цел УД_УСТАНОВЛЕН(СОКЕТ уд, набор_уд* набор);
	проц УД_УСТАНОВИ(СОКЕТ уд, набор_уд* набор);
	проц УД_ОБНУЛИ(набор_уд* набор);

	цел ВСАСтарт(крат требВерсия, ВИНСОКДАН* всадан);
	цел ВСАЧистка();
	цел ВСАДайПоследнююОшибку();
	СОКЕТ сокет(ПСемействоАдресов са, ПТипСок тип, ППротокол протокол);
	цел ввктлсок(СОКЕТ с, цел кмд, бцел* аргук);
	цел свяжисок(СОКЕТ с, адрессок* имя, цел длинаим);
	цел подключи(СОКЕТ с, адрессок* имя, цел длиннаим);		
	цел слушай(СОКЕТ с, цел бэклог);
	СОКЕТ пусти(СОКЕТ с, адрессок* адр, цел *длинадр);		
	цел закройсок(СОКЕТ с);	
	цел экстрзак(СОКЕТ с, ПЭкстрЗакрытиеСокета как);	
	цел дайимяпира(СОКЕТ с, адрессок* имя,  цел * длинаим);
	цел дайимясок(СОКЕТ с, адрессок* адр,  цел * длинаим);
	цел шли(СОКЕТ с, ук буф, цел длин, ПФлагиСокета флаги);
	цел шли_на(СОКЕТ с, ук буф, цел длин, ПФлагиСокета флаги, адрессок* кому, цел длинаприём);
	цел прими(СОКЕТ с, ук буф, цел длин, ПФлагиСокета флаги);
	цел прими_от(СОКЕТ с, ук буф, цел длин, ПФлагиСокета флаги, адрессок* от_кого,  цел * длинаистока);
	цел дайопцсок(СОКЕТ с, цел уровень, цел имяопц, ук значопц,  цел * длинаопц);
	цел установиопцсок(СОКЕТ с, цел уровень, цел имяопц, ук значопц, цел длинаопц);		
	бцел адр_инет(ткст т);	
	цел выбери(цел нуд, набор_уд* читнуд, набор_уд* запнуд, набор_уд* ошнуд, значврем* таймаут);
	ткст инетс8а(адрес_ин иа);	
	хостзап* дайхостпоимени(ткст имя);	
	хостзап* дайхостпоадресу(ук адр, цел длин, цел тип);		
	протзап* дайпротпоимени(ткст имя);	
	протзап* дайпротпономеру(цел номер);
	служзап* дайслужбупоимени(ткст имя, ткст протокол);
	служзап* дайслужбупопорту(цел порт, ткст протокол);		
	цел дайимяхоста(ткст имя, цел длинаим);	
	цел дайадринфо(ткст имяузла, ткст имяслуж, адринфо* хинты, адринфо** рез);		
	проц высвободиадринфо(адринфо* аи);	
	цел дайинфобимени(адрессок* ас, т_длинсок длинсок, ткст хост, бцел длинхост, ткст серв, бцел длинсерв, ПИмИнфо флаги);
	
	
///КОМ
	бул НЕУД(цел статус);
	бул УД(цел статус);
	
	бцел ВерсияПостройкиКо();
	цел ТкстИзГУИД2(ГУИД *удгуид, шткст уш, цел кбМакс);
	цел ИнициализуйКо(ук резерв);
	цел ИнициализуйКоДоп(ук резерв, ПИницКо флаг);
	проц ДеинициализуйКо();
	бцел ДайТекущийПроцессКо();
	цел СоздайГуидКо(out ГУИД уГуид);
	цел ПрогИДИзКЛСИД(ref ГУИД клсид, out шим* прогИд);
    цел КЛСИДИзПрогИД(in шим* прогИд, out ГУИД клсид);
    цел КЛСИДИзПрогИДДоп(in шим* прогИд, out ГУИД клсид);
	цел СоздайЭкземплярКо(ref ГУИД рклсид, Инкогнито анонВнешн, бцел контекстКл, ref ГУИД риид, ук* ув);
	цел СоздайЭкземплярКоДоп(ref ГУИД рклсид, Инкогнито анонВнешн, бцел контекстКл, КОСЕРВЕРИНФО* сервИнф, бцел счёт, МУЛЬТИ_ОИ* результы);
	цел ДайОбъектКлассаКо(ref ГУИД рклсид, бцел контекстКл, ук резерв, ref ГУИД риид, ук* ув);
	ук РазместиПамЗадачиКо(т_мера разм);
    ук ПереместиПамЗадачиКо(ук вв, т_мера разм);
    проц ОсвободиПамЗадачиКо(ук в);
	цел РегистрируйАктивныйОбъект(Инкогнито инк, ref ГУИД клсид, бцел флаги, out бцел рег);
	цел РевоцируйАктивныйОбъект(бцел рег, ук резерв);
	цел ДайАктивныйОбъект(ref ГУИД клсид, ук резерв, out Инкогнито инк);

///БЕЗОПМАС	
	цел РазместиДескрипторБезопмаса(бцел члоИзм, out БЕЗОПМАС* укнаВыв);
	цел РазместиДескрипторБезопмасаДоп(бкрат вт, бцел члоИзм, out БЕЗОПМАС* укнаВыв);
	цел РазместиДанныеБезопмаса(БЕЗОПМАС* бм);
	БЕЗОПМАС* СоздайБезопмас(бкрат вт, бцел члоИзм, ГРАНБЕЗОПМАСА* бмГран);
	БЕЗОПМАС* СоздайБезопмасДоп(бкрат вт, бцел члоИзм, ГРАНБЕЗОПМАСА* бмГран, ук вЭкстра);
	цел КопируйДанныеБезопмаса(БЕЗОПМАС* бмИсх, БЕЗОПМАС* бмПрий);
	цел УничтожьДескрипторБезопмаса(БЕЗОПМАС* бм);
	цел УничтожьДанныеБезопмаса(БЕЗОПМАС* бм);
	цел УничтожьБезопмас(БЕЗОПМАС* бм);
	цел ИзмениГраницуБезопмаса(БЕЗОПМАС* бм, ГРАНБЕЗОПМАСА* бмНовГран);
	бцел ДайЧлоИзмеренийБезопмаса(БЕЗОПМАС* бм);
	бцел ДайРазмерЭлементовБезопмаса(БЕЗОПМАС* бм);
	цел ДайВПределБезопмаса(БЕЗОПМАС* бм, бцел члоИзм, out цел вПредел);
	цел ДайНПределБезопмаса(БЕЗОПМАС* бм, бцел члоИзм, out цел нПредел);
	цел БлокируйБезопмас(БЕЗОПМАС* бм);
	цел РазблокируйБезопмас(БЕЗОПМАС* бм);
	цел ДоступКДаннымБезопмаса(БЕЗОПМАС* бм, ук* данные);
	цел ОтступОтДаныхБезопмаса(БЕЗОПМАС* бм);
	цел ДайЭлементБезопмаса(БЕЗОПМАС* бм,  цел * индексы, ук в);
	цел ПоместиЭлементВБезопмас(БЕЗОПМАС* бм,  цел * индексы, ук в);
	цел КопируйБезопмас(БЕЗОПМАС* бм, out БЕЗОПМАС* бмВыв);
	цел УкНаИндексБезопмаса(БЕЗОПМАС* бм,  цел * индексы, ук* данные);
	цел ДайИнфОЗаписиБезопмаса(БЕЗОПМАС* бм, out ИИнфОЗаписи инфоз);
	цел УстановиИИДБезопмаса(БЕЗОПМАС* бм, ref ГУИД гуид);
	цел ДайИИДБезопмаса(БЕЗОПМАС* бм, out ГУИД гуид);
	цел ДайВартипБезопмаса(БЕЗОПМАС* бм, бкрат вт);
	БЕЗОПМАС* СоздайВекторБезопмаса(бкрат вт, цел нПредел, бцел элементы);
	БЕЗОПМАС* СоздайВекторБезопмасаДоп(бкрат вт, цел нПредел, бцел элементы, ук экстра);

///ДЕСЯТОК	
	цел ДесВарИзБцел(бцел бцВхо, out ДЕСЯТОК десВых);
	цел ДесВарИзЦел(цел цВхо, out ДЕСЯТОК десВых);
	цел ДесВарИзБдол(бдол бдВхо, out ДЕСЯТОК десВых);
	цел ДесВарИзДол(дол дВхо, out ДЕСЯТОК десВых);	
	цел ДесВарИзПлав(плав вх, out ДЕСЯТОК дес);		
	цел ДесВарИзДво(дво вх,out ДЕСЯТОК дес);
	цел ДесВарИзТкстш0(in шим* ткс, бцел лкид, бцел флаги, out ДЕСЯТОК дес);
	//цел БткстВарИзДес(ref ДЕСЯТОК дес, бцел лкид, бцел флаги, out шим* стр);	
	цел БткстВарИзДес(ДЕСЯТОК *дес, бцел лкид, бцел флаги, out шим* стр);
	цел БцелВарИзДес(ref ДЕСЯТОК дес, out бцел ц);
	цел ЦелВарИзДес(ref ДЕСЯТОК дес, out цел зн );
	цел БдолВарИзДес(ref ДЕСЯТОК дес, out бдол зн);
	
	цел ДолВарИзДес(ref ДЕСЯТОК дес, out дол зн);
	цел ПлавВарИзДес(ref ДЕСЯТОК дес, out плав зн);
	//цел ДвоВарИзДес(ref ДЕСЯТОК дес, out дво зн);
	цел ДвоВарИзДес(ДЕСЯТОК *дес, out дво зн);
	цел ДесВарСложи(ref ДЕСЯТОК дес1, ref ДЕСЯТОК дес2, out ДЕСЯТОК рез);
	цел ДесВарОтними(ref ДЕСЯТОК дес1, ref ДЕСЯТОК дес2, out ДЕСЯТОК рез);
	цел ДесВарУмножь(ref ДЕСЯТОК дес1, ref ДЕСЯТОК дес2, out ДЕСЯТОК рез);
	цел ДесВарДели(ref ДЕСЯТОК дес1, ref ДЕСЯТОК дес2, out ДЕСЯТОК рез);
	цел ДесВарОкругли(ref ДЕСЯТОК дес1, цел дес, out ДЕСЯТОК рез);
	цел ДесВарАбс(ref ДЕСЯТОК дес1,  out ДЕСЯТОК рез);
	цел  ДесВарФиксируй(ref ДЕСЯТОК дес1,  out ДЕСЯТОК рез);
	цел ДесВарИнт(ref ДЕСЯТОК дес1,  out ДЕСЯТОК рез);
	//цел  ДесВарОтриц(ref ДЕСЯТОК дес1, out ДЕСЯТОК рез);
	цел  ДесВарОтриц(ДЕСЯТОК *дес1, ДЕСЯТОК рез);
	цел ДесВарСравни(ref ДЕСЯТОК дес1, out ДЕСЯТОК рез);
	
///ВАРИАНТ
	проц ИницВариант(ref ВАРИАНТ вар);
	цел СотриВариант(ref ВАРИАНТ вар);
	цел КопируйВариант(ref ВАРИАНТ варгЦель, ref ВАРИАНТ варгИст);
	цел СложиВар(ref ВАРИАНТ варЛев, ref ВАРИАНТ варПрав, out ВАРИАНТ варРез);
	цел ИВар(ref ВАРИАНТ варЛев, ref ВАРИАНТ варПрав, out ВАРИАНТ варРез);
	цел СоединиВар(ref ВАРИАНТ варЛев, ref ВАРИАНТ варПрав, out ВАРИАНТ варРез);
	цел ДелиВар(ref ВАРИАНТ варЛев, ref ВАРИАНТ варПрав, out ВАРИАНТ варРез);
	цел УмножьВар(ref ВАРИАНТ варЛев, ref ВАРИАНТ варПрав, out ВАРИАНТ варРез);
	цел ИлиВар(ref ВАРИАНТ варЛев, ref ВАРИАНТ варПрав, out ВАРИАНТ варРез);
	цел ОтнимиВар(ref ВАРИАНТ варЛев, ref ВАРИАНТ варПрав, out ВАРИАНТ варРез);
	цел ИИлиВар(ref ВАРИАНТ варЛев, ref ВАРИАНТ варПрав, out ВАРИАНТ варРез);
	цел СравниВар(ref ВАРИАНТ варЛев, ref ВАРИАНТ варПрав, бцел лкид, бцел флаги);
	цел МодВар(ref ВАРИАНТ варЛев, ref ВАРИАНТ варПрав, out ВАРИАНТ варРез);
	цел ИзмениТипВарианта(ref ВАРИАНТ приёмник, ref ВАРИАНТ источник, ПВар флаги, бкрат вт );	
	цел ИзмениТипВариантаДоп(ref ВАРИАНТ приёмник, ref ВАРИАНТ источник, бцел лкид, ПВар флаги, бкрат вт);
	
///ТЕКСТ
	шим* СисРазместиТкст(in шим* ш);
	цел СисПереместиТкст(шим* а, in шим* ш);
	шим* СисРазместиТкстДлин(in шим* ш, бцел длин);
	цел СисПереместиТкстДлин(шим* а, in шим* ш, бцел длин);
	проц СисОсвободиТкст(шим* т);
	бцел СисТкстДлин(шим* ш);
	бцел СисТкстБайтДлин(шим* т);
	шим* СисРазместиТкстБайтДлин(in ббайт* ш, бцел длин);
	цел ШирСимВМультиБайт(ПКодСтр кодСтр, ПШирСим флаги, ушим укШирСим, цел члоСимШир, усим укНовСтрБуф, цел размНовСтрБуф, усим симНекартДефАдр, бул адрФлага);

///ОШИБКИ	
	цел УстановиИнфОбОш(бцел резерв, ИИнфОбОш ошинф);
	цел ДайИнфОбОш(бцел резерв, ИИнфОбОш ошинф);
	цел СоздайИнфОбОш(out ИИнфОбОш ошинф);
	бцел ДайПоследнююОшибку();
	
///КОНСОЛЬ	
	бул УстановиРежимКонсоли(ук конс, ПРежимКонсоли режим);
	бул ДайРежимКонсоли(ук конс, ПРежимКонсоли режим);
	бул ПрикрепиКонсоль(бцел идПроц);
	бул ВозьмиВводВКонсольА(ук ввод, ЗАПВВОДА* буф, бцел длина, бцел* члоСчитанныхСобытий);
	бул ВозьмиВводВКонсоль(ук ввод, ЗАПВВОДА* буф, бцел длина, бцел* члоСчитанныхСобытий);
	бул ЧитайВводВКонсольА(ук ввод, ЗАПВВОДА* буф, бцел длина, бцел* члоСчитанныхСобытий);
	бул ЧитайВводВКонсоль(ук ввод, ЗАПВВОДА* буф, бцел длина, бцел* члоСчитанныхСобытий);
	бул ПишиВводВКонсольА(ук ввод, ЗАПВВОДА* буф, бцел длина, бцел* члоСчитанныхСобытий);
	бул ПишиВводВКонсоль(ук ввод, ЗАПВВОДА* буф, бцел длина, бцел* члоСчитанныхСобытий);
	бул ДайИнфОБуфЭкранаКонсоли(ук консВывод, ИНФОКОНСЭКРБУФ *консЭкрБуфИнфо) ;
	бул УстановиАтрибутыТекстаКонсоли(ук конс, ПТекстКонсоли атр );
	бул УстановиПозициюКурсораКонсоли(ук конс, КООРД поз);
	бул ПрокрутиБуферЭкранаКонсолиА(ук конс, in МПРЯМ *прокрПрям, in МПРЯМ *обрПрям, КООРД начПриём, in ИНФОСИМ *зап);
	бул ПрокрутиБуферЭкранаКонсоли(ук конс, in МПРЯМ *прокрПрям, in МПРЯМ *обрПрям, КООРД начПриём, in ИНФОСИМ *зап) ;
	бул УстановиКСКонсоли(ПКодСтр кодСтр);
	бул УстановиАктивныйБуферКонсоли(ук консВывод);
	бцел ДайКСКонсоли();
	бцел ДайКСВыводаКонсоли();
	бул УстановиКСВыводаКонсоли(ПКодСтр кстр);
	бул ОсвободиКонсоль();
	бул УстановиЗагКонсолиА(ткст загКонсоли);
	бул УстановиЗагКонсоли(шткст загКонсоли);
	бул ОчистиБуферВводаКонсоли(ук консВвод);
	бул УстановиРазмерБуфераЭкранаКонсоли(ук вывод, КООРД размер) ;
	бул УстановиИнфОКурсореКонсоли(ук вывод, in ИНФОКОНСКУРСОР *инфо);
	бул УстановиИнфОбОкнеКонсоли(ук вывод, бул абс, in МПРЯМ *разм);	
	бул  ЧитайКонсольныйВыводА(ук КОНСВЫВОД, ИНФОСИМ* буф, КООРД буфРазм, КООРД буфКоорд, МПРЯМ* регЧтен);
	бул  ЧитайКонсольныйВывод(ук КОНСВЫВОД, ИНФОСИМ* буф, КООРД буфРазм, КООРД буфКоорд, МПРЯМ* регЧтен);
	/+
	бул ЧитайВыводКонсолиАкаст(ук КОНСВЫВОД, in ИНФОСИМ *буф, КООРД буфРазм, КООРД буфКоорд, МПРЯМ *регЗап);
	бул ПишиНаВыводКонсолиКаст(ук КОНСВЫВОД, in ИНФОСИМ *буф, КООРД буфРазм, КООРД буфКоорд, МПРЯМ *регЗап);
	+/
	бул ЧитайСимИзВыводаКонсолиА(ук КОНСВЫВОД, сим *симв, бцел длина, КООРД коордЧтен, бцел *члоСчитСим);
	бул ЧитайСимИзВыводаКонсоли(ук КОНСВЫВОД, шим *симв, бцел длина, КООРД коордЧтен, бцел *члоСчитСим);
	/+
	бул ЧитайАтрибутВыводаКонсолиКаст(ук КОНСВЫВОД, бкрат *атр, бцел длина, КООРД коордЧтен, бцел *члоСчитАтров);
	бул ПишиАтрибутВыводаКонсолиКаст(ук КОНСВЫВОД, сим *симв, бцел длина, КООРД коордЗап, бцел *члоСчитАтров);
+/
 проц ДайИнфоСтарта(ИНФОСТАРТА* ис);
}
/+

CreateProcessWithLogonW Creates a new process and its primary thread. The new process then runs the specified executable file in the security context of the specified credentials (user, domain, and password). 
CreateProcessWithTokenW Creates a new process and its primary thread. The new process runs in the security context of the specified token. 

FreeEnvironmentStrings Frees a block of environment strings. 

GetCurrentProcessorNumber Returns the number of the processor the current thread was выполняется on during the call to this function. 
GetEnvironmentStrings Retrieves the environment block for the current process. 
GetEnvironmentVariable Retrieves the value of the specified variable from the environment block of the calling process. 

GetGuiResources Retrieves the count of handles to graphical user interface (GUI) objects in use by the specified process. 
GetLogicalProcessorInformation Retrieves information about logical processors and related hardware. 
GetPriorityClass Retrieves the priority class for the specified process. 
 
GetProcessHandleCount Retrieves the number of open handles that belong to the specified process. 
GetProcessId Retrieves the process identifier of the specified process. 
GetProcessIdOfThread Retrieves the process identifier of the process associated with the specified thread. 
GetProcessIoCounters Retrieves accounting information for all I/O operations performed by the specified process. 
GetProcessPriorityBoost Retrieves the priority boost control state of the specified process. 
GetProcessShutdownParameters Retrieves shutdown parameters for the currently calling process. 
  
GetProcessVersion Retrieves the major and minor version numbers of the system on which the specified process expects to run. 
GetProcessWorkingSetSize Retrieves the minimum and maximum working set sizes of the specified process. 
GetProcessWorkingSetSizeEx Retrieves the minimum and maximum working set sizes of the specified process. 
GetStartupInfo Retrieves the contents of the STARTUPINFO structure that was specified when the calling process was created. 
NeedCurrentDirectoryForExePath Determines whether the current directory should be included in the search path for the specified executable. 

SetEnvironmentVariable Sets the value of an environment variable for the current process. 
SetPriorityClass Sets the priority class for the specified process. 
SetProcessAffinityMask Sets a processor affinity mask for the threads of a specified process. 
SetProcessPriorityBoost Disables the ability of the system to temporarily boost the priority of the threads of the specified process. 
SetProcessShutdownParameters Sets shutdown parameters for the currently calling process. 
SetProcessWorkingSetSize Sets the minimum and maximum working set sizes for the specified process. 
SetProcessWorkingSetSizeEx Sets the minimum and maximum working set sizes for the specified process. 


The following functions are used to enumerate processes.

Function Description 
EnumProcesses Retrieves the process identifier for each process object in the system. 
Process32First Retrieves information about the first process encountered in a system snapshot. 
Process32Next Retrieves information about the next process recorded in a system snapshot. 
WTSEnumerateProcesses Retrieves information about the active processes on the specified terminal server. 

The following functions are used with threads:

AttachThreadInput Attaches the input processing mechanism of one thread to that of another thread. 
CreateRemoteThread Creates a thread that runs in the virtual address space of another process. 
ExitThread Ends a thread. 
GetThreadId Retrieves the thread identifier of the specified thread. 
GetThreadIOPendingFlag Determines whether a specified thread has any I/O requests pending. 
 
OpenThread Opens an existing thread object. 
SetThreadAffinityMask Sets a processor affinity mask for the specified thread. 
SetThreadIdealProcessor Specifies a preferred processor for a thread. 
SetThreadStackGuarantee Sets the stack guarantee for the calling thread.  
 
SleepEx Suspends the current thread until the specified condition is met. 

SwitchToThread Causes the calling thread to yield execution to another thread that is готов to run on the current processor. 
TerminateThread Terminates a thread. 
ThreadProc An application-defined function that serves as the starting address for a thread. 

WaitForInputIdle Waits until the specified process is waiting for user input with no input pending, or until the time-out interval has elapsed. 

The following functions are used with WOW64.

Function Description 
IsWow64Message Determines if the last message read from the current thread's queue originated from a WOW64 process. 
IsWow64Process Determines whether the specified process is выполняется under WOW64. 

The following functions are used with job objects.

Function Description 
AssignProcessToJobObject Associates a process with an existing job object. 
CreateJobObject Creates or opens a job object. 
IsProcessInJob Determines if the process is выполняется in the specified job. 
OpenJobObject Opens an existing job object. 
QueryInformationJobObject Retrieves limit and job state information from the job object. 
SetInformationJobObject Set limits for a job object. 
TerminateJobObject Terminates all processes currently associated with the job. 
UserHandleGrantAccess Grants or denies access to a handle to a User object to a job that has a user-interface restriction. 

The following functions are used with the thread pool.

Function Description 
BindIoCompletionCallback Associates the I/O completion port owned by the thread pool with the specified file handle. On completion of an I/O request involving this file, a non-I/O worker thread will execute the specified callback function. 
QueueUserWorkItem Queues a work item to a worker thread in the thread pool. 

The following functions are used with the thread ordering service.

Function Description 
AvRtCreateThreadOrderingGroup Creates a thread ordering group. 
AvRtCreateThreadOrderingGroupEx Creates a thread ordering group and associates the server thread with a task. 
AvRtDeleteThreadOrderingGroup Deletes the specified thread ordering group created by the caller. 
AvRtJoinThreadOrderingGroup Used by the client threads to join a thread ordering group. 
AvRtLeaveThreadOrderingGroup Used by client threads of a thread ordering group to leave the group. 
AvRtWaitOnThreadOrderingGroup Used by client threads of a thread ordering group to wait until they should execute. 

The following functions are used with the multimedia class scheduler service.

Function Description 
AvRevertMmThreadCharacteristics Used by a thread to indicate that it is no longer performing work associated with the specified task. 
AvSetMmMaxThreadCharacteristics Associates the calling thread with the specified tasks. 
AvSetMmThreadCharacteristics Associates the calling thread with the specified task. 
AvSetMmThreadPriority Adjusts the thread priority of the calling thread relative to other threads performing the same task. 

The following functions are used with fibers.

Function Description 
ConvertFiberToThread Converts the current fiber into a thread. 
ConvertThreadToFiber Converts the current thread into a fiber. 
ConvertThreadToFiberEx Converts the current thread into a fiber. 
CreateFiber Allocates a fiber object, assigns it a stack, and sets up execution to begin at the specified start address. 
CreateFiberEx Allocates a fiber object, assigns it a stack, and sets up execution to begin at the specified start address. 
DeleteFiber Deletes an existing fiber. 
FiberProc An application-defined function used with the CreateFiber function. 
FlsAlloc Allocates a fiber local storage (FLS) index. 
FlsFree Releases an FLS index. 
FlsGetValue Retrieves the value in the calling fiber's FLS slot for a specified FLS index. 
FlsSetValue Stores a value in the calling fiber's FLS slot for a specified FLS index. 
IsThreadAFiber Determines whether the current thread is a fiber. 
SwitchToFiber Schedules a fiber. 

The following functions provide NUMA support.

Function Description 
GetNumaAvailableMemoryNode Retrieves the amount of memory available in the specified node. 
GetNumaHighestNodeNumber Retrieves the node that currently has the highest number. 
GetNumaNodeProcessorMask Retrieves the processor mask for the specified node. 
GetNumaProcessorNode Retrieves the node number for the specified processor. 


AdjustTokenGroups Changes the group information in an access token. 
AdjustTokenPrivileges Enables or disables the privileges in an access token. It does not grant new privileges or revoke existing ones. 
CheckTokenMembership Determines whether a specified SID is enabled in a specified access token. 
CreateRestrictedToken Creates a new token that is a restricted version of an existing token. The restricted token can have disabled SIDs, deleted privileges, and a list of restricted SIDs. 
DuplicateToken Creates a new impersonation token that duplicates an existing token. 
DuplicateTokenEx Creates a new primary token or impersonation token that duplicates an existing token. 
GetTokenInformation Retrieves information about a token. 
IsTokenRestricted Determines whether a token has a list of restricting SIDs. 
OpenProcessToken Retrieves a handle to the primary access token for a process. 
OpenThreadToken Retrieves a handle to the impersonation access token for a thread. 
SetThreadToken Assigns or removes an impersonation token for a thread. 
SetTokenInformation Changes a token's owner, primary group, or default DACL. 


+/