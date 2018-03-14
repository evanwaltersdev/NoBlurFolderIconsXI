#include <substrate.h>

NSMutableDictionary *settings = [NSMutableDictionary dictionaryWithContentsOfFile:
  [NSString stringWithFormat:@"%@/Library/Preferences/%@", NSHomeDirectory(), @"pro.evanwalters.prefs.plist"]];
NSNumber* blur = [settings objectForKey:@"blur"];

if ([nest boolValue] == YES){
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
}