import std.stdio : writeln;

void safeFun() @safe
{
    writeln("Hello World");
    // allocating memory with the GC is safe too
    int* p = new int;
}

void unsafeFun()
{
    int* p = new int;
    int* fiddling = p + 5; // fiddling with pointers is forbidden in @safe
}

void main()
{
    safeFun();
    unsafeFun();
}