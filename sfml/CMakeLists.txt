# Set up SFML, either by finding the package directly, or by fetching it from GitHub
include(FetchContent)
message(STATUS "Fetching SFML from GitHub using FetchContent.")

# Declare where to find glfw and what version to use
FetchContent_Declare(
    SFML_external
    GIT_REPOSITORY https://github.com/SFML/SFML.git
    GIT_TAG 2.5.1
    GIT_PROGRESS TRUE
)

# Populate and make available
FetchContent_MakeAvailable(SFML_external)