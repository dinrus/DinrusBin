﻿
module lib.arc;

import cidrus: ППозКурсора;
pragma(lib, "DinrusArcDLL.lib");


interface ПотокВвода{  

  проц читайРовно(ук буфер, т_мера размер);
  т_мера читай(ббайт[] буфер);
  проц читай(out байт x);
  проц читай(out ббайт x);	
  проц читай(out крат x);	
  проц читай(out бкрат x);	
  проц читай(out цел x);		
  проц читай(out бцел x);	
  проц читай(out дол x);	
  проц читай(out бдол x);	
  проц читай(out плав x);	
  проц читай(out дво x);	
  проц читай(out реал x);	
  проц читай(out вплав x);	
  проц читай(out вдво x);	
  проц читай(out вреал x);	
  проц читай(out кплав x);	
  проц читай(out кдво x);	
  проц читай(out креал x);	
  проц читай(out сим x);	
  проц читай(out шим x);	
  проц читай(out дим x);	
  проц читай(out ткст s);	
  проц читай(out шим[] s);	
  ткст читайСтр();
  ткст читайСтр(ткст результат);	
  шим[] читайСтрШ();			
  шим[] читайСтрШ(шим[] результат);	
  цел opApply(цел delegate(inout ткст строка) дг);
  цел opApply(цел delegate(inout бдол n, inout ткст строка) дг);  
  цел opApply(цел delegate(inout шим[] строка) дг);		   
  цел opApply(цел delegate(inout бдол n, inout шим[] строка) дг); 
  ткст читайТкст(т_мера длина);
  шим[]читайТкстШ(т_мера длина);
  сим берис();
  шим бериш(); 
  сим отдайс(сим c);
  шим отдайш(шим c);
  цел вчитайф(ИнфОТипе[] аргументы, ук арги);
  цел читайф(...); 
  т_мера доступно();
  бул кф();
  бул открыт_ли();
}

interface ПотокВывода {

проц пишиРовно(ук буфер, т_мера размер);
  т_мера пиши(ббайт[] буфер);
  проц пиши(байт x);
  проц пиши(ббайт x);		
  проц пиши(крат x);		
  проц пиши(бкрат x);		
  проц пиши(цел x);		
  проц пиши(бцел x);		
  проц пиши(дол x);		
  проц пиши(бдол x);		
  проц пиши(плав x);		
  проц пиши(дво x);		
  проц пиши(реал x);		
  проц пиши(вплав x);		
  проц пиши(вдво x);	
  проц пиши(вреал x);		
  проц пиши(кплав x);		
  проц пиши(кдво x);	
  проц пиши(креал x);		
  проц пиши(сим x);		
  проц пиши(шим x);		
  проц пиши(дим x);		
  проц пиши(ткст s);
  проц пиши(шим[] s);	
  проц пишиСтр(ткст s);
  проц пишиСтрШ(шим[] s);
  проц пишиТкст(ткст s);
  проц пишиТкстШ(шим[] s);
  т_мера ввыводф(ткст формат, спис_ва арги);
  т_мера выводф(ткст формат, ...);	
  ПотокВывода пишиф(...);
  ПотокВывода пишифнс(...); 
  ПотокВывода пишификс(ИнфОТипе[] аргументы, ук аргук, цел новстр = 0);  

  проц слей();	
  проц закрой(); 
  бул открыт_ли(); 
}


