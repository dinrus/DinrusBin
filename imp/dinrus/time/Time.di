﻿module time.Time;

struct ИнтервалВремени
{
дол тики_;

         enum : дол 
        {
                /// basic tick values
                НаносекВТике  = 100,
                ТиковВМикросек = 1000 / НаносекВТике,
                ТиковВМиллисек = 1000 * ТиковВМикросек,
                ТиковВСек      = 1000 * ТиковВМиллисек,
                ТиковВМин      = 60 * ТиковВСек,
                ТиковВЧас        = 60 * ТиковВМин,
                ТиковВДень         = 24 * ТиковВЧас,

                // миллисек counts
                МиллисекВСек     = 1000,
                МиллисекВМин     = МиллисекВСек * 60,
                МиллисекВЧас       = МиллисекВМин * 60,
                МиллисекВДень        = МиллисекВЧас * 24,

                /// день counts
                ДнейВГоду         = 365,
                ДнейНа4Года       = ДнейВГоду * 4 + 1,
                ДнейНа100Лет     = ДнейНа4Года * 25 - 1,
                ДнейНа400Лет     = ДнейНа100Лет * 4 + 1,

                // эпоха counts
                Эпоха1601           = ДнейНа400Лет * 4 * ТиковВДень,
                Эпоха1970           = Эпоха1601 + ТиковВСек * 11644473600L,
		}
		
	
	const дво	МиллисекНаТик = 1.0 / ТиковВМиллисек;
	const дво    СекНаТик = 1.0 / ТиковВСек;
	const дво   МинутНаТик = 1.0 / ТиковВМин;		
		

        static ИнтервалВремени мин = {дол.min};
        static ИнтервалВремени макс = {дол.max};
        static ИнтервалВремени нуль = {0};

        дол тики();
        бул opEquals(ИнтервалВремени t);
        цел opCmp(ИнтервалВремени t);
        ИнтервалВремени opAdd(ИнтервалВремени t);
        ИнтервалВремени opAddAssign(ИнтервалВремени t);
        ИнтервалВремени opSub(ИнтервалВремени t);
        ИнтервалВремени opSubAssign(ИнтервалВремени t);
        ИнтервалВремени opMul(дол v);
        ИнтервалВремени opMulAssign(дол v);
        ИнтервалВремени opDiv(дол v);
        ИнтервалВремени opDivAssign(дол v);
        дол opDiv(ИнтервалВремени t);
        ИнтервалВремени opNeg();
        дол наносек();
        дол микросек();
        дол миллисек();
        дол сек();
        дол минуты();
        дол часы();
        дол дни();
        дво интервал();
        ВремяДня время();
        static ИнтервалВремени изНаносек(дол значение);
        static ИнтервалВремени изМикросек(дол значение);
        static ИнтервалВремени изМиллисек(дол значение);
        static ИнтервалВремени изСек(дол значение);
        static ИнтервалВремени изМин(дол значение);
        static ИнтервалВремени изЧасов(дол значение);
        static ИнтервалВремени изДней(дол значение);
        static ИнтервалВремени изИнтервала(дво sec);
	дво всегоМиллисек();
	дво всегоСек();
	дво всегоМин();		
	static цел сравни(ИнтервалВремени t1, ИнтервалВремени t2) ;
	цел сравниС(ИнтервалВремени другой) ;
	static бул равны(ИнтервалВремени t1, ИнтервалВремени t2) ;
	бул равен(ИнтервалВремени другой);
	бцел вХэш() ;
	ткст вТкст();
	ИнтервалВремени прибавь(ИнтервалВремени ts);
	проц opAddAssign(ИнтервалВремени ts);
	ИнтервалВремени отними(ИнтервалВремени ts);
	проц opSubAssign(ИнтервалВремени ts);
	ИнтервалВремени дайНегатив();
	ИнтервалВремени opPos();
}


struct Время 
{
 private дол тики_;
 
        private enum : дол
        {
                максимум = (ИнтервалВремени.ДнейНа400Лет * 25 - 366) * ИнтервалВремени.ТиковВДень - 1,
                минимум = -((ИнтервалВремени.ДнейНа400Лет * 25 - 366) * ИнтервалВремени.ТиковВДень - 1),
        }

        static const Время мин       = {минимум},
                          макс       = {максимум};

