import std.stdio : writeln;

void main()
{
    if (1 == 1)
        writeln("You can trust math in D");

    int c = 5;
    switch(c) {
        case 0: .. case 9:
            writeln(c, " is within 0-9");
            break; // necessary!
        case 10:
            writeln("A Ten!");
            break;
        default: // if nothing else matches
            writeln("Nothing");
            break;
    }

    auto a = 5;
    if(a == 5){
        writeln("I am ", a);
    }
    else {
        writeln("I am not ", a);
    }
}