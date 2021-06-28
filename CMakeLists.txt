cmake_minimum_required(VERSION 3.20)
project(fakemon)

set(CMAKE_CXX_STANDARD 20)

add_subdirectory(${PROJECT_SOURCE_DIR}/entt)

add_executable(fakemon
	sources/main.cpp
)

target_link_libraries(fakemon PUBLIC EnTT::EnTT)