extern (D) abstract class Поток :  ПотокВвода, ПотокВывода
 {
 
	extern (C) extern
	{
      шим[] возврат;
	  бул читаем;	
	  бул записываем;
	  бул сканируем;
	  бул открыт;	
	  бул читайдоКФ;
	  бул предВкар;
	}
 
	  бул читаемый();
	  бул записываемый();
	  бул сканируемый();	  
	  проц читаемый(бул б);
	  проц записываемый(бул б);
	  проц сканируемый(бул б);	  
	  проц открытый(бул б);
	  бул открытый();
	   проц читатьдоКФ(бул б);
	  бул читатьдоКФ();	  
	  проц возвратКаретки(бул б);
	  бул возвратКаретки();
	  protected static this() {}
	  this();
	  ~this();	  
	  т_мера читайБлок(ук буфер, т_мера размер);
	  проц читайРовно(ук буфер, т_мера размер);
	  т_мера читай(ббайт[] буфер);
	  проц читай(out байт x) ;
	  проц читай(out ббайт x) ;
	  проц читай(out крат x) ;
	  проц читай(out бкрат x) ;
	  проц читай(out цел x) ;
	  проц читай(out бцел x) ;
	  проц читай(out дол x) ;
	  проц читай(out бдол x) ;
	  проц читай(out плав x) ;
	  проц читай(out дво x) ;
	  проц читай(out реал x) ;
	  проц читай(out вплав x) ;
	  проц читай(out вдво x) ;
	  проц читай(out вреал x) ;
	  проц читай(out кплав x) ;
	  проц читай(out кдво x) ;
	  проц читай(out креал x) ;
	  проц читай(out сим x) ;
	  проц читай(out шим x) ;
	  проц читай(out дим x) ;
	  проц читай(out ткст s) ;
	  проц читай(out шим[] s) ;
	  ткст читайСтр();
	  ткст читайСтр(ткст результат);
	  шим[] читайСтрШ();
	  шим[] читайСтрШ(шим[] результат) ;
	  цел opApply(цел delegate(inout ткст строка) дг) ;
	  цел opApply(цел delegate(inout бдол n, inout ткст строка) дг) ;
	  цел opApply(цел delegate(inout шим[] строка) дг) ;
	  цел opApply(цел delegate(inout бдол n, inout шим[] строка) дг);
	  ткст читайТкст(т_мера длина);
	  шим[] читайТкстШ(т_мера длина);
	   бул верниЧтоЕсть();
	  сим берис() ;
	  шим бериш();
	  сим отдайс(сим c);
	  шим отдайш(шим c);
	  цел вчитайф(ИнфОТипе[] аргументы, ук арги);
	  цел читайф(...) ;
	  т_мера доступно();
	  abstract т_мера пишиБлок(ук буфер, т_мера размер);
	  проц пишиРовно(ук буфер, т_мера размер);
	  т_мера пиши(ббайт[] буфер) ;
	  проц пиши(байт x) ;
	  проц пиши(ббайт x) ;
	  проц пиши(крат x) ;
	  проц пиши(бкрат x) ;
	  проц пиши(цел x) ;
	  проц пиши(бцел x) ;
	  проц пиши(дол x) ;
	  проц пиши(бдол x) ;
	  проц пиши(плав x) ;
	  проц пиши(дво x) ;
	  проц пиши(реал x) ;
	  проц пиши(вплав x) ;
	  проц пиши(вдво x) ;
	  проц пиши(вреал x) ;
	  проц пиши(кплав x) ;
	  проц пиши(кдво x) ;
	  проц пиши(креал x) ;
	  проц пиши(сим x) ;
	  проц пиши(шим x) ;
	  проц пиши(дим x) ;
	  проц пишиТкст(ткст s);
	  проц пишиТкстШ(шткст s) ;
	  проц пиши(ткст s) ;
	  проц пиши(шткст s);
	  проц пишиСтр(ткст s);
	  проц пишиСтрШ(шим[] s);
	  т_мера ввыводф(ткст формат, спис_ва арги);
	  т_мера выводф(ткст формат, ...);
	  проц doFormatCallback(дим c);
	  ПотокВывода пишиф(...) ;
	  ПотокВывода пишифнс(...) ;
	  ПотокВывода пишификс(ИнфОТипе[] аргументы, ук argptr, цел новстр=0);
	  проц копируй_из(Поток s);
	  проц копируй_из(Поток s, бдол счёт);
	  abstract бдол сместись(дол смещение, ППозКурсора whence);
	  бдол измпозУст(дол смещение);
	  бдол измпозТек(дол смещение) ;
	  бдол измпозКон(дол смещение) ;
	  проц позиция(бдол pos);
	  бдол позиция() ;
	  бдол размер() ;
	  бул кф() ;
	  бул открыт_ли();
	  проц слей();
	  проц закрой() ;
	 проц удали (ткст имяф);
	  override ткст toString() ;
	ткст вТкст();
	  override т_мера toHash();
	т_мера вХэш();
	  бул проверьЧитаемость(ткст имяПотока = ткст.init,ткст файл = ткст.init, дол  строка = дол.init) ;
	  бул проверьЗаписываемость(ткст имяПотока = ткст.init,ткст файл = ткст.init, дол  строка = дол.init) ;
	  бул проверьСканируемость(ткст имяПотока = ткст.init,ткст файл = ткст.init, дол  строка = дол.init) ;
	}


struct SDL_Surface{}
alias SDL_Surface Поверхность;

alias плав Радианы;
alias плав Градусы;

const ткст П = "%f";
const ткст Д = "%d";
const ткст Ц = "%i";
const ткст Т = "%s";
const ткст БЦ = "%ui";

enum СостояниеКлавиши : бцел
{
	ВВЕРХУ = 0,  
	ВНИЗУ = 1,  
	НАЖАТА = 2,  
	ОТПУЩЕНА = 4  
}


const цел ЛЮБАЯ_КЛАВИША = 0;
const цел ВЫХОД = 12; 


