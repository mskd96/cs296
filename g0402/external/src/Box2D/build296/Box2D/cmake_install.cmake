# Install script for directory: /home/deepak/Desktop/g0402/external/src/Box2D/Box2D

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "../../../../external")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Debug")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Box2D" TYPE FILE FILES "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Box2D.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Box2D/Collision" TYPE FILE FILES
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Collision/b2BroadPhase.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Collision/b2Collision.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Collision/b2Distance.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Collision/b2DynamicTree.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Collision/b2TimeOfImpact.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Box2D/Collision/Shapes" TYPE FILE FILES
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Collision/Shapes/b2CircleShape.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Collision/Shapes/b2EdgeShape.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Collision/Shapes/b2ChainShape.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Collision/Shapes/b2PolygonShape.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Collision/Shapes/b2Shape.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Box2D/Common" TYPE FILE FILES
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Common/b2BlockAllocator.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Common/b2Draw.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Common/b2GrowableStack.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Common/b2Math.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Common/b2Settings.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Common/b2StackAllocator.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Common/b2Timer.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Box2D/Dynamics" TYPE FILE FILES
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Dynamics/b2Body.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Dynamics/b2ContactManager.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Dynamics/b2Fixture.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Dynamics/b2Island.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Dynamics/b2TimeStep.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Dynamics/b2World.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Dynamics/b2WorldCallbacks.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Box2D/Dynamics/Contacts" TYPE FILE FILES
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Dynamics/Contacts/b2CircleContact.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Dynamics/Contacts/b2Contact.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Dynamics/Contacts/b2ContactSolver.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Dynamics/Contacts/b2PolygonAndCircleContact.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Dynamics/Contacts/b2EdgeAndCircleContact.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Dynamics/Contacts/b2EdgeAndPolygonContact.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Dynamics/Contacts/b2ChainAndCircleContact.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Dynamics/Contacts/b2ChainAndPolygonContact.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Dynamics/Contacts/b2PolygonContact.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Box2D/Dynamics/Joints" TYPE FILE FILES
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Dynamics/Joints/b2DistanceJoint.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Dynamics/Joints/b2FrictionJoint.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Dynamics/Joints/b2GearJoint.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Dynamics/Joints/b2Joint.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Dynamics/Joints/b2MotorJoint.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Dynamics/Joints/b2MouseJoint.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Dynamics/Joints/b2PrismaticJoint.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Dynamics/Joints/b2PulleyJoint.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Dynamics/Joints/b2RevoluteJoint.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Dynamics/Joints/b2RopeJoint.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Dynamics/Joints/b2WeldJoint.h"
    "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Dynamics/Joints/b2WheelJoint.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Box2D/Rope" TYPE FILE FILES "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Rope/b2Rope.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/deepak/Desktop/g0402/external/src/Box2D/build296/Box2D/libBox2D.a")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/Box2D/Box2D-targets.cmake")
    FILE(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/Box2D/Box2D-targets.cmake"
         "/home/deepak/Desktop/g0402/external/src/Box2D/build296/Box2D/CMakeFiles/Export/lib/Box2D/Box2D-targets.cmake")
    IF(EXPORT_FILE_CHANGED)
      FILE(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/Box2D/Box2D-targets-*.cmake")
      IF(OLD_CONFIG_FILES)
        MESSAGE(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/Box2D/Box2D-targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        FILE(REMOVE ${OLD_CONFIG_FILES})
      ENDIF(OLD_CONFIG_FILES)
    ENDIF(EXPORT_FILE_CHANGED)
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/Box2D" TYPE FILE FILES "/home/deepak/Desktop/g0402/external/src/Box2D/build296/Box2D/CMakeFiles/Export/lib/Box2D/Box2D-targets.cmake")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/Box2D" TYPE FILE FILES "/home/deepak/Desktop/g0402/external/src/Box2D/build296/Box2D/CMakeFiles/Export/lib/Box2D/Box2D-targets-debug.cmake")
  ENDIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/Box2D" TYPE FILE FILES "/home/deepak/Desktop/g0402/external/src/Box2D/Box2D/Box2DConfig.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

