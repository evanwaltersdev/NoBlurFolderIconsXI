#include <substrate.h>

%hook SBIconColorSettings
-(bool) blurryFolderIcons {
return TRUE;
}
%end

%hook SBIconColorSettings
-(double) colorAlpha {
return NULL;
}
%end

%hook SBIconColorSettings
-(double) whiteAlpha {
return NULL;
}
%end

%hook SBFWallpaperSettings
-(bool) replaceBlurs {
return TRUE;
}
%end