enum
{
		/* The keyboard syms have been cleverly chosen to map to ASCII */
		КЛ_НЕИЗВЕСТНА        = 0,
		КЛ_      = 0,
		КЛ_БС      = 8,
		КЛ_ТАБ        = 9,
		КЛ_КЛИР      = 12,
		КЛ_РЕТ     = 13,
		КЛ_ПАУЗА      = 19,
		КЛ_ЭСК     = 27,
		КЛ_ПБЕЛ      = 32,
		КЛ_ВОСКЛ        = 33,
		КЛ_ДВКАВ       = 34,
		КЛ_ХЭШ       = 35,
		КЛ_ДОЛЛАР     = 36,
		КЛ_АМПЕРСАНД      = 38,
		КЛ_КАВ      = 39,
		КЛ_ЛКВСКОБ      = 40,
		КЛ_ПКВСКОБ     = 41,
		КЛ_ЗВЕЗДА       = 42,
		КЛ_ПЛЮС       = 43,
		КЛ_ЗАПЯТАЯ      = 44,
		КЛ_МИНУС      = 45,
		КЛ_ПЕРИОД    = 46,
		КЛ_СЛЭШ      = 47,
		КЛ_0          = 48,
		КЛ_1          = 49,
		КЛ_2          = 50,
		КЛ_3          = 51,
		КЛ_4          = 52,
		КЛ_5          = 53,
		КЛ_6          = 54,
		КЛ_7          = 55,
		КЛ_8          = 56,
		КЛ_9          = 57,
		КЛ_ДВОЕТОЧ      = 58,
		КЛ_ТЧКЗАП      = 59,
		КЛ_МЕН       = 60,
		КЛ_РАВ     = 61,
		КЛ_БОЛ        = 62,
		КЛ_ВОПРОС       = 63,
		КЛ_ЭТ         = 64,
		/*
			Skip uppercase letters
		*/
		КЛ_ЛФИГСКОБКА    = 91,
		КЛ_ОБРСЛЭШ      = 92,
		КЛ_ПФИГСКОБКА   = 93,
		КЛ_КАРЕТКА      = 94,
		КЛ_ПОДЧЕРК     = 95,
		КЛ_ОБРКАВЫЧКА      = 96,
		КЛ_a          = 97,
		КЛ_b          = 98,
		КЛ_c          = 99,
		КЛ_d          = 100,
		КЛ_e          = 101,
		КЛ_f          = 102,
		КЛ_g          = 103,
		КЛ_h          = 104,
		КЛ_i          = 105,
		КЛ_j          = 106,
		КЛ_k          = 107,
		КЛ_l          = 108,
		КЛ_m          = 109,
		КЛ_n          = 110,
		КЛ_o          = 111,
		КЛ_p          = 112,
		КЛ_q          = 113,
		КЛ_r          = 114,
		КЛ_s          = 115,
		КЛ_t          = 116,
		КЛ_u          = 117,
		КЛ_v          = 118,
		КЛ_w          = 119,
		КЛ_x          = 120,
		КЛ_y          = 121,
		КЛ_z          = 122,
		КЛ_УДАЛИТЬ     = 127,
		/* End of ASCII mapped keysyms */

		/* International keyboard syms */
		КЛ_ИНТ_0        = 160,      /* 0xA0 */
		КЛ_ИНТ_1        = 161,
		КЛ_ИНТ_2        = 162,
		КЛ_ИНТ_3        = 163,
		КЛ_ИНТ_4        = 164,
		КЛ_ИНТ_5        = 165,
		КЛ_ИНТ_6        = 166,
		КЛ_ИНТ_7        = 167,
		КЛ_ИНТ_8        = 168,
		КЛ_ИНТ_9        = 169,
		КЛ_ИНТ_10       = 170,
		КЛ_ИНТ_11       = 171,
		КЛ_ИНТ_12       = 172,
		КЛ_ИНТ_13       = 173,
		КЛ_ИНТ_14       = 174,
		КЛ_ИНТ_15       = 175,
		КЛ_ИНТ_16       = 176,
		КЛ_ИНТ_17       = 177,
		КЛ_ИНТ_18       = 178,
		КЛ_ИНТ_19       = 179,
		КЛ_ИНТ_20       = 180,
		КЛ_ИНТ_21       = 181,
		КЛ_ИНТ_22       = 182,
		КЛ_ИНТ_23       = 183,
		КЛ_ИНТ_24       = 184,
		КЛ_ИНТ_25       = 185,
		КЛ_ИНТ_26       = 186,
		КЛ_ИНТ_27       = 187,
		КЛ_ИНТ_28       = 188,
		КЛ_ИНТ_29       = 189,
		КЛ_ИНТ_30       = 190,
		КЛ_ИНТ_31       = 191,
		КЛ_ИНТ_32       = 192,
		КЛ_ИНТ_33       = 193,
		КЛ_ИНТ_34       = 194,
		КЛ_ИНТ_35       = 195,
		КЛ_ИНТ_36       = 196,
		КЛ_ИНТ_37       = 197,
		КЛ_ИНТ_38       = 198,
		КЛ_ИНТ_39       = 199,
		КЛ_ИНТ_40       = 200,
		КЛ_ИНТ_41       = 201,
		КЛ_ИНТ_42       = 202,
		КЛ_ИНТ_43       = 203,
		КЛ_ИНТ_44       = 204,
		КЛ_ИНТ_45       = 205,
		КЛ_ИНТ_46       = 206,
		КЛ_ИНТ_47       = 207,
		КЛ_ИНТ_48       = 208,
		КЛ_ИНТ_49       = 209,
		КЛ_ИНТ_50       = 210,
		КЛ_ИНТ_51       = 211,
		КЛ_ИНТ_52       = 212,
		КЛ_ИНТ_53       = 213,
		КЛ_ИНТ_54       = 214,
		КЛ_ИНТ_55       = 215,
		КЛ_ИНТ_56       = 216,
		КЛ_ИНТ_57       = 217,
		КЛ_ИНТ_58       = 218,
		КЛ_ИНТ_59       = 219,
		КЛ_ИНТ_60       = 220,
		КЛ_ИНТ_61       = 221,
		КЛ_ИНТ_62       = 222,
		КЛ_ИНТ_63       = 223,
		КЛ_ИНТ_64       = 224,
		КЛ_ИНТ_65       = 225,
		КЛ_ИНТ_66       = 226,
		КЛ_ИНТ_67       = 227,
		КЛ_ИНТ_68       = 228,
		КЛ_ИНТ_69       = 229,
		КЛ_ИНТ_70       = 230,
		КЛ_ИНТ_71       = 231,
		КЛ_ИНТ_72       = 232,
		КЛ_ИНТ_73       = 233,
		КЛ_ИНТ_74       = 234,
		КЛ_ИНТ_75       = 235,
		КЛ_ИНТ_76       = 236,
		КЛ_ИНТ_77       = 237,
		КЛ_ИНТ_78       = 238,
		КЛ_ИНТ_79       = 239,
		КЛ_ИНТ_80       = 240,
		КЛ_ИНТ_81       = 241,
		КЛ_ИНТ_82       = 242,
		КЛ_ИНТ_83       = 243,
		КЛ_ИНТ_84       = 244,
		КЛ_ИНТ_85       = 245,
		КЛ_ИНТ_86       = 246,
		КЛ_ИНТ_87       = 247,
		КЛ_ИНТ_88       = 248,
		КЛ_ИНТ_89       = 249,
		КЛ_ИНТ_90       = 250,
		КЛ_ИНТ_91       = 251,
		КЛ_ИНТ_92       = 252,
		КЛ_ИНТ_93       = 253,
		КЛ_ИНТ_94       = 254,
		КЛ_ИНТ_95       = 255,      /* 0xFF */