        static const Время эпоха     = {0};
        static const Время эпоха1601 = {ИнтервалВремени.Эпоха1601};
        static const Время эпоха1970 = {ИнтервалВремени.Эпоха1970};

        дол тики();
        цел opEquals (Время t) ;
        цел opCmp (Время t) ;
        Время opAdd (ИнтервалВремени t) ;
        Время opAddAssign (ИнтервалВремени t) ;
        Время opSub (ИнтервалВремени t);
        ИнтервалВремени opSub (Время t);
        Время opSubAssign (ИнтервалВремени t) ;
        Время дата() ;
        ВремяДня время();
        ИнтервалВремени вринтервал();
        ИнтервалВремени юникс();
}

struct ВремяДня 
{

        public бцел     часы;
        public бцел     минуты;
        public бцел     сек;
        public бцел     миллисек;

        static ВремяДня opCall (бцел часы, бцел минуты, бцел сек, бцел миллисек=0);
        static ВремяДня opCall (дол тики);
        ИнтервалВремени вринтервал ();
}


struct Дата
{
        public бцел         эра,            /// AD, BC
                            день,            /// 1 .. 31
                            год,           /// 0 в_ 9999
                            месяц,          /// 1 .. 12
                            деньнед,            /// 0 .. 6
                            деньгода;            /// 1 .. 366
}

struct ДатаВремя
{
        public Дата         дата;       /// дата representation
        public ВремяДня    время;       /// время representation
}


/******************************************************************************

******************************************************************************/

debug (UnitTest)
{
        unittest
        {
                assert(ИнтервалВремени.нуль > ИнтервалВремени.мин);
                assert(ИнтервалВремени.макс  > ИнтервалВремени.нуль);
                assert(ИнтервалВремени.макс  > ИнтервалВремени.мин);
                assert(ИнтервалВремени.нуль >= ИнтервалВремени.нуль);
                assert(ИнтервалВремени.нуль <= ИнтервалВремени.нуль);
                assert(ИнтервалВремени.макс >= ИнтервалВремени.макс);
                assert(ИнтервалВремени.макс <= ИнтервалВремени.макс);
                assert(ИнтервалВремени.мин >= ИнтервалВремени.мин);
                assert(ИнтервалВремени.мин <= ИнтервалВремени.мин);

                assert (ИнтервалВремени.изСек(50).сек is 50);
                assert (ИнтервалВремени.изСек(5000).сек is 5000);
                assert (ИнтервалВремени.изМин(50).минуты is 50);
                assert (ИнтервалВремени.изМин(5000).минуты is 5000);
                assert (ИнтервалВремени.изЧасов(23).часы is 23);
                assert (ИнтервалВремени.изЧасов(5000).часы is 5000);
                assert (ИнтервалВремени.изДней(6).дни is 6);
                assert (ИнтервалВремени.изДней(5000).дни is 5000);

                assert (ИнтервалВремени.изСек(50).время.сек is 50);
                assert (ИнтервалВремени.изСек(5000).время.сек is 5000 % 60);
                assert (ИнтервалВремени.изМин(50).время.минуты is 50);
                assert (ИнтервалВремени.изМин(5000).время.минуты is 5000 % 60);
                assert (ИнтервалВремени.изЧасов(23).время.часы is 23);
                assert (ИнтервалВремени.изЧасов(5000).время.часы is 5000 % 24);

                auto tod = ВремяДня (25, 2, 3, 4);
                tod = tod.вринтервал.время;
                assert (tod.часы is 1);
                assert (tod.минуты is 2);
                assert (tod.сек is 3);
                assert (tod.миллисек is 4);
        }
}


/*******************************************************************************

*******************************************************************************/

debug (Время)
{
        import io.Stdout;
        import time.Clock;
        import   time.chrono.Gregorian;

        Время foo() 
        {
                auto d = Время(10);
                auto e = ИнтервалВремени(20);

                return d + e;
        }

        проц main()
        {
                auto c = foo();
                Стдвыв (c.тики).нс;


                auto t = ИнтервалВремени(1);
                auto h = t.часы;
                auto m = t.время.минуты;

                auto сейчас = Часы.сейчас;
                auto время = сейчас.время;
                auto дата = Gregorian.generic.вДату (сейчас);
                сейчас = Gregorian.generic.воВремя (дата, время);
        }
}

