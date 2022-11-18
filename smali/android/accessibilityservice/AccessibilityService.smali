.class public abstract Landroid/accessibilityservice/AccessibilityService;
.super Landroid/app/Service;
.source "AccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;,
        Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;,
        Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;,
        Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;,
        Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;,
        Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;,
        Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;,
        Landroid/accessibilityservice/AccessibilityService$MagnificationController;,
        Landroid/accessibilityservice/AccessibilityService$ScreenshotErrorCode;,
        Landroid/accessibilityservice/AccessibilityService$SoftKeyboardShowMode;,
        Landroid/accessibilityservice/AccessibilityService$Callbacks;
    }
.end annotation


# static fields
.field public static final blacklist ACCESSIBILITY_TAKE_SCREENSHOT_REQUEST_INTERVAL_TIMES_MS:I = 0x14d

.field public static final whitelist ERROR_TAKE_SCREENSHOT_INTERNAL_ERROR:I = 0x1

.field public static final whitelist ERROR_TAKE_SCREENSHOT_INTERVAL_TIME_SHORT:I = 0x3

.field public static final whitelist ERROR_TAKE_SCREENSHOT_INVALID_DISPLAY:I = 0x4

.field public static final whitelist ERROR_TAKE_SCREENSHOT_NO_ACCESSIBILITY_ACCESS:I = 0x2

.field public static final whitelist GESTURE_2_FINGER_DOUBLE_TAP:I = 0x14

.field public static final whitelist GESTURE_2_FINGER_DOUBLE_TAP_AND_HOLD:I = 0x28

.field public static final whitelist GESTURE_2_FINGER_SINGLE_TAP:I = 0x13

.field public static final whitelist GESTURE_2_FINGER_SWIPE_DOWN:I = 0x1a

.field public static final whitelist GESTURE_2_FINGER_SWIPE_LEFT:I = 0x1b

.field public static final whitelist GESTURE_2_FINGER_SWIPE_RIGHT:I = 0x1c

.field public static final whitelist GESTURE_2_FINGER_SWIPE_UP:I = 0x19

.field public static final whitelist GESTURE_2_FINGER_TRIPLE_TAP:I = 0x15

.field public static final whitelist GESTURE_2_FINGER_TRIPLE_TAP_AND_HOLD:I = 0x2b

.field public static final whitelist GESTURE_3_FINGER_DOUBLE_TAP:I = 0x17

.field public static final whitelist GESTURE_3_FINGER_DOUBLE_TAP_AND_HOLD:I = 0x29

.field public static final whitelist GESTURE_3_FINGER_SINGLE_TAP:I = 0x16

.field public static final whitelist GESTURE_3_FINGER_SINGLE_TAP_AND_HOLD:I = 0x2c

.field public static final whitelist GESTURE_3_FINGER_SWIPE_DOWN:I = 0x1e

.field public static final whitelist GESTURE_3_FINGER_SWIPE_LEFT:I = 0x1f

.field public static final whitelist GESTURE_3_FINGER_SWIPE_RIGHT:I = 0x20

.field public static final whitelist GESTURE_3_FINGER_SWIPE_UP:I = 0x1d

.field public static final whitelist GESTURE_3_FINGER_TRIPLE_TAP:I = 0x18

.field public static final whitelist GESTURE_3_FINGER_TRIPLE_TAP_AND_HOLD:I = 0x2d

.field public static final whitelist GESTURE_4_FINGER_DOUBLE_TAP:I = 0x26

.field public static final whitelist GESTURE_4_FINGER_DOUBLE_TAP_AND_HOLD:I = 0x2a

.field public static final whitelist GESTURE_4_FINGER_SINGLE_TAP:I = 0x25

.field public static final whitelist GESTURE_4_FINGER_SWIPE_DOWN:I = 0x22

.field public static final whitelist GESTURE_4_FINGER_SWIPE_LEFT:I = 0x23

.field public static final whitelist GESTURE_4_FINGER_SWIPE_RIGHT:I = 0x24

.field public static final whitelist GESTURE_4_FINGER_SWIPE_UP:I = 0x21

.field public static final whitelist GESTURE_4_FINGER_TRIPLE_TAP:I = 0x27

.field public static final whitelist GESTURE_DOUBLE_TAP:I = 0x11

.field public static final whitelist GESTURE_DOUBLE_TAP_AND_HOLD:I = 0x12

.field public static final blacklist GESTURE_PASSTHROUGH:I = -0x1

.field public static final whitelist GESTURE_SWIPE_DOWN:I = 0x2

.field public static final whitelist GESTURE_SWIPE_DOWN_AND_LEFT:I = 0xf

.field public static final whitelist GESTURE_SWIPE_DOWN_AND_RIGHT:I = 0x10

.field public static final whitelist GESTURE_SWIPE_DOWN_AND_UP:I = 0x8

.field public static final whitelist GESTURE_SWIPE_LEFT:I = 0x3

.field public static final whitelist GESTURE_SWIPE_LEFT_AND_DOWN:I = 0xa

.field public static final whitelist GESTURE_SWIPE_LEFT_AND_RIGHT:I = 0x5

.field public static final whitelist GESTURE_SWIPE_LEFT_AND_UP:I = 0x9

.field public static final whitelist GESTURE_SWIPE_RIGHT:I = 0x4

