#include "../h/thread_list.hpp"

void ThreadList::push_back(TCB *thread) {
    tail = (head ? head : tail -> next) = new Node(thread);
}

TCB *ThreadList::get_first() {
    return (head ? head -> data : nullptr);
}

TCB *ThreadList::remove_first() {
    if (!head) return nullptr;
    Node* tmp = head;
    TCB* thread = tmp -> data;
    head = head -> next;
    head -> next = nullptr;
    delete tmp;
    return thread;
}

void ThreadList::free() {
    while (get_first()) remove_first();
}

void *ThreadList::Node::operator new(size_t size) {
    return MemoryAllocator::mem_alloc(MemoryAllocator::get_number_of_blocks(size));
}

void ThreadList::Node::operator delete(void *addr) {
    MemoryAllocator::mem_free(addr);
}
