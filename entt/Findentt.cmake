# Usage:
# FIND_PACKAGE(entt REQUIRED)
# [...]
# TARGET_LINK_LIBRARIES(target_name entt)

CMAKE_MINIMUM_REQUIRED(VERSION 3.20)

if (NOT entt_FOUND)
	INCLUDE(FetchContent)

	FetchContent_Declare(entt URL https://github.com/skypjack/entt/archive/master.tar.gz)
	FetchContent_GetProperties(entt)
	if (NOT entt_POPULATED)
		SET(FETCHCONTENT_QUIET NO)
		FetchContent_Populate(entt)
		SET(BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)
		ADD_SUBDIRECTORY(${entt_SOURCE_DIR} ${entt_BINARY_DIR})
		SET(entt_FOUND TRUE)
	endif()
endif()