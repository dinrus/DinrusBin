﻿module util.worktools;
public import stdrus, util.str, util.fileex;

alias дайСред дайГлоб;
alias устСред устГлоб;
alias разверниПеремСреды раскройГлоб;
alias создайТекстФайл запиши_в;
alias дайТекст читай_из;
alias дайТекстПострочно читайвсестр_из;

	цел компилируйПакет(ткст путь, ткст англИмяСтатБиб = "myLib");
	цел удалиФайлы(ткст путь, ткст флрасш);
	цел импортируйБиблиотеки( ткст откуда =".");
	проц зачисть(ткст путь = ".");	