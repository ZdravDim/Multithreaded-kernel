#ifndef console
#define console

#include "bounded_bufffer.hpp"

class Con {
public:
    static void initialize();
    static void putc_output(char c);
    static char getc_output();
    static void putc_input(char c);
    static char getc_input();

private:
    static bool initialized;
    static BoundedBuffer *input_buffer;
    static BoundedBuffer *output_buffer;
};

#endif
