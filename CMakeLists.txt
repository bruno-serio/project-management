include(FetchContent)

cmake_minimum_required(VERSION 3.16)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(
  projMgmt
  VERSION 0.0.1
  LANGUAGES CXX)

add_library(test_module STATIC src/test_module.cpp)
target_include_directories(test_module PUBLIC $(CMAKE_CURRENT_SOURC_DIR))

FetchContent_Declare(
  Qt6
  GIT_REPOSITORY https://github.com/qt/qtbase
  GIT_TAG dev)

find_package(Qt6 REQUIRED COMPONENTS Core Gui Qml)

qt_standard_project_setup(REQUIRES 6.5)

file(COPY "${CMAKE_CURRENT_SOURCE_DIR}/assets/"
     DESTINATION "${CMAKE_CURRENT_BINARY_DIR}/assets/")

add_executable(projMgmt src/main.cpp)
target_link_libraries(projMgmt PUBLIC test_module Qt6::Core Qt6::Gui Qt6::Qml)

# qt_add_qml_module(myapp URI bruProjMgmt QML_FILES qml/main.qml )
#
# target_link_libraries(projMgmt PRIVATE Qt6::Gui Qt6::Quick)
