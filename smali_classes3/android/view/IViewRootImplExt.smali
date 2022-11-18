.class public interface abstract Landroid/view/IViewRootImplExt;
.super Ljava/lang/Object;
.source "IViewRootImplExt.java"


# virtual methods
.method public blacklist changeSystemUiVisibility(I)I
    .locals 1
    .param p1, "mSystemUiVisibility"    # I

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkIsWebchatLauncherUI()V
    .locals 0

    .line 216
    return-void
.end method

.method public blacklist checkKeyguardAndConfig(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .line 161
    return-void
.end method

.method public blacklist checkTraversalsImmediatelyProssible(Z)Z
    .locals 1
    .param p1, "isFirst"    # Z

    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkTraversalsImmediatelyProssibleInTraversals(ZZ)Z
    .locals 1
    .param p1, "isFirst"    # Z
    .param p2, "mIsInTraversal"    # Z

    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist clearLaunchViewInfoForWindow()V
    .locals 0

    .line 286
    return-void
.end method

.method public blacklist createWindowClient()Landroid/view/ViewRootImpl$W;
    .locals 1

    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist debugCancelDraw(Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "cancelDraw"    # Z
    .param p3, "isViewVisible"    # Z

    .line 262
    return-void
.end method

.method public blacklist debugEventHandled(Ljava/lang/String;Landroid/view/InputEvent;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "event"    # Landroid/view/InputEvent;
    .param p3, "detail"    # Ljava/lang/String;

    .line 90
    return-void
.end method

.method public blacklist debugInputEventEnqueue(Ljava/lang/String;Landroid/view/InputEvent;ZZ)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "event"    # Landroid/view/InputEvent;
    .param p3, "immediately"    # Z
    .param p4, "scheduled"    # Z

    .line 93
    return-void
.end method

.method public blacklist debugInputEventFinished(Ljava/lang/String;ILandroid/view/InputEvent;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "event"    # Landroid/view/InputEvent;

    .line 96
    return-void
.end method

.method public blacklist debugInputEventStart(Ljava/lang/String;Landroid/view/InputEvent;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "event"    # Landroid/view/InputEvent;

    .line 99
    return-void
.end method

.method public blacklist debugInputStageDeliverd(Ljava/lang/String;ILandroid/view/InputEvent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mTag"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "event"    # Landroid/view/InputEvent;
    .param p4, "stage"    # Ljava/lang/String;
    .param p5, "detail"    # Ljava/lang/String;

    .line 84
    return-void
.end method

.method public blacklist disableRelayout()Z
    .locals 1

    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dispatchDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 122
    return-void
.end method

.method public blacklist dispatchTouchEventForZoomWinow(Landroid/view/InputEventReceiver;Landroid/view/InputEvent;Landroid/view/View;Landroid/util/MergedConfiguration;)Z
    .locals 1
    .param p1, "receiver"    # Landroid/view/InputEventReceiver;
    .param p2, "ev"    # Landroid/view/InputEvent;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "configuration"    # Landroid/util/MergedConfiguration;

    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist forceDarkWithoutTheme(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "useAutoDark"    # Z

    .line 57
    return-void
.end method

.method public blacklist getBaseSize(Landroid/view/WindowManager$LayoutParams;Landroid/util/TypedValue;Landroid/content/res/Resources;)I
    .locals 1
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "res"    # Landroid/content/res/Resources;

    .line 254
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public blacklist getColorMode(I)I
    .locals 0
    .param p1, "colorMode"    # I

    .line 244
    return p1
.end method

.method public blacklist handleGestureConfigCheck()V
    .locals 0

    .line 173
    return-void
.end method

.method public blacklist handleGestureMotionDown(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 167
    return-void
.end method

.method public blacklist handleWindowFocusChanged(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hasFocus"    # Z

    .line 295
    return-void
.end method

.method public blacklist hideSoftInputFromWindow(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;

    .line 226
    return-void
.end method

.method public blacklist hookNewInstance(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    return-void
.end method

.method public blacklist hookSetView(Landroid/view/View;Landroid/content/Context;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;

    .line 125
    return-void
.end method

.method public blacklist hookViewRootImplHooks(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 135
    return-void
.end method

.method public blacklist init(Landroid/view/ViewRootImpl;Landroid/content/Context;)V
    .locals 0
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;
    .param p2, "context"    # Landroid/content/Context;

    .line 40
    return-void
.end method

.method public blacklist initScrollOpt(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 267
    return-void
.end method

.method public blacklist initSystemUINavigationGesture(Landroid/view/ViewRootImpl;Landroid/content/Context;)V
    .locals 0
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;
    .param p2, "context"    # Landroid/content/Context;

    .line 155
    return-void
.end method

.method public blacklist intersectOverrideWindowBoundsIfNeed(Landroid/util/MergedConfiguration;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "mergedConfiguration"    # Landroid/util/MergedConfiguration;
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .line 309
    return-void
.end method

.method public blacklist isConnected()Z
    .locals 1

    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isLevelDebug()Z
    .locals 1

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isWebchatLauncherUI()Z
    .locals 1

    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist logConfigurationNightError(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useAutoDark"    # Z

    .line 51
    return-void
.end method

.method public blacklist logForceDarkAllowedStatus(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forceDarkAllowedDefault"    # Z

    .line 54
    return-void
.end method

.method public blacklist nativeIsBufferAccumulated(J)Z
    .locals 1
    .param p1, "nativeObject"    # J

    .line 275
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist nativeSetPresentTimeMode(JI)V
    .locals 0
    .param p1, "nativeObject"    # J
    .param p3, "mode"    # I

    .line 277
    return-void
.end method

.method public blacklist needUpdateInternalDisplay(Landroid/content/Context;Landroid/view/Display;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;

    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onWindowDying()V
    .locals 0

    .line 301
    return-void
.end method

.method public blacklist onWindowFocusChangedByRoot(ZLandroid/view/View;Landroid/util/MergedConfiguration;)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z
    .param p2, "view"    # Landroid/view/View;
    .param p3, "configuration"    # Landroid/util/MergedConfiguration;

    .line 203
    return-void
.end method

.method public blacklist postShowGuidePopupRunnable(Landroid/view/View;)V
    .locals 0
    .param p1, "decorView"    # Landroid/view/View;

    .line 297
    return-void
.end method

.method public blacklist processGestureEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist processPointerEvent(Landroid/view/MotionEvent;Landroid/content/Context;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "context"    # Landroid/content/Context;

    .line 299
    return-void
.end method

.method public blacklist refreshForceDark(Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "mOplusDarkModeData"    # Landroid/os/Parcelable;

    .line 67
    return-void
.end method

.method public blacklist registerRemoteAnimationsForWindow(Landroid/view/RemoteAnimationDefinition;)V
    .locals 0
    .param p1, "definition"    # Landroid/view/RemoteAnimationDefinition;

    .line 282
    return-void
.end method

.method public blacklist resetOptState(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    .line 273
    return-void
.end method

.method public blacklist setConnected(Z)V
    .locals 0
    .param p1, "isConnected"    # Z

    .line 138
    return-void
.end method

.method public blacklist setDarkModeProgress(Landroid/view/View;Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "globalConfig"    # Landroid/content/res/Configuration;

    .line 64
    return-void
.end method

.method public blacklist setLastReportedMergedConfiguration(Landroid/view/View;Landroid/content/res/Configuration;Landroid/content/Context;)V
    .locals 0
    .param p1, "mView"    # Landroid/view/View;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;
    .param p3, "context"    # Landroid/content/Context;

    .line 196
    return-void
.end method

.method public blacklist setLaunchViewInfoForWindow(Ljava/lang/Object;)V
    .locals 0
    .param p1, "launchViewInfo"    # Ljava/lang/Object;

    .line 284
    return-void
.end method

.method public blacklist setRefreshRateIfNeed(ZLandroid/content/Context;Landroid/view/View;Landroid/view/ViewRootImpl$W;)V
    .locals 0
    .param p1, "ifNeed"    # Z
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "window"    # Landroid/view/ViewRootImpl$W;

    .line 112
    return-void
.end method

.method public blacklist setScrollToTopRootView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 291
    return-void
.end method

.method public blacklist setScrollToTopWinFrame(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "winFrame"    # Landroid/graphics/Rect;

    .line 293
    return-void
.end method

.method public blacklist setSystemGestureExclusionRegion(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 179
    .local p1, "rects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    return-void
.end method

.method public blacklist setTransparentRegionForZoom(Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)Z
    .locals 1
    .param p1, "configuration"    # Landroid/util/MergedConfiguration;
    .param p2, "sc"    # Landroid/view/SurfaceControl;
    .param p3, "transaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist shouldBlockResizeReportForSplashScreen(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;)Z
    .locals 1
    .param p1, "windowAttrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 316
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist showSoftInput(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;

    .line 223
    return-void
.end method

.method public blacklist showSurfaceViewBackground(I)Z
    .locals 1
    .param p1, "subLayer"    # I

    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist updateAlwaysConsumeSystemBarsIfNeeded(Z)Z
    .locals 1
    .param p1, "pendingAlwaysConsumeSystemBars"    # Z

    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist updateBufferPendingState(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    .line 269
    return-void
.end method

.method public blacklist updateInputEventToInputMethod(Landroid/view/InputEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 213
    return-void
.end method

.method public blacklist updateLogLevel()V
    .locals 0

    .line 77
    return-void
.end method

.method public blacklist updateScrollerState(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "me"    # Landroid/view/MotionEvent;

    .line 271
    return-void
.end method

.method public blacklist v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 87
    return-void
.end method