		/* Numeric keypad */
		КЛ_ЧИС0        = 256,
		КЛ_ЧИС1        = 257,
		КЛ_ЧИС2        = 258,
		КЛ_ЧИС3        = 259,
		КЛ_ЧИС4        = 260,
		КЛ_ЧИС5        = 261,
		КЛ_ЧИС6        = 262,
		КЛ_ЧИС7        = 263,
		КЛ_ЧИС8        = 264,
		КЛ_ЧИС9        = 265,
		КЛ_ЧИС_ПЕРИОД      = 266,
		КЛ_ЧИС_ДЕЛИТЬ      = 267,
		КЛ_ЧИС_УМНОЖИТЬ    = 268,
		КЛ_ЧИС_МИНУС       = 269,
		КЛ_ЧИС_ПЛЮС        = 270,
		КЛ_ЧИС_ВВОД       = 271,
		КЛ_ЧИС_РАВНО      = 272,

		/* Arrows + Home/End pad */
		КЛ_ВВЕРХ         = 273,
		КЛ_ВНИЗ       = 274,
		КЛ_ВПРАВО      = 275,
		КЛ_ВЛЕВО       = 276,
		КЛ_ВСТАВИТЬ     = 277,
		КЛ_ДОМ       = 278,
		КЛ_КОНЕЦ       = 279,
		КЛ_СТРВЫШЕ     = 280,
		КЛ_СТРНИЖЕ      = 281,

		/* Function keys */
		КЛ_Ф1         = 282,
		КЛ_Ф2         = 283,
		КЛ_Ф3         = 284,
		КЛ_Ф4         = 285,
		КЛ_Ф5         = 286,
		КЛ_Ф6         = 287,
		КЛ_Ф7         = 288,
		КЛ_Ф8         = 289,
		КЛ_Ф9         = 290,
		КЛ_Ф10        = 291,
		КЛ_Ф11        = 292,
		КЛ_Ф12        = 293,
		КЛ_Ф13        = 294,
		КЛ_Ф14        = 295,
		КЛ_Ф15        = 296,

		/* Key state modifier keys */
		КЛ_ЧИСЗАМ        = 300,
		КЛ_ЗАГЗАМ       = 301,
		КЛ_ПРОКРЗАМ      = 302,
		КЛ_ПШИФТ     = 303,
		КЛ_ЛШИФТ     = 304,
		КЛ_ПКТРЛ      = 305,
		КЛ_ЛКТРЛ      = 306,
		КЛ_ПАЛЬТ       = 307,
		КЛ_ЛАЛЬТ       = 308,
		КЛ_ПМЕТА      = 309,
		КЛ_ЛМЕТА      = 310,
		КЛ_ЛСУПЕР     = 311,      /* Left "Windows" key */
		КЛ_ПСУПЕР     = 312,      /* Right "Windows" key */
		КЛ_РЕЖИМ       = 313,      /* "Alt Gr" key */
		КЛ_КОМПОЗ        = 314,      /* Multi-key compose key */

		/* Miscellaneous function keys */
		КЛ_ПОМОЩЬ       = 315,
		КЛ_ПЕЧАТЬ      = 316,
		КЛ_СИСРЕКВ     = 317,
		КЛ_BREAK      = 318,
		КЛ_МЕНЮ       = 319,
		КЛ_ПИТАНИЕ      = 320,      /* Power Macintosh power key */
		КЛ_ЕВРО       = 321,      /* Some european keyboards */
		КЛ_ОТМЕНИТЬ      = 322,      /* Atari keyboard has Undo */

