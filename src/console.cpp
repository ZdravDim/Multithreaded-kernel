#include "../h/console.hpp"

bool Con::initialized = false;
BoundedBuffer* Con::input_buffer = nullptr;
BoundedBuffer* Con::output_buffer = nullptr;

void Con::initialize() {
    if (!initialized) {
        initialized = true;
        input_buffer = new BoundedBuffer();
        output_buffer = new BoundedBuffer();
    }
}

void Con::putc_output(char c) {
    output_buffer -> putc(c);
}

char Con::getc_output() {
    return output_buffer -> getc();
}

void Con::putc_input(char c) {
    input_buffer -> putc(c);
}

char Con::getc_input() {
    return input_buffer -> getc();
}

bool Con::isOutputBufferEmpty() {
    return output_buffer -> isEmpty();
}