.field public static final whitelist GESTURE_SWIPE_RIGHT_AND_DOWN:I = 0xc

.field public static final whitelist GESTURE_SWIPE_RIGHT_AND_LEFT:I = 0x6

.field public static final whitelist GESTURE_SWIPE_RIGHT_AND_UP:I = 0xb

.field public static final whitelist GESTURE_SWIPE_UP:I = 0x1

.field public static final whitelist GESTURE_SWIPE_UP_AND_DOWN:I = 0x7

.field public static final whitelist GESTURE_SWIPE_UP_AND_LEFT:I = 0xd

.field public static final whitelist GESTURE_SWIPE_UP_AND_RIGHT:I = 0xe

.field public static final blacklist GESTURE_TOUCH_EXPLORATION:I = -0x2

.field public static final whitelist GESTURE_UNKNOWN:I = 0x0

.field public static final whitelist GLOBAL_ACTION_ACCESSIBILITY_ALL_APPS:I = 0xe

.field public static final whitelist GLOBAL_ACTION_ACCESSIBILITY_BUTTON:I = 0xb

.field public static final whitelist GLOBAL_ACTION_ACCESSIBILITY_BUTTON_CHOOSER:I = 0xc

.field public static final whitelist GLOBAL_ACTION_ACCESSIBILITY_SHORTCUT:I = 0xd

.field public static final whitelist GLOBAL_ACTION_BACK:I = 0x1

.field public static final whitelist GLOBAL_ACTION_DISMISS_NOTIFICATION_SHADE:I = 0xf

.field public static final whitelist GLOBAL_ACTION_DPAD_CENTER:I = 0x14

.field public static final whitelist GLOBAL_ACTION_DPAD_DOWN:I = 0x11

.field public static final whitelist GLOBAL_ACTION_DPAD_LEFT:I = 0x12

.field public static final whitelist GLOBAL_ACTION_DPAD_RIGHT:I = 0x13

.field public static final whitelist GLOBAL_ACTION_DPAD_UP:I = 0x10

.field public static final whitelist GLOBAL_ACTION_HOME:I = 0x2

.field public static final whitelist GLOBAL_ACTION_KEYCODE_HEADSETHOOK:I = 0xa

.field public static final whitelist GLOBAL_ACTION_LOCK_SCREEN:I = 0x8

.field public static final whitelist GLOBAL_ACTION_NOTIFICATIONS:I = 0x4

.field public static final whitelist GLOBAL_ACTION_POWER_DIALOG:I = 0x6

.field public static final whitelist GLOBAL_ACTION_QUICK_SETTINGS:I = 0x5

.field public static final whitelist GLOBAL_ACTION_RECENTS:I = 0x3

.field public static final whitelist GLOBAL_ACTION_TAKE_SCREENSHOT:I = 0x9

.field public static final whitelist GLOBAL_ACTION_TOGGLE_SPLIT_SCREEN:I = 0x7

.field public static final blacklist KEY_ACCESSIBILITY_SCREENSHOT_COLORSPACE:Ljava/lang/String; = "screenshot_colorSpace"

.field public static final blacklist KEY_ACCESSIBILITY_SCREENSHOT_HARDWAREBUFFER:Ljava/lang/String; = "screenshot_hardwareBuffer"

.field public static final blacklist KEY_ACCESSIBILITY_SCREENSHOT_STATUS:Ljava/lang/String; = "screenshot_status"

.field public static final blacklist KEY_ACCESSIBILITY_SCREENSHOT_TIMESTAMP:Ljava/lang/String; = "screenshot_timestamp"

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "AccessibilityService"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.accessibilityservice.AccessibilityService"

.field public static final whitelist SERVICE_META_DATA:Ljava/lang/String; = "android.accessibilityservice"

.field public static final whitelist SHOW_MODE_AUTO:I = 0x0

.field public static final blacklist SHOW_MODE_HARD_KEYBOARD_ORIGINAL_VALUE:I = 0x20000000

.field public static final blacklist SHOW_MODE_HARD_KEYBOARD_OVERRIDDEN:I = 0x40000000

.field public static final whitelist SHOW_MODE_HIDDEN:I = 0x1

.field public static final whitelist SHOW_MODE_IGNORE_HARD_KEYBOARD:I = 0x2

.field public static final blacklist SHOW_MODE_MASK:I = 0x3

.field public static final blacklist TAKE_SCREENSHOT_SUCCESS:I


# instance fields
.field private final blacklist mAccessibilityButtonControllers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/accessibilityservice/AccessibilityButtonController;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mConnectionId:I

.field private greylist-max-o mFingerprintGestureController:Landroid/accessibilityservice/FingerprintGestureController;

.field private greylist-max-o mGestureStatusCallbackInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mGestureStatusCallbackSequence:I

.field private greylist mInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

.field private blacklist mInputMethod:Landroid/accessibilityservice/InputMethod;

.field private blacklist mInputMethodInitialized:Z

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final blacklist mMagnificationControllers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/accessibilityservice/AccessibilityService$MagnificationController;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSoftKeyboardController:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

.field private final blacklist mTouchInteractionControllers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/accessibilityservice/TouchInteractionController;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mWindowManager:Landroid/view/WindowManager;