		/* Add any other keys here */
		КЛ_ПОСЛЕДНЯЯ
}

enum
{
	ЛЮБАЯ_КНОПКА = 0,	
	ЛЕВАЯ,
	СРЕДНЯЯ,
	ПРАВАЯ,
	КОЛЕСО_ВВЕРХ,
	КОЛЕСО_ВНИЗ,
	МАКСМ_КНОПК_МЫШИ,

}

extern (D) struct Цвет
{
	static Цвет opCall(T)(T к, T з, T с, T а = ЗначениеЦветаПоУмолчанию!(T))
	{
		Цвет ц;
		
		static if(is(T : ббайт))
		{
			ц.к = к / 255.;
			ц.з = з / 255.;
			ц.с = с / 255.;
			ц.а = а / 255.;
		}
		else static if(is(T : плав))
		{
			ц.к = к;
			ц.з = з;
			ц.с = с;
			ц.а = а;
		}
		else
			static assert(нет, "Цвета могут строиться только из значений, явно преобразуемых в ббайт или плав.");
		
		return ц;
	}
	
	const static Цвет Белый = {1.,1.,1.};	
	const static Цвет Чёрный = {0.,0.,0.};	
	const static Цвет Красный = {1.,0.,0.};	
	const static Цвет Зелёный = {0.,1.,0.};	
	const static Цвет Синий = {0.,0.,1.};	
	const static Цвет Жёлтый = {1.,1.,0.};

	плав дайК();
	плав дайЗ();
	плав дайС();
	плав дайА();
	проц устК(плав аргЗн);
	проц устЗ(плав аргЗн);
	проц устС(плав аргЗн);
	проц устА(плав аргЗн);
	проц установиЦвет();
	плав ячейка(цел индекс);
	
	плав к=1.0, з=1.0, с=1.0, а=1.0;

	private:
	
	template ЗначениеЦветаПоУмолчанию(T)
	{
		static if(is(T : ббайт))
			const T ЗначениеЦветаПоУмолчанию = 255;
		else static if(is(T : плав))
			const T ЗначениеЦветаПоУмолчанию = 1.;
		else
			const T ЗначениеЦветаПоУмолчанию = T.init;
	}
	
}

extern (D)
{
	проц увеличьСчётТекстур(бцел ув);
	бцел присвойИдТекстуре();
	Текстура загрузи_текстуру(ткст имяф);	
	проц активируйТекстуринг(Текстура текс);
	проц обнови_текстуру(inout Текстура текс, Точка начКоорд, Размер размер, ббайт[] данные);

}

extern (D) class Текстура
{
	this(ткст имяфтекст);
	this(Размер размер, Цвет цв);
	this();
	Размер дайРазмер();
	Размер дайРазмерТекстуры();
	бцел дайИд();
	ткст дайФайл();

}

extern (D) struct Литера
{

	Точка[2] тексКоордд;
	Текстура текстура;
	Размер размер;
	Точка смещение;
	Точка шаг;
	бцел индексШ;
}


enum  FontAntialiasing
{
None,
Grayscale,
LCD_RGB,
LCD_BGR,
Нет = None,
Серое = Grayscale,
ЖКМ_КЗС = LCD_RGB,
ЖКМ_СЗК = LCD_BGR
}
alias FontAntialiasing СглаживаниеШрифта;

enum  BlendingMode
{
Alpha,
Subpixel,
None,
Альфа = Alpha,
Подпиксельное = Subpixel,
Нет = None
}
alias BlendingMode РежимСмешивания;

enum  LCDFilter
{
Standard,
Crisp,
None,
Стандарт = Standard,	
Крисп = Crisp,		
Нет =None		
}
alias LCDFilter ЖКМФильтр;

extern (D) class Шрифт
{
	this(ткст путькШ, цел размер);	
	static Шрифт opCall(ткст путькШ, цел размер);	
	плав дайШиринуПоследнейСтроки(ткст ткт);
	плав дайШирину(ткст ткт);
	проц рисуй(ткст[] строки, Точка положение, Цвет цвет);
	проц рисуй(шткст[] строки, Точка положение, Цвет цвет);
	проц рисуй(ткст ткт, Точка положение, Цвет цвет);
	проц рисуй(юткст стр, Точка положение, Цвет цвет);
	цел дайВысоту();
	цел дайПропускСтрок();
	проц устЗазорСтроки(плав фракц);
	бул жкмФильтр(ЖКМФильтр f);	
	цел вычислиИндекс(ткст ткт, Точка позткта, Точка позмыши);
	цел ищиИндекс(ткст ткт, цел мышьШ, цел позШ, цел лево, цел право);
}

extern (D) struct Прямоуг
{
	Точка левВерх;
	Размер размер;
	
	static Прямоуг opCall(плав x, плав y, плав w, плав h);		
	static Прямоуг opCall(Точка левВерх_, Размер размер_);		
	static Прямоуг opCall(Размер размер_);		
	static Прямоуг opCall(плав w, плав h);		
	Точка дайПравыйНиз();	
	плав дайВерх();		
	плав дайЛевый();	
	плав дайНиз();	
	плав дайПравый();	
	Точка дайПозицию();		
	Размер дайРазмер();		
	Прямоуг перемести(inout Точка by);	
	бул содержит(inout Точка p);		
	бул пересекается_с(inout Прямоуг r);
}

