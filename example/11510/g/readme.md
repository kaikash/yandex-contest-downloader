G. Пароли
=========

Ограничение времени

1 секунда

Ограничение памяти

64Mb

Ввод

стандартный ввод или input.txt

Вывод

стандартный вывод или output.txt

Вася хочет поменять свой пароль от электронной почты, потому что боится, что его ящик мог быть взломан. По правилам новый пароль должен удовлетворять таким ограничениям:

*   состоять из символов таблицы ASCII с кодами от 33 до 127;
*   быть не меньше 8 символов и не длиннее 14;
*   из 4 классов символов — большие буквы, маленькие буквы, цифры, прочие символы — в пароле должны присутствовать не менее трёх любых.

Помогите Васе написать программу, которая проверит, что его новый пароль годится.

Формат ввода
------------

На входе дана одна строка — новый Васин пароль.

Формат вывода
-------------

Выведите YES, если Васин пароль удовлетворяет требованиям, и NO в противном случае.

Пример
------

Ввод

Вывод

Vasya123

YES

Примечания
----------

Вы можете воспользоваться функциями из заголовочного файла cctype (http://en.cppreference.com/w/cpp/header/cctype), или реализовать самостоятельно их аналоги.