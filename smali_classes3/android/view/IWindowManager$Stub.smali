.class public abstract Landroid/view/IWindowManager$Stub;
.super Landroid/os/Binder;
.source "IWindowManager.java"

# interfaces
.implements Landroid/view/IWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowManager"

.field static final blacklist TRANSACTION_addKeyguardLockedStateListener:I = 0x21

.field static final blacklist TRANSACTION_addShellRoot:I = 0x14

.field static final greylist-max-o TRANSACTION_addWindowToken:I = 0x11

.field static final blacklist TRANSACTION_attachToDisplayContent:I = 0x79

.field static final blacklist TRANSACTION_attachWindowContextToDisplayArea:I = 0x77

.field static final blacklist TRANSACTION_attachWindowContextToWindowToken:I = 0x78

.field static final greylist-max-o TRANSACTION_clearForcedDisplayDensityForUser:I = 0xd

.field static final greylist-max-o TRANSACTION_clearForcedDisplaySize:I = 0x9

.field static final blacklist TRANSACTION_clearTaskTransitionSpec:I = 0x81

.field static final greylist-max-o TRANSACTION_clearWindowContentFrameStats:I = 0x4b

.field static final greylist-max-o TRANSACTION_closeSystemDialogs:I = 0x24

.field static final greylist-max-o TRANSACTION_createInputConsumer:I = 0x53

.field static final greylist-max-o TRANSACTION_destroyInputConsumer:I = 0x54

.field static final blacklist TRANSACTION_detachWindowContextFromWindowContainer:I = 0x7a

.field static final greylist-max-o TRANSACTION_disableKeyguard:I = 0x1b

.field static final greylist-max-o TRANSACTION_dismissKeyguard:I = 0x20

.field static final greylist-max-o TRANSACTION_enableScreenIfNeeded:I = 0x4a

.field static final greylist-max-o TRANSACTION_endProlongedAnimations:I = 0x18

.field static final greylist-max-o TRANSACTION_exitKeyguardSecurely:I = 0x1d

.field static final blacklist TRANSACTION_freezeDisplayRotation:I = 0x36

.field static final greylist-max-o TRANSACTION_freezeRotation:I = 0x33

.field static final greylist-max-o TRANSACTION_getAnimationScale:I = 0x25

.field static final greylist-max-o TRANSACTION_getAnimationScales:I = 0x26

.field static final greylist-max-o TRANSACTION_getBaseDisplayDensity:I = 0xb

.field static final greylist-max-o TRANSACTION_getBaseDisplaySize:I = 0x7

.field static final greylist-max-o TRANSACTION_getCurrentAnimatorScale:I = 0x29

.field static final greylist-max-o TRANSACTION_getCurrentImeTouchRegion:I = 0x55

.field static final greylist-max-o TRANSACTION_getDefaultDisplayRotation:I = 0x2f

.field static final blacklist TRANSACTION_getDisplayImePolicy:I = 0x66

.field static final greylist-max-o TRANSACTION_getDockedStackSide:I = 0x4d

.field static final blacklist TRANSACTION_getImeDisplayId:I = 0x7e

.field static final greylist-max-o TRANSACTION_getInitialDisplayDensity:I = 0xa

.field static final greylist-max-o TRANSACTION_getInitialDisplaySize:I = 0x6

.field static final greylist-max-o TRANSACTION_getNavBarPosition:I = 0x47

.field static final blacklist TRANSACTION_getPossibleDisplayInfo:I = 0x6f

.field static final greylist-max-o TRANSACTION_getPreferredOptionsPanelGravity:I = 0x32

.field static final blacklist TRANSACTION_getRemoveContentMode:I = 0x60

.field static final greylist-max-o TRANSACTION_getStableInsets:I = 0x51

.field static final blacklist TRANSACTION_getSupportedDisplayHashAlgorithms:I = 0x74

.field static final greylist-max-o TRANSACTION_getWindowContentFrameStats:I = 0x4c

.field static final blacklist TRANSACTION_getWindowInsets:I = 0x6e

.field static final blacklist TRANSACTION_getWindowingMode:I = 0x5e

.field static final greylist-max-o TRANSACTION_hasNavigationBar:I = 0x46

.field static final blacklist TRANSACTION_hideTransientBars:I = 0x42

.field static final blacklist TRANSACTION_holdLock:I = 0x73

.field static final blacklist TRANSACTION_isDisplayRotationFrozen:I = 0x38

.field static final greylist-max-o TRANSACTION_isKeyguardLocked:I = 0x1e

.field static final greylist-max-o TRANSACTION_isKeyguardSecure:I = 0x1f

.field static final blacklist TRANSACTION_isLayerTracing:I = 0x69

.field static final greylist-max-o TRANSACTION_isRotationFrozen:I = 0x35

.field static final greylist-max-o TRANSACTION_isSafeModeEnabled:I = 0x49

.field static final blacklist TRANSACTION_isTaskSnapshotSupported:I = 0x7d

.field static final greylist-max-o TRANSACTION_isViewServerRunning:I = 0x3

.field static final blacklist TRANSACTION_isWindowToken:I = 0x10

.field static final greylist-max-o TRANSACTION_isWindowTraceEnabled:I = 0x5d

.field static final greylist-max-o TRANSACTION_lockNow:I = 0x48

.field static final blacklist TRANSACTION_mirrorDisplay:I = 0x6b

.field static final blacklist TRANSACTION_mirrorWallpaperSurface:I = 0x3c

.field static final greylist-max-o TRANSACTION_openSession:I = 0x4

.field static final greylist-max-o TRANSACTION_overridePendingAppTransitionMultiThumbFuture:I = 0x16

.field static final greylist-max-o TRANSACTION_overridePendingAppTransitionRemote:I = 0x17

.field static final greylist-max-o TRANSACTION_reenableKeyguard:I = 0x1c

.field static final greylist-max-o TRANSACTION_refreshScreenCaptureDisabled:I = 0x2d

.field static final blacklist TRANSACTION_registerCrossWindowBlurEnabledListener:I = 0x7b

.field static final blacklist TRANSACTION_registerDisplayFoldListener:I = 0x56

.field static final blacklist TRANSACTION_registerDisplayWindowListener:I = 0x58

.field static final blacklist TRANSACTION_registerPinnedTaskListener:I = 0x4f

.field static final greylist-max-o TRANSACTION_registerShortcutKey:I = 0x52

.field static final blacklist TRANSACTION_registerSystemGestureExclusionListener:I = 0x3f

.field static final blacklist TRANSACTION_registerTaskFpsCallback:I = 0x82

.field static final greylist-max-o TRANSACTION_registerWallpaperVisibilityListener:I = 0x3d

.field static final blacklist TRANSACTION_removeKeyguardLockedStateListener:I = 0x22

.field static final greylist-max-o TRANSACTION_removeRotationWatcher:I = 0x31

.field static final greylist-max-o TRANSACTION_removeWindowToken:I = 0x12

.field static final greylist-max-o TRANSACTION_requestAppKeyboardShortcuts:I = 0x50

.field static final greylist-max-o TRANSACTION_requestAssistScreenshot:I = 0x41

.field static final blacklist TRANSACTION_requestScrollCapture:I = 0x72

.field static final blacklist TRANSACTION_saveWindowTraceToFile:I = 0x5c

.field static final greylist-max-o TRANSACTION_screenshotWallpaper:I = 0x3b

.field static final greylist-max-o TRANSACTION_setAnimationScale:I = 0x27

.field static final greylist-max-o TRANSACTION_setAnimationScales:I = 0x28

.field static final blacklist TRANSACTION_setDisplayHashThrottlingEnabled:I = 0x76

.field static final blacklist TRANSACTION_setDisplayImePolicy:I = 0x67

.field static final blacklist TRANSACTION_setDisplayWindowInsetsController:I = 0x6c