extern (D) struct Матрица
{
	
	static Матрица opCall(Радианы угол);	
	static Матрица opCall(Точка col1, Точка col2);		
	сим[] вТкст();		
	плав детерминанта();	
	Матрица перенос();		
	Матрица переносКопии();	
	Матрица инвертируй();		
	Матрица инвертируйКопию();	
	Матрица абс();	
	Матрица абсКопии();		
	Матрица opAdd(inout Матрица B);	
	Матрица opMul(inout Матрица M);		
	Точка opMul(inout Точка p);
	Точка col1, col2;
}


extern (D) struct Точка
{

	static Точка NanNan = {плав.nan, плав.nan};
	
	плав x=0;
	плав y=0;

	
	static Точка opCall(плав Ix, плав Iy);
	static Точка изПоляра(плав длина, Радианы угол);		
	static Точка перепендикулярно(inout Точка p);		
	проц уст(плав x_, плав y_);		
	Радианы угол();		
	плав длина();		
	сим[] вТкст();	
	плав максСоставляющая();	
	плав минСоставляющая();	
	Точка opAdd(Размер размер) ;	
	Точка opSub(Размер размер) ;		
	Точка opAdd(плав V) ;
	Точка opSub(плав V) ;
	Точка opAddAssign(плав V);
	Точка opSubAssign(плав V) ;		
	Точка opMulAssign(плав s);
	Точка opMul(плав s);
	Точка opDivAssign(плав s);
	Точка opDiv(плав s);	
	Точка opAddAssign(inout Точка Другой) ;
	Точка opAdd(inout Точка V) ;
	Точка opSubAssign(inout Точка Другой);
	Точка opSub(inout Точка V) ;	
	Точка opNeg() ;	
	плав кросс(inout Точка V);	
	плав тчк(inout Точка V) ;		
	Точка масштаб(плав by);
	Точка масштаб(inout Точка by);		
	Точка применить(inout Матрица M);	
	плав квадратДлины();		
	плав нормализуй();	
	Точка нормализуйКопию();	
	Радианы угол(inout Точка xE);	
	Точка поверни(Радианы уголRad);	
	Точка поверни(inout Точка центр, Радианы уголRad);	
	Точка абс();		
	Точка абсКопии();		
	проц прикрепи(inout Точка мин, inout Точка макс);	
	проц случайно(Точка xмин, Точка xмакс);	
	плав расстояние(inout Точка Другая);		
	плав квадратРасстояния(inout Точка Другая);	
	проц опиши(T)(T s);
	deprecated 	плав перпПроизводная(Точка V);
	deprecated 	Точка направление() ;	
	Точка поверниКопию(Радианы угол);		
	Точка поверниКопию(Точка центр, Радианы угол);	
	final плав дайШ();		
	final плав дайВ();	
	final проц устШ(плав argW);	
	final проц устВ(плав argH);	
	final проц добавьШ(плав argV);	
	final проц добавьВ(плав argV);
	deprecated 	проц полярВПрям();	
	бул над_ли(Точка Другая);		
	бул под_ли(Точка Другая);	
	бул справа_ли(Точка Другая);	
	бул слева_ли(Точка Другая);
}

extern (D) struct Размер
{
	static Размер NanNan = {плав.nan, плав.nan};
	
	плав w=0;
	плав h=0;
	
	static Размер opCall(плав Iw, плав Ih);		
	static Точка вТчк(inout Размер s);	
	проц уст(плав w_, плав h_);		
	сим[] вТкст();	
	плав максСоставляющая();	
	плав минСоставляющая();		
	Размер масштаб(inout Точка bh) ;
	Размер opSub(inout Точка p);
	Размер opAdd(inout Точка p);		
	Размер opAdd(плав V) ;
	Размер opSub(плав V) ;
	Размер opAddAssign(плав V);
	Размер opSubAssign(плав V) ;	
	Размер opMulAssign(плав s) ;
	Размер opMul(плав s) ;
	Размер opDivAssign(плав s);
	Размер opDiv(плав s) ;	
	Размер opAddAssign(inout Размер Другой) ;
	Размер opAdd(inout Размер V) ;
	Размер opSubAssign(inout Размер Другой);
	Размер opSub(inout Размер V) ;	
	Размер opNeg() ;	
	Размер масштаб(плав bh);
	Размер масштаб(inout Размер bh);		
	Размер абс();		
	Размер абсКопии();	
	проц прикрепи(inout Размер мин, inout Размер макс);	
	проц случайно(Размер wмин, Размер wмакс);	
	проц опиши(T)(T s);	
	final плав дайШирину() ;	
	final плав дайВысоту();	
	final проц устШирину(плав argW);	
	final проц устВысоту(плав argH);	
	final проц добавьШ(плав argV) ;	
	final проц добавьВ(плав argV);
}

