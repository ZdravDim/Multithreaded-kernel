#include "../h/thread_list.hpp"
#include "../h/memory_allocator.hpp"

void ThreadList::push_back(TCB *thread) {
    tail = (head ? head : tail -> next) = new Node(thread);
}

void ThreadList::push_front(TCB *thread) {
    Node* node = new Node(thread);
    node -> next = head;
    head = node;
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

void *ThreadList::Node::operator new(size_t size) {
    return MemoryAllocator::mem_alloc(size);
}

void ThreadList::Node::operator delete(void *addr) {
    MemoryAllocator::mem_free(addr);
}
