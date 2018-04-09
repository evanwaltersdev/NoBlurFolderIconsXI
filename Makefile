include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NoBlurFolderIconXI
NoBlurFolderIconXI_FILES = Tweak.xm

include $THEOS/makefiles/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += prefs
include $THEOS/makefiles/aggregate.mk