extern (D) struct Координаты
{
	static проц устРазмер(Размер разм);	
	static проц устНачКоорд(Точка начкоорд);	
	static Размер дайРазмер();
	static плав дайШирину();
	static плав дайВысоту();
	static Точка дайНачКоорд();
	
}

extern(D) class ЗвукоФормат
{
	ббайт	каналы;
	цел		частота;	// 22050hz, 44100hz?
	цел		биты;		// 8bit, 16bit?
	цел		размер;		// in bytes
	ткст	источник;
	ткст[] комменты;	// Header info from audio файл (not used yet)
	ткст формат_звука;

	/// Load the given файл and parse its headers
	this(ткст фимя);

	ббайт[] дайБуфер(цел смещение, цел размер);

	проц выведи();
}

extern (D) class Звук
{
protected:

	бцел		источник_ал;		// OpenAL index of this Sound Resource
	ЗвукоФормат		звук;			// The Sound Resource (файл) itself.

	плав		питч = 1.0;
	плав		радиус = 256;	// The радиус of the Sound that plays.
	плав		громкость = 1.0;
	плав 	гейн   = 1.0; 
	бул		повторяется = нет;
	бул		на_паузе  = нет;	// да if на_паузе or stopped

	цел			размер;			// число одновременно используемых буферов
	бул		в_очередь = да;	// Keep в_очередь'ing more buffers, нет if no loop and at end of track.
	бцел		старт_буфер;	// the первый buffer in the массив of currently в_очередь'd buffers
	бцел		финиш_буфер;		// the последний buffer in the массив of currently в_очередь'd buffers
	бцел		к_обработке;
	
public:

	this(ЗвукоФайл звук);
	static Звук opCall(ЗвукоФайл зфайл);
	ЗвукоФайл дайЗвук();
	проц устЗвук(ЗвукоФайл _звук);
	проц устГейн(плав гейн);
	проц устПозицию(Точка поз);
	проц устСкорость(Точка скор);
	плав дайПитч();
	проц устПитч(плав _питч);
	плав дайРадиус();
	проц устРадиус(плав _радиус);
	плав дайГромкость();
	проц устГромкость(плав _громкость);
	бул повторяется_ли();
	проц повторить(бул _повтор = да);
	бул наПаузе_ли();
	проц наПаузу(бул _наПаузу = да);
	проц играй();
	проц пауза();
	проц перейди(дво секунды);
	дво отчёт();
	проц стоп();
	проц обновиБуферы();
	проц обработай();
}

extern (D) class ЗвукоФайл
{
	this(ткст имяф);
	static ЗвукоФайл opCall(ткст фимя);
	бцел частота();
	бцел[] члоБуферов();
	бцел длинаБуферов();
	бцел члоБуферовВСек();
	дво длина();
	бцел размер();
	ткст источник();
	бцел[] дайБуферы(цел первый, цел последний);
	проц разместиБуферы(цел первый, цел число);
	проц освободиБуферы(цел первый, цел число);
	проц выведи();
}

extern (D) class Мигун 
{ 
  бул   вкл = нет;
  дво последнееВремя = 0, текВремя = 0;
  дво всегосек = 0.0f; 
   
   this();
   static Мигун opCall();
   проц обработай(плав секунды);
}

extern (D) class УзелРЯР
{
    this(); 
    this(ткст имя);
    ткст дайИмя();
    проц устИмя(ткст новИмя);
    бул естьАтрибут(ткст имя);
    ткст получиАтрибут(ткст имя);
    ткст[ткст] получиАттрибуты();
    УзелРЯР устАтрибут(ткст имя, ткст знач);
    УзелРЯР устАтрибут(ткст имя, цел знач);
    УзелРЯР[] дайВетви();
    УзелРЯР добавьВетвь(УзелРЯР новВетвь);
    УзелРЯР добавьСДанные(ткст сданн);
    бул сДанн_ли();
	ткст дайСДанные();
    бул лист_ли();
    проц пиши(Поток приём);
    проц читай(Поток исток);
}

extern (D) class СДанные : УзелРЯР
{
	this(ткст сданн);
	бит сданн_ли();
	ткст дайСДанные();
	проц пиши(Поток приём, цел уровИндент);
}


/// XML stream 
extern (D) class ПотокРЯР
{
	this(Поток s);
	сим берис();
	сим отдайс(сим c);
	сим[] читайСтр(бцел счёт);
	проц отдайСтр(ткст str);
	проц съешьПробел();
	проц предполагай(ткст слово);
	ткст читай_до(сим конец);
	ткст читайУзел();
	цел номерСтроки();
}

extern (D) class ОшибкаРЯР : Исключение
{
    this(бцел номСтр, ткст что);
}


extern (D):

бцел дайВремя();
проц открой_время();
проц закрой_время();
проц обработай_время();
проц спи(бцел мсек);
бцел прошлоМсек();
реал прошлоСек();
бцел кадров_в_сек();
проц ограничьКВС(бцел максКвс);

