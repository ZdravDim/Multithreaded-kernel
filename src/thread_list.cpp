#include "../h/thread_list.hpp"

/// append the list
void ThreadList::push_back(TCB *thread) {
    tail = (head ? tail -> next : head) = new Node(thread);
}

/// get first element
TCB *ThreadList::get_first() {
    return (head ? head -> data : nullptr);
}

/// remove first element
TCB *ThreadList::remove_first() {
    if (!head) return nullptr;
    Node* tmp = head;
    TCB* thread = tmp -> data;
    head = head -> next;
    tmp -> next = nullptr;
    delete tmp;
    return thread;
}

/// remove element `thread` is pointing to
int ThreadList::remove(TCB *thread) {
    if (!thread) return -1;
    Node *tmp = head, *prev = nullptr;
    while (tmp && tmp -> data != thread) {
        prev = tmp;
        tmp = tmp -> next;
    }
    if (!tmp) return -2;
    if (prev) prev -> next = tmp -> next;
    else head = tmp;
    return 0;
}

/// free the list
void ThreadList::free() {
    while (get_first()) remove_first();
}

void *ThreadList::operator new(size_t size) {
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
}

void ThreadList::operator delete(void *addr) {
    MemoryAllocator::mem_free(addr);
}

void *ThreadList::Node::operator new(size_t size) {
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
}

void ThreadList::Node::operator delete(void *addr) {
    MemoryAllocator::mem_free(addr);
}
