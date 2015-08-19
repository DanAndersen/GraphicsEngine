# Install script for directory: D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files/Glitter")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Files/Projects/Glitter/Build/Glitter/Vendor/assimp/code/Debug/assimp-vc130-mtd.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Files/Projects/Glitter/Build/Glitter/Vendor/assimp/code/Release/assimp-vc130-mt.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Files/Projects/Glitter/Build/Glitter/Vendor/assimp/code/MinSizeRel/assimp-vc130-mt.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Files/Projects/Glitter/Build/Glitter/Vendor/assimp/code/RelWithDebInfo/assimp-vc130-mt.lib")
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "assimp-dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/assimp" TYPE FILE FILES
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/anim.h"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/ai_assert.h"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/camera.h"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/color4.h"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/color4.inl"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/config.h"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/defs.h"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/cfileio.h"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/light.h"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/material.h"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/material.inl"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/matrix3x3.h"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/matrix3x3.inl"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/matrix4x4.h"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/matrix4x4.inl"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/mesh.h"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/postprocess.h"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/quaternion.h"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/quaternion.inl"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/scene.h"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/metadata.h"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/texture.h"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/types.h"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/vector2.h"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/vector2.inl"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/vector3.h"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/vector3.inl"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/version.h"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/cimport.h"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/importerdesc.h"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/Importer.hpp"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/DefaultLogger.hpp"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/ProgressHandler.hpp"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/IOStream.hpp"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/IOSystem.hpp"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/Logger.hpp"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/LogStream.hpp"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/NullLogger.hpp"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/cexport.h"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/Exporter.hpp"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "assimp-dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/assimp/Compiler" TYPE FILE FILES
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/Compiler/pushpack1.h"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/Compiler/poppack1.h"
    "D:/Files/Projects/Glitter/Glitter/Vendor/assimp/code/../include/assimp/Compiler/pstdint.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "D:/Files/Projects/Glitter/Build/Glitter/Vendor/assimp/code/Debug/assimpd.pdb")
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "D:/Files/Projects/Glitter/Build/Glitter/Vendor/assimp/code/RelWithDebInfo/assimp.pdb")
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
endif()

