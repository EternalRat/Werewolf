CMAKE_MINIMUM_REQUIRED(VERSION 3.20)
set(CMAKE_CXX_STANDARD 20)
set(PROJECT_NAME "entt")

project("${PROJECT_NAME}")
include_directories(${PROJECT_NAME} ./sources)

if (CMAKE_COMPILER_IS_GNUCXX)
	set(GCC_COVERAGE_COMPILE_FLAGS "-Wall -Wextra -Werror -Wshadow")
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${GCC_COVERAGE_COMPILE_FLAGS}")
endif ()

find_package(entt QUIET)
if (NOT entt_FOUND)
	set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR})
	find_package(entt REQUIRED)
endif()