.field private greylist-max-p mWindowToken:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I
    .locals 0

    iget p0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInputMethod(Landroid/accessibilityservice/AccessibilityService;)Landroid/accessibilityservice/InputMethod;
    .locals 0

    iget-object p0, p0, Landroid/accessibilityservice/AccessibilityService;->mInputMethod:Landroid/accessibilityservice/InputMethod;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindowManager(Landroid/accessibilityservice/AccessibilityService;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Landroid/accessibilityservice/AccessibilityService;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindowToken(Landroid/accessibilityservice/AccessibilityService;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Landroid/accessibilityservice/AccessibilityService;->mWindowToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConnectionId(Landroid/accessibilityservice/AccessibilityService;I)V
    .locals 0

    iput p1, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWindowToken(Landroid/accessibilityservice/AccessibilityService;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService;->mWindowToken:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchServiceConnected(Landroid/accessibilityservice/AccessibilityService;)V
    .locals 0

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;->dispatchServiceConnected()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monAccessibilityButtonAvailabilityChanged(Landroid/accessibilityservice/AccessibilityService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onAccessibilityButtonAvailabilityChanged(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monAccessibilityButtonClicked(Landroid/accessibilityservice/AccessibilityService;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onAccessibilityButtonClicked(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monFingerprintCapturingGesturesChanged(Landroid/accessibilityservice/AccessibilityService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onFingerprintCapturingGesturesChanged(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monFingerprintGesture(Landroid/accessibilityservice/AccessibilityService;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onFingerprintGesture(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monMagnificationChanged(Landroid/accessibilityservice/AccessibilityService;ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityService;->onMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monSoftKeyboardShowModeChanged(Landroid/accessibilityservice/AccessibilityService;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onSoftKeyboardShowModeChanged(I)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 251
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 757
    const/4 v0, -0x1

    iput v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    .line 768
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mMagnificationControllers:Landroid/util/SparseArray;

    .line 773
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mTouchInteractionControllers:Landroid/util/SparseArray;

    .line 778
    iput-boolean v1, p0, Landroid/accessibilityservice/AccessibilityService;->mInputMethodInitialized:Z

    .line 779
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mAccessibilityButtonControllers:Landroid/util/SparseArray;

    .line 786
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private blacklist calculateGestureSampleTimeMs(I)I
    .locals 5
    .param p1, "displayId"    # I

    .line 1198
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x64

    const/16 v2, 0x1d

    if-gt v0, v2, :cond_0

    .line 1199
    return v1

    .line 1201
    :cond_0
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1203
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_1

    .line 1204
    return v1

    .line 1206
    :cond_1
    const/16 v2, 0x3e8

    .line 1207
    .local v2, "msPerSecond":I
    int-to-float v3, v2

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 1208
    .local v3, "sampleTimeMs":I
    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    .line 1210
    return v1

    .line 1212
    :cond_2
    return v3
.end method

.method private greylist-max-o dispatchServiceConnected()V
    .locals 3

    .line 809
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 810
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mMagnificationControllers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 811
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mMagnificationControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityService$MagnificationController;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->onServiceConnectedLocked()V

    .line 810
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 813
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/accessibilityservice/AccessibilityService;->updateInputMethod(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 814
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 815
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mSoftKeyboardController:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    if-eqz v0, :cond_1

    .line 816
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->onServiceConnected()V

    .line 821
    :cond_1
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    .line 822
    return-void

    .line 814
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic blacklist lambda$sendScreenshotFailure$2(Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;I)V
    .locals 0
    .param p0, "callback"    # Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;
    .param p1, "errorCode"    # I

    .line 3191
    invoke-interface {p0, p1}, Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;->onFailure(I)V

    return-void
.end method

.method static synthetic blacklist lambda$sendScreenshotSuccess$1(Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;)V
    .locals 0
    .param p0, "callback"    # Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;
    .param p1, "screenshot"    # Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;

    .line 3186
    invoke-interface {p0, p1}, Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;->onSuccess(Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;)V

    return-void
.end method

.method private greylist-max-o onAccessibilityButtonAvailabilityChanged(Z)V
    .locals 1
    .param p1, "available"    # Z

    .line 2294
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getAccessibilityButtonController()Landroid/accessibilityservice/AccessibilityButtonController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/accessibilityservice/AccessibilityButtonController;->dispatchAccessibilityButtonAvailabilityChanged(Z)V

    .line 2296
    return-void
.end method

.method private blacklist onAccessibilityButtonClicked(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 2290
    invoke-virtual {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->getAccessibilityButtonController(I)Landroid/accessibilityservice/AccessibilityButtonController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityButtonController;->dispatchAccessibilityButtonClicked()V

    .line 2291
    return-void
.end method

.method private greylist-max-o onFingerprintCapturingGesturesChanged(Z)V
    .locals 1
    .param p1, "active"    # Z

    .line 1266
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getFingerprintGestureController()Landroid/accessibilityservice/FingerprintGestureController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/accessibilityservice/FingerprintGestureController;->onGestureDetectionActiveChanged(Z)V

    .line 1267
    return-void
.end method

.method private greylist-max-o onFingerprintGesture(I)V
    .locals 1
    .param p1, "gesture"    # I

    .line 1274
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getFingerprintGestureController()Landroid/accessibilityservice/FingerprintGestureController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/accessibilityservice/FingerprintGestureController;->onGesture(I)V

    .line 1275
    return-void
.end method

.method private blacklist onMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;
    .param p3, "config"    # Landroid/accessibilityservice/MagnificationConfig;

    .line 1253
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1254
    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mMagnificationControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityService$MagnificationController;

    .line 1255
    .local v1, "controller":Landroid/accessibilityservice/AccessibilityService$MagnificationController;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1256
    if-eqz v1, :cond_0

    .line 1257
    invoke-virtual {v1, p2, p3}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->dispatchMagnificationChanged(Landroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    .line 1259
    :cond_0
    return-void

    .line 1255
    .end local v1    # "controller":Landroid/accessibilityservice/AccessibilityService$MagnificationController;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private greylist-max-o onSoftKeyboardShowModeChanged(I)V
    .locals 1
    .param p1, "showMode"    # I

    .line 1918
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mSoftKeyboardController:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    if-eqz v0, :cond_0

    .line 1919
    invoke-virtual {v0, p1}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->dispatchSoftKeyboardShowModeChanged(I)V

    .line 1921
    :cond_0
    return-void
.end method

.method private blacklist sendScreenshotFailure(ILjava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;

    .line 3191
    new-instance v0, Landroid/accessibilityservice/AccessibilityService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p3, p1}, Landroid/accessibilityservice/AccessibilityService$$ExternalSyntheticLambda1;-><init>(Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3192
    return-void
.end method

.method private blacklist sendScreenshotSuccess(Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;Ljava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;)V
    .locals 1
    .param p1, "screenshot"    # Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;

    .line 3186
    new-instance v0, Landroid/accessibilityservice/AccessibilityService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3, p1}, Landroid/accessibilityservice/AccessibilityService$$ExternalSyntheticLambda0;-><init>(Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3187
    return-void
.end method

.method private greylist-max-o sendServiceInfo()V
    .locals 4

    .line 2523
    nop

    .line 2524
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 2525
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 2527
    :try_start_0
    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 2528
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 2529
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearCache(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2533
    goto :goto_0

    .line 2530
    :catch_0
    move-exception v1

    .line 2531
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Error while setting AccessibilityServiceInfo"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2532
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2535
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist updateInputMethod(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 825
    if-eqz p1, :cond_3

    .line 826
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 828
    .local v0, "requestIme":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v3, p0, Landroid/accessibilityservice/AccessibilityService;->mInputMethodInitialized:Z

    if-nez v3, :cond_1

    .line 829
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->onCreateInputMethod()Landroid/accessibilityservice/InputMethod;

    move-result-object v2

    iput-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mInputMethod:Landroid/accessibilityservice/InputMethod;

    .line 830
    iput-boolean v1, p0, Landroid/accessibilityservice/AccessibilityService;->mInputMethodInitialized:Z

    goto :goto_2

    .line 831
    :cond_1
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iget-boolean v3, p0, Landroid/accessibilityservice/AccessibilityService;->mInputMethodInitialized:Z

    and-int/2addr v1, v3

    if-eqz v1, :cond_3

    .line 832
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mInputMethod:Landroid/accessibilityservice/InputMethod;

    .line 833
    iput-boolean v2, p0, Landroid/accessibilityservice/AccessibilityService;->mInputMethodInitialized:Z

    .line 836
    .end local v0    # "requestIme":Z
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public whitelist clearCache()Z
    .locals 2

    .line 2345
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    .line 2346
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getCache(I)Landroid/view/accessibility/AccessibilityCache;

    move-result-object v0

    .line 2347
    .local v0, "cache":Landroid/view/accessibility/AccessibilityCache;
    if-nez v0, :cond_0

    .line 2348
    const/4 v1, 0x0

    return v1

    .line 2350
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityCache;->clear()V

    .line 2351
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist clearCachedSubtree(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 2
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2333
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    .line 2334
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getCache(I)Landroid/view/accessibility/AccessibilityCache;

    move-result-object v0

    .line 2335
    .local v0, "cache":Landroid/view/accessibility/AccessibilityCache;
    if-nez v0, :cond_0

    .line 2336
    const/4 v1, 0x0

    return v1

    .line 2338
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityCache;->clearSubTree(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    return v1
.end method

.method public whitelist createDisplayContext(Landroid/view/Display;)Landroid/content/Context;
    .locals 4
    .param p1, "display"    # Landroid/view/Display;

    .line 1051
    new-instance v0, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;

    invoke-super {p0, p1}, Landroid/app/Service;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;-><init>(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityService$AccessibilityContext-IA;)V

    return-object v0
.end method

.method public whitelist createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;
    .locals 4
    .param p1, "type"    # I
    .param p2, "options"    # Landroid/os/Bundle;

    .line 1057
    invoke-super {p0, p1, p2}, Landroid/app/Service;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v0

    .line 1058
    .local v0, "context":Landroid/content/Context;
    const/16 v1, 0x7f0

    if-eq p1, v1, :cond_0

    .line 1059
    return-object v0

    .line 1061
    :cond_0
    new-instance v1, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;

    iget v2, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;-><init>(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityService$AccessibilityContext-IA;)V

    return-object v1
.end method

.method public whitelist createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;
    .locals 4
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "type"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 1068
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v0

    .line 1069
    .local v0, "context":Landroid/content/Context;
    const/16 v1, 0x7f0

    if-eq p2, v1, :cond_0

    .line 1070
    return-object v0

    .line 1072
    :cond_0
    new-instance v1, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;

    iget v2, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;-><init>(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityService$AccessibilityContext-IA;)V

    return-object v1
.end method

.method public final whitelist disableSelf()V
    .locals 3

    .line 1037
    nop

    .line 1038
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1039
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 1041
    :try_start_0
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->disableSelf()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    goto :goto_0

    .line 1042
    :catch_0
    move-exception v1

    .line 1043
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1046
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public final whitelist dispatchGesture(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)Z
    .locals 8
    .param p1, "gesture"    # Landroid/accessibilityservice/GestureDescription;
    .param p2, "callback"    # Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 1163
    nop

    .line 1164
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1165
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-nez v0, :cond_0

    .line 1166
    const/4 v1, 0x0

    return v1

    .line 1168
    :cond_0
    invoke-virtual {p1}, Landroid/accessibilityservice/GestureDescription;->getDisplayId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/accessibilityservice/AccessibilityService;->calculateGestureSampleTimeMs(I)I

    move-result v1

    .line 1169
    .local v1, "sampleTimeMs":I
    nop

    .line 1170
    invoke-static {p1, v1}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->getGestureStepsFromGestureDescription(Landroid/accessibilityservice/GestureDescription;I)Ljava/util/List;

    move-result-object v2

    .line 1172
    .local v2, "steps":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/GestureDescription$GestureStep;>;"
    :try_start_0
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1173
    :try_start_1
    iget v4, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackSequence:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackSequence:I

    .line 1174
    if-eqz p2, :cond_2

    .line 1175
    iget-object v4, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackInfos:Landroid/util/SparseArray;

    if-nez v4, :cond_1

    .line 1176
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackInfos:Landroid/util/SparseArray;

    .line 1178
    :cond_1
    new-instance v4, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;

    invoke-direct {v4, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;-><init>(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)V

    .line 1180
    .local v4, "callbackInfo":Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;
    iget-object v6, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackInfos:Landroid/util/SparseArray;

    iget v7, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackSequence:I

    invoke-virtual {v6, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1182
    .end local v4    # "callbackInfo":Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;
    :cond_2
    iget v4, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackSequence:I

    new-instance v6, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v6, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 1183
    invoke-virtual {p1}, Landroid/accessibilityservice/GestureDescription;->getDisplayId()I

    move-result v7

    .line 1182
    invoke-interface {v0, v4, v6, v7}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->dispatchGesture(ILandroid/content/pm/ParceledListSlice;I)V

    .line 1184
    monitor-exit v3

    .line 1187
    nop

    .line 1188
    return v5

    .line 1184
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v1    # "sampleTimeMs":I
    .end local v2    # "steps":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/GestureDescription$GestureStep;>;"
    .end local p0    # "this":Landroid/accessibilityservice/AccessibilityService;
    .end local p1    # "gesture":Landroid/accessibilityservice/GestureDescription;
    .end local p2    # "callback":Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;
    .end local p3    # "handler":Landroid/os/Handler;
    :try_start_2
    throw v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1185
    .restart local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v1    # "sampleTimeMs":I
    .restart local v2    # "steps":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/GestureDescription$GestureStep;>;"
    .restart local p0    # "this":Landroid/accessibilityservice/AccessibilityService;
    .restart local p1    # "gesture":Landroid/accessibilityservice/GestureDescription;
    .restart local p2    # "callback":Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;
    .restart local p3    # "handler":Landroid/os/Handler;
    :catch_0
    move-exception v3

    .line 1186
    .local v3, "re":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public whitelist findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6
    .param p1, "focus"    # I

    .line 2475
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    sget-wide v3, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v2, -0x2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityInteractionClient;->findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getAccessibilityButtonController()Landroid/accessibilityservice/AccessibilityButtonController;
    .locals 1

    .line 2257
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityService;->getAccessibilityButtonController(I)Landroid/accessibilityservice/AccessibilityButtonController;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getAccessibilityButtonController(I)Landroid/accessibilityservice/AccessibilityButtonController;
    .locals 4
    .param p1, "displayId"    # I

    .line 2277
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2278
    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mAccessibilityButtonControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityButtonController;

    .line 2280
    .local v1, "controller":Landroid/accessibilityservice/AccessibilityButtonController;
    if-nez v1, :cond_0

    .line 2281
    new-instance v2, Landroid/accessibilityservice/AccessibilityButtonController;

    .line 2282
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v3, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/accessibilityservice/AccessibilityButtonController;-><init>(Landroid/accessibilityservice/IAccessibilityServiceConnection;)V

    move-object v1, v2

    .line 2283
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mAccessibilityButtonControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2285
    :cond_0
    monitor-exit v0

    return-object v1

    .line 2286
    .end local v1    # "controller":Landroid/accessibilityservice/AccessibilityButtonController;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist getConnectionId()I
    .locals 1

    .line 1278
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    return v0
.end method

.method public final whitelist getFingerprintGestureController()Landroid/accessibilityservice/FingerprintGestureController;
    .locals 2

    .line 1130
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mFingerprintGestureController:Landroid/accessibilityservice/FingerprintGestureController;

    if-nez v0, :cond_0

    .line 1131
    new-instance v0, Landroid/accessibilityservice/FingerprintGestureController;

    .line 1132
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/accessibilityservice/FingerprintGestureController;-><init>(Landroid/accessibilityservice/IAccessibilityServiceConnection;)V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mFingerprintGestureController:Landroid/accessibilityservice/FingerprintGestureController;

    .line 1134
    :cond_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mFingerprintGestureController:Landroid/accessibilityservice/FingerprintGestureController;

    return-object v0
.end method

.method public final whitelist getInputMethod()Landroid/accessibilityservice/InputMethod;
    .locals 1

    .line 1914
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mInputMethod:Landroid/accessibilityservice/InputMethod;

    return-object v0
.end method

.method public final whitelist getMagnificationController()Landroid/accessibilityservice/AccessibilityService$MagnificationController;
    .locals 1

    .line 1089
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityService;->getMagnificationController(I)Landroid/accessibilityservice/AccessibilityService$MagnificationController;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getMagnificationController(I)Landroid/accessibilityservice/AccessibilityService$MagnificationController;
    .locals 4
    .param p1, "displayId"    # I

    .line 1110
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1111
    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mMagnificationControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityService$MagnificationController;

    .line 1112
    .local v1, "controller":Landroid/accessibilityservice/AccessibilityService$MagnificationController;
    if-nez v1, :cond_0

    .line 1113
    new-instance v2, Landroid/accessibilityservice/AccessibilityService$MagnificationController;

    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    invoke-direct {v2, p0, v3, p1}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;-><init>(Landroid/accessibilityservice/AccessibilityService;Ljava/lang/Object;I)V

    move-object v1, v2

    .line 1114
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mMagnificationControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1116
    :cond_0
    monitor-exit v0

    return-object v1

    .line 1117
    .end local v1    # "controller":Landroid/accessibilityservice/AccessibilityService$MagnificationController;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 1010
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRootInActiveWindow(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2
    .param p1, "prefetchingStrategy"    # I

    .line 1028
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getRootInActiveWindow(II)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 4

    .line 2490
    nop

    .line 2491
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 2492
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 2494
    :try_start_0
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2495
    :catch_0
    move-exception v1

    .line 2496
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Error while getting AccessibilityServiceInfo"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2497
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2500
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist getSoftKeyboardController()Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;
    .locals 3

    .line 1883
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1884
    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mSoftKeyboardController:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    if-nez v1, :cond_0

    .line 1885
    new-instance v1, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;-><init>(Landroid/accessibilityservice/AccessibilityService;Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mSoftKeyboardController:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    .line 1887
    :cond_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mSoftKeyboardController:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    monitor-exit v0

    return-object v1

    .line 1888
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final whitelist getSystemActions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation

    .line 2394
    nop

    .line 2395
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 2396
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 2398
    :try_start_0
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getSystemActions()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2399
    :catch_0
    move-exception v1

    .line 2400
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Error while calling getSystemActions"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2401
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2404
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 2539
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2545
    const-string/jumbo v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2546
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 2547
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mWindowManager:Landroid/view/WindowManager;

    .line 2548
    check-cast v0, Landroid/view/WindowManagerImpl;

    .line 2551
    .local v0, "wm":Landroid/view/WindowManagerImpl;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->setDefaultToken(Landroid/os/IBinder;)V

    .line 2553
    .end local v0    # "wm":Landroid/view/WindowManagerImpl;
    :cond_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0

    .line 2555
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2540
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "System services not available to Activities before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist getTouchInteractionController(I)Landroid/accessibilityservice/TouchInteractionController;
    .locals 4
    .param p1, "displayId"    # I

    .line 3410
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3411
    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mTouchInteractionControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/TouchInteractionController;

    .line 3412
    .local v1, "controller":Landroid/accessibilityservice/TouchInteractionController;
    if-nez v1, :cond_0

    .line 3413
    new-instance v2, Landroid/accessibilityservice/TouchInteractionController;

    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    invoke-direct {v2, p0, v3, p1}, Landroid/accessibilityservice/TouchInteractionController;-><init>(Landroid/accessibilityservice/AccessibilityService;Ljava/lang/Object;I)V

    move-object v1, v2

    .line 3414
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mTouchInteractionControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3416
    :cond_0
    monitor-exit v0

    return-object v1

    .line 3417
    .end local v1    # "controller":Landroid/accessibilityservice/TouchInteractionController;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getWindows()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .line 962
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindows(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getWindowsOnAllDisplays()Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;>;"
        }
    .end annotation

    .line 990
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindowsOnAllDisplays(I)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isCacheEnabled()Z
    .locals 2

    .line 2369
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    .line 2370
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getCache(I)Landroid/view/accessibility/AccessibilityCache;

    move-result-object v0

    .line 2371
    .local v0, "cache":Landroid/view/accessibility/AccessibilityCache;
    if-nez v0, :cond_0

    .line 2372
    const/4 v1, 0x0

    return v1

    .line 2374
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityCache;->isEnabled()Z

    move-result v1

    return v1
.end method

.method public whitelist isNodeInCache(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 2
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2359
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    .line 2360
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getCache(I)Landroid/view/accessibility/AccessibilityCache;

    move-result-object v0

    .line 2361
    .local v0, "cache":Landroid/view/accessibility/AccessibilityCache;
    if-nez v0, :cond_0

    .line 2362
    const/4 v1, 0x0

    return v1

    .line 2364
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityCache;->isNodeInCache(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    return v1
.end method

.method synthetic blacklist lambda$takeScreenshot$0$android-accessibilityservice-AccessibilityService(Ljava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;
    .param p3, "result"    # Landroid/os/Bundle;

    .line 2587
    const-string/jumbo v0, "screenshot_status"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2588
    .local v0, "status":I
    if-eqz v0, :cond_0

    .line 2589
    invoke-direct {p0, v0, p1, p2}, Landroid/accessibilityservice/AccessibilityService;->sendScreenshotFailure(ILjava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;)V

    .line 2590
    return-void

    .line 2592
    :cond_0
    nop

    .line 2593
    const-string/jumbo v1, "screenshot_hardwareBuffer"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/HardwareBuffer;

    .line 2594
    .local v1, "hardwareBuffer":Landroid/hardware/HardwareBuffer;
    nop

    .line 2595
    const-string/jumbo v2, "screenshot_colorSpace"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/graphics/ParcelableColorSpace;

    .line 2596
    .local v8, "colorSpace":Landroid/graphics/ParcelableColorSpace;
    new-instance v9, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;

    .line 2597
    invoke-virtual {v8}, Landroid/graphics/ParcelableColorSpace;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v4

    .line 2598
    const-string/jumbo v2, "screenshot_timestamp"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const/4 v7, 0x0

    move-object v2, v9

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;-><init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;JLandroid/accessibilityservice/AccessibilityService$ScreenshotResult-IA;)V

    .line 2599
    .local v2, "screenshot":Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;
    invoke-direct {p0, v2, p1, p2}, Landroid/accessibilityservice/AccessibilityService;->sendScreenshotSuccess(Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;Ljava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;)V

    .line 2600
    return-void
.end method

.method public abstract whitelist onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2637
    new-instance v0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/accessibilityservice/AccessibilityService$2;

    invoke-direct {v2, p0}, Landroid/accessibilityservice/AccessibilityService$2;-><init>(Landroid/accessibilityservice/AccessibilityService;)V

    invoke-direct {v0, p0, v1, v2}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/accessibilityservice/AccessibilityService$Callbacks;)V

    return-object v0
.end method

.method public whitelist onCreateInputMethod()Landroid/accessibilityservice/InputMethod;
    .locals 1

    .line 1900
    new-instance v0, Landroid/accessibilityservice/InputMethod;

    invoke-direct {v0, p0}, Landroid/accessibilityservice/InputMethod;-><init>(Landroid/accessibilityservice/AccessibilityService;)V

    return-object v0
.end method

.method protected whitelist onGesture(I)Z
    .locals 1
    .param p1, "gestureId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 883
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z
    .locals 1
    .param p1, "gestureEvent"    # Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 904
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityGestureEvent;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    .line 905
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityGestureEvent;->getGestureId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityService;->onGesture(I)Z

    .line 907
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist onInterrupt()V
.end method

.method protected whitelist onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 935
    const/4 v0, 0x0

    return v0
.end method

.method blacklist onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 3422
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3423
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v1

    .line 3424
    .local v1, "displayId":I
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mTouchInteractionControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/TouchInteractionController;

    move-object v1, v2

    .line 3425
    .local v1, "controller":Landroid/accessibilityservice/TouchInteractionController;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3426
    if-eqz v1, :cond_0

    .line 3427
    invoke-virtual {v1, p1}, Landroid/accessibilityservice/TouchInteractionController;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 3429
    :cond_0
    return-void

    .line 3425
    .end local v1    # "controller":Landroid/accessibilityservice/TouchInteractionController;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method greylist-max-o onPerformGestureResult(IZ)V
    .locals 4
    .param p1, "sequence"    # I
    .param p2, "completedSuccessfully"    # Z

    .line 1216
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackInfos:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 1217
    return-void

    .line 1220
    :cond_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1221
    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;

    .line 1222
    .local v1, "callbackInfo":Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1223
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1224
    move-object v0, v1

    .line 1225
    .local v0, "finalCallbackInfo":Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;
    if-eqz v1, :cond_3

    iget-object v2, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->gestureDescription:Landroid/accessibilityservice/GestureDescription;

    if-eqz v2, :cond_3

    iget-object v2, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->callback:Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;

    if-eqz v2, :cond_3

    .line 1227
    iget-object v2, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 1228
    iget-object v2, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->handler:Landroid/os/Handler;

    new-instance v3, Landroid/accessibilityservice/AccessibilityService$1;

    invoke-direct {v3, p0, p2, v0}, Landroid/accessibilityservice/AccessibilityService$1;-><init>(Landroid/accessibilityservice/AccessibilityService;ZLandroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1240
    return-void

    .line 1242
    :cond_1
    if-eqz p2, :cond_2

    .line 1243
    iget-object v2, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->callback:Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;

    iget-object v3, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->gestureDescription:Landroid/accessibilityservice/GestureDescription;

    invoke-virtual {v2, v3}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;->onCompleted(Landroid/accessibilityservice/GestureDescription;)V

    goto :goto_0

    .line 1245
    :cond_2
    iget-object v2, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->callback:Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;

    iget-object v3, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->gestureDescription:Landroid/accessibilityservice/GestureDescription;

    invoke-virtual {v2, v3}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;->onCancelled(Landroid/accessibilityservice/GestureDescription;)V

    .line 1248
    :cond_3
    :goto_0
    return-void

    .line 1223
    .end local v0    # "finalCallbackInfo":Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;
    .end local v1    # "callbackInfo":Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected whitelist onServiceConnected()V
    .locals 0

    .line 848
    return-void
.end method

.method public whitelist onSystemActionsChanged()V
    .locals 0

    .line 2379
    return-void
.end method

.method blacklist onTouchStateChanged(II)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "state"    # I

    .line 3433
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3434
    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mTouchInteractionControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/TouchInteractionController;

    .line 3435
    .local v1, "controller":Landroid/accessibilityservice/TouchInteractionController;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3436
    if-eqz v1, :cond_0

    .line 3437
    invoke-virtual {v1, p2}, Landroid/accessibilityservice/TouchInteractionController;->onStateChanged(I)V

    .line 3439
    :cond_0
    return-void

    .line 3435
    .end local v1    # "controller":Landroid/accessibilityservice/TouchInteractionController;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final whitelist performGlobalAction(I)Z
    .locals 4
    .param p1, "action"    # I

    .line 2433
    nop

    .line 2434
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 2435
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 2437
    :try_start_0
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->performGlobalAction(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 2438
    :catch_0
    move-exception v1

    .line 2439
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Error while calling performGlobalAction"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2440
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2443
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setAccessibilityFocusAppearance(II)V
    .locals 4
    .param p1, "strokeWidth"    # I
    .param p2, "color"    # I

    .line 2618
    nop

    .line 2619
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 2620
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 2622
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setFocusAppearance(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2627
    goto :goto_0

    .line 2623
    :catch_0
    move-exception v1

    .line 2624
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Error while setting the strokeWidth and color of the accessibility focus rectangle"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2626
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2629
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setAnimationScale(F)V
    .locals 3
    .param p1, "scale"    # F

    .line 3333
    nop

    .line 3334
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 3335
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 3337
    :try_start_0
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setAnimationScale(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3340
    goto :goto_0

    .line 3338
    :catch_0
    move-exception v1

    .line 3339
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 3342
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setCacheEnabled(Z)Z
    .locals 6
    .param p1, "enabled"    # Z

    .line 2307
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    .line 2308
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getCache(I)Landroid/view/accessibility/AccessibilityCache;

    move-result-object v0

    .line 2309
    .local v0, "cache":Landroid/view/accessibility/AccessibilityCache;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2310
    return v1

    .line 2312
    :cond_0
    iget v2, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    .line 2313
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v2

    .line 2314
    .local v2, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-nez v2, :cond_1

    .line 2315
    return v1

    .line 2318
    :cond_1
    :try_start_0
    invoke-interface {v2, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setCacheEnabled(Z)V

    .line 2319
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityCache;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2320
    const/4 v1, 0x1

    return v1

    .line 2321
    :catch_0
    move-exception v3

    .line 2322
    .local v3, "re":Landroid/os/RemoteException;
    const-string v4, "AccessibilityService"

    const-string v5, "Error while setting status of cache"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2323
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2325
    .end local v3    # "re":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist setGestureDetectionPassthroughRegion(ILandroid/graphics/Region;)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;

    .line 3279
    const-string/jumbo v0, "region cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3280
    nop

    .line 3281
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 3282
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 3284
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setGestureDetectionPassthroughRegion(ILandroid/graphics/Region;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3287
    goto :goto_0

    .line 3285
    :catch_0
    move-exception v1

    .line 3286
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 3289
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public final whitelist setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 2512
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService;->mInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 2513
    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->updateInputMethod(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 2514
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;->sendServiceInfo()V

    .line 2515
    return-void
.end method

.method public whitelist setTouchExplorationPassthroughRegion(ILandroid/graphics/Region;)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;

    .line 3305
    const-string/jumbo v0, "region cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3306
    nop

    .line 3307
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 3308
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 3310
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setTouchExplorationPassthroughRegion(ILandroid/graphics/Region;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3313
    goto :goto_0

    .line 3311
    :catch_0
    move-exception v1

    .line 3312
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 3315
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist takeScreenshot(ILjava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;

    .line 2577
    const-string v0, "executor cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2578
    const-string v0, "callback cannot be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2579
    nop

    .line 2580
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 2581
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-nez v0, :cond_0

    .line 2582
    const/4 v1, 0x1

    invoke-direct {p0, v1, p2, p3}, Landroid/accessibilityservice/AccessibilityService;->sendScreenshotFailure(ILjava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;)V

    .line 2583
    return-void

    .line 2586
    :cond_0
    :try_start_0
    new-instance v1, Landroid/os/RemoteCallback;

    new-instance v2, Landroid/accessibilityservice/AccessibilityService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p2, p3}, Landroid/accessibilityservice/AccessibilityService$$ExternalSyntheticLambda2;-><init>(Landroid/accessibilityservice/AccessibilityService;Ljava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;)V

    invoke-direct {v1, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {v0, p1, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->takeScreenshot(ILandroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2603
    nop

    .line 2604
    return-void

    .line 2601
    :catch_0
    move-exception v1

    .line 2602
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
