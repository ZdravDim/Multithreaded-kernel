#ifndef thread_list
#define thread_list

#include "thread.hpp"

class ThreadList {
public:
    void push_back(TCB* thread);
    TCB* get_first();
    TCB* remove_first();
    void free();

private:

    struct Node {
        TCB* data;
        struct Node *next;

        void* operator new(size_t size);
        void operator delete(void* addr);

        explicit Node(TCB* data) : data(data), next(nullptr) {}
    };

    struct Node* head = nullptr;
    struct Node* tail = nullptr;
};

#endif
