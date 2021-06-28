cmake_minimum_required(VERSION 3.20)
project(fakemon)

set(CMAKE_CXX_STANDARD 20)

add_subdirectory(${PROJECT_SOURCE_DIR}/entt)
add_subdirectory(${PROJECT_SOURCE_DIR}/sfml)


add_executable(fakemon
	sources/main.cpp
)
target_include_directories(fakemon PUBLIC include)
target_link_libraries(fakemon EnTT::EnTT sfml-audio sfml-graphics sfml-window sfml-system)