module kudu;
import std.string:  toStringz;
import core.stdc.locale;
import deimos.ncurses;

void main()
{
    setlocale(LC_CTYPE,"");

    initscr();
    scope(exit) endwin();   /// for the love of all that is holy, alway exit cleanly.
    raw();
    keypad(stdscr, true);
    noecho();

    immutable message = toStringz("Hello World!");
    printw("%s", message);

    refresh();  /// actually does the writing to the physical screen
    getch();    /// gets a single character from the screen
}