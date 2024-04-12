#ifndef thread_list
#define thread_list

#include "tcb.hpp"

class ThreadList {
public:

private:
    struct Node {
        TCB* data;
        struct Node *next;

        Node(TCB* data) : data(data), next(nullptr) {}
    };
};

#endif
