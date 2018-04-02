cmake_minimum_required(VERSION 3.9)
project(Queue C)

set(CMAKE_C_STANDARD 11)

add_executable(Queue main.c queue.h queue.c cmake-build-debug/queue_test.c)