проц открой_окно(ткст титул, цел шир, цел выс, бул полнэкр);
проц закрой_окно();
цел дайШирину_окна();
цел дайВысоту_окна();
Размер дайРазмер_окна();
Поверхность* дайЭкран();
проц новРазмер_окна(цел шир, цел выс);
проц полный_экран();
проц очисти_окно();
проц снимок_окна(ткст имя);
проц отобрази();
проц буфменЧист();

бул вПределах(реал чис, реал цель, реал диапазон);
реал расстояние(реал ш1, реал в1, реал ш2, реал в2);
цел следщСтепеньДва(цел ч);
цел случайныйДиапазон(реал а, реал б);
бул найтиКорни(плав а, плав б, плав в, inout плав т0, inout плав т1);
плав площадь(Точка[] контур);
плав максРасстояние(Точка дано, Точка[] набор);
проц переставьпл(inout плав а, inout плав б);
плав прикрепипл(плав ш, плав мин, плав макс);
плав обернипл(плав ш, плав мин, плав макс);
плав знак(плав ш);
плав припкрепи(плав а, плав низ, плав верх);
плав случайно();
плав случайно(плав н, плав в);
проц переставь(T) (inout T а, inout T б);
T макс(T)(T a, T b);
T мин(T)(T a, T b);

Радианы градусыВРадианы(Градусы град);
Градусы радианыВГрадусы(Радианы рад);
Градусы ограничьГрад(Градусы град);
Радианы ограничьРад(Радианы рад);

бул столкнулись2Кв(Точка поз1, Размер разм1, Точка поз2, Размер разм2);
бул столкнулисьКвКруг(Точка квПоз, Размер квРазм, Точка кругПоз, плав радиус);
бул столкнулисьКвШВ(Точка тчк, Точка квПоз, Размер квРазм);
бул столкнулисьКругКруг(Точка с1, плав рад1, Точка с2, плав рад2);
бул столкнулисьКругШВ(Точка тчк, Точка с, плав рад);
цел столкнулисьЛинЛин(Точка с1т0, Точка с1т1, Точка с2т0, Точка с2т1, inout Точка и0);
бул вОтрезке(Точка т, Точка о0, Точка о1);
бул столкнулисьМногоугШВ(Точка т, Точка[] тт);

проц рисуй(Текстура текстура, Точка поз, Размер разм = Размер(плав.nan,плав.nan),
	Точка стержень = Точка(0,0),Радианы угол = 0, Цвет цв = Цвет.Белый);
проц рисуйвЛВУ(Текстура текстура, Точка поз, Размер разм = Размер(плав.nan,плав.nan), Цвет цв = Цвет.Белый);
проц рисуйПодсекцию(Текстура текстура, Точка лв, Точка пн, Цвет цв = Цвет.Белый);

проц рисуйПиксель(Точка поз, Цвет цв);
проц рисуйЛинию(Точка поз1, Точка поз2, Цвет цв);
проц рисуйКруг(Точка поз, плав радиус, цел деталь, Цвет цв, бул залить_ли);
проц рисуйПрямоуг(Точка поз, Размер разм, Цвет цв, бул залить_ли);
проц рисуйМногоуг(Точка[] многоуг, Цвет цв, бул залить_ли);

проц открой_шрифт();
проц закрой_шрифт();

проц открой_ввод();
проц устПовторКлавиатуры(бул данет);
СостояниеКлавиши состояниеКлавиши(цел номКл);
бул нажатаКлавиша(цел номКл);
бул отпущенаКлавиша(цел номКл);
бул клавишаВнизу(цел номКл);
бул клавишаВверху(цел номКл);
бул симвнаж();
ткст последнСимвв();
СостояниеКлавиши состКнМыши(цел номКл);
бул нажатаКнМыши(цел номКл);
бул отпущенаКнМыши(цел номКл);
бул кнМышиВнизу(цел номКл);
бул кнМышиВверху(цел номКл);
плав мышьШ();
плав мышьВ();
Точка позМыши();
плав мышьШ_до();
плав мышьВ_до();
Точка позМыши_до();
бул двигаетсяМышь();
проц виденДефолтныйКурсор(бул арг);
бул колесоВверх();
бул колесоВниз();
ббайт члоДжойстов();
цел откройДжойсты(цел индекс = -1);
проц закройДжойсты(цел индекс = -1);
бул потерянФокус();
проц покинь();
бул покинут_ли();
проц обработай_ввод();

проц логТекст(ткст имяф);
проц логРЯР(ткст имяф);
проц пиши_лог(ткст имяф, ткст имяфнк, ткст урОш, ...);
проц выведи_лог();
проц открой_лог();
проц закрой_лог();

проц открой_звук();
проц закрой_звук();
проц обработай_звук();
проц включи_звук();
проц выключи_звук();
бул звук_включен();
бул звук_инициализирован();
проц установиПозициюСлушателя(Точка поз);
проц установиСкоростьСлушателя(Точка скор);
проц установиОриентациюСлушателя(Точка ори);
Точка дайПозициюСлуш();
Точка дайСкоростьСлуш();
Точка дайОриентациюСлуш();
проц регистрируйАвтоОбработку(Звук з);
проц отрегистрируйАвтоОбработку(Звук з);

УзелРЯР новУзел(ткст  имя);
УзелРЯР читайДокумент(Поток истк);

