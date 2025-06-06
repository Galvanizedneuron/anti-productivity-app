cmake_minimum_required(VERSION 3.16)

project(anti_productivity_app VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUROMOC ON)


find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appanti_productivity_app
    main.cpp

)

qt_add_qml_module(appanti_productivity_app
    URI anti_productivity_app
    VERSION 1.0
    QML_FILES
        Main.qml
        RESOURCES
        RESOURCES images.qrc
        QML_FILES startPage.qml
        QML_FILES homePage.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appanti_productivity_app PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appanti_productivity_app
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appanti_productivity_app
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appanti_productivity_app
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
