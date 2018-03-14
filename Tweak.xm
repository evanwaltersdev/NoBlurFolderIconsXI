#include <substrate.h>

%hook SBIconColorSettings
-(bool) blurryFolderIcons {
return TRUE;
}
%end

%hook SBIconColorSettings
-(double) colorAlpha {
return 0;
}
%end

%hook SBIconColorSettings
-(double) whiteAlpha {
return 0;
}
%end

%hook SBFWallpaperSettings
-(bool) replaceBlurs {
return TRUE;
}
%end
