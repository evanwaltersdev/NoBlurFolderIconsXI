#include <substrate.h>

%hook SBIconColorSettings
-(bool) blurryFolderIcons {
return TRUE;
}
%end

%hook SBIconColorSettings
-(double) colorAlpha {
return ;
}
%end

%hook SBIconColorSettings
-(double) whiteAlpha {
return ;
}
%end

%hook SBFWallpaperSettings
-(bool) replaceBlurs {
return TRUE;
}
%end