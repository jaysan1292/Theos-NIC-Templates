ARCHS = armv7 armv7s arm64
TARGET = iphone:clang:latest:@@DEPLOYMENT_TARGET@@
THEOS_BUILD_DIR = Build
THEOS_PACKAGE_DIR_NAME = Packages

include theos/makefiles/common.mk

BUNDLE_NAME = @@PROJECTNAME@@
@@PROJECTNAME@@_CFLAGS = @@CFLAGS@@
@@PROJECTNAME@@_FILES = @@PROJECTNAME@@ViewController.m TouchFix/TouchFix.m @@PROJECTNAME@@ViewControllerNew.m @@PROJECTNAME@@View.m
@@PROJECTNAME@@_INSTALL_PATH = /System/Library/WeeAppPlugins
@@PROJECTNAME@@_FRAMEWORKS = Foundation UIKit CoreGraphics
@@PROJECTNAME@@_LDFLAGS = -weak_library $(TARGET_PRIVATE_FRAMEWORK_PATH)/SpringBoardUIServices.framework/SpringBoardUIServices

include $(THEOS_MAKE_PATH)/bundle.mk

after-install::
	install.exec "killall -9 backboardd"
