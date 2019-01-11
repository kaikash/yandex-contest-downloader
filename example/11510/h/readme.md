H. Soundex
==========

Ограничение времени

1 секунда

Ограничение памяти

64Mb

Ввод

стандартный ввод или input.txt

Вывод

стандартный вывод или output.txt

Известный алгоритм Soundex (https://ru.wikipedia.org/wiki/Soundex) определяет, похожи ли два английских слова по звучанию. На вход он принимает слово и заменяет его на некоторый четырёхсимвольный код. Если коды двух слов совпадают, то слова, как правило, звучат похоже.

Вам требуется реализовать этот алгоритм. Он работает так:

1.  Первая буква слова сохраняется.
2.  В остальной части слова:
    *   буквы, обозначающие, как правило, гласные звуки: a, e, h, i, o, u, w и y — отбрасываются;
    *   оставшиеся буквы (согласные) заменяются на цифры от 1 до 6, причём похожим по звучанию буквам соответствуют одинаковые цифры:  
        1: b, f, p, v  
        2: c, g, j, k, q, s, x, z  
        3: d, t  
        4: l  
        5: m, n  
        6: r  
        
3.  Любая последовательность одинаковых цифр сокращается до одной такой цифры.
4.  Итоговая строка обрезается до первых четырёх символов. Если длина строки меньше требуемой, недостающие символы заменяются знаком 0.

Примеры:  
аmmonium → ammnm → a5555 → a5 → a500  
implementation → implmnttn → i51455335 → i514535 → i514

Формат ввода
------------

На вход подаётся одно непустое слово, записанное строчными латинскими буквами. Длина слова не превосходит 20 символов.

Формат вывода
-------------

Напечатайте четырёхбуквенный код, соответствующий слову.

### Пример 1

Ввод

Вывод

ammonium

a500

### Пример 2

Ввод

Вывод

implementation

i514