.field static final blacklist TRANSACTION_setDisplayWindowRotationController:I = 0x13

.field static final blacklist TRANSACTION_setDockedTaskDividerTouchRegion:I = 0x4e

.field static final greylist-max-o TRANSACTION_setEventDispatching:I = 0xf

.field static final blacklist TRANSACTION_setFixedToUserRotation:I = 0x39

.field static final greylist-max-o TRANSACTION_setForcedDisplayDensityForUser:I = 0xc

.field static final greylist-max-o TRANSACTION_setForcedDisplayScalingMode:I = 0xe

.field static final greylist-max-o TRANSACTION_setForcedDisplaySize:I = 0x8

.field static final blacklist TRANSACTION_setIgnoreOrientationRequest:I = 0x3a

.field static final greylist-max-o TRANSACTION_setInTouchMode:I = 0x2a

.field static final blacklist TRANSACTION_setLayerTracing:I = 0x6a

.field static final blacklist TRANSACTION_setLayerTracingFlags:I = 0x71

.field static final greylist-max-o TRANSACTION_setNavBarVirtualKeyHapticFeedbackEnabled:I = 0x45

.field static final blacklist TRANSACTION_setRecentsAppBehindSystemBars:I = 0x85

.field static final greylist-max-o TRANSACTION_setRecentsVisibility:I = 0x43

.field static final blacklist TRANSACTION_setRemoveContentMode:I = 0x61

.field static final blacklist TRANSACTION_setShellRootAccessibilityWindow:I = 0x15

.field static final blacklist TRANSACTION_setShouldShowSystemDecors:I = 0x65

.field static final blacklist TRANSACTION_setShouldShowWithInsecureKeyguard:I = 0x63

.field static final greylist-max-o TRANSACTION_setStrictModeVisualIndicatorPreference:I = 0x2c

.field static final greylist-max-o TRANSACTION_setSwitchingUser:I = 0x23

.field static final blacklist TRANSACTION_setTaskSnapshotEnabled:I = 0x7f

.field static final blacklist TRANSACTION_setTaskTransitionSpec:I = 0x80

.field static final blacklist TRANSACTION_setWindowingMode:I = 0x5f

.field static final blacklist TRANSACTION_shouldShowSystemDecors:I = 0x64

.field static final blacklist TRANSACTION_shouldShowWithInsecureKeyguard:I = 0x62

.field static final blacklist TRANSACTION_showGlobalActions:I = 0x70

.field static final greylist-max-o TRANSACTION_showStrictModeViolation:I = 0x2b

.field static final blacklist TRANSACTION_snapshotTaskForRecents:I = 0x84

.field static final greylist-max-o TRANSACTION_startFreezingScreen:I = 0x19

.field static final greylist-max-o TRANSACTION_startViewServer:I = 0x1

.field static final greylist-max-o TRANSACTION_startWindowTrace:I = 0x5a

.field static final greylist-max-o TRANSACTION_stopFreezingScreen:I = 0x1a

.field static final greylist-max-o TRANSACTION_stopViewServer:I = 0x2

.field static final greylist-max-o TRANSACTION_stopWindowTrace:I = 0x5b

.field static final blacklist TRANSACTION_syncInputTransactions:I = 0x68

.field static final blacklist TRANSACTION_thawDisplayRotation:I = 0x37

.field static final greylist-max-o TRANSACTION_thawRotation:I = 0x34

.field static final blacklist TRANSACTION_unregisterCrossWindowBlurEnabledListener:I = 0x7c

.field static final blacklist TRANSACTION_unregisterDisplayFoldListener:I = 0x57

.field static final blacklist TRANSACTION_unregisterDisplayWindowListener:I = 0x59

.field static final blacklist TRANSACTION_unregisterSystemGestureExclusionListener:I = 0x40

.field static final blacklist TRANSACTION_unregisterTaskFpsCallback:I = 0x83

.field static final greylist-max-o TRANSACTION_unregisterWallpaperVisibilityListener:I = 0x3e

.field static final blacklist TRANSACTION_updateDisplayWindowRequestedVisibilities:I = 0x6d

.field static final greylist-max-o TRANSACTION_updateRotation:I = 0x2e

.field static final blacklist TRANSACTION_updateStaticPrivacyIndicatorBounds:I = 0x44

.field static final blacklist TRANSACTION_useBLAST:I = 0x5

.field static final blacklist TRANSACTION_verifyDisplayHash:I = 0x75

