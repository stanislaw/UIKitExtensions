#import "UIScreen_Extensions.h"

#define SMALL_OFFSET(offset) offset

static inline UIView * topMostView() {
    return UIApplication.sharedApplication.windows.lastObject;
}
