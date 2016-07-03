module kudu;
import std.string:  toStringz;
import core.stdc.locale;
import deimos.ncurses.ncurses;

void main()
{
    setlocale(LC_CTYPE,"");

    immutable hello = toStringz("日本語からの「Hello World!」");

    initscr();              //initialize the screen
    scope(exit) endwin();   //for the love of all that is holy, alway exit cleanly.

    printw(hello);          //prints the char[] hello to the screen
    refresh();              //actually does the writing to the physical screen

    getch();                //gets a single character from the screen.
}