.field static final greylist-max-o TRANSACTION_watchRotation:I = 0x30


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 999
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1000
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1001
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 1008
    if-nez p0, :cond_0

    .line 1009
    const/4 v0, 0x0

    return-object v0

    .line 1011
    :cond_0
    const-string v0, "android.view.IWindowManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1012
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IWindowManager;

    if-eqz v1, :cond_1

    .line 1013
    move-object v1, v0

    check-cast v1, Landroid/view/IWindowManager;

    return-object v1

    .line 1015
    :cond_1
    new-instance v1, Landroid/view/IWindowManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 1024
    packed-switch p0, :pswitch_data_0

    .line 1560
    const/4 v0, 0x0

    return-object v0

    .line 1556
    :pswitch_0
    const-string/jumbo v0, "setRecentsAppBehindSystemBars"

    return-object v0

    .line 1552
    :pswitch_1
    const-string/jumbo v0, "snapshotTaskForRecents"

    return-object v0

    .line 1548
    :pswitch_2
    const-string/jumbo v0, "unregisterTaskFpsCallback"

    return-object v0

    .line 1544
    :pswitch_3
    const-string/jumbo v0, "registerTaskFpsCallback"

    return-object v0

    .line 1540
    :pswitch_4
    const-string v0, "clearTaskTransitionSpec"

    return-object v0

    .line 1536
    :pswitch_5
    const-string/jumbo v0, "setTaskTransitionSpec"

    return-object v0

    .line 1532
    :pswitch_6
    const-string/jumbo v0, "setTaskSnapshotEnabled"

    return-object v0

    .line 1528
    :pswitch_7
    const-string v0, "getImeDisplayId"

    return-object v0

    .line 1524
    :pswitch_8
    const-string/jumbo v0, "isTaskSnapshotSupported"

    return-object v0

    .line 1520
    :pswitch_9
    const-string/jumbo v0, "unregisterCrossWindowBlurEnabledListener"

    return-object v0

    .line 1516
    :pswitch_a
    const-string/jumbo v0, "registerCrossWindowBlurEnabledListener"

    return-object v0

    .line 1512
    :pswitch_b
    const-string v0, "detachWindowContextFromWindowContainer"

    return-object v0

    .line 1508
    :pswitch_c
    const-string v0, "attachToDisplayContent"

    return-object v0

    .line 1504
    :pswitch_d
    const-string v0, "attachWindowContextToWindowToken"

    return-object v0

    .line 1500
    :pswitch_e
    const-string v0, "attachWindowContextToDisplayArea"

    return-object v0

    .line 1496
    :pswitch_f
    const-string/jumbo v0, "setDisplayHashThrottlingEnabled"

    return-object v0

    .line 1492
    :pswitch_10
    const-string/jumbo v0, "verifyDisplayHash"

    return-object v0

    .line 1488
    :pswitch_11
    const-string/jumbo v0, "getSupportedDisplayHashAlgorithms"

    return-object v0

    .line 1484
    :pswitch_12
    const-string/jumbo v0, "holdLock"

    return-object v0

    .line 1480
    :pswitch_13
    const-string/jumbo v0, "requestScrollCapture"

    return-object v0

    .line 1476
    :pswitch_14
    const-string/jumbo v0, "setLayerTracingFlags"

    return-object v0

    .line 1472
    :pswitch_15
    const-string/jumbo v0, "showGlobalActions"

    return-object v0

    .line 1468
    :pswitch_16
    const-string v0, "getPossibleDisplayInfo"

    return-object v0

    .line 1464
    :pswitch_17
    const-string/jumbo v0, "getWindowInsets"

    return-object v0

    .line 1460
    :pswitch_18
    const-string/jumbo v0, "updateDisplayWindowRequestedVisibilities"

    return-object v0

    .line 1456
    :pswitch_19
    const-string/jumbo v0, "setDisplayWindowInsetsController"

    return-object v0

    .line 1452
    :pswitch_1a
    const-string/jumbo v0, "mirrorDisplay"

    return-object v0

    .line 1448
    :pswitch_1b
    const-string/jumbo v0, "setLayerTracing"

    return-object v0

    .line 1444
    :pswitch_1c
    const-string/jumbo v0, "isLayerTracing"

    return-object v0

    .line 1440
    :pswitch_1d
    const-string/jumbo v0, "syncInputTransactions"

    return-object v0

    .line 1436
    :pswitch_1e
    const-string/jumbo v0, "setDisplayImePolicy"

    return-object v0

    .line 1432
    :pswitch_1f
    const-string v0, "getDisplayImePolicy"

    return-object v0

    .line 1428
    :pswitch_20
    const-string/jumbo v0, "setShouldShowSystemDecors"

    return-object v0

    .line 1424
    :pswitch_21
    const-string/jumbo v0, "shouldShowSystemDecors"

    return-object v0

    .line 1420
    :pswitch_22
    const-string/jumbo v0, "setShouldShowWithInsecureKeyguard"

    return-object v0

    .line 1416
    :pswitch_23
    const-string/jumbo v0, "shouldShowWithInsecureKeyguard"

    return-object v0

    .line 1412
    :pswitch_24
    const-string/jumbo v0, "setRemoveContentMode"

    return-object v0

    .line 1408
    :pswitch_25
    const-string v0, "getRemoveContentMode"

    return-object v0

    .line 1404
    :pswitch_26
    const-string/jumbo v0, "setWindowingMode"

    return-object v0

    .line 1400
    :pswitch_27
    const-string/jumbo v0, "getWindowingMode"

    return-object v0

    .line 1396
    :pswitch_28
    const-string/jumbo v0, "isWindowTraceEnabled"

    return-object v0

    .line 1392
    :pswitch_29
    const-string/jumbo v0, "saveWindowTraceToFile"

    return-object v0

    .line 1388
    :pswitch_2a
    const-string/jumbo v0, "stopWindowTrace"

    return-object v0

    .line 1384
    :pswitch_2b
    const-string/jumbo v0, "startWindowTrace"

    return-object v0

    .line 1380
    :pswitch_2c
    const-string/jumbo v0, "unregisterDisplayWindowListener"

    return-object v0

    .line 1376
    :pswitch_2d
    const-string/jumbo v0, "registerDisplayWindowListener"

    return-object v0

    .line 1372
    :pswitch_2e
    const-string/jumbo v0, "unregisterDisplayFoldListener"

    return-object v0

    .line 1368
    :pswitch_2f
    const-string/jumbo v0, "registerDisplayFoldListener"

    return-object v0

    .line 1364
    :pswitch_30
    const-string v0, "getCurrentImeTouchRegion"

    return-object v0

    .line 1360
    :pswitch_31
    const-string v0, "destroyInputConsumer"

    return-object v0

    .line 1356
    :pswitch_32
    const-string v0, "createInputConsumer"

    return-object v0

    .line 1352
    :pswitch_33
    const-string/jumbo v0, "registerShortcutKey"

    return-object v0

    .line 1348
    :pswitch_34
    const-string v0, "getStableInsets"

    return-object v0

    .line 1344
    :pswitch_35
    const-string/jumbo v0, "requestAppKeyboardShortcuts"

    return-object v0

    .line 1340
    :pswitch_36
    const-string/jumbo v0, "registerPinnedTaskListener"

    return-object v0

    .line 1336
    :pswitch_37
    const-string/jumbo v0, "setDockedTaskDividerTouchRegion"

    return-object v0

    .line 1332
    :pswitch_38
    const-string v0, "getDockedStackSide"

    return-object v0

    .line 1328
    :pswitch_39
    const-string/jumbo v0, "getWindowContentFrameStats"

    return-object v0

    .line 1324
    :pswitch_3a
    const-string v0, "clearWindowContentFrameStats"

    return-object v0

    .line 1320
    :pswitch_3b
    const-string v0, "enableScreenIfNeeded"

    return-object v0

    .line 1316
    :pswitch_3c
    const-string/jumbo v0, "isSafeModeEnabled"

    return-object v0

    .line 1312
    :pswitch_3d
    const-string/jumbo v0, "lockNow"

    return-object v0

    .line 1308
    :pswitch_3e
    const-string v0, "getNavBarPosition"

    return-object v0

    .line 1304
    :pswitch_3f
    const-string/jumbo v0, "hasNavigationBar"

    return-object v0

    .line 1300
    :pswitch_40
    const-string/jumbo v0, "setNavBarVirtualKeyHapticFeedbackEnabled"

    return-object v0

    .line 1296
    :pswitch_41
    const-string/jumbo v0, "updateStaticPrivacyIndicatorBounds"

    return-object v0

    .line 1292
    :pswitch_42
    const-string/jumbo v0, "setRecentsVisibility"

    return-object v0

    .line 1288
    :pswitch_43
    const-string/jumbo v0, "hideTransientBars"

    return-object v0

    .line 1284
    :pswitch_44
    const-string/jumbo v0, "requestAssistScreenshot"

    return-object v0

    .line 1280
    :pswitch_45
    const-string/jumbo v0, "unregisterSystemGestureExclusionListener"

    return-object v0

    .line 1276
    :pswitch_46
    const-string/jumbo v0, "registerSystemGestureExclusionListener"

    return-object v0

    .line 1272
    :pswitch_47
    const-string/jumbo v0, "unregisterWallpaperVisibilityListener"

    return-object v0

    .line 1268
    :pswitch_48
    const-string/jumbo v0, "registerWallpaperVisibilityListener"

    return-object v0

    .line 1264
    :pswitch_49
    const-string/jumbo v0, "mirrorWallpaperSurface"

    return-object v0

    .line 1260
    :pswitch_4a
    const-string/jumbo v0, "screenshotWallpaper"

    return-object v0

    .line 1256
    :pswitch_4b
    const-string/jumbo v0, "setIgnoreOrientationRequest"

    return-object v0

    .line 1252
    :pswitch_4c
    const-string/jumbo v0, "setFixedToUserRotation"

    return-object v0

    .line 1248
    :pswitch_4d
    const-string/jumbo v0, "isDisplayRotationFrozen"

    return-object v0

    .line 1244
    :pswitch_4e
    const-string/jumbo v0, "thawDisplayRotation"

    return-object v0

    .line 1240
    :pswitch_4f
    const-string v0, "freezeDisplayRotation"

    return-object v0

    .line 1236
    :pswitch_50
    const-string/jumbo v0, "isRotationFrozen"

    return-object v0

    .line 1232
    :pswitch_51
    const-string/jumbo v0, "thawRotation"

    return-object v0

    .line 1228
    :pswitch_52
    const-string v0, "freezeRotation"

    return-object v0

    .line 1224
    :pswitch_53
    const-string v0, "getPreferredOptionsPanelGravity"

    return-object v0

    .line 1220
    :pswitch_54
    const-string/jumbo v0, "removeRotationWatcher"

    return-object v0

    .line 1216
    :pswitch_55
    const-string/jumbo v0, "watchRotation"

    return-object v0

    .line 1212
    :pswitch_56
    const-string v0, "getDefaultDisplayRotation"

    return-object v0

    .line 1208
    :pswitch_57
    const-string/jumbo v0, "updateRotation"

    return-object v0

    .line 1204
    :pswitch_58
    const-string/jumbo v0, "refreshScreenCaptureDisabled"

    return-object v0

    .line 1200
    :pswitch_59
    const-string/jumbo v0, "setStrictModeVisualIndicatorPreference"

    return-object v0

    .line 1196
    :pswitch_5a
    const-string/jumbo v0, "showStrictModeViolation"

    return-object v0

    .line 1192
    :pswitch_5b
    const-string/jumbo v0, "setInTouchMode"

    return-object v0

    .line 1188
    :pswitch_5c
    const-string v0, "getCurrentAnimatorScale"

    return-object v0

    .line 1184
    :pswitch_5d
    const-string/jumbo v0, "setAnimationScales"

    return-object v0

    .line 1180
    :pswitch_5e
    const-string/jumbo v0, "setAnimationScale"

    return-object v0

    .line 1176
    :pswitch_5f
    const-string v0, "getAnimationScales"

    return-object v0

    .line 1172
    :pswitch_60
    const-string v0, "getAnimationScale"

    return-object v0

    .line 1168
    :pswitch_61
    const-string v0, "closeSystemDialogs"

    return-object v0

    .line 1164
    :pswitch_62
    const-string/jumbo v0, "setSwitchingUser"

    return-object v0

    .line 1160
    :pswitch_63
    const-string/jumbo v0, "removeKeyguardLockedStateListener"

    return-object v0

    .line 1156
    :pswitch_64
    const-string v0, "addKeyguardLockedStateListener"

    return-object v0

    .line 1152
    :pswitch_65
    const-string v0, "dismissKeyguard"

    return-object v0

    .line 1148
    :pswitch_66
    const-string/jumbo v0, "isKeyguardSecure"

    return-object v0

    .line 1144
    :pswitch_67
    const-string/jumbo v0, "isKeyguardLocked"

    return-object v0

    .line 1140
    :pswitch_68
    const-string v0, "exitKeyguardSecurely"

    return-object v0

    .line 1136
    :pswitch_69
    const-string/jumbo v0, "reenableKeyguard"

    return-object v0

    .line 1132
    :pswitch_6a
    const-string v0, "disableKeyguard"

    return-object v0

    .line 1128
    :pswitch_6b
    const-string/jumbo v0, "stopFreezingScreen"

    return-object v0

    .line 1124
    :pswitch_6c
    const-string/jumbo v0, "startFreezingScreen"

    return-object v0

    .line 1120
    :pswitch_6d
    const-string v0, "endProlongedAnimations"

    return-object v0

    .line 1116
    :pswitch_6e
    const-string/jumbo v0, "overridePendingAppTransitionRemote"

    return-object v0

    .line 1112
    :pswitch_6f
    const-string/jumbo v0, "overridePendingAppTransitionMultiThumbFuture"

    return-object v0

    .line 1108
    :pswitch_70
    const-string/jumbo v0, "setShellRootAccessibilityWindow"

    return-object v0

    .line 1104
    :pswitch_71
    const-string v0, "addShellRoot"

    return-object v0

    .line 1100
    :pswitch_72
    const-string/jumbo v0, "setDisplayWindowRotationController"

    return-object v0

    .line 1096
    :pswitch_73
    const-string/jumbo v0, "removeWindowToken"

    return-object v0

    .line 1092
    :pswitch_74
    const-string v0, "addWindowToken"

    return-object v0

    .line 1088
    :pswitch_75
    const-string/jumbo v0, "isWindowToken"

    return-object v0

    .line 1084
    :pswitch_76
    const-string/jumbo v0, "setEventDispatching"

    return-object v0

    .line 1080
    :pswitch_77
    const-string/jumbo v0, "setForcedDisplayScalingMode"

    return-object v0

    .line 1076
    :pswitch_78
    const-string v0, "clearForcedDisplayDensityForUser"

    return-object v0

    .line 1072
    :pswitch_79
    const-string/jumbo v0, "setForcedDisplayDensityForUser"

    return-object v0

    .line 1068
    :pswitch_7a
    const-string v0, "getBaseDisplayDensity"

    return-object v0

    .line 1064
    :pswitch_7b
    const-string v0, "getInitialDisplayDensity"

    return-object v0

    .line 1060
    :pswitch_7c
    const-string v0, "clearForcedDisplaySize"

    return-object v0

    .line 1056
    :pswitch_7d
    const-string/jumbo v0, "setForcedDisplaySize"

    return-object v0

    .line 1052
    :pswitch_7e
    const-string v0, "getBaseDisplaySize"

    return-object v0

    .line 1048
    :pswitch_7f
    const-string v0, "getInitialDisplaySize"

    return-object v0

    .line 1044
    :pswitch_80
    const-string/jumbo v0, "useBLAST"

    return-object v0

    .line 1040
    :pswitch_81
    const-string/jumbo v0, "openSession"

    return-object v0

    .line 1036
    :pswitch_82
    const-string/jumbo v0, "isViewServerRunning"

    return-object v0

    .line 1032
    :pswitch_83
    const-string/jumbo v0, "stopViewServer"

    return-object v0

    .line 1028
    :pswitch_84
    const-string/jumbo v0, "startViewServer"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1019
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 5761
    const/16 v0, 0x84

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 1567
    invoke-static {p1}, Landroid/view/IWindowManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1571
    const-string v0, "android.view.IWindowManager"

    .line 1572
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 1573
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1575
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1583
    packed-switch p1, :pswitch_data_1

    .line 2886
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1579
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1580
    return v1

    .line 2878
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2879
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2880
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setRecentsAppBehindSystemBars(Z)V

    .line 2881
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2882
    goto/16 :goto_0

    .line 2868
    .end local v2    # "_arg0":Z
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2869
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2870
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->snapshotTaskForRecents(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2871
    .local v3, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2872
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2873
    goto/16 :goto_0

    .line 2859
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/graphics/Bitmap;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/ITaskFpsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFpsCallback;

    move-result-object v2

    .line 2860
    .local v2, "_arg0":Landroid/window/ITaskFpsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2861
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->unregisterTaskFpsCallback(Landroid/window/ITaskFpsCallback;)V

    .line 2862
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2863
    goto/16 :goto_0

    .line 2848
    .end local v2    # "_arg0":Landroid/window/ITaskFpsCallback;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2850
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/window/ITaskFpsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFpsCallback;

    move-result-object v3

    .line 2851
    .local v3, "_arg1":Landroid/window/ITaskFpsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2852
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->registerTaskFpsCallback(ILandroid/window/ITaskFpsCallback;)V

    .line 2853
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2854
    goto/16 :goto_0

    .line 2841
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/window/ITaskFpsCallback;
    :pswitch_5
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->clearTaskTransitionSpec()V

    .line 2842
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2843
    goto/16 :goto_0

    .line 2833
    :pswitch_6
    sget-object v2, Landroid/view/TaskTransitionSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/TaskTransitionSpec;

    .line 2834
    .local v2, "_arg0":Landroid/view/TaskTransitionSpec;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2835
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setTaskTransitionSpec(Landroid/view/TaskTransitionSpec;)V

    .line 2836
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2837
    goto/16 :goto_0

    .line 2824
    .end local v2    # "_arg0":Landroid/view/TaskTransitionSpec;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2825
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2826
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setTaskSnapshotEnabled(Z)V

    .line 2827
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2828
    goto/16 :goto_0

    .line 2816
    .end local v2    # "_arg0":Z
    :pswitch_8
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getImeDisplayId()I

    move-result v2

    .line 2817
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2818
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2819
    goto/16 :goto_0

    .line 2809
    .end local v2    # "_result":I
    :pswitch_9
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isTaskSnapshotSupported()Z

    move-result v2

    .line 2810
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2811
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2812
    goto/16 :goto_0

    .line 2801
    .end local v2    # "_result":Z
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ICrossWindowBlurEnabledListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ICrossWindowBlurEnabledListener;

    move-result-object v2

    .line 2802
    .local v2, "_arg0":Landroid/view/ICrossWindowBlurEnabledListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2803
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->unregisterCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)V

    .line 2804
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2805
    goto/16 :goto_0

    .line 2791
    .end local v2    # "_arg0":Landroid/view/ICrossWindowBlurEnabledListener;
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ICrossWindowBlurEnabledListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ICrossWindowBlurEnabledListener;

    move-result-object v2

    .line 2792
    .restart local v2    # "_arg0":Landroid/view/ICrossWindowBlurEnabledListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2793
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->registerCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)Z

    move-result v3

    .line 2794
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2795
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2796
    goto/16 :goto_0

    .line 2782
    .end local v2    # "_arg0":Landroid/view/ICrossWindowBlurEnabledListener;
    .end local v3    # "_result":Z
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2783
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2784
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->detachWindowContextFromWindowContainer(Landroid/os/IBinder;)V

    .line 2785
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2786
    goto/16 :goto_0

    .line 2770
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2772
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2773
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2774
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->attachToDisplayContent(Landroid/os/IBinder;I)Landroid/content/res/Configuration;

    move-result-object v4

    .line 2775
    .local v4, "_result":Landroid/content/res/Configuration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2776
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2777
    goto/16 :goto_0

    .line 2759
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/content/res/Configuration;
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2761
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 2762
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2763
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->attachWindowContextToWindowToken(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 2764
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2765
    goto/16 :goto_0

    .line 2743
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2745
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2747
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2749
    .local v4, "_arg2":I
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 2750
    .local v5, "_arg3":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2751
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/IWindowManager$Stub;->attachWindowContextToDisplayArea(Landroid/os/IBinder;IILandroid/os/Bundle;)Landroid/content/res/Configuration;

    move-result-object v6

    .line 2752
    .local v6, "_result":Landroid/content/res/Configuration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2753
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2754
    goto/16 :goto_0

    .line 2734
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/Bundle;
    .end local v6    # "_result":Landroid/content/res/Configuration;
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2735
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2736
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setDisplayHashThrottlingEnabled(Z)V

    .line 2737
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2738
    goto/16 :goto_0

    .line 2724
    .end local v2    # "_arg0":Z
    :pswitch_11
    sget-object v2, Landroid/view/displayhash/DisplayHash;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/displayhash/DisplayHash;

    .line 2725
    .local v2, "_arg0":Landroid/view/displayhash/DisplayHash;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2726
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->verifyDisplayHash(Landroid/view/displayhash/DisplayHash;)Landroid/view/displayhash/VerifiedDisplayHash;

    move-result-object v3

    .line 2727
    .local v3, "_result":Landroid/view/displayhash/VerifiedDisplayHash;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2728
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2729
    goto/16 :goto_0

    .line 2716
    .end local v2    # "_arg0":Landroid/view/displayhash/DisplayHash;
    .end local v3    # "_result":Landroid/view/displayhash/VerifiedDisplayHash;
    :pswitch_12
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getSupportedDisplayHashAlgorithms()[Ljava/lang/String;

    move-result-object v2

    .line 2717
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2718
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2719
    goto/16 :goto_0

    .line 2706
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2708
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2709
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2710
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->holdLock(Landroid/os/IBinder;I)V

    .line 2711
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2712
    goto/16 :goto_0

    .line 2691
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2693
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 2695
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2697
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IScrollCaptureResponseListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IScrollCaptureResponseListener;

    move-result-object v5

    .line 2698
    .local v5, "_arg3":Landroid/view/IScrollCaptureResponseListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2699
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/IWindowManager$Stub;->requestScrollCapture(ILandroid/os/IBinder;ILandroid/view/IScrollCaptureResponseListener;)V

    .line 2700
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2701
    goto/16 :goto_0

    .line 2682
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/view/IScrollCaptureResponseListener;
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2683
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2684
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setLayerTracingFlags(I)V

    .line 2685
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2686
    goto/16 :goto_0

    .line 2675
    .end local v2    # "_arg0":I
    :pswitch_16
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->showGlobalActions()V

    .line 2676
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2677
    goto/16 :goto_0

    .line 2664
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2666
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2667
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2668
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->getPossibleDisplayInfo(ILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 2669
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/DisplayInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2670
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2671
    goto/16 :goto_0

    .line 2649
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/DisplayInfo;>;"
    :pswitch_18
    sget-object v2, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 2651
    .local v2, "_arg0":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2653
    .local v3, "_arg1":I
    new-instance v4, Landroid/view/InsetsState;

    invoke-direct {v4}, Landroid/view/InsetsState;-><init>()V

    .line 2654
    .local v4, "_arg2":Landroid/view/InsetsState;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2655
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->getWindowInsets(Landroid/view/WindowManager$LayoutParams;ILandroid/view/InsetsState;)Z

    move-result v5

    .line 2656
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2657
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2658
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2659
    goto/16 :goto_0

    .line 2638
    .end local v2    # "_arg0":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/view/InsetsState;
    .end local v5    # "_result":Z
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2640
    .local v2, "_arg0":I
    sget-object v3, Landroid/view/InsetsVisibilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsVisibilities;

    .line 2641
    .local v3, "_arg1":Landroid/view/InsetsVisibilities;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2642
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->updateDisplayWindowRequestedVisibilities(ILandroid/view/InsetsVisibilities;)V

    .line 2643
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2644
    goto/16 :goto_0

    .line 2627
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/view/InsetsVisibilities;
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2629
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IDisplayWindowInsetsController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowInsetsController;

    move-result-object v3

    .line 2630
    .local v3, "_arg1":Landroid/view/IDisplayWindowInsetsController;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2631
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setDisplayWindowInsetsController(ILandroid/view/IDisplayWindowInsetsController;)V

    .line 2632
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2633
    goto/16 :goto_0

    .line 2614
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/view/IDisplayWindowInsetsController;
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2616
    .restart local v2    # "_arg0":I
    new-instance v3, Landroid/view/SurfaceControl;

    invoke-direct {v3}, Landroid/view/SurfaceControl;-><init>()V

    .line 2617
    .local v3, "_arg1":Landroid/view/SurfaceControl;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2618
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->mirrorDisplay(ILandroid/view/SurfaceControl;)Z

    move-result v4

    .line 2619
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2620
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2621
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2622
    goto/16 :goto_0

    .line 2605
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/view/SurfaceControl;
    .end local v4    # "_result":Z
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2606
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2607
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setLayerTracing(Z)V

    .line 2608
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2609
    goto/16 :goto_0

    .line 2597
    .end local v2    # "_arg0":Z
    :pswitch_1d
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isLayerTracing()Z

    move-result v2

    .line 2598
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2599
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2600
    goto/16 :goto_0

    .line 2589
    .end local v2    # "_result":Z
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2590
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2591
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->syncInputTransactions(Z)V

    .line 2592
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2593
    goto/16 :goto_0

    .line 2578
    .end local v2    # "_arg0":Z
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2580
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2581
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2582
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setDisplayImePolicy(II)V

    .line 2583
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2584
    goto/16 :goto_0

    .line 2568
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2569
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2570
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getDisplayImePolicy(I)I

    move-result v3

    .line 2571
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2572
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2573
    goto/16 :goto_0

    .line 2557
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2559
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2560
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2561
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setShouldShowSystemDecors(IZ)V

    .line 2562
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2563
    goto/16 :goto_0

    .line 2547
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2548
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2549
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->shouldShowSystemDecors(I)Z

    move-result v3

    .line 2550
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2551
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2552
    goto/16 :goto_0

    .line 2536
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2538
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2539
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2540
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setShouldShowWithInsecureKeyguard(IZ)V

    .line 2541
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2542
    goto/16 :goto_0

    .line 2526
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2527
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2528
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->shouldShowWithInsecureKeyguard(I)Z

    move-result v3

    .line 2529
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2530
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2531
    goto/16 :goto_0

    .line 2515
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2517
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2518
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2519
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setRemoveContentMode(II)V

    .line 2520
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2521
    goto/16 :goto_0

    .line 2505
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2506
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2507
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getRemoveContentMode(I)I

    move-result v3

    .line 2508
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2509
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2510
    goto/16 :goto_0

    .line 2494
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2496
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2497
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2498
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setWindowingMode(II)V

    .line 2499
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2500
    goto/16 :goto_0

    .line 2484
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2485
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2486
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getWindowingMode(I)I

    move-result v3

    .line 2487
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2488
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2489
    goto/16 :goto_0

    .line 2476
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_29
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isWindowTraceEnabled()Z

    move-result v2

    .line 2477
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2478
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2479
    goto/16 :goto_0

    .line 2470
    .end local v2    # "_result":Z
    :pswitch_2a
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->saveWindowTraceToFile()V

    .line 2471
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2472
    goto/16 :goto_0

    .line 2464
    :pswitch_2b
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->stopWindowTrace()V

    .line 2465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2466
    goto/16 :goto_0

    .line 2458
    :pswitch_2c
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->startWindowTrace()V

    .line 2459
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2460
    goto/16 :goto_0

    .line 2450
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IDisplayWindowListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowListener;

    move-result-object v2

    .line 2451
    .local v2, "_arg0":Landroid/view/IDisplayWindowListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2452
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->unregisterDisplayWindowListener(Landroid/view/IDisplayWindowListener;)V

    .line 2453
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2454
    goto/16 :goto_0

    .line 2440
    .end local v2    # "_arg0":Landroid/view/IDisplayWindowListener;
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IDisplayWindowListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowListener;

    move-result-object v2

    .line 2441
    .restart local v2    # "_arg0":Landroid/view/IDisplayWindowListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2442
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->registerDisplayWindowListener(Landroid/view/IDisplayWindowListener;)[I

    move-result-object v3

    .line 2443
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2444
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2445
    goto/16 :goto_0

    .line 2431
    .end local v2    # "_arg0":Landroid/view/IDisplayWindowListener;
    .end local v3    # "_result":[I
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IDisplayFoldListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayFoldListener;

    move-result-object v2

    .line 2432
    .local v2, "_arg0":Landroid/view/IDisplayFoldListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2433
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    .line 2434
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2435
    goto/16 :goto_0

    .line 2422
    .end local v2    # "_arg0":Landroid/view/IDisplayFoldListener;
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IDisplayFoldListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayFoldListener;

    move-result-object v2

    .line 2423
    .restart local v2    # "_arg0":Landroid/view/IDisplayFoldListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2424
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    .line 2425
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2426
    goto/16 :goto_0

    .line 2414
    .end local v2    # "_arg0":Landroid/view/IDisplayFoldListener;
    :pswitch_31
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getCurrentImeTouchRegion()Landroid/graphics/Region;

    move-result-object v2

    .line 2415
    .local v2, "_result":Landroid/graphics/Region;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2416
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2417
    goto/16 :goto_0

    .line 2403
    .end local v2    # "_result":Landroid/graphics/Region;
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2405
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2406
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2407
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->destroyInputConsumer(Ljava/lang/String;I)Z

    move-result v4

    .line 2408
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2409
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2410
    goto/16 :goto_0

    .line 2387
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2389
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2391
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2393
    .local v4, "_arg2":I
    new-instance v5, Landroid/view/InputChannel;

    invoke-direct {v5}, Landroid/view/InputChannel;-><init>()V

    .line 2394
    .local v5, "_arg3":Landroid/view/InputChannel;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2395
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/IWindowManager$Stub;->createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;ILandroid/view/InputChannel;)V

    .line 2396
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2397
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2398
    goto/16 :goto_0

    .line 2376
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/view/InputChannel;
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 2378
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/policy/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IShortcutService;

    move-result-object v4

    .line 2379
    .local v4, "_arg1":Lcom/android/internal/policy/IShortcutService;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2380
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V

    .line 2381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2382
    goto/16 :goto_0

    .line 2364
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Lcom/android/internal/policy/IShortcutService;
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2366
    .local v2, "_arg0":I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 2367
    .local v3, "_arg1":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2368
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->getStableInsets(ILandroid/graphics/Rect;)V

    .line 2369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2370
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2371
    goto/16 :goto_0

    .line 2353
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/graphics/Rect;
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v2

    .line 2355
    .local v2, "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2356
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2357
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    .line 2358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2359
    goto/16 :goto_0

    .line 2342
    .end local v2    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    .end local v3    # "_arg1":I
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2344
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IPinnedTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IPinnedTaskListener;

    move-result-object v3

    .line 2345
    .local v3, "_arg1":Landroid/view/IPinnedTaskListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2346
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->registerPinnedTaskListener(ILandroid/view/IPinnedTaskListener;)V

    .line 2347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2348
    goto/16 :goto_0

    .line 2333
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/view/IPinnedTaskListener;
    :pswitch_38
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 2334
    .local v2, "_arg0":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2335
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setDockedTaskDividerTouchRegion(Landroid/graphics/Rect;)V

    .line 2336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2337
    goto/16 :goto_0

    .line 2325
    .end local v2    # "_arg0":Landroid/graphics/Rect;
    :pswitch_39
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getDockedStackSide()I

    move-result v2

    .line 2326
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2327
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2328
    goto/16 :goto_0

    .line 2316
    .end local v2    # "_result":I
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2317
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2318
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;

    move-result-object v3

    .line 2319
    .local v3, "_result":Landroid/view/WindowContentFrameStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2320
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2321
    goto/16 :goto_0

    .line 2306
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Landroid/view/WindowContentFrameStats;
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2307
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2308
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->clearWindowContentFrameStats(Landroid/os/IBinder;)Z

    move-result v3

    .line 2309
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2310
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2311
    goto/16 :goto_0

    .line 2299
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :pswitch_3c
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->enableScreenIfNeeded()V

    .line 2300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2301
    goto/16 :goto_0

    .line 2292
    :pswitch_3d
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isSafeModeEnabled()Z

    move-result v2

    .line 2293
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2294
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2295
    goto/16 :goto_0

    .line 2284
    .end local v2    # "_result":Z
    :pswitch_3e
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 2285
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2286
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->lockNow(Landroid/os/Bundle;)V

    .line 2287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2288
    goto/16 :goto_0

    .line 2274
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2275
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2276
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getNavBarPosition(I)I

    move-result v3

    .line 2277
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2278
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2279
    goto/16 :goto_0

    .line 2264
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2265
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2266
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->hasNavigationBar(I)Z

    move-result v3

    .line 2267
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2268
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2269
    goto/16 :goto_0

    .line 2255
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2256
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2257
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setNavBarVirtualKeyHapticFeedbackEnabled(Z)V

    .line 2258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2259
    goto/16 :goto_0

    .line 2245
    .end local v2    # "_arg0":Z
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2247
    .local v2, "_arg0":I
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/graphics/Rect;

    .line 2248
    .local v3, "_arg1":[Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2249
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->updateStaticPrivacyIndicatorBounds(I[Landroid/graphics/Rect;)V

    .line 2250
    goto/16 :goto_0

    .line 2237
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Landroid/graphics/Rect;
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2238
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2239
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setRecentsVisibility(Z)V

    .line 2240
    goto/16 :goto_0

    .line 2229
    .end local v2    # "_arg0":Z
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2230
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2231
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->hideTransientBars(I)V

    .line 2232
    goto/16 :goto_0

    .line 2219
    .end local v2    # "_arg0":I
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v2

    .line 2220
    .local v2, "_arg0":Landroid/app/IAssistDataReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2221
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->requestAssistScreenshot(Landroid/app/IAssistDataReceiver;)Z

    move-result v3

    .line 2222
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2223
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2224
    goto/16 :goto_0

    .line 2208
    .end local v2    # "_arg0":Landroid/app/IAssistDataReceiver;
    .end local v3    # "_result":Z
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ISystemGestureExclusionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ISystemGestureExclusionListener;

    move-result-object v2

    .line 2210
    .local v2, "_arg0":Landroid/view/ISystemGestureExclusionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2211
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2212
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V

    .line 2213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2214
    goto/16 :goto_0

    .line 2197
    .end local v2    # "_arg0":Landroid/view/ISystemGestureExclusionListener;
    .end local v3    # "_arg1":I
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ISystemGestureExclusionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ISystemGestureExclusionListener;

    move-result-object v2

    .line 2199
    .restart local v2    # "_arg0":Landroid/view/ISystemGestureExclusionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2200
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2201
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V

    .line 2202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2203
    goto/16 :goto_0

    .line 2186
    .end local v2    # "_arg0":Landroid/view/ISystemGestureExclusionListener;
    .end local v3    # "_arg1":I
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWallpaperVisibilityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWallpaperVisibilityListener;

    move-result-object v2

    .line 2188
    .local v2, "_arg0":Landroid/view/IWallpaperVisibilityListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2189
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2190
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->unregisterWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V

    .line 2191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2192
    goto/16 :goto_0

    .line 2174
    .end local v2    # "_arg0":Landroid/view/IWallpaperVisibilityListener;
    .end local v3    # "_arg1":I
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWallpaperVisibilityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWallpaperVisibilityListener;

    move-result-object v2

    .line 2176
    .restart local v2    # "_arg0":Landroid/view/IWallpaperVisibilityListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2177
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2178
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)Z

    move-result v4

    .line 2179
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2180
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2181
    goto/16 :goto_0

    .line 2164
    .end local v2    # "_arg0":Landroid/view/IWallpaperVisibilityListener;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2165
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2166
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->mirrorWallpaperSurface(I)Landroid/view/SurfaceControl;

    move-result-object v3

    .line 2167
    .local v3, "_result":Landroid/view/SurfaceControl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2168
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2169
    goto/16 :goto_0

    .line 2156
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/view/SurfaceControl;
    :pswitch_4b
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->screenshotWallpaper()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2157
    .local v2, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2158
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2159
    goto/16 :goto_0

    .line 2146
    .end local v2    # "_result":Landroid/graphics/Bitmap;
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2148
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2149
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2150
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setIgnoreOrientationRequest(IZ)V

    .line 2151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2152
    goto/16 :goto_0

    .line 2135
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2137
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2138
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2139
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setFixedToUserRotation(II)V

    .line 2140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2141
    goto/16 :goto_0

    .line 2125
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2126
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2127
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->isDisplayRotationFrozen(I)Z

    move-result v3

    .line 2128
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2129
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2130
    goto/16 :goto_0

    .line 2116
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2117
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2118
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->thawDisplayRotation(I)V

    .line 2119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2120
    goto/16 :goto_0

    .line 2105
    .end local v2    # "_arg0":I
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2107
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2108
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2109
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->freezeDisplayRotation(II)V

    .line 2110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2111
    goto/16 :goto_0

    .line 2097
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_51
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isRotationFrozen()Z

    move-result v2

    .line 2098
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2099
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2100
    goto/16 :goto_0

    .line 2091
    .end local v2    # "_result":Z
    :pswitch_52
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->thawRotation()V

    .line 2092
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2093
    goto/16 :goto_0

    .line 2083
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2084
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2085
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->freezeRotation(I)V

    .line 2086
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2087
    goto/16 :goto_0

    .line 2073
    .end local v2    # "_arg0":I
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2074
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2075
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getPreferredOptionsPanelGravity(I)I

    move-result v3

    .line 2076
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2077
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2078
    goto/16 :goto_0

    .line 2064
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v2

    .line 2065
    .local v2, "_arg0":Landroid/view/IRotationWatcher;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2066
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 2067
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2068
    goto/16 :goto_0

    .line 2052
    .end local v2    # "_arg0":Landroid/view/IRotationWatcher;
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v2

    .line 2054
    .restart local v2    # "_arg0":Landroid/view/IRotationWatcher;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2055
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2056
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->watchRotation(Landroid/view/IRotationWatcher;I)I

    move-result v4

    .line 2057
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2058
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2059
    goto/16 :goto_0

    .line 2044
    .end local v2    # "_arg0":Landroid/view/IRotationWatcher;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_57
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getDefaultDisplayRotation()I

    move-result v2

    .line 2045
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2046
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2047
    goto/16 :goto_0

    .line 2034
    .end local v2    # "_result":I
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2036
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2037
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2038
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->updateRotation(ZZ)V

    .line 2039
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2040
    goto/16 :goto_0

    .line 2027
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :pswitch_59
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->refreshScreenCaptureDisabled()V

    .line 2028
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2029
    goto/16 :goto_0

    .line 2019
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2020
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2021
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 2022
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2023
    goto/16 :goto_0

    .line 2010
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2011
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2012
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->showStrictModeViolation(Z)V

    .line 2013
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2014
    goto/16 :goto_0

    .line 2001
    .end local v2    # "_arg0":Z
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2002
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2003
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setInTouchMode(Z)V

    .line 2004
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2005
    goto/16 :goto_0

    .line 1993
    .end local v2    # "_arg0":Z
    :pswitch_5d
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getCurrentAnimatorScale()F

    move-result v2

    .line 1994
    .local v2, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1995
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1996
    goto/16 :goto_0

    .line 1985
    .end local v2    # "_result":F
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    .line 1986
    .local v2, "_arg0":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1987
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setAnimationScales([F)V

    .line 1988
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1989
    goto/16 :goto_0

    .line 1974
    .end local v2    # "_arg0":[F
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1976
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 1977
    .local v3, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1978
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setAnimationScale(IF)V

    .line 1979
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1980
    goto/16 :goto_0

    .line 1966
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":F
    :pswitch_60
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getAnimationScales()[F

    move-result-object v2

    .line 1967
    .local v2, "_result":[F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1968
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 1969
    goto/16 :goto_0

    .line 1957
    .end local v2    # "_result":[F
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1958
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1959
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getAnimationScale(I)F

    move-result v3

    .line 1960
    .local v3, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1961
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1962
    goto/16 :goto_0

    .line 1948
    .end local v2    # "_arg0":I
    .end local v3    # "_result":F
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1949
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1950
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 1951
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1952
    goto/16 :goto_0

    .line 1939
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1940
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1941
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setSwitchingUser(Z)V

    .line 1942
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1943
    goto/16 :goto_0

    .line 1930
    .end local v2    # "_arg0":Z
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardLockedStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardLockedStateListener;

    move-result-object v2

    .line 1931
    .local v2, "_arg0":Lcom/android/internal/policy/IKeyguardLockedStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1932
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->removeKeyguardLockedStateListener(Lcom/android/internal/policy/IKeyguardLockedStateListener;)V

    .line 1933
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1934
    goto/16 :goto_0

    .line 1921
    .end local v2    # "_arg0":Lcom/android/internal/policy/IKeyguardLockedStateListener;
    :pswitch_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardLockedStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardLockedStateListener;

    move-result-object v2

    .line 1922
    .restart local v2    # "_arg0":Lcom/android/internal/policy/IKeyguardLockedStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1923
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->addKeyguardLockedStateListener(Lcom/android/internal/policy/IKeyguardLockedStateListener;)V

    .line 1924
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1925
    goto/16 :goto_0

    .line 1910
    .end local v2    # "_arg0":Lcom/android/internal/policy/IKeyguardLockedStateListener;
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDismissCallback;

    move-result-object v2

    .line 1912
    .local v2, "_arg0":Lcom/android/internal/policy/IKeyguardDismissCallback;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 1913
    .local v3, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1914
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 1915
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1916
    goto/16 :goto_0

    .line 1900
    .end local v2    # "_arg0":Lcom/android/internal/policy/IKeyguardDismissCallback;
    .end local v3    # "_arg1":Ljava/lang/CharSequence;
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1901
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1902
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->isKeyguardSecure(I)Z

    move-result v3

    .line 1903
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1904
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1905
    goto/16 :goto_0

    .line 1892
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_68
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isKeyguardLocked()Z

    move-result v2

    .line 1893
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1894
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1895
    goto/16 :goto_0

    .line 1884
    .end local v2    # "_result":Z
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IOnKeyguardExitResult$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOnKeyguardExitResult;

    move-result-object v2

    .line 1885
    .local v2, "_arg0":Landroid/view/IOnKeyguardExitResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1886
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V

    .line 1887
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1888
    goto/16 :goto_0

    .line 1873
    .end local v2    # "_arg0":Landroid/view/IOnKeyguardExitResult;
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1875
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1876
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1877
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->reenableKeyguard(Landroid/os/IBinder;I)V

    .line 1878
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1879
    goto/16 :goto_0

    .line 1860
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1862
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1864
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1865
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1866
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 1867
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1868
    goto/16 :goto_0

    .line 1853
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_6c
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->stopFreezingScreen()V

    .line 1854
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1855
    goto/16 :goto_0

    .line 1843
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1845
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1846
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1847
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->startFreezingScreen(II)V

    .line 1848
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1849
    goto/16 :goto_0

    .line 1836
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_6e
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->endProlongedAnimations()V

    .line 1837
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1838
    goto/16 :goto_0

    .line 1826
    :pswitch_6f
    sget-object v2, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/RemoteAnimationAdapter;

    .line 1828
    .local v2, "_arg0":Landroid/view/RemoteAnimationAdapter;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1829
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1830
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;I)V

    .line 1831
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1832
    goto/16 :goto_0

    .line 1811
    .end local v2    # "_arg0":Landroid/view/RemoteAnimationAdapter;
    .end local v3    # "_arg1":I
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v2

    .line 1813
    .local v2, "_arg0":Landroid/view/IAppTransitionAnimationSpecsFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v3

    .line 1815
    .local v3, "_arg1":Landroid/os/IRemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1817
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1818
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1819
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;ZI)V

    .line 1820
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1821
    goto/16 :goto_0

    .line 1798
    .end local v2    # "_arg0":Landroid/view/IAppTransitionAnimationSpecsFuture;
    .end local v3    # "_arg1":Landroid/os/IRemoteCallback;
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":I
    :pswitch_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1800
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1802
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .line 1803
    .local v4, "_arg2":Landroid/view/IWindow;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1804
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->setShellRootAccessibilityWindow(IILandroid/view/IWindow;)V

    .line 1805
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1806
    goto/16 :goto_0

    .line 1784
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/view/IWindow;
    :pswitch_72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1786
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 1788
    .local v3, "_arg1":Landroid/view/IWindow;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1789
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1790
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->addShellRoot(ILandroid/view/IWindow;I)Landroid/view/SurfaceControl;

    move-result-object v5

    .line 1791
    .local v5, "_result":Landroid/view/SurfaceControl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1792
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1793
    goto/16 :goto_0

    .line 1775
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/view/IWindow;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Landroid/view/SurfaceControl;
    :pswitch_73
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IDisplayWindowRotationController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowRotationController;

    move-result-object v2

    .line 1776
    .local v2, "_arg0":Landroid/view/IDisplayWindowRotationController;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1777
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setDisplayWindowRotationController(Landroid/view/IDisplayWindowRotationController;)V

    .line 1778
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1779
    goto/16 :goto_0

    .line 1764
    .end local v2    # "_arg0":Landroid/view/IDisplayWindowRotationController;
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1766
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1767
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1768
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->removeWindowToken(Landroid/os/IBinder;I)V

    .line 1769
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1770
    goto/16 :goto_0

    .line 1749
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1751
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1753
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1755
    .restart local v4    # "_arg2":I
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 1756
    .local v5, "_arg3":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1757
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/IWindowManager$Stub;->addWindowToken(Landroid/os/IBinder;IILandroid/os/Bundle;)V

    .line 1758
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1759
    goto/16 :goto_0

    .line 1739
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/Bundle;
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1740
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1741
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->isWindowToken(Landroid/os/IBinder;)Z

    move-result v3

    .line 1742
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1743
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1744
    goto/16 :goto_0

    .line 1730
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1731
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1732
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setEventDispatching(Z)V

    .line 1733
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1734
    goto/16 :goto_0

    .line 1719
    .end local v2    # "_arg0":Z
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1721
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1722
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1723
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setForcedDisplayScalingMode(II)V

    .line 1724
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1725
    goto/16 :goto_0

    .line 1708
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1710
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1711
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1712
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->clearForcedDisplayDensityForUser(II)V

    .line 1713
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1714
    goto/16 :goto_0

    .line 1695
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1697
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1699
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1700
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1701
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->setForcedDisplayDensityForUser(III)V

    .line 1702
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1703
    goto/16 :goto_0

    .line 1685
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1686
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1687
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getBaseDisplayDensity(I)I

    move-result v3

    .line 1688
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1689
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1690
    goto/16 :goto_0

    .line 1675
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1676
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1677
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getInitialDisplayDensity(I)I

    move-result v3

    .line 1678
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1679
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1680
    goto/16 :goto_0

    .line 1666
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_7d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1667
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1668
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->clearForcedDisplaySize(I)V

    .line 1669
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1670
    goto/16 :goto_0

    .line 1653
    .end local v2    # "_arg0":I
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1655
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1657
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1658
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1659
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->setForcedDisplaySize(III)V

    .line 1660
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1661
    goto/16 :goto_0

    .line 1641
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1643
    .restart local v2    # "_arg0":I
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 1644
    .local v3, "_arg1":Landroid/graphics/Point;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1645
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 1646
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1647
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1648
    goto :goto_0

    .line 1629
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/graphics/Point;
    :pswitch_80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1631
    .restart local v2    # "_arg0":I
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 1632
    .restart local v3    # "_arg1":Landroid/graphics/Point;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1633
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 1634
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1635
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1636
    goto :goto_0

    .line 1621
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/graphics/Point;
    :pswitch_81
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->useBLAST()Z

    move-result v2

    .line 1622
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1623
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1624
    goto :goto_0

    .line 1612
    .end local v2    # "_result":Z
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSessionCallback;

    move-result-object v2

    .line 1613
    .local v2, "_arg0":Landroid/view/IWindowSessionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1614
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->openSession(Landroid/view/IWindowSessionCallback;)Landroid/view/IWindowSession;

    move-result-object v3

    .line 1615
    .local v3, "_result":Landroid/view/IWindowSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1616
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1617
    goto :goto_0

    .line 1604
    .end local v2    # "_arg0":Landroid/view/IWindowSessionCallback;
    .end local v3    # "_result":Landroid/view/IWindowSession;
    :pswitch_83
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isViewServerRunning()Z

    move-result v2

    .line 1605
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1606
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1607
    goto :goto_0

    .line 1597
    .end local v2    # "_result":Z
    :pswitch_84
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->stopViewServer()Z

    move-result v2

    .line 1598
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1599
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1600
    goto :goto_0

    .line 1588
    .end local v2    # "_result":Z
    :pswitch_85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1589
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1590
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->startViewServer(I)Z

    move-result v3

    .line 1591
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1592
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1593
    nop

    .line 2889
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
