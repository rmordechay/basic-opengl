cmake_minimum_required(VERSION 3.28)
project(opengl)

set(CMAKE_CXX_STANDARD 17)

set(GLFW_H /opt/homebrew/Cellar/glfw/3.4/include/GLFW)
set(GLM_H /opt/homebrew/Cellar/glm/1.0.1/include/glm)
include_directories(include ${GLFW_H} ${GLM_H})

set(GLFW_LINK /opt/homebrew/Cellar/glfw/3.4/lib/libglfw.3.4.dylib)
link_libraries(${GLFW_LINK})

set(CMAKE_CXX_FLAGS "-framework Cocoa -framework IOKit")

add_executable(
        opengl
        main.cpp
        include/glad.c
        app/shader.h
        app/shader.cpp
)
