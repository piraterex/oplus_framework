.class public Lcom/android/internal/policy/PhoneWindow;
.super Landroid/view/Window;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/PhoneWindow$PhoneWindowWrapper;,
        Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;,
        Lcom/android/internal/policy/PhoneWindow$RotationWatcher;,
        Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;,
        Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;,
        Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;,
        Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;,
        Lcom/android/internal/policy/PhoneWindow$WindowManagerHolder;
    }
.end annotation


# static fields
.field private static final blacklist ACTION_BAR_TAG:Ljava/lang/String; = "android:ActionBar"

.field private static final blacklist CUSTOM_TITLE_COMPATIBLE_FEATURES:I = 0x34c1

.field private static final blacklist DEBUG:Z

.field private static final blacklist DEFAULT_BACKGROUND_FADE_DURATION_MS:I = 0x12c

.field static final blacklist FLAG_RESOURCE_SET_ICON:I = 0x1

.field static final blacklist FLAG_RESOURCE_SET_ICON_FALLBACK:I = 0x4

.field static final blacklist FLAG_RESOURCE_SET_LOGO:I = 0x2

.field private static final blacklist FOCUSED_ID_TAG:Ljava/lang/String; = "android:focusedViewId"

.field private static final blacklist PANELS_TAG:Ljava/lang/String; = "android:Panels"

.field private static final blacklist TAG:Ljava/lang/String; = "PhoneWindow"

.field private static final blacklist USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

.field private static final blacklist VIEWS_TAG:Ljava/lang/String; = "android:views"

.field private static final blacklist sDefaultContentInsetsApplier:Landroid/view/Window$OnContentApplyWindowInsetsListener;

.field static final blacklist sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;


# instance fields
.field private blacklist mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

.field private blacklist mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

.field private blacklist mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

.field private blacklist mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

.field private blacklist mAlwaysReadCloseOnTouchAttr:Z

.field private blacklist mAudioManager:Landroid/media/AudioManager;

.field private blacklist mBackgroundBlurRadius:I

.field blacklist mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mBackgroundFadeDurationMillis:J

.field blacklist mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mCircularProgressBar:Landroid/widget/ProgressBar;

.field private blacklist mClipToOutline:Z

.field private blacklist mClosingActionMenu:Z

.field blacklist mContentParent:Landroid/view/ViewGroup;

.field private blacklist mContentParentExplicitlySet:Z

.field private blacklist mContentScene:Landroid/transition/Scene;

.field blacklist mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

.field final blacklist mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;

.field blacklist mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

.field private blacklist mDecor:Lcom/android/internal/policy/DecorView;

.field private blacklist mDecorCaptionShade:I

.field blacklist mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

.field blacklist mDecorFitsSystemWindows:Z

.field private blacklist mDrawables:[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

.field private blacklist mElevation:F

.field blacklist mEnsureNavigationBarContrastWhenTransparent:Z

.field blacklist mEnsureStatusBarContrastWhenTransparent:Z

.field private blacklist mEnterTransition:Landroid/transition/Transition;

.field private blacklist mExitTransition:Landroid/transition/Transition;

.field blacklist mFixedHeightMajor:Landroid/util/TypedValue;

.field blacklist mFixedHeightMinor:Landroid/util/TypedValue;

.field blacklist mFixedWidthMajor:Landroid/util/TypedValue;

.field blacklist mFixedWidthMinor:Landroid/util/TypedValue;

.field private blacklist mForceDecorInstall:Z

.field private blacklist mForcedNavigationBarColor:Z

.field private blacklist mForcedStatusBarColor:Z

.field private blacklist mFrameResource:I

.field private blacklist mHorizontalProgressBar:Landroid/widget/ProgressBar;

.field blacklist mIconRes:I

.field private blacklist mInvalidatePanelMenuFeatures:I

.field private blacklist mInvalidatePanelMenuPosted:Z

.field private final blacklist mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

.field blacklist mIsFloating:Z

.field private blacklist mIsStartingWindow:Z

.field private blacklist mIsTranslucent:Z

.field private blacklist mKeyguardManager:Landroid/app/KeyguardManager;

.field private blacklist mLayoutInflater:Landroid/view/LayoutInflater;

.field private blacklist mLeftIconView:Landroid/widget/ImageView;

.field private blacklist mLoadElevation:Z

.field blacklist mLogoRes:I

.field private blacklist mMediaController:Landroid/media/session/MediaController;

.field private blacklist mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field final blacklist mMinWidthMajor:Landroid/util/TypedValue;

.field final blacklist mMinWidthMinor:Landroid/util/TypedValue;

.field blacklist mNavigationBarColor:I

.field blacklist mNavigationBarDividerColor:I

.field blacklist mPanelChordingKey:I

.field private blacklist mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

.field private blacklist mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

.field private blacklist mPhoneWindowExt:Lcom/android/internal/policy/IPhoneWindowExt;

.field blacklist mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

.field private final blacklist mProxyOnBackInvokedDispatcher:Landroid/window/ProxyOnBackInvokedDispatcher;

.field private blacklist mReenterTransition:Landroid/transition/Transition;

.field public final blacklist mRenderShadowsInCompositor:Z

.field blacklist mResourcesSetFlags:I

.field private blacklist mReturnTransition:Landroid/transition/Transition;

.field private blacklist mRightIconView:Landroid/widget/ImageView;

.field private blacklist mSharedElementEnterTransition:Landroid/transition/Transition;

.field private blacklist mSharedElementExitTransition:Landroid/transition/Transition;

.field private blacklist mSharedElementReenterTransition:Landroid/transition/Transition;

.field private blacklist mSharedElementReturnTransition:Landroid/transition/Transition;

.field private blacklist mSharedElementsUseOverlay:Ljava/lang/Boolean;

.field blacklist mStatusBarColor:I

.field private blacklist mSupportsPictureInPicture:Z

.field blacklist mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

.field blacklist mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

.field private blacklist mTextColor:I

.field private blacklist mTheme:I

.field private greylist mTitle:Ljava/lang/CharSequence;

.field private blacklist mTitleColor:I

.field private blacklist mTitleView:Landroid/widget/TextView;

.field private blacklist mTransitionManager:Landroid/transition/TransitionManager;

.field private blacklist mUiOptions:I

.field private blacklist mUseDecorContext:Z

.field private blacklist mVolumeControlStreamType:I

.field private blacklist mWrapper:Lcom/android/internal/policy/IPhoneWindowWrapper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDecor(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/DecorView;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmForcedNavigationBarColor(Lcom/android/internal/policy/PhoneWindow;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInvalidatePanelMenuFeatures(Lcom/android/internal/policy/PhoneWindow;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhoneWindowExt(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/IPhoneWindowExt;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/policy/PhoneWindow;->mPhoneWindowExt:Lcom/android/internal/policy/IPhoneWindowExt;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTitle(Lcom/android/internal/policy/PhoneWindow;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmForcedNavigationBarColor(Lcom/android/internal/policy/PhoneWindow;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmForcedStatusBarColor(Lcom/android/internal/policy/PhoneWindow;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInvalidatePanelMenuFeatures(Lcom/android/internal/policy/PhoneWindow;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInvalidatePanelMenuPosted(Lcom/android/internal/policy/PhoneWindow;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcallOnPanelClosed(Lcom/android/internal/policy/PhoneWindow;ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/PhoneWindow;->callOnPanelClosed(ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdismissContextMenu(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->dismissContextMenu()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 156
    const-string/jumbo v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/PhoneWindow;->DEBUG:Z

    .line 162
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/policy/PhoneWindow$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/internal/policy/PhoneWindow;->sDefaultContentInsetsApplier:Landroid/view/Window$OnContentApplyWindowInsetsListener;

    .line 185
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    sput-object v0, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    .line 366
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    invoke-direct {v0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;-><init>()V

    sput-object v0, Lcom/android/internal/policy/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 370
    invoke-direct {p0, p1}, Landroid/view/Window;-><init>(Landroid/content/Context;)V

    .line 191
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;

    .line 193
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    .line 194
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForceDecorInstall:Z

    .line 212
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParentExplicitlySet:Z

    .line 277
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 278
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 280
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundBlurRadius:I

    .line 282
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mLoadElevation:Z

    .line 288
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    .line 290
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTextColor:I

    .line 291
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    .line 292
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    .line 293
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarDividerColor:I

    .line 294
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    .line 295
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    .line 300
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    .line 303
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    .line 305
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    .line 311
    const/high16 v3, -0x80000000

    iput v3, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    .line 318
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    .line 322
    new-instance v3, Lcom/android/internal/policy/PhoneWindow$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/PhoneWindow$1;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    .line 334
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 335
    sget-object v3, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    .line 336
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    .line 337
    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    .line 338
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 339
    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 340
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    .line 341
    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    .line 344
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    .line 348
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/policy/PhoneWindow;->mTheme:I

    .line 350
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorCaptionShade:I

    .line 352
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUseDecorContext:Z

    .line 357
    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorFitsSystemWindows:Z

    .line 4057
    new-instance v3, Lcom/android/internal/policy/PhoneWindow$PhoneWindowWrapper;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/policy/PhoneWindow$PhoneWindowWrapper;-><init>(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$PhoneWindowWrapper-IA;)V

    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mWrapper:Lcom/android/internal/policy/IPhoneWindowWrapper;

    .line 4059
    const-class v1, Lcom/android/internal/policy/IPhoneWindowExt;

    invoke-static {v1}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/IPhoneWindowExt;

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPhoneWindowExt:Lcom/android/internal/policy/IPhoneWindowExt;

    .line 371
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 372
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "render_shadows_in_compositor"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mRenderShadowsInCompositor:Z

    .line 374
    new-instance v0, Landroid/window/ProxyOnBackInvokedDispatcher;

    .line 375
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isOnBackInvokedCallbackEnabled()Z

    move-result v1

    invoke-direct {v0, v1}, Landroid/window/ProxyOnBackInvokedDispatcher;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mProxyOnBackInvokedDispatcher:Landroid/window/ProxyOnBackInvokedDispatcher;

    .line 379
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPhoneWindowExt:Lcom/android/internal/policy/IPhoneWindowExt;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IPhoneWindowExt;->init(Landroid/content/Context;)V

    .line 381
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preservedWindow"    # Landroid/view/Window;
    .param p3, "activityConfigCallback"    # Landroid/view/ViewRootImpl$ActivityConfigCallback;

    .line 388
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUseDecorContext:Z

    .line 392
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 393
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/DecorView;

    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    .line 394
    invoke-virtual {p2}, Landroid/view/Window;->getElevation()F

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    .line 395
    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mLoadElevation:Z

    .line 396
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForceDecorInstall:Z

    .line 400
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 401
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mProxyOnBackInvokedDispatcher:Landroid/window/ProxyOnBackInvokedDispatcher;

    .line 402
    invoke-virtual {p2}, Landroid/view/Window;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v3

    .line 401
    invoke-virtual {v2, v3}, Landroid/window/ProxyOnBackInvokedDispatcher;->setActualDispatcher(Landroid/window/OnBackInvokedDispatcher;)V

    .line 406
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "force_resizable_activities"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    .line 408
    .local v2, "forceResizable":Z
    :goto_0
    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.software.picture_in_picture"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :cond_3
    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSupportsPictureInPicture:Z

    .line 410
    iput-object p3, p0, Lcom/android/internal/policy/PhoneWindow;->mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    .line 411
    return-void
.end method

.method private blacklist applyDecorFitsSystemWindows()V
    .locals 2

    .line 3995
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImplOrNull()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 3996
    .local v0, "impl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_1

    .line 3997
    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorFitsSystemWindows:Z

    if-eqz v1, :cond_0

    .line 3998
    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->sDefaultContentInsetsApplier:Landroid/view/Window$OnContentApplyWindowInsetsListener;

    goto :goto_0

    .line 3999
    :cond_0
    const/4 v1, 0x0

    .line 3997
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->setOnContentApplyWindowInsetsListener(Landroid/view/Window$OnContentApplyWindowInsetsListener;)V

    .line 4001
    :cond_1
    return-void
.end method

.method private blacklist callOnPanelClosed(ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "panel"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p3, "menu"    # Landroid/view/Menu;

    .line 3143
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3144
    .local v0, "cb":Landroid/view/Window$Callback;
    if-nez v0, :cond_0

    .line 3145
    return-void

    .line 3148
    :cond_0
    if-nez p3, :cond_2

    .line 3150
    if-nez p2, :cond_1

    .line 3151
    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    array-length v2, v1

    if-ge p1, v2, :cond_1

    .line 3152
    aget-object p2, v1, p1

    .line 3156
    :cond_1
    if-eqz p2, :cond_2

    .line 3158
    iget-object p3, p2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 3163
    :cond_2
    if-eqz p2, :cond_3

    iget-boolean v1, p2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v1, :cond_3

    .line 3164
    return-void

    .line 3166
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3167
    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 3169
    :cond_4
    return-void
.end method

.method private static blacklist clearMenuViews(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)V
    .locals 1
    .param p0, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 820
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 823
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 825
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->clearMenuPresenters()V

    .line 826
    return-void
.end method

.method private declared-synchronized blacklist closeContextMenu()V
    .locals 1

    monitor-enter p0

    .line 1215
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-eqz v0, :cond_0

    .line 1216
    invoke-virtual {v0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->close()V

    .line 1217
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->dismissContextMenu()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1219
    .end local p0    # "this":Lcom/android/internal/policy/PhoneWindow;
    :cond_0
    monitor-exit p0

    return-void

    .line 1214
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized blacklist dismissContextMenu()V
    .locals 2

    monitor-enter p0

    .line 1226
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 1228
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    if-eqz v1, :cond_0

    .line 1229
    invoke-interface {v1}, Lcom/android/internal/view/menu/MenuHelper;->dismiss()V

    .line 1230
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1232
    .end local p0    # "this":Lcom/android/internal/policy/PhoneWindow;
    :cond_0
    monitor-exit p0

    return-void

    .line 1225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private blacklist getCircularProgressBar(Z)Landroid/widget/ProgressBar;
    .locals 2
    .param p1, "shouldInstallDecor"    # Z

    .line 3094
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 3095
    return-object v0

    .line 3097
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 3098
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 3100
    :cond_1
    const v0, 0x1020449

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    .line 3101
    if-eqz v0, :cond_2

    .line 3102
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3104
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private blacklist getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    .line 2915
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v0

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 2916
    if-nez p2, :cond_0

    .line 2917
    const/4 v0, 0x0

    return-object v0

    .line 2919
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The feature has not been requested"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2923
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDrawables:[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-object v1, v0

    .local v1, "ar":[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_2

    array-length v0, v1

    if-gt v0, p1, :cond_4

    .line 2924
    :cond_2
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    .line 2925
    .local v0, "nar":[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-eqz v1, :cond_3

    .line 2926
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2928
    :cond_3
    move-object v1, v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDrawables:[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    .line 2931
    .end local v0    # "nar":[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :cond_4
    aget-object v0, v1, p1

    .line 2932
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-nez v0, :cond_5

    .line 2933
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    invoke-direct {v2, p1}, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;-><init>(I)V

    move-object v0, v2

    aput-object v2, v1, p1

    .line 2935
    :cond_5
    return-object v0
.end method

.method private blacklist getHorizontalProgressBar(Z)Landroid/widget/ProgressBar;
    .locals 2
    .param p1, "shouldInstallDecor"    # Z

    .line 3108
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 3109
    return-object v0

    .line 3111
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 3112
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 3114
    :cond_1
    const v0, 0x102044a

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    .line 3115
    if-eqz v0, :cond_2

    .line 3116
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3118
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private blacklist getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    .line 2016
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 2017
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 2020
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method private blacklist getLeftIconView()Landroid/widget/ImageView;
    .locals 1

    .line 3065
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 3066
    return-object v0

    .line 3068
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 3069
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 3071
    :cond_1
    const v0, 0x102037a

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private blacklist getMediaSessionManager()Landroid/media/session/MediaSessionManager;
    .locals 2

    .line 2031
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    if-nez v0, :cond_0

    .line 2032
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "media_session"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 2035
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    return-object v0
.end method

.method private blacklist getOptionsPanelGravity()I
    .locals 3

    .line 1449
    :try_start_0
    sget-object v0, Lcom/android/internal/policy/PhoneWindow$WindowManagerHolder;->sWindowManager:Landroid/view/IWindowManager;

    .line 1450
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    .line 1449
    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->getPreferredOptionsPanelGravity(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1451
    :catch_0
    move-exception v0

    .line 1452
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "PhoneWindow"

    const-string v2, "Couldn\'t getOptionsPanelGravity; using default"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1453
    const/16 v1, 0x51

    return v1
.end method

.method private blacklist getPanelState(IZLcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "required"    # Z
    .param p3, "convertPanelState"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 2962
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v0

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 2963
    if-nez p2, :cond_0

    .line 2964
    const/4 v0, 0x0

    return-object v0

    .line 2966
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The feature has not been requested"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2970
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-object v1, v0

    .local v1, "ar":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_2

    array-length v0, v1

    if-gt v0, p1, :cond_4

    .line 2971
    :cond_2
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 2972
    .local v0, "nar":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_3

    .line 2973
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2975
    :cond_3
    move-object v1, v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 2978
    .end local v0    # "nar":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_4
    aget-object v0, v1, p1

    .line 2979
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v0, :cond_6

    .line 2980
    if-eqz p3, :cond_5

    .line 2981
    move-object v2, p3

    goto :goto_0

    .line 2982
    :cond_5
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    invoke-direct {v2, p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;-><init>(I)V

    :goto_0
    move-object v0, v2

    aput-object v2, v1, p1

    .line 2984
    :cond_6
    return-object v0
.end method

.method private blacklist getRightIconView()Landroid/widget/ImageView;
    .locals 1

    .line 3122
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 3123
    return-object v0

    .line 3125
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 3126
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 3128
    :cond_1
    const v0, 0x102047b

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private blacklist getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;
    .locals 4
    .param p1, "currentValue"    # Landroid/transition/Transition;
    .param p2, "defaultValue"    # Landroid/transition/Transition;
    .param p3, "id"    # I

    .line 2888
    if-eq p1, p2, :cond_0

    .line 2889
    return-object p1

    .line 2891
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 2892
    .local v0, "transitionId":I
    move-object v2, p2

    .line 2893
    .local v2, "transition":Landroid/transition/Transition;
    if-eq v0, v1, :cond_1

    const/high16 v1, 0x10f0000

    if-eq v0, v1, :cond_1

    .line 2894
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v1

    .line 2895
    .local v1, "inflater":Landroid/transition/TransitionInflater;
    invoke-virtual {v1, v0}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v2

    .line 2896
    instance-of v3, v2, Landroid/transition/TransitionSet;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Landroid/transition/TransitionSet;

    .line 2897
    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 2898
    const/4 v2, 0x0

    .line 2901
    .end local v1    # "inflater":Landroid/transition/TransitionInflater;
    :cond_1
    return-object v2
.end method

.method private blacklist getViewRootImpl()Landroid/view/ViewRootImpl;
    .locals 3

    .line 1882
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImplOrNull()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1883
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 1884
    return-object v0

    .line 1886
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "view not added"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist getViewRootImplOrNull()Landroid/view/ViewRootImpl;
    .locals 1

    .line 1890
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-nez v0, :cond_0

    .line 1891
    const/4 v0, 0x0

    return-object v0

    .line 1893
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    return-object v0
.end method

.method private blacklist hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 4
    .param p1, "horizontalProgressBar"    # Landroid/widget/ProgressBar;
    .param p2, "spinnyProgressBar"    # Landroid/widget/ProgressBar;

    .line 1804
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v0

    .line 1805
    .local v0, "features":I
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1806
    .local v1, "anim":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1807
    and-int/lit8 v2, v0, 0x20

    const/4 v3, 0x4

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 1809
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1810
    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1811
    invoke-virtual {p2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1813
    :cond_0
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 1814
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 1815
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1816
    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1818
    :cond_1
    return-void
.end method

.method private blacklist installDecor()V
    .locals 9

    .line 2752
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForceDecorInstall:Z

    .line 2753
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 2754
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->generateDecor(I)Lcom/android/internal/policy/DecorView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    .line 2755
    const/high16 v3, 0x40000

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/DecorView;->setDescendantFocusability(I)V

    .line 2756
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/DecorView;->setIsRootNamespace(Z)V

    .line 2757
    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    if-eqz v1, :cond_1

    .line 2758
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/DecorView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2761
    :cond_0
    invoke-virtual {v1, p0}, Lcom/android/internal/policy/DecorView;->setWindow(Lcom/android/internal/policy/PhoneWindow;)V

    .line 2763
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_16

    .line 2764
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->generateLayout(Lcom/android/internal/policy/DecorView;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    .line 2767
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->makeFrameworkOptionalFitsSystemWindows()V

    .line 2769
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const v3, 0x1020298

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/DecorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/DecorContentParent;

    .line 2772
    .local v1, "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    const/16 v3, 0xd

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v1, :cond_c

    .line 2773
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 2774
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v6

    invoke-interface {v1, v6}, Lcom/android/internal/widget/DecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 2775
    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v6}, Lcom/android/internal/widget/DecorContentParent;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v6, :cond_2

    .line 2776
    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v6, v7}, Lcom/android/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 2779
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v6

    .line 2780
    .local v6, "localFeatures":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v3, :cond_4

    .line 2781
    shl-int v8, v2, v7

    and-int/2addr v8, v6

    if-eqz v8, :cond_3

    .line 2782
    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v8, v7}, Lcom/android/internal/widget/DecorContentParent;->initFeature(I)V

    .line 2780
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2786
    .end local v7    # "i":I
    :cond_4
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget v8, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setUiOptions(I)V

    .line 2788
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/2addr v7, v2

    if-nez v7, :cond_6

    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 2789
    invoke-interface {v7}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_2

    .line 2791
    :cond_5
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/2addr v7, v2

    if-nez v7, :cond_7

    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 2792
    invoke-interface {v7}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    move-result v7

    if-nez v7, :cond_7

    .line 2793
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 2794
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 2793
    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2795
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    goto :goto_3

    .line 2790
    :cond_6
    :goto_2
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget v8, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    .line 2797
    :cond_7
    :goto_3
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_8

    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 2798
    invoke-interface {v7}, Lcom/android/internal/widget/DecorContentParent;->hasLogo()Z

    move-result v7

    if-nez v7, :cond_9

    .line 2799
    :cond_8
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget v8, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    .line 2807
    :cond_9
    invoke-virtual {p0, v0, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v7

    .line 2808
    .local v7, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v8

    if-nez v8, :cond_b

    if-eqz v7, :cond_a

    iget-object v8, v7, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v8, :cond_b

    :cond_a
    iget-boolean v8, p0, Lcom/android/internal/policy/PhoneWindow;->mIsStartingWindow:Z

    if-nez v8, :cond_b

    .line 2809
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/PhoneWindow;->invalidatePanelMenu(I)V

    .line 2811
    .end local v6    # "localFeatures":I
    .end local v7    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_b
    goto :goto_5

    .line 2812
    :cond_c
    const v6, 0x1020016

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    .line 2813
    if-eqz v6, :cond_f

    .line 2814
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_e

    .line 2815
    const v6, 0x1020538

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 2816
    .local v6, "titleContainer":Landroid/view/View;
    if-eqz v6, :cond_d

    .line 2817
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 2819
    :cond_d
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2821
    :goto_4
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 2822
    .end local v6    # "titleContainer":Landroid/view/View;
    goto :goto_5

    .line 2823
    :cond_e
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2828
    :cond_f
    :goto_5
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_10

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_10

    .line 2829
    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v6, v4}, Lcom/android/internal/policy/DecorView;->setBackgroundFallback(Landroid/graphics/drawable/Drawable;)V

    .line 2834
    :cond_10
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 2835
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    if-nez v3, :cond_12

    .line 2836
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v3

    const/16 v4, 0x1a

    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 2839
    .local v0, "transitionRes":I
    if-eqz v0, :cond_11

    .line 2840
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v3

    .line 2841
    .local v3, "inflater":Landroid/transition/TransitionInflater;
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0, v4}, Landroid/transition/TransitionInflater;->inflateTransitionManager(ILandroid/view/ViewGroup;)Landroid/transition/TransitionManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    .line 2843
    .end local v3    # "inflater":Landroid/transition/TransitionInflater;
    goto :goto_6

    .line 2844
    :cond_11
    new-instance v3, Landroid/transition/TransitionManager;

    invoke-direct {v3}, Landroid/transition/TransitionManager;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    .line 2848
    .end local v0    # "transitionRes":I
    :cond_12
    :goto_6
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    const/16 v3, 0x1b

    invoke-direct {p0, v0, v5, v3}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 2850
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    sget-object v3, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/16 v4, 0x27

    invoke-direct {p0, v0, v3, v4}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    .line 2852
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    const/16 v4, 0x1c

    invoke-direct {p0, v0, v5, v4}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    .line 2854
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    const/16 v4, 0x28

    invoke-direct {p0, v0, v3, v4}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    .line 2856
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    const/16 v4, 0x1d

    invoke-direct {p0, v0, v5, v4}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 2858
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    const/16 v4, 0x29

    invoke-direct {p0, v0, v3, v4}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 2861
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    const/16 v4, 0x1e

    invoke-direct {p0, v0, v5, v4}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    .line 2863
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    const/16 v4, 0x2a

    invoke-direct {p0, v0, v3, v4}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    .line 2866
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_13

    .line 2867
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v3, 0x20

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    .line 2870
    :cond_13
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_14

    .line 2871
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v3, 0x1f

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    .line 2874
    :cond_14
    iget-wide v3, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gez v0, :cond_15

    .line 2875
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v3, 0x24

    const/16 v4, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    int-to-long v3, v0

    iput-wide v3, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    .line 2879
    :cond_15
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    if-nez v0, :cond_16

    .line 2880
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v3, 0x2b

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    .line 2885
    .end local v1    # "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    :cond_16
    return-void
.end method

.method private blacklist isNotInstantAppAndKeyguardRestricted()Z
    .locals 1

    .line 2152
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2153
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2152
    :goto_0
    return v0
.end method

.method private blacklist isTvUserSetupComplete()Z
    .locals 5

    .line 3176
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3178
    .local v0, "isTvSetupComplete":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "tv_user_setup_complete"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    :cond_1
    and-int/2addr v0, v2

    .line 3180
    return v0
.end method

.method static synthetic blacklist lambda$static$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/util/Pair;
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 164
    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, 0x600

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Landroid/util/Pair;

    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 167
    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 168
    .local v0, "insetsToApply":Landroid/graphics/Insets;
    new-instance v1, Landroid/util/Pair;

    .line 169
    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->inset(Landroid/graphics/Insets;)Landroid/view/WindowInsets;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    return-object v1
.end method

.method private blacklist launchDefaultSearch(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 3190
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3191
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->isTvUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3193
    const/4 v0, 0x0

    return v0

    .line 3196
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3197
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 3200
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    .line 3201
    .local v1, "deviceId":I
    const/4 v2, 0x0

    .line 3202
    .local v2, "searchEvent":Landroid/view/SearchEvent;
    if-eqz v1, :cond_2

    .line 3203
    new-instance v3, Landroid/view/SearchEvent;

    invoke-static {v1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/SearchEvent;-><init>(Landroid/view/InputDevice;)V

    move-object v2, v3

    .line 3206
    :cond_2
    :try_start_0
    invoke-interface {v0, v2}, Landroid/view/Window$Callback;->onSearchRequested(Landroid/view/SearchEvent;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 3211
    .local v3, "result":Z
    goto :goto_1

    .line 3207
    .end local v3    # "result":Z
    :catch_0
    move-exception v3

    .line 3208
    .local v3, "e":Ljava/lang/AbstractMethodError;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WindowCallback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not implement method onSearchRequested(SearchEvent); fa"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PhoneWindow"

    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3210
    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v4

    move v3, v4

    .local v4, "result":Z
    goto :goto_1

    .line 3198
    .end local v1    # "deviceId":I
    .end local v2    # "searchEvent":Landroid/view/SearchEvent;
    .end local v3    # "e":Ljava/lang/AbstractMethodError;
    .end local v4    # "result":Z
    :cond_3
    :goto_0
    const/4 v3, 0x0

    .line 3213
    .local v3, "result":Z
    :goto_1
    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 3216
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3217
    .local v1, "args":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    const-string v4, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3218
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    const-string v2, "android.intent.extra.TIME"

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3219
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "search"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    .line 3220
    invoke-virtual {v2, v1}, Landroid/app/SearchManager;->launchAssist(Landroid/os/Bundle;)V

    .line 3221
    const/4 v2, 0x1

    return v2

    .line 3223
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_4
    return v3
.end method

.method private blacklist loadImageURI(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 2906
    nop

    .line 2907
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 2906
    invoke-static {v1, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2908
    :catch_0
    move-exception v1

    .line 2909
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PhoneWindow"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2911
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private blacklist openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V
    .locals 19
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 843
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v2, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_7

    .line 849
    :cond_0
    iget v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_3

    .line 850
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 851
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 852
    .local v5, "config":Landroid/content/res/Configuration;
    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0xf

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v3

    .line 854
    .local v6, "isXLarge":Z
    :goto_0
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_2

    move v7, v4

    goto :goto_1

    :cond_2
    move v7, v3

    .line 857
    .local v7, "isHoneycombApp":Z
    :goto_1
    if-eqz v6, :cond_3

    if-eqz v7, :cond_3

    .line 858
    return-void

    .line 862
    .end local v2    # "context":Landroid/content/Context;
    .end local v5    # "config":Landroid/content/res/Configuration;
    .end local v6    # "isXLarge":Z
    .end local v7    # "isHoneycombApp":Z
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    .line 863
    .local v2, "cb":Landroid/view/Window$Callback;
    if-eqz v2, :cond_4

    iget v5, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v6, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v2, v5, v6}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 865
    invoke-virtual {v0, v1, v4}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 866
    return-void

    .line 869
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    .line 870
    .local v5, "wm":Landroid/view/WindowManager;
    if-nez v5, :cond_5

    .line 871
    return-void

    .line 875
    :cond_5
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 876
    return-void

    .line 879
    :cond_6
    const/4 v6, -0x2

    .line 880
    .local v6, "width":I
    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    const/4 v8, -0x1

    if-eqz v7, :cond_9

    iget-boolean v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    if-eqz v7, :cond_7

    goto :goto_2

    .line 926
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInListMode()Z

    move-result v7

    if-nez v7, :cond_8

    .line 927
    const/4 v6, -0x1

    goto/16 :goto_4

    .line 928
    :cond_8
    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v7, :cond_12

    .line 931
    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 932
    .local v7, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v7, :cond_12

    iget v9, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v9, v8, :cond_12

    .line 933
    const/4 v6, -0x1

    goto/16 :goto_4

    .line 881
    .end local v7    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_9
    :goto_2
    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    if-nez v7, :cond_b

    .line 883
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/PhoneWindow;->initializePanelDecor(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    if-nez v7, :cond_c

    .line 884
    :cond_a
    return-void

    .line 885
    :cond_b
    iget-boolean v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    if-eqz v7, :cond_c

    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v7}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_c

    .line 887
    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v7}, Lcom/android/internal/policy/DecorView;->removeAllViews()V

    .line 891
    :cond_c
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/PhoneWindow;->initializePanelContent(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->hasPanelItems()Z

    move-result v7

    if-nez v7, :cond_d

    goto/16 :goto_6

    .line 895
    :cond_d
    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 896
    .restart local v7    # "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v7, :cond_e

    .line 897
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v9, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v7, v9

    .line 901
    :cond_e
    iget v9, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v9, v8, :cond_f

    .line 904
    iget v8, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->fullBackground:I

    .line 905
    .local v8, "backgroundResId":I
    const/4 v6, -0x1

    goto :goto_3

    .line 908
    .end local v8    # "backgroundResId":I
    :cond_f
    iget v8, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->background:I

    .line 910
    .restart local v8    # "backgroundResId":I
    :goto_3
    iget-object v9, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 913
    iget-object v9, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 914
    .local v9, "shownPanelParent":Landroid/view/ViewParent;
    if-eqz v9, :cond_10

    instance-of v10, v9, Landroid/view/ViewGroup;

    if-eqz v10, :cond_10

    .line 915
    move-object v10, v9

    check-cast v10, Landroid/view/ViewGroup;

    iget-object v11, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 917
    :cond_10
    iget-object v10, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    iget-object v11, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v10, v11, v7}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 923
    iget-object v10, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->hasFocus()Z

    move-result v10

    if-nez v10, :cond_11

    .line 924
    iget-object v10, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->requestFocus()Z

    .line 926
    .end local v7    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v8    # "backgroundResId":I
    .end local v9    # "shownPanelParent":Landroid/view/ViewParent;
    :cond_11
    nop

    .line 937
    :cond_12
    :goto_4
    iput-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 939
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/4 v13, -0x2

    iget v14, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->x:I

    iget v15, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->y:I

    const/16 v16, 0x3eb

    const/high16 v17, 0x820000

    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    iget v7, v7, Lcom/android/internal/policy/DecorView;->mDefaultOpacity:I

    move-object v11, v3

    move v12, v6

    move/from16 v18, v7

    invoke-direct/range {v11 .. v18}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 946
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-boolean v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-eqz v7, :cond_13

    .line 947
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getOptionsPanelGravity()I

    move-result v7

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 948
    sget-object v7, Lcom/android/internal/policy/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    invoke-virtual {v7, v0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->addWindow(Lcom/android/internal/policy/PhoneWindow;)V

    goto :goto_5

    .line 950
    :cond_13
    iget v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->gravity:I

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 953
    :goto_5
    iget v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->windowAnimations:I

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 955
    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-interface {v5, v7, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 956
    iput-boolean v4, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 958
    return-void

    .line 892
    .end local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_14
    :goto_6
    return-void

    .line 844
    .end local v2    # "cb":Landroid/view/Window$Callback;
    .end local v5    # "wm":Landroid/view/WindowManager;
    .end local v6    # "width":I
    :cond_15
    :goto_7
    return-void
.end method

.method private blacklist reopenMenu(Z)V
    .locals 6
    .param p1, "toggleMenuMode"    # Z

    .line 1316
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1317
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 1318
    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1319
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1320
    .local v0, "cb":Landroid/view/Window$Callback;
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 1340
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    .line 1341
    invoke-virtual {p0, v2, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1342
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1343
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_1

    .line 1321
    .end local v1    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1323
    iget-boolean v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_3

    .line 1325
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1326
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1329
    :cond_3
    invoke-virtual {p0, v2, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1333
    .restart local v1    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_4

    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_4

    iget-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-nez v3, :cond_4

    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v5, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 1334
    invoke-interface {v0, v2, v3, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1335
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1336
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    .line 1346
    .end local v1    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_4
    :goto_1
    return-void

    .line 1349
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_5
    invoke-virtual {p0, v2, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 1351
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v0, :cond_6

    .line 1352
    return-void

    .line 1356
    :cond_6
    iget-boolean v3, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz p1, :cond_8

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_2

    :cond_7
    move v3, v2

    .line 1358
    .local v3, "newExpandedMode":Z
    :cond_8
    :goto_2
    iput-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 1359
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1362
    iput-boolean v3, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 1364
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 1365
    return-void
.end method

.method private blacklist restorePanelState(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 2292
    .local p1, "icicles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2293
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 2294
    .local v1, "curFeatureId":I
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 2295
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v2, :cond_0

    .line 2297
    goto :goto_1

    .line 2300
    :cond_0
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2301
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->invalidatePanelMenu(I)V

    .line 2292
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2308
    .end local v0    # "i":I
    .end local v1    # "curFeatureId":I
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_1
    return-void
.end method

.method private blacklist savePanelState(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 2272
    .local p1, "icicles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 2273
    .local v0, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v0, :cond_0

    .line 2274
    return-void

    .line 2277
    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "curFeatureId":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2278
    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 2279
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2277
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2282
    .end local v1    # "curFeatureId":I
    :cond_2
    return-void
.end method

.method public static blacklist sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;

    .line 3837
    invoke-static {}, Landroid/app/ActivityManager;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3839
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3841
    goto :goto_0

    .line 3840
    :catch_0
    move-exception v0

    .line 3843
    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 4
    .param p1, "horizontalProgressBar"    # Landroid/widget/ProgressBar;
    .param p2, "spinnyProgressBar"    # Landroid/widget/ProgressBar;

    .line 1791
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v0

    .line 1792
    .local v0, "features":I
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 1793
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    .line 1794
    invoke-virtual {p2, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1797
    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 1798
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    const/16 v3, 0x2710

    if-ge v1, v3, :cond_1

    .line 1799
    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1801
    :cond_1
    return-void
.end method

.method private blacklist transitionTo(Landroid/transition/Scene;)V
    .locals 1
    .param p1, "scene"    # Landroid/transition/Scene;

    .line 554
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    if-nez v0, :cond_0

    .line 555
    invoke-virtual {p1}, Landroid/transition/Scene;->enter()V

    goto :goto_0

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    invoke-virtual {v0, p1}, Landroid/transition/TransitionManager;->transitionTo(Landroid/transition/Scene;)V

    .line 559
    :goto_0
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    .line 560
    return-void
.end method

.method private blacklist updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "st"    # Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    .param p3, "fromResume"    # Z

    .line 3008
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 3009
    return-void

    .line 3012
    :cond_0
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    .line 3014
    .local v0, "featureMask":I
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    if-nez p3, :cond_1

    .line 3015
    return-void

    .line 3018
    :cond_1
    const/4 v1, 0x0

    .line 3019
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_3

    .line 3020
    iget-object v1, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->child:Landroid/graphics/drawable/Drawable;

    .line 3021
    if-nez v1, :cond_2

    .line 3022
    iget-object v1, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 3023
    :cond_2
    if-nez v1, :cond_3

    .line 3024
    iget-object v1, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    .line 3026
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v2

    and-int/2addr v2, v0

    if-nez v2, :cond_5

    .line 3027
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 3028
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isActive()Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz p3, :cond_7

    .line 3029
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/view/Window;->setChildDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3032
    :cond_5
    if-eqz p2, :cond_7

    iget-object v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->cur:Landroid/graphics/drawable/Drawable;

    if-ne v2, v1, :cond_6

    iget v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->curAlpha:I

    iget v3, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    if-eq v2, v3, :cond_7

    .line 3035
    :cond_6
    iput-object v1, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->cur:Landroid/graphics/drawable/Drawable;

    .line 3036
    iget v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    iput v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->curAlpha:I

    .line 3037
    iget v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->onDrawableChanged(ILandroid/graphics/drawable/Drawable;I)V

    .line 3039
    :cond_7
    :goto_0
    return-void
.end method

.method private blacklist updateInt(IIZ)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "value"    # I
    .param p3, "fromResume"    # Z

    .line 3045
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 3046
    return-void

    .line 3049
    :cond_0
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    .line 3051
    .local v0, "featureMask":I
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    if-nez p3, :cond_1

    .line 3052
    return-void

    .line 3055
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_2

    .line 3056
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3057
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/Window;->setChildInt(II)V

    goto :goto_0

    .line 3060
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow;->onIntChanged(II)V

    .line 3062
    :cond_3
    :goto_0
    return-void
.end method

.method private blacklist updateProgressBars(I)V
    .locals 10
    .param p1, "value"    # I

    .line 1714
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->getCircularProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v1

    .line 1715
    .local v1, "circularProgressBar":Landroid/widget/ProgressBar;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->getHorizontalProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v2

    .line 1717
    .local v2, "horizontalProgressBar":Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v3

    .line 1718
    .local v3, "features":I
    const-string v4, "Circular progress bar not located in current window decor"

    const/16 v5, 0x2710

    const/4 v6, 0x0

    const-string v7, "Horizontal progress bar not located in current window decor"

    const-string v8, "PhoneWindow"

    const/4 v9, -0x1

    if-ne p1, v9, :cond_5

    .line 1719
    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_3

    .line 1720
    if-eqz v2, :cond_2

    .line 1721
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 1722
    .local v0, "level":I
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v7

    if-nez v7, :cond_1

    if-ge v0, v5, :cond_0

    goto :goto_0

    .line 1723
    :cond_0
    const/4 v5, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v6

    .line 1724
    .local v5, "visibility":I
    :goto_1
    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1725
    .end local v0    # "level":I
    .end local v5    # "visibility":I
    goto :goto_2

    .line 1726
    :cond_2
    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    :cond_3
    :goto_2
    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_12

    .line 1730
    if-eqz v1, :cond_4

    .line 1731
    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_6

    .line 1733
    :cond_4
    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1736
    :cond_5
    const/4 v9, -0x2

    if-ne p1, v9, :cond_9

    .line 1737
    and-int/lit8 v0, v3, 0x4

    const/16 v5, 0x8

    if-eqz v0, :cond_7

    .line 1738
    if-eqz v2, :cond_6

    .line 1739
    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_3

    .line 1741
    :cond_6
    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    :cond_7
    :goto_3
    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_12

    .line 1745
    if-eqz v1, :cond_8

    .line 1746
    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_6

    .line 1748
    :cond_8
    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1751
    :cond_9
    const/4 v4, -0x3

    if-ne p1, v4, :cond_b

    .line 1752
    if-eqz v2, :cond_a

    .line 1753
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_6

    .line 1755
    :cond_a
    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1757
    :cond_b
    const/4 v0, -0x4

    if-ne p1, v0, :cond_d

    .line 1758
    if-eqz v2, :cond_c

    .line 1759
    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_6

    .line 1761
    :cond_c
    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1763
    :cond_d
    if-ltz p1, :cond_10

    if-gt p1, v5, :cond_10

    .line 1767
    if-eqz v2, :cond_e

    .line 1768
    add-int/lit8 v0, p1, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_4

    .line 1770
    :cond_e
    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    :goto_4
    if-ge p1, v5, :cond_f

    .line 1774
    invoke-direct {p0, v2, v1}, Lcom/android/internal/policy/PhoneWindow;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_6

    .line 1776
    :cond_f
    invoke-direct {p0, v2, v1}, Lcom/android/internal/policy/PhoneWindow;->hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_6

    .line 1778
    :cond_10
    const/16 v0, 0x4e20

    if-gt v0, p1, :cond_12

    const/16 v0, 0x7530

    if-gt p1, v0, :cond_12

    .line 1779
    if-eqz v2, :cond_11

    .line 1780
    add-int/lit16 v0, p1, -0x4e20

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    goto :goto_5

    .line 1782
    :cond_11
    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    :goto_5
    invoke-direct {p0, v2, v1}, Lcom/android/internal/policy/PhoneWindow;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    .line 1788
    :cond_12
    :goto_6
    return-void
.end method


# virtual methods
.method public whitelist addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 531
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 532
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 534
    :cond_0
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    const-string v0, "PhoneWindow"

    const-string v1, "addContentView does not support content transitions"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 539
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestApplyInsets()V

    .line 540
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 541
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 542
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 544
    :cond_2
    return-void
.end method

.method public blacklist alwaysReadCloseOnTouchAttr()V
    .locals 1

    .line 2748
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    .line 2749
    return-void
.end method

.method blacklist checkCloseActionMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 1028
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mClosingActionMenu:Z

    if-eqz v0, :cond_0

    .line 1029
    return-void

    .line 1032
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mClosingActionMenu:Z

    .line 1033
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->dismissPopups()V

    .line 1034
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1035
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1036
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1038
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mClosingActionMenu:Z

    .line 1039
    return-void
.end method

.method public blacklist clearContentView()V
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->clearContentView()V

    .line 551
    :cond_0
    return-void
.end method

.method public final whitelist closeAllPanels()V
    .locals 6

    .line 1193
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 1194
    .local v0, "wm":Landroid/view/ViewManager;
    if-nez v0, :cond_0

    .line 1195
    return-void

    .line 1198
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 1199
    .local v1, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_1

    array-length v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1200
    .local v2, "N":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 1201
    aget-object v4, v1, v3

    .line 1202
    .local v4, "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v4, :cond_2

    .line 1203
    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1200
    .end local v4    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1207
    .end local v3    # "i":I
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->closeContextMenu()V

    .line 1208
    return-void
.end method

.method public final whitelist closePanel(I)V
    .locals 2
    .param p1, "featureId"    # I

    .line 962
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 963
    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 964
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    goto :goto_0

    .line 966
    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 967
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->closeContextMenu()V

    goto :goto_0

    .line 969
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 971
    :goto_0
    return-void
.end method

.method public final blacklist closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V
    .locals 4
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "doCallback"    # Z

    .line 986
    if-eqz p2, :cond_0

    iget v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 987
    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->checkCloseActionMenu(Landroid/view/Menu;)V

    .line 989
    return-void

    .line 992
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 993
    .local v0, "wm":Landroid/view/ViewManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_2

    .line 994
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    if-eqz v2, :cond_1

    .line 995
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 997
    iget-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-eqz v2, :cond_1

    .line 998
    sget-object v2, Lcom/android/internal/policy/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    invoke-virtual {v2, p0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->removeWindow(Lcom/android/internal/policy/PhoneWindow;)V

    .line 1002
    :cond_1
    if-eqz p2, :cond_2

    .line 1003
    iget v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-direct {p0, v2, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->callOnPanelClosed(ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    .line 1007
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 1008
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 1009
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 1012
    iput-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1014
    iget-boolean v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz v3, :cond_3

    .line 1017
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 1018
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 1021
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-ne v3, p1, :cond_4

    .line 1022
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 1023
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    .line 1025
    :cond_4
    return-void
.end method

.method public blacklist decorFitsSystemWindows()Z
    .locals 1

    .line 3991
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorFitsSystemWindows:Z

    return v0
.end method

.method protected blacklist dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 4
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 3078
    sget-boolean v0, Lcom/android/internal/policy/PhoneWindow;->DEBUG:Z

    const/4 v1, 0x5

    const-string v2, "dispatchWindowAttributesChanged callers:"

    if-eqz v0, :cond_0

    .line 3079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PhoneWindow"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3083
    invoke-super {p0, p1}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 3086
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3088
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_1

    .line 3089
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 3091
    :cond_1
    return-void
.end method

.method blacklist doInvalidatePanelMenu(I)V
    .locals 4
    .param p1, "featureId"    # I

    .line 1069
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1070
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_0

    .line 1071
    return-void

    .line 1073
    :cond_0
    const/4 v2, 0x0

    .line 1074
    .local v2, "savedActionViewStates":Landroid/os/Bundle;
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_2

    .line 1075
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v2, v3

    .line 1076
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3, v2}, Lcom/android/internal/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 1077
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1078
    iput-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1081
    :cond_1
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1082
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->clear()V

    .line 1084
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    .line 1085
    iput-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 1088
    const/16 v3, 0x8

    if-eq p1, v3, :cond_3

    if-nez p1, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_4

    .line 1090
    invoke-virtual {p0, v0, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1091
    if-eqz v1, :cond_4

    .line 1092
    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 1093
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 1096
    :cond_4
    return-void
.end method

.method blacklist doPendingInvalidatePanelMenu()V
    .locals 2

    .line 1062
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-eqz v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1064
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1066
    :cond_0
    return-void
.end method

.method public blacklist findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .line 1289
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 1290
    .local v0, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_0

    array-length v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1291
    .local v1, "N":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 1292
    aget-object v3, v0, v2

    .line 1293
    .local v3, "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne v4, p1, :cond_1

    .line 1294
    return-object v3

    .line 1291
    .end local v3    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1297
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method protected blacklist generateDecor(I)Lcom/android/internal/policy/DecorView;
    .locals 4
    .param p1, "featureId"    # I

    .line 2391
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUseDecorContext:Z

    if-eqz v0, :cond_2

    .line 2392
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2393
    .local v0, "applicationContext":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 2394
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    goto :goto_0

    .line 2396
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    new-instance v1, Lcom/android/internal/policy/DecorContext;

    invoke-direct {v1, v0, p0}, Lcom/android/internal/policy/DecorContext;-><init>(Landroid/content/Context;Lcom/android/internal/policy/PhoneWindow;)V

    .line 2397
    .restart local v1    # "context":Landroid/content/Context;
    iget v2, p0, Lcom/android/internal/policy/PhoneWindow;->mTheme:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 2398
    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 2401
    .end local v0    # "applicationContext":Landroid/content/Context;
    :cond_1
    :goto_0
    goto :goto_1

    .line 2402
    .end local v1    # "context":Landroid/content/Context;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2404
    .restart local v1    # "context":Landroid/content/Context;
    :goto_1
    new-instance v0, Lcom/android/internal/policy/DecorView;

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/android/internal/policy/DecorView;-><init>(Landroid/content/Context;ILcom/android/internal/policy/PhoneWindow;Landroid/view/WindowManager$LayoutParams;)V

    return-object v0
.end method

.method protected blacklist generateLayout(Lcom/android/internal/policy/DecorView;)Landroid/view/ViewGroup;
    .locals 21
    .param p1, "decor"    # Lcom/android/internal/policy/DecorView;

    .line 2410
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2422
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    .line 2423
    nop

    .line 2424
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v4

    not-int v4, v4

    const v5, 0x10100

    and-int/2addr v4, v5

    .line 2425
    .local v4, "flagsToUpdate":I
    iget-boolean v6, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-eqz v6, :cond_0

    .line 2426
    const/4 v5, -0x2

    invoke-virtual {v0, v5, v5}, Lcom/android/internal/policy/PhoneWindow;->setLayout(II)V

    .line 2427
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    goto :goto_0

    .line 2429
    :cond_0
    invoke-virtual {v0, v5, v4}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2430
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    .line 2431
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 2434
    :goto_0
    const/4 v5, 0x3

    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    const/16 v7, 0x8

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    .line 2435
    invoke-virtual {v0, v8}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    goto :goto_1

    .line 2436
    :cond_1
    const/16 v6, 0xf

    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2438
    invoke-virtual {v0, v7}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 2441
    :cond_2
    :goto_1
    const/16 v6, 0x11

    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    const/16 v9, 0x9

    if-eqz v6, :cond_3

    .line 2442
    invoke-virtual {v0, v9}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 2445
    :cond_3
    const/16 v6, 0x10

    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2446
    const/16 v10, 0xa

    invoke-virtual {v0, v10}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 2449
    :cond_4
    invoke-virtual {v1, v9, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2450
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v9

    not-int v9, v9

    const/16 v10, 0x400

    and-int/2addr v9, v10

    invoke-virtual {v0, v10, v9}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2453
    :cond_5
    const/16 v9, 0x17

    invoke-virtual {v1, v9, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2455
    nop

    .line 2456
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v9

    not-int v9, v9

    const/high16 v10, 0x4000000

    and-int/2addr v9, v10

    .line 2455
    invoke-virtual {v0, v10, v9}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2459
    :cond_6
    const/16 v9, 0x18

    invoke-virtual {v1, v9, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2461
    nop

    .line 2462
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v9

    not-int v9, v9

    const/high16 v10, 0x8000000

    and-int/2addr v9, v10

    .line 2461
    invoke-virtual {v0, v10, v9}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2465
    :cond_7
    const/16 v9, 0xe

    invoke-virtual {v1, v9, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2466
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v9

    not-int v9, v9

    const/high16 v10, 0x100000

    and-int/2addr v9, v10

    invoke-virtual {v0, v10, v9}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2469
    :cond_8
    const/16 v9, 0x12

    .line 2470
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v11, 0xb

    if-lt v10, v11, :cond_9

    move v10, v8

    goto :goto_2

    :cond_9
    move v10, v3

    .line 2469
    :goto_2
    invoke-virtual {v1, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2472
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v9

    not-int v9, v9

    const/high16 v10, 0x800000

    and-int/2addr v9, v10

    invoke-virtual {v0, v10, v9}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2475
    :cond_a
    const/16 v9, 0x13

    iget-object v10, v0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    invoke-virtual {v1, v9, v10}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2476
    const/16 v9, 0x14

    iget-object v10, v0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    invoke-virtual {v1, v9, v10}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2477
    sget-boolean v9, Lcom/android/internal/policy/PhoneWindow;->DEBUG:Z

    const-string v10, "PhoneWindow"

    if-eqz v9, :cond_b

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Min width minor: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v12, v0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    invoke-virtual {v12}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ", major: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v12, v0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    .line 2478
    invoke-virtual {v12}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2477
    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    :cond_b
    const/16 v9, 0x41

    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 2480
    iget-object v12, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    if-nez v12, :cond_c

    new-instance v12, Landroid/util/TypedValue;

    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    iput-object v12, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 2481
    :cond_c
    iget-object v12, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    invoke-virtual {v1, v9, v12}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2484
    :cond_d
    const/16 v9, 0x42

    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 2485
    iget-object v12, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    if-nez v12, :cond_e

    new-instance v12, Landroid/util/TypedValue;

    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    iput-object v12, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 2486
    :cond_e
    iget-object v12, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    invoke-virtual {v1, v9, v12}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2489
    :cond_f
    const/16 v9, 0x3f

    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 2490
    iget-object v9, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    if-nez v9, :cond_10

    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    iput-object v9, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 2491
    :cond_10
    const/16 v9, 0x3f

    iget-object v12, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    invoke-virtual {v1, v9, v12}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2494
    :cond_11
    const/16 v9, 0x40

    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 2495
    iget-object v12, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    if-nez v12, :cond_12

    new-instance v12, Landroid/util/TypedValue;

    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    iput-object v12, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 2496
    :cond_12
    iget-object v12, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    invoke-virtual {v1, v9, v12}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2499
    :cond_13
    const/16 v12, 0x19

    invoke-virtual {v1, v12, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 2500
    const/16 v12, 0xc

    invoke-virtual {v0, v12}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 2502
    :cond_14
    const/16 v12, 0x2c

    invoke-virtual {v1, v12, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 2503
    const/16 v12, 0xd

    invoke-virtual {v0, v12}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 2506
    :cond_15
    const/4 v12, 0x5

    invoke-virtual {v1, v12, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    iput-boolean v12, v0, Lcom/android/internal/policy/PhoneWindow;->mIsTranslucent:Z

    .line 2508
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 2509
    .local v12, "context":Landroid/content/Context;
    invoke-virtual {v12}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2510
    .local v13, "targetSdk":I
    const/16 v14, 0x15

    if-ge v13, v14, :cond_16

    move v14, v8

    goto :goto_3

    :cond_16
    move v14, v3

    .line 2511
    .local v14, "targetPreL":Z
    :goto_3
    const/16 v15, 0x1d

    if-ge v13, v15, :cond_17

    move v15, v8

    goto :goto_4

    :cond_17
    move v15, v3

    .line 2513
    .local v15, "targetPreQ":Z
    :goto_4
    iget-boolean v6, v0, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    if-nez v6, :cond_18

    .line 2514
    const/16 v6, 0x22

    const/high16 v7, -0x1000000

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, v0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    .line 2516
    :cond_18
    iget-boolean v6, v0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    if-nez v6, :cond_19

    .line 2519
    iget-object v6, v0, Lcom/android/internal/policy/PhoneWindow;->mPhoneWindowExt:Lcom/android/internal/policy/IPhoneWindowExt;

    invoke-interface {v6, v0, v1, v12}, Lcom/android/internal/policy/IPhoneWindowExt;->hookGenerateLayout(Lcom/android/internal/policy/PhoneWindow;Landroid/content/res/TypedArray;Landroid/content/Context;)V

    .line 2521
    const/16 v6, 0x31

    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarDividerColor:I

    .line 2524
    :cond_19
    if-nez v15, :cond_1a

    .line 2525
    const/16 v6, 0x33

    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/internal/policy/PhoneWindow;->mEnsureStatusBarContrastWhenTransparent:Z

    .line 2527
    const/16 v6, 0x34

    invoke-virtual {v1, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/internal/policy/PhoneWindow;->mEnsureNavigationBarContrastWhenTransparent:Z

    .line 2531
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 2535
    .local v6, "params":Landroid/view/WindowManager$LayoutParams;
    iget-boolean v7, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-nez v7, :cond_1d

    .line 2536
    if-nez v14, :cond_1b

    const/16 v7, 0x21

    invoke-virtual {v1, v7, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 2539
    const/high16 v7, -0x80000000

    const/high16 v17, -0x80000000

    .line 2540
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v2

    not-int v2, v2

    and-int v2, v2, v17

    .line 2539
    invoke-virtual {v0, v7, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2542
    :cond_1b
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-boolean v2, v2, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsBarBackgrounds:Z

    if-eqz v2, :cond_1c

    .line 2543
    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v7, 0x20000

    or-int/2addr v2, v7

    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2545
    :cond_1c
    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v2, v9

    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2547
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/DecorView;->getSystemUiVisibility()I

    move-result v2

    .line 2548
    .local v2, "sysUiVis":I
    const/16 v7, 0x2000

    .line 2549
    .local v7, "statusLightFlag":I
    const/16 v9, 0x2d

    invoke-virtual {v1, v9, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 2550
    const/16 v9, 0x2000

    goto :goto_5

    :cond_1e
    move v9, v3

    .line 2551
    .local v9, "statusFlag":I
    :goto_5
    const/16 v17, 0x10

    .line 2552
    .local v17, "navLightFlag":I
    const/16 v8, 0x30

    invoke-virtual {v1, v8, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 2553
    const/16 v16, 0x10

    goto :goto_6

    :cond_1f
    move/from16 v16, v3

    :goto_6
    move/from16 v8, v16

    .line 2554
    .local v8, "navFlag":I
    and-int/lit16 v3, v2, -0x2011

    or-int v19, v9, v8

    or-int v3, v3, v19

    move-object/from16 v11, p1

    invoke-virtual {v11, v3}, Lcom/android/internal/policy/DecorView;->setSystemUiVisibility(I)V

    .line 2556
    const/16 v3, 0x32

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v20

    if-eqz v20, :cond_21

    .line 2557
    const/4 v5, -0x1

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 2558
    .local v5, "mode":I
    if-ltz v5, :cond_20

    const/4 v3, 0x3

    if-gt v5, v3, :cond_20

    .line 2563
    iput v5, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    move/from16 v20, v2

    goto :goto_7

    .line 2560
    :cond_20
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v2

    .end local v2    # "sysUiVis":I
    .local v20, "sysUiVis":I
    const-string v2, "Unknown windowLayoutInDisplayCutoutMode: "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2561
    const/16 v10, 0x32

    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2556
    .end local v5    # "mode":I
    .end local v20    # "sysUiVis":I
    .restart local v2    # "sysUiVis":I
    :cond_21
    move/from16 v20, v2

    .line 2566
    .end local v2    # "sysUiVis":I
    .restart local v20    # "sysUiVis":I
    :goto_7
    iget-boolean v2, v0, Lcom/android/internal/policy/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    if-nez v2, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_23

    .line 2568
    :cond_22
    const/16 v2, 0x15

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2571
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/PhoneWindow;->setCloseOnTouchOutsideIfNotSet(Z)V

    .line 2575
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->hasSoftInputMode()Z

    move-result v2

    if-nez v2, :cond_24

    .line 2576
    const/16 v2, 0xd

    iget v3, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2581
    :cond_24
    iget-boolean v2, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    const/16 v3, 0xb

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_27

    .line 2584
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v2

    and-int/2addr v2, v3

    if-nez v2, :cond_25

    .line 2585
    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v2, v3

    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2587
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->haveDimAmount()Z

    move-result v2

    if-nez v2, :cond_26

    .line 2588
    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto :goto_8

    .line 2587
    :cond_26
    const/4 v5, 0x0

    goto :goto_8

    .line 2581
    :cond_27
    const/4 v5, 0x0

    .line 2593
    :goto_8
    const/16 v2, 0x36

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 2594
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v2

    const/4 v5, 0x4

    and-int/2addr v2, v5

    if-nez v2, :cond_28

    .line 2595
    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v2, v5

    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2598
    :cond_28
    const/16 v2, 0x35

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/view/WindowManager$LayoutParams;->setBlurBehindRadius(I)V

    goto :goto_9

    .line 2593
    :cond_29
    const/4 v5, 0x0

    .line 2602
    :goto_9
    const/16 v2, 0x37

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/PhoneWindow;->setBackgroundBlurRadius(I)V

    .line 2606
    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-nez v2, :cond_2a

    .line 2607
    const/16 v2, 0x8

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2613
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_2f

    .line 2614
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2c

    .line 2616
    iget v2, v0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    if-nez v2, :cond_2b

    .line 2617
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    .line 2620
    :cond_2b
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 2621
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2624
    :cond_2c
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 2625
    const/16 v2, 0x2e

    .line 2626
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 2628
    :cond_2d
    iget-boolean v2, v0, Lcom/android/internal/policy/PhoneWindow;->mLoadElevation:Z

    if-eqz v2, :cond_2e

    .line 2629
    const/16 v2, 0x25

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    .line 2631
    :cond_2e
    const/16 v2, 0x26

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/internal/policy/PhoneWindow;->mClipToOutline:Z

    .line 2632
    const/4 v2, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, v0, Lcom/android/internal/policy/PhoneWindow;->mTextColor:I

    .line 2638
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v2

    .line 2640
    .local v2, "features":I
    and-int/lit8 v3, v2, 0x18

    if-eqz v3, :cond_31

    .line 2641
    iget-boolean v3, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-eqz v3, :cond_30

    .line 2642
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 2643
    .local v3, "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    move/from16 v18, v4

    .end local v4    # "flagsToUpdate":I
    .local v18, "flagsToUpdate":I
    const v4, 0x1120039

    move-object/from16 v19, v6

    const/4 v6, 0x1

    .end local v6    # "params":Landroid/view/WindowManager$LayoutParams;
    .local v19, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v5, v4, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2645
    iget v3, v3, Landroid/util/TypedValue;->resourceId:I

    .line 2646
    .local v3, "layoutResource":I
    goto :goto_a

    .line 2647
    .end local v3    # "layoutResource":I
    .end local v18    # "flagsToUpdate":I
    .end local v19    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "flagsToUpdate":I
    .restart local v6    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_30
    move/from16 v18, v4

    move-object/from16 v19, v6

    .end local v4    # "flagsToUpdate":I
    .end local v6    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v18    # "flagsToUpdate":I
    .restart local v19    # "params":Landroid/view/WindowManager$LayoutParams;
    const v3, 0x109010c

    .line 2650
    .restart local v3    # "layoutResource":I
    :goto_a
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/PhoneWindow;->removeFeature(I)V

    goto/16 :goto_c

    .line 2652
    .end local v3    # "layoutResource":I
    .end local v18    # "flagsToUpdate":I
    .end local v19    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "flagsToUpdate":I
    .restart local v6    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_31
    move/from16 v18, v4

    move-object/from16 v19, v6

    .end local v4    # "flagsToUpdate":I
    .end local v6    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v18    # "flagsToUpdate":I
    .restart local v19    # "params":Landroid/view/WindowManager$LayoutParams;
    and-int/lit8 v3, v2, 0x24

    if-eqz v3, :cond_32

    and-int/lit16 v3, v2, 0x100

    if-nez v3, :cond_32

    .line 2656
    const v3, 0x1090108

    .restart local v3    # "layoutResource":I
    goto :goto_c

    .line 2658
    .end local v3    # "layoutResource":I
    :cond_32
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_34

    .line 2661
    iget-boolean v3, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-eqz v3, :cond_33

    .line 2662
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 2663
    .local v3, "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1120036

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2665
    iget v3, v3, Landroid/util/TypedValue;->resourceId:I

    .line 2666
    .local v3, "layoutResource":I
    goto :goto_b

    .line 2667
    .end local v3    # "layoutResource":I
    :cond_33
    const v3, 0x1090107

    .line 2670
    .restart local v3    # "layoutResource":I
    :goto_b
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/PhoneWindow;->removeFeature(I)V

    goto :goto_c

    .line 2671
    .end local v3    # "layoutResource":I
    :cond_34
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_37

    .line 2674
    iget-boolean v3, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-eqz v3, :cond_35

    .line 2675
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 2676
    .local v3, "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1120038

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2678
    iget v3, v3, Landroid/util/TypedValue;->resourceId:I

    .line 2679
    .local v3, "layoutResource":I
    goto :goto_c

    .end local v3    # "layoutResource":I
    :cond_35
    and-int/lit16 v3, v2, 0x100

    if-eqz v3, :cond_36

    .line 2680
    const/16 v3, 0x3e

    const v4, 0x1090106

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .restart local v3    # "layoutResource":I
    goto :goto_c

    .line 2684
    .end local v3    # "layoutResource":I
    :cond_36
    const v3, 0x109010b

    .restart local v3    # "layoutResource":I
    goto :goto_c

    .line 2687
    .end local v3    # "layoutResource":I
    :cond_37
    and-int/lit16 v3, v2, 0x400

    if-eqz v3, :cond_38

    .line 2688
    const v3, 0x109010a

    .restart local v3    # "layoutResource":I
    goto :goto_c

    .line 2691
    .end local v3    # "layoutResource":I
    :cond_38
    const v3, 0x1090109

    .line 2695
    .restart local v3    # "layoutResource":I
    :goto_c
    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/DecorView;->startChanging()V

    .line 2696
    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v5, v0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v5, v3}, Lcom/android/internal/policy/DecorView;->onResourcesLoaded(Landroid/view/LayoutInflater;I)V

    .line 2698
    const v4, 0x1020002

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 2699
    .local v4, "contentParent":Landroid/view/ViewGroup;
    if-eqz v4, :cond_3e

    .line 2708
    and-int/lit8 v5, v2, 0x20

    if-eqz v5, :cond_39

    .line 2709
    const/4 v5, 0x0

    invoke-direct {v0, v5}, Lcom/android/internal/policy/PhoneWindow;->getCircularProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v5

    .line 2710
    .local v5, "progress":Landroid/widget/ProgressBar;
    if-eqz v5, :cond_39

    .line 2711
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 2717
    .end local v5    # "progress":Landroid/widget/ProgressBar;
    :cond_39
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v5

    if-nez v5, :cond_3d

    .line 2718
    iget-object v5, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v6, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2721
    iget v5, v0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    if-eqz v5, :cond_3a

    .line 2722
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, v0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .local v5, "frame":Landroid/graphics/drawable/Drawable;
    goto :goto_d

    .line 2724
    .end local v5    # "frame":Landroid/graphics/drawable/Drawable;
    :cond_3a
    const/4 v5, 0x0

    .line 2726
    .restart local v5    # "frame":Landroid/graphics/drawable/Drawable;
    :goto_d
    iget-object v6, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v6, v5}, Lcom/android/internal/policy/DecorView;->setWindowFrame(Landroid/graphics/drawable/Drawable;)V

    .line 2728
    iget-object v6, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget v10, v0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    invoke-virtual {v6, v10}, Lcom/android/internal/policy/DecorView;->setElevation(F)V

    .line 2729
    iget-object v6, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-boolean v10, v0, Lcom/android/internal/policy/PhoneWindow;->mClipToOutline:Z

    invoke-virtual {v6, v10}, Lcom/android/internal/policy/DecorView;->setClipToOutline(Z)V

    .line 2731
    iget-object v6, v0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    if-eqz v6, :cond_3b

    .line 2732
    invoke-virtual {v0, v6}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;)V

    .line 2735
    :cond_3b
    iget v6, v0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    if-nez v6, :cond_3c

    .line 2736
    iget v6, v0, Lcom/android/internal/policy/PhoneWindow;->mTextColor:I

    iput v6, v0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    .line 2738
    :cond_3c
    iget v6, v0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    invoke-virtual {v0, v6}, Lcom/android/internal/policy/PhoneWindow;->setTitleColor(I)V

    .line 2741
    .end local v5    # "frame":Landroid/graphics/drawable/Drawable;
    :cond_3d
    iget-object v5, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v5}, Lcom/android/internal/policy/DecorView;->finishChanging()V

    .line 2743
    return-object v4

    .line 2702
    :cond_3e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Window couldn\'t find content container view. LayoutResource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";IsFloating: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; Features: 0X "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2703
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2702
    invoke-static {v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2705
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Window couldn\'t find content container view"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public whitelist getAllowEnterTransitionOverlap()Z
    .locals 1

    .line 3337
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public whitelist getAllowReturnTransitionOverlap()Z
    .locals 1

    .line 3347
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method blacklist getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .line 2024
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 2025
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    .line 2027
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public whitelist getContentScene()Landroid/transition/Scene;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    return-object v0
.end method

.method public whitelist getCurrentFocus()Landroid/view/View;
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->findFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method blacklist getDecorCaptionShade()I
    .locals 1

    .line 3956
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorCaptionShade:I

    return v0
.end method

.method public final whitelist getDecorView()Landroid/view/View;
    .locals 1

    .line 2162
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForceDecorInstall:Z

    if-eqz v0, :cond_1

    .line 2163
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 2165
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    return-object v0
.end method

.method public blacklist getElevation()F
    .locals 1

    .line 1530
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    return v0
.end method

.method public whitelist getEnterTransition()Landroid/transition/Transition;
    .locals 1

    .line 3288
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public whitelist getExitTransition()Landroid/transition/Transition;
    .locals 1

    .line 3299
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public whitelist getInsetsController()Landroid/view/WindowInsetsController;
    .locals 1

    .line 3969
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method blacklist getLocalFeaturesPrivate()I
    .locals 1

    .line 3821
    invoke-super {p0}, Landroid/view/Window;->getLocalFeatures()I

    move-result v0

    return v0
.end method

.method public whitelist getMediaController()Landroid/media/session/MediaController;
    .locals 1

    .line 3243
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method public blacklist getNavigationBarBackgroundView()Landroid/view/View;
    .locals 1

    .line 4043
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getNavigationBarBackgroundView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getNavigationBarColor()I
    .locals 1

    .line 3865
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    return v0
.end method

.method public whitelist getNavigationBarDividerColor()I
    .locals 1

    .line 3898
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarDividerColor:I

    return v0
.end method

.method public whitelist getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;
    .locals 1

    .line 4054
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mProxyOnBackInvokedDispatcher:Landroid/window/ProxyOnBackInvokedDispatcher;

    return-object v0
.end method

.method blacklist getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    .line 2947
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZLcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getReenterTransition()Landroid/transition/Transition;
    .locals 2

    .line 3304
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getExitTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_0

    .line 3305
    :cond_0
    nop

    .line 3304
    :goto_0
    return-object v0
.end method

.method public whitelist getReturnTransition()Landroid/transition/Transition;
    .locals 2

    .line 3293
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_0

    .line 3294
    :cond_0
    nop

    .line 3293
    :goto_0
    return-object v0
.end method

.method public whitelist getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;
    .locals 1

    .line 4048
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImplOrNull()Landroid/view/ViewRootImpl;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSharedElementEnterTransition()Landroid/transition/Transition;
    .locals 1

    .line 3310
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public whitelist getSharedElementExitTransition()Landroid/transition/Transition;
    .locals 1

    .line 3321
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public whitelist getSharedElementReenterTransition()Landroid/transition/Transition;
    .locals 2

    .line 3326
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    .line 3327
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getSharedElementExitTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_0

    :cond_0
    nop

    .line 3326
    :goto_0
    return-object v0
.end method

.method public whitelist getSharedElementReturnTransition()Landroid/transition/Transition;
    .locals 2

    .line 3315
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    .line 3316
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_0

    :cond_0
    nop

    .line 3315
    :goto_0
    return-object v0
.end method

.method public whitelist getSharedElementsUseOverlay()Z
    .locals 1

    .line 3371
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public blacklist getStatusBarBackgroundView()Landroid/view/View;
    .locals 1

    .line 4037
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getStatusBarBackgroundView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getStatusBarColor()I
    .locals 1

    .line 3847
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    return v0
.end method

.method public whitelist getSystemGestureExclusionRects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 3980
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getRootSystemGestureExclusionRects()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTransitionBackgroundFadeDuration()J
    .locals 4

    .line 3352
    iget-wide v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v0, 0x12c

    goto :goto_0

    .line 3353
    :cond_0
    nop

    .line 3352
    :goto_0
    return-wide v0
.end method

.method public whitelist getTransitionManager()Landroid/transition/TransitionManager;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    return-object v0
.end method

.method public whitelist getVolumeControlStream()I
    .locals 1

    .line 3233
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    return v0
.end method

.method public blacklist getWrapper()Lcom/android/internal/policy/IPhoneWindowWrapper;
    .locals 1

    .line 4062
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mWrapper:Lcom/android/internal/policy/IPhoneWindowWrapper;

    return-object v0
.end method

.method protected blacklist initializePanelContent(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z
    .locals 4
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 1481
    iget-object v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1482
    iget-object v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iput-object v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1483
    return v1

    .line 1486
    :cond_0
    iget-object v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1487
    return v2

    .line 1490
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    if-nez v0, :cond_2

    .line 1491
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback-IA;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    .line 1494
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInListMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1495
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->getListMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    goto :goto_0

    .line 1496
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->getIconMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    :goto_0
    nop

    .line 1498
    .local v0, "menuView":Lcom/android/internal/view/menu/MenuView;
    move-object v3, v0

    check-cast v3, Landroid/view/View;

    iput-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1500
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 1502
    invoke-interface {v0}, Lcom/android/internal/view/menu/MenuView;->getWindowAnimations()I

    move-result v2

    .line 1503
    .local v2, "defaultAnimations":I
    if-eqz v2, :cond_4

    .line 1504
    iput v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->windowAnimations:I

    .line 1506
    :cond_4
    return v1

    .line 1508
    .end local v2    # "defaultAnimations":I
    :cond_5
    return v2
.end method

.method protected blacklist initializePanelDecor(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z
    .locals 5
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 1427
    iget v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->generateDecor(I)Lcom/android/internal/policy/DecorView;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    .line 1428
    const/16 v0, 0x51

    iput v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->gravity:I

    .line 1429
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->setStyle(Landroid/content/Context;)V

    .line 1430
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->Window:[I

    iget v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listPresenterTheme:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1432
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x25

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 1433
    .local v1, "elevation":F
    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 1434
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/DecorView;->setElevation(F)V

    .line 1436
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1438
    const/4 v2, 0x1

    return v2
.end method

.method protected blacklist initializePanelMenu(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z
    .locals 7
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 1377
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1380
    .local v0, "context":Landroid/content/Context;
    iget v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v1, :cond_4

    .line 1382
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1383
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1384
    .local v3, "baseTheme":Landroid/content/res/Resources$Theme;
    const v4, 0x1010431

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1386
    const/4 v4, 0x0

    .line 1387
    .local v4, "widgetTheme":Landroid/content/res/Resources$Theme;
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    const v6, 0x1010397

    if-eqz v5, :cond_1

    .line 1388
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 1389
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1390
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1391
    invoke-virtual {v4, v6, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_0

    .line 1394
    :cond_1
    invoke-virtual {v3, v6, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1398
    :goto_0
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_3

    .line 1399
    if-nez v4, :cond_2

    .line 1400
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 1401
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1403
    :cond_2
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1406
    :cond_3
    if-eqz v4, :cond_4

    .line 1407
    new-instance v5, Landroid/view/ContextThemeWrapper;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, v5

    .line 1408
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1412
    .end local v1    # "outValue":Landroid/util/TypedValue;
    .end local v3    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v4    # "widgetTheme":Landroid/content/res/Resources$Theme;
    :cond_4
    new-instance v1, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 1413
    .local v1, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    invoke-virtual {v1, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 1414
    invoke-virtual {p1, v1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 1416
    return v2
.end method

.method public whitelist injectInputEvent(Landroid/view/InputEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 1878
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    .line 1879
    return-void
.end method

.method public whitelist invalidatePanelMenu(I)V
    .locals 3
    .param p1, "featureId"    # I

    .line 1053
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    .line 1055
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 1056
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/DecorView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1057
    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    .line 1059
    :cond_0
    return-void
.end method

.method public whitelist isFloating()Z
    .locals 1

    .line 578
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    return v0
.end method

.method public whitelist isNavigationBarContrastEnforced()Z
    .locals 1

    .line 3924
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEnsureNavigationBarContrastWhenTransparent:Z

    return v0
.end method

.method public whitelist isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 3001
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 3002
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method blacklist isShowingWallpaper()Z
    .locals 2

    .line 589
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isStatusBarContrastEnforced()Z
    .locals 1

    .line 3911
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEnsureStatusBarContrastWhenTransparent:Z

    return v0
.end method

.method public blacklist isTranslucent()Z
    .locals 1

    .line 582
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mIsTranslucent:Z

    return v0
.end method

.method protected whitelist onActive()V
    .locals 0

    .line 2158
    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 757
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-nez v0, :cond_5

    .line 758
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 759
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_5

    .line 760
    iget-boolean v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_4

    .line 762
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 763
    .local v2, "state":Landroid/os/Bundle;
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v3, :cond_0

    .line 764
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v3, v2}, Lcom/android/internal/view/menu/IconMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 766
    :cond_0
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v3, :cond_1

    .line 767
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v3, v2}, Lcom/android/internal/view/menu/ListMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 772
    :cond_1
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->clearMenuViews(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)V

    .line 775
    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->reopenMenu(Z)V

    .line 778
    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v0, :cond_2

    .line 779
    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/IconMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 781
    :cond_2
    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v0, :cond_3

    .line 782
    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/ListMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 785
    .end local v2    # "state":Landroid/os/Bundle;
    :cond_3
    goto :goto_0

    .line 788
    :cond_4
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->clearMenuViews(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)V

    .line 792
    .end local v1    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_5
    :goto_0
    return-void
.end method

.method protected blacklist onDrawableChanged(ILandroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "alpha"    # I

    .line 1659
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1660
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getLeftIconView()Landroid/widget/ImageView;

    move-result-object v0

    .local v0, "view":Landroid/widget/ImageView;
    goto :goto_0

    .line 1661
    .end local v0    # "view":Landroid/widget/ImageView;
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1662
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getRightIconView()Landroid/widget/ImageView;

    move-result-object v0

    .line 1667
    .restart local v0    # "view":Landroid/widget/ImageView;
    :goto_0
    if-eqz p2, :cond_1

    .line 1668
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1669
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1670
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1672
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1674
    :goto_1
    return-void

    .line 1664
    .end local v0    # "view":Landroid/widget/ImageView;
    :cond_2
    return-void
.end method

.method protected blacklist onIntChanged(II)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .line 1684
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1686
    :cond_0
    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    .line 1687
    const v0, 0x1020538

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1688
    .local v0, "titleContainer":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_2

    .line 1689
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_1

    .line 1685
    .end local v0    # "titleContainer":Landroid/widget/FrameLayout;
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneWindow;->updateProgressBars(I)V

    .line 1692
    :cond_2
    :goto_1
    return-void
.end method

.method protected blacklist onKeyDown(IILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 1954
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1958
    .local v0, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_3

    .line 1996
    :sswitch_0
    if-gez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, p1

    :goto_1
    invoke-virtual {p0, v1, p3}, Lcom/android/internal/policy/PhoneWindow;->onKeyDownPanel(ILandroid/view/KeyEvent;)Z

    .line 1997
    return v2

    .line 1986
    :sswitch_1
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v3, :cond_2

    .line 1987
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    .line 1988
    invoke-virtual {v4}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v4

    .line 1987
    invoke-virtual {v3, p3, v4}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEventToSessionAsSystemService(Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1989
    return v2

    .line 1992
    :cond_2
    return v1

    .line 1964
    :sswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_3

    .line 1965
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    .line 1966
    invoke-virtual {v3}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v3

    .line 1965
    invoke-virtual {v1, p3, v3}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventToSessionAsSystemService(Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)V

    goto :goto_2

    .line 1968
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v1

    iget v3, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    invoke-virtual {v1, p3, v3}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventAsSystemService(Landroid/view/KeyEvent;I)V

    .line 1971
    :goto_2
    return v2

    .line 2001
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-lez v3, :cond_4

    goto :goto_3

    .line 2002
    :cond_4
    if-gez p1, :cond_5

    goto :goto_3

    .line 2004
    :cond_5
    if-eqz v0, :cond_6

    .line 2005
    invoke-virtual {v0, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 2007
    :cond_6
    return v2

    .line 2012
    :goto_3
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x4f -> :sswitch_1
        0x52 -> :sswitch_0
        0x55 -> :sswitch_1
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
        0x59 -> :sswitch_1
        0x5a -> :sswitch_1
        0x5b -> :sswitch_1
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
        0x82 -> :sswitch_1
        0xa4 -> :sswitch_2
    .end sparse-switch
.end method

.method public final blacklist onKeyDownPanel(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1105
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1107
    .local v0, "keyCode":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1109
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    .line 1111
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1112
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_0

    iget-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v3, :cond_0

    .line 1113
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 1117
    .end local v1    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_0
    return v2
.end method

.method protected blacklist onKeyUp(IILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 2046
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2047
    .local v0, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :goto_0
    if-eqz v0, :cond_1

    .line 2048
    invoke-virtual {v0, p3}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 2053
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_3

    .line 2141
    :sswitch_0
    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mSupportsPictureInPicture:Z

    if-eqz v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2142
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/Window$WindowControllerCallback;->enterPictureInPictureModeIfPossible()V

    .line 2144
    :cond_2
    return v2

    .line 2072
    :sswitch_1
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v1

    const/high16 v3, -0x80000000

    invoke-virtual {v1, p3, v3}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventAsSystemService(Landroid/view/KeyEvent;I)V

    .line 2074
    return v2

    .line 2127
    :sswitch_2
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->isNotInstantAppAndKeyguardRestricted()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2128
    goto/16 :goto_3

    .line 2130
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x6

    if-ne v3, v4, :cond_4

    .line 2132
    goto/16 :goto_3

    .line 2134
    :cond_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2135
    invoke-direct {p0, p3}, Lcom/android/internal/policy/PhoneWindow;->launchDefaultSearch(Landroid/view/KeyEvent;)Z

    .line 2137
    :cond_5
    return v2

    .line 2099
    :sswitch_3
    if-gez p1, :cond_6

    goto :goto_1

    :cond_6
    move v1, p1

    :goto_1
    invoke-virtual {p0, v1, p3}, Lcom/android/internal/policy/PhoneWindow;->onKeyUpPanel(ILandroid/view/KeyEvent;)V

    .line 2101
    return v2

    .line 2089
    :sswitch_4
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v3, :cond_7

    .line 2090
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    .line 2091
    invoke-virtual {v4}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v4

    .line 2090
    invoke-virtual {v3, p3, v4}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEventToSessionAsSystemService(Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2092
    return v2

    .line 2095
    :cond_7
    return v1

    .line 2058
    :sswitch_5
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_8

    .line 2059
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    .line 2060
    invoke-virtual {v3}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v3

    .line 2059
    invoke-virtual {v1, p3, v3}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventToSessionAsSystemService(Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)V

    goto :goto_2

    .line 2062
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v1

    iget v3, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    invoke-virtual {v1, p3, v3}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventAsSystemService(Landroid/view/KeyEvent;I)V

    .line 2065
    :goto_2
    return v2

    .line 2105
    :sswitch_6
    if-gez p1, :cond_9

    goto :goto_3

    .line 2106
    :cond_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_b

    .line 2107
    if-nez p1, :cond_a

    .line 2108
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 2109
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_a

    iget-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz v3, :cond_a

    .line 2112
    invoke-direct {p0, v2}, Lcom/android/internal/policy/PhoneWindow;->reopenMenu(Z)V

    .line 2113
    return v2

    .line 2116
    .end local v1    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    .line 2117
    return v2

    .line 2148
    :cond_b
    :goto_3
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_6
        0x18 -> :sswitch_5
        0x19 -> :sswitch_5
        0x4f -> :sswitch_4
        0x52 -> :sswitch_3
        0x54 -> :sswitch_2
        0x55 -> :sswitch_4
        0x56 -> :sswitch_4
        0x57 -> :sswitch_4
        0x58 -> :sswitch_4
        0x59 -> :sswitch_4
        0x5a -> :sswitch_4
        0x5b -> :sswitch_4
        0x7e -> :sswitch_4
        0x7f -> :sswitch_4
        0x82 -> :sswitch_4
        0xa4 -> :sswitch_1
        0xab -> :sswitch_0
    .end sparse-switch
.end method

.method public final blacklist onKeyUpPanel(ILandroid/view/KeyEvent;)V
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1127
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    if-eqz v0, :cond_a

    .line 1128
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    .line 1130
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1132
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-nez v2, :cond_9

    :cond_0
    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 1137
    :cond_1
    const/4 v2, 0x0

    .line 1138
    .local v2, "playSoundEffect":Z
    if-nez p1, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_3

    .line 1139
    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1140
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1141
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1142
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1143
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    move-result v2

    goto :goto_1

    .line 1146
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    move-result v2

    goto :goto_1

    .line 1149
    :cond_3
    iget-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v3, :cond_6

    iget-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    if-eqz v3, :cond_4

    goto :goto_0

    .line 1158
    :cond_4
    iget-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-eqz v3, :cond_7

    .line 1159
    const/4 v3, 0x1

    .line 1160
    .local v3, "show":Z
    iget-boolean v4, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v4, :cond_5

    .line 1163
    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 1164
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v3

    .line 1167
    :cond_5
    if-eqz v3, :cond_7

    .line 1169
    const v4, 0xc351

    invoke-static {v4, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1172
    invoke-direct {p0, v1, p2}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 1174
    const/4 v2, 0x1

    goto :goto_1

    .line 1153
    .end local v3    # "show":Z
    :cond_6
    :goto_0
    iget-boolean v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 1156
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1179
    :cond_7
    :goto_1
    if-eqz v2, :cond_a

    .line 1180
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    .line 1182
    .local v3, "audioManager":Landroid/media/AudioManager;
    if-eqz v3, :cond_8

    .line 1183
    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_3

    .line 1185
    :cond_8
    const-string v0, "PhoneWindow"

    const-string v4, "Couldn\'t get audio manager"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1134
    .end local v2    # "playSoundEffect":Z
    .end local v3    # "audioManager":Landroid/media/AudioManager;
    :cond_9
    :goto_2
    return-void

    .line 1189
    .end local v1    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_a
    :goto_3
    return-void
.end method

.method public blacklist onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 1301
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1302
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1303
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1304
    .local v1, "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_0

    .line 1305
    iget v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-interface {v0, v2, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 1308
    .end local v1    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 1312
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->reopenMenu(Z)V

    .line 1313
    return-void
.end method

.method public blacklist onMultiWindowModeChanged()V
    .locals 2

    .line 796
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 797
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 799
    :cond_0
    return-void
.end method

.method blacklist onOptionsPanelRotationChanged()V
    .locals 4

    .line 1458
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 1459
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v0, :cond_0

    return-void

    .line 1461
    :cond_0
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_1

    .line 1462
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1463
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    if-eqz v1, :cond_2

    .line 1464
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getOptionsPanelGravity()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1465
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 1466
    .local v2, "wm":Landroid/view/ViewManager;
    if-eqz v2, :cond_2

    .line 1467
    iget-object v3, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-interface {v2, v3, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1470
    .end local v2    # "wm":Landroid/view/ViewManager;
    :cond_2
    return-void
.end method

.method public blacklist onPictureInPictureModeChanged(Z)V
    .locals 1
    .param p1, "isInPictureInPictureMode"    # Z

    .line 803
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 804
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->updatePictureInPictureOutlineProvider(Z)V

    .line 806
    :cond_0
    return-void
.end method

.method blacklist onViewRootImplSet(Landroid/view/ViewRootImpl;)V
    .locals 2
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;

    .line 2175
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    invoke-virtual {p1, v0}, Landroid/view/ViewRootImpl;->setActivityConfigCallback(Landroid/view/ViewRootImpl$ActivityConfigCallback;)V

    .line 2176
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mProxyOnBackInvokedDispatcher:Landroid/window/ProxyOnBackInvokedDispatcher;

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/window/ProxyOnBackInvokedDispatcher;->setActualDispatcher(Landroid/window/OnBackInvokedDispatcher;)V

    .line 2177
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->applyDecorFitsSystemWindows()V

    .line 2178
    return-void
.end method

.method public final whitelist openPanel(ILandroid/view/KeyEvent;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 830
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 831
    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    goto :goto_0

    .line 835
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 837
    :goto_0
    return-void
.end method

.method blacklist openPanelsAfterRestore()V
    .locals 4

    .line 2316
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 2318
    .local v0, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v0, :cond_0

    .line 2319
    return-void

    .line 2323
    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2324
    aget-object v2, v0, v1

    .line 2328
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_1

    .line 2329
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->applyFrozenState()V

    .line 2330
    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v3, :cond_1

    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->wasLastOpen:Z

    if-eqz v3, :cond_1

    .line 2331
    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->wasLastExpanded:Z

    iput-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 2332
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 2323
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2336
    .end local v1    # "i":I
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_2
    return-void
.end method

.method public final whitelist peekDecorView()Landroid/view/View;
    .locals 1

    .line 2170
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    return-object v0
.end method

.method public whitelist performContextMenuIdentifierAction(II)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .line 1514
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->performIdentifierAction(II)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist performPanelIdentifierAction(III)Z
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "id"    # I
    .param p3, "flags"    # I

    .line 1270
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1271
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    const/16 v4, 0x52

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1272
    return v3

    .line 1274
    :cond_0
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v2, :cond_1

    .line 1275
    return v3

    .line 1278
    :cond_1
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, p2, p3}, Lcom/android/internal/view/menu/MenuBuilder;->performIdentifierAction(II)Z

    move-result v2

    .line 1281
    .local v2, "res":Z
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-nez v3, :cond_2

    .line 1282
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1285
    :cond_2
    return v2
.end method

.method public whitelist performPanelShortcut(IILandroid/view/KeyEvent;I)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    .line 1236
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method blacklist performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 3
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    .line 1241
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 1245
    :cond_0
    const/4 v0, 0x0

    .line 1249
    .local v0, "handled":Z
    iget-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-nez v1, :cond_1

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_2

    .line 1251
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 1254
    :cond_2
    if-eqz v0, :cond_3

    .line 1256
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 1259
    and-int/lit8 v2, p4, 0x1

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-nez v2, :cond_3

    .line 1260
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1264
    :cond_3
    return v0

    .line 1242
    .end local v0    # "handled":Z
    :cond_4
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 650
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 651
    return v1

    .line 655
    :cond_0
    iget-boolean v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 656
    return v2

    .line 659
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    .line 661
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 664
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 666
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_3

    .line 667
    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 670
    :cond_3
    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    if-eqz v3, :cond_5

    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    move v3, v1

    goto :goto_1

    :cond_5
    :goto_0
    move v3, v2

    .line 673
    .local v3, "isActionBarMenu":Z
    :goto_1
    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v4, :cond_6

    .line 676
    invoke-interface {v4}, Lcom/android/internal/widget/DecorContentParent;->setMenuPrepared()V

    .line 679
    :cond_6
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-nez v4, :cond_15

    .line 681
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    iget-boolean v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v4, :cond_d

    .line 682
    :cond_7
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v4, :cond_9

    .line 683
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->initializePanelMenu(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v4, :cond_9

    .line 684
    :cond_8
    return v1

    .line 688
    :cond_9
    if-eqz v3, :cond_b

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v4, :cond_b

    .line 689
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    if-nez v4, :cond_a

    .line 690
    new-instance v4, Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback-IA;)V

    iput-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    .line 692
    :cond_a
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-interface {v4, v6, v7}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 699
    :cond_b
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 700
    if-eqz v0, :cond_13

    iget v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v6}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_4

    .line 712
    :cond_c
    iput-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    .line 719
    :cond_d
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 723
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    if-eqz v4, :cond_e

    .line 724
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v4, v6}, Lcom/android/internal/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 725
    iput-object v5, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 728
    :cond_e
    iget v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v7, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v6, v7}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 729
    if-eqz v3, :cond_f

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v2, :cond_f

    .line 732
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-interface {v2, v5, v4}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 734
    :cond_f
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 735
    return v1

    .line 740
    :cond_10
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    goto :goto_2

    :cond_11
    const/4 v4, -0x1

    .line 739
    :goto_2
    invoke-static {v4}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v4

    .line 741
    .local v4, "kmap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v4}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v5

    if-eq v5, v2, :cond_12

    move v5, v2

    goto :goto_3

    :cond_12
    move v5, v1

    :goto_3
    iput-boolean v5, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->qwertyMode:Z

    .line 742
    iget-object v5, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-boolean v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->qwertyMode:Z

    invoke-virtual {v5, v6}, Lcom/android/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 743
    iget-object v5, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_5

    .line 702
    .end local v4    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_13
    :goto_4
    invoke-virtual {p1, v5}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 704
    if-eqz v3, :cond_14

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v2, :cond_14

    .line 706
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-interface {v2, v5, v4}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 709
    :cond_14
    return v1

    .line 747
    :cond_15
    :goto_5
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 748
    iput-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 749
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 751
    return v2
.end method

.method public whitelist registerScrollCaptureCallback(Landroid/view/ScrollCaptureCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/view/ScrollCaptureCallback;

    .line 4021
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->addScrollCaptureCallback(Landroid/view/ScrollCaptureCallback;)V

    .line 4022
    return-void
.end method

.method public blacklist reportActivityRelaunched()V
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->reportActivityRelaunched()V

    .line 813
    :cond_0
    return-void
.end method

.method public whitelist requestFeature(I)Z
    .locals 5
    .param p1, "featureId"    # I

    .line 420
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParentExplicitlySet:Z

    if-nez v0, :cond_6

    .line 423
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v0

    .line 424
    .local v0, "features":I
    const/4 v1, 0x1

    shl-int v2, v1, p1

    or-int/2addr v2, v0

    .line 425
    .local v2, "newFeatures":I
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_1

    and-int/lit16 v3, v2, -0x34c2

    if-nez v3, :cond_0

    goto :goto_0

    .line 429
    :cond_0
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string v3, "You cannot combine custom titles with other title features"

    invoke-direct {v1, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 432
    :cond_1
    :goto_0
    and-int/lit8 v3, v0, 0x2

    const/16 v4, 0x8

    if-eqz v3, :cond_2

    if-ne p1, v4, :cond_2

    .line 433
    const/4 v1, 0x0

    return v1

    .line 435
    :cond_2
    and-int/lit16 v3, v0, 0x100

    if-eqz v3, :cond_3

    if-ne p1, v1, :cond_3

    .line 437
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/PhoneWindow;->removeFeature(I)V

    .line 440
    :cond_3
    const/4 v1, 0x5

    if-ne p1, v1, :cond_5

    .line 441
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 442
    :cond_4
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string v3, "You cannot use indeterminate progress on a watch."

    invoke-direct {v1, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 444
    :cond_5
    :goto_1
    invoke-super {p0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v1

    return v1

    .line 421
    .end local v0    # "features":I
    .end local v2    # "newFeatures":I
    :cond_6
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v1, "requestFeature() must be called before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist requestScrollCapture(Landroid/view/IScrollCaptureResponseListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/IScrollCaptureResponseListener;

    .line 4011
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchScrollCaptureRequest(Landroid/view/IScrollCaptureResponseListener;)V

    .line 4012
    return-void
.end method

.method public whitelist restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 2222
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 2223
    return-void

    .line 2226
    :cond_0
    nop

    .line 2227
    const-string v0, "android:views"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 2228
    .local v0, "savedStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v0, :cond_1

    .line 2229
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 2233
    :cond_1
    const-string v1, "android:focusedViewId"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2234
    .local v1, "focusedViewId":I
    const-string v3, "PhoneWindow"

    if-eq v1, v2, :cond_3

    .line 2235
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2236
    .local v2, "needsFocus":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 2237
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 2239
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Previously focused view reported id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " during save, but can\'t be found during restore."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    .end local v2    # "needsFocus":Landroid/view/View;
    :cond_3
    :goto_0
    const-string v2, "android:Panels"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    .line 2247
    .local v2, "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v2, :cond_4

    .line 2248
    invoke-direct {p0, v2}, Lcom/android/internal/policy/PhoneWindow;->restorePanelState(Landroid/util/SparseArray;)V

    .line 2251
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v4, :cond_6

    .line 2252
    nop

    .line 2253
    const-string v4, "android:ActionBar"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    .line 2254
    .local v4, "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v4, :cond_5

    .line 2255
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->doPendingInvalidatePanelMenu()V

    .line 2256
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3, v4}, Lcom/android/internal/widget/DecorContentParent;->restoreToolbarHierarchyState(Landroid/util/SparseArray;)V

    goto :goto_1

    .line 2258
    :cond_5
    const-string v5, "Missing saved instance states for action bar views! State will not be restored."

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    .end local v4    # "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_6
    :goto_1
    return-void
.end method

.method public whitelist saveHierarchyState()Landroid/os/Bundle;
    .locals 6

    .line 2188
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2189
    .local v0, "outState":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 2190
    return-object v0

    .line 2193
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 2194
    .local v1, "states":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 2195
    const-string v2, "android:views"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2198
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2199
    .local v2, "focusedView":Landroid/view/View;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 2200
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const-string v4, "android:focusedViewId"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2204
    :cond_1
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 2205
    .local v3, "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->savePanelState(Landroid/util/SparseArray;)V

    .line 2206
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 2207
    const-string v4, "android:Panels"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2210
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v4, :cond_3

    .line 2211
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 2212
    .local v4, "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v5, v4}, Lcom/android/internal/widget/DecorContentParent;->saveToolbarHierarchyState(Landroid/util/SparseArray;)V

    .line 2213
    const-string v5, "android:ActionBar"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2216
    .end local v4    # "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_3
    return-object v0
.end method

.method blacklist sendCloseSystemWindows()V
    .locals 2

    .line 3829
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 3830
    return-void
.end method

.method blacklist sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 3833
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 3834
    return-void
.end method

.method public whitelist setAllowEnterTransitionOverlap(Z)V
    .locals 1
    .param p1, "allow"    # Z

    .line 3332
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    .line 3333
    return-void
.end method

.method public whitelist setAllowReturnTransitionOverlap(Z)V
    .locals 1
    .param p1, "allowExitTransitionOverlap"    # Z

    .line 3342
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    .line 3343
    return-void
.end method

.method public whitelist setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 3961
    invoke-super {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3962
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 3963
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->updateLogTag(Landroid/view/WindowManager$LayoutParams;)V

    .line 3965
    :cond_0
    return-void
.end method

.method public final whitelist setBackgroundBlurRadius(I)V
    .locals 3
    .param p1, "blurRadius"    # I

    .line 1559
    invoke-super {p0, p1}, Landroid/view/Window;->setBackgroundBlurRadius(I)V

    .line 1560
    sget-boolean v0, Landroid/view/CrossWindowBlurListeners;->CROSS_WINDOW_BLUR_SUPPORTED:Z

    if-eqz v0, :cond_0

    .line 1561
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundBlurRadius:I

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 1562
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundBlurRadius:I

    .line 1563
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/DecorView;->setBackgroundBlurRadius(I)V

    .line 1566
    :cond_0
    return-void
.end method

.method public final whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1543
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_2

    .line 1544
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1545
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_2

    .line 1546
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->startChanging()V

    .line 1547
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1548
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1549
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1550
    :cond_0
    nop

    .line 1549
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/DecorView;->setBackgroundFallback(Landroid/graphics/drawable/Drawable;)V

    .line 1552
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->finishChanging()V

    .line 1555
    :cond_2
    return-void
.end method

.method public final whitelist setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 2989
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 2990
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->child:Landroid/graphics/drawable/Drawable;

    .line 2991
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 2992
    return-void
.end method

.method public final whitelist setChildInt(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .line 2996
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PhoneWindow;->updateInt(IIZ)V

    .line 2997
    return-void
.end method

.method public final whitelist setClipToOutline(Z)V
    .locals 1
    .param p1, "clipToOutline"    # Z

    .line 1535
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mClipToOutline:Z

    .line 1536
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 1537
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->setClipToOutline(Z)V

    .line 1539
    :cond_0
    return-void
.end method

.method public final whitelist setContainer(Landroid/view/Window;)V
    .locals 0
    .param p1, "container"    # Landroid/view/Window;

    .line 415
    invoke-super {p0, p1}, Landroid/view/Window;->setContainer(Landroid/view/Window;)V

    .line 416
    return-void
.end method

.method public whitelist setContentView(I)V
    .locals 2
    .param p1, "layoutResID"    # I

    .line 477
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    const/16 v1, 0xc

    if-nez v0, :cond_0

    .line 478
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    goto :goto_0

    .line 479
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 483
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 484
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    .line 485
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 484
    invoke-static {v0, p1, v1}, Landroid/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/transition/Scene;

    move-result-object v0

    .line 486
    .local v0, "newScene":Landroid/transition/Scene;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->transitionTo(Landroid/transition/Scene;)V

    .line 487
    .end local v0    # "newScene":Landroid/transition/Scene;
    goto :goto_1

    .line 488
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 490
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestApplyInsets()V

    .line 491
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 492
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 493
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 495
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParentExplicitlySet:Z

    .line 496
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 500
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 508
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    const/16 v1, 0xc

    if-nez v0, :cond_0

    .line 509
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    goto :goto_0

    .line 510
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 514
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 515
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 516
    new-instance v0, Landroid/transition/Scene;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, p1}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 517
    .local v0, "newScene":Landroid/transition/Scene;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->transitionTo(Landroid/transition/Scene;)V

    .line 518
    .end local v0    # "newScene":Landroid/transition/Scene;
    goto :goto_1

    .line 519
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 521
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestApplyInsets()V

    .line 522
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 523
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 524
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 526
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParentExplicitlySet:Z

    .line 527
    return-void
.end method

.method public whitelist setDecorCaptionShade(I)V
    .locals 1
    .param p1, "decorCaptionShade"    # I

    .line 3949
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorCaptionShade:I

    .line 3950
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 3951
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->updateDecorCaptionShade()V

    .line 3953
    :cond_0
    return-void
.end method

.method public whitelist setDecorFitsSystemWindows(Z)V
    .locals 0
    .param p1, "decorFitsSystemWindows"    # Z

    .line 3985
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorFitsSystemWindows:Z

    .line 3986
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->applyDecorFitsSystemWindows()V

    .line 3987
    return-void
.end method

.method public blacklist setDefaultIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 1832
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1833
    return-void

    .line 1835
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    .line 1836
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 1838
    :cond_1
    if-eqz p1, :cond_2

    .line 1839
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    .line 1840
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    goto :goto_0

    .line 1842
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 1843
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1842
    invoke-interface {v0, v1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1844
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    .line 1847
    :cond_3
    :goto_0
    return-void
.end method

.method public blacklist setDefaultLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1860
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1861
    return-void

    .line 1863
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    .line 1864
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hasLogo()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1865
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    .line 1867
    :cond_1
    return-void
.end method

.method protected whitelist setDefaultWindowFormat(I)V
    .locals 0
    .param p1, "format"    # I

    .line 3825
    invoke-super {p0, p1}, Landroid/view/Window;->setDefaultWindowFormat(I)V

    .line 3826
    return-void
.end method

.method public final whitelist setElevation(F)V
    .locals 4
    .param p1, "elevation"    # F

    .line 1519
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    .line 1520
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1521
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_0

    .line 1522
    invoke-virtual {v1, p1}, Lcom/android/internal/policy/DecorView;->setElevation(F)V

    .line 1523
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;->setSurfaceInsets(Landroid/view/View;ZZ)V

    .line 1525
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1526
    return-void
.end method

.method public whitelist setEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "enterTransition"    # Landroid/transition/Transition;

    .line 3248
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 3249
    return-void
.end method

.method public whitelist setExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "exitTransition"    # Landroid/transition/Transition;

    .line 3258
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    .line 3259
    return-void
.end method

.method protected final blacklist setFeatureDefaultDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1619
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1620
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    if-eq v1, p2, :cond_0

    .line 1621
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    .line 1622
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1624
    :cond_0
    return-void
.end method

.method public final whitelist setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1600
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1601
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1602
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1603
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    if-eq v2, p2, :cond_0

    .line 1604
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1605
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1607
    :cond_0
    return-void
.end method

.method public whitelist setFeatureDrawableAlpha(II)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "alpha"    # I

    .line 1611
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1612
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    if-eq v1, p2, :cond_0

    .line 1613
    iput p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    .line 1614
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1616
    :cond_0
    return-void
.end method

.method public final whitelist setFeatureDrawableResource(II)V
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "resId"    # I

    .line 1570
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1571
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v1

    .line 1572
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget v2, v1, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    if-eq v2, p2, :cond_0

    .line 1573
    iput p2, v1, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1574
    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1575
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1576
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1578
    .end local v1    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :cond_0
    goto :goto_0

    .line 1579
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 1581
    :goto_0
    return-void
.end method

.method public final whitelist setFeatureDrawableUri(ILandroid/net/Uri;)V
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1585
    if-eqz p2, :cond_2

    .line 1586
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1587
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1588
    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1589
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1590
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneWindow;->loadImageURI(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1591
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1593
    .end local v0    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :cond_1
    goto :goto_0

    .line 1594
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 1596
    :goto_0
    return-void
.end method

.method public final whitelist setFeatureInt(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .line 1630
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PhoneWindow;->updateInt(IIZ)V

    .line 1631
    return-void
.end method

.method public whitelist setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1822
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    .line 1823
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    .line 1824
    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    .line 1825
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 1826
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    .line 1828
    :cond_0
    return-void
.end method

.method public blacklist setIsStartingWindow(Z)V
    .locals 0
    .param p1, "isStartingWindow"    # Z

    .line 3928
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mIsStartingWindow:Z

    .line 3929
    return-void
.end method

.method public whitelist setLocalFocus(ZZ)V
    .locals 1
    .param p1, "hasFocus"    # Z
    .param p2, "inTouchMode"    # Z

    .line 1871
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1872
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->windowFocusChanged(Z)V

    .line 1873
    invoke-virtual {v0, p2}, Landroid/view/ViewRootImpl;->touchModeChanged(Z)V

    .line 1874
    return-void
.end method

.method public whitelist setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1851
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    .line 1852
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    .line 1853
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 1854
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    .line 1856
    :cond_0
    return-void
.end method

.method public whitelist setMediaController(Landroid/media/session/MediaController;)V
    .locals 0
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .line 3238
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    .line 3239
    return-void
.end method

.method public whitelist setNavigationBarColor(I)V
    .locals 3
    .param p1, "color"    # I

    .line 3870
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    .line 3871
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    .line 3872
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 3877
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getWrapper()Lcom/android/internal/policy/IDecorViewWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/IDecorViewWrapper;->getExtImpl()Lcom/android/internal/policy/IDecorViewExt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IDecorViewExt;->updateInputMethodNavigationGuardColor(I)V

    .line 3880
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 3882
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v0

    .line 3883
    .local v0, "callback":Landroid/view/Window$WindowControllerCallback;
    if-eqz v0, :cond_1

    .line 3884
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/Window$WindowControllerCallback;->updateNavigationBarColor(I)V

    .line 3886
    :cond_1
    return-void
.end method

.method public whitelist setNavigationBarContrastEnforced(Z)V
    .locals 3
    .param p1, "enforceContrast"    # Z

    .line 3916
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mEnsureNavigationBarContrastWhenTransparent:Z

    .line 3917
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 3918
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 3920
    :cond_0
    return-void
.end method

.method public whitelist setNavigationBarDividerColor(I)V
    .locals 3
    .param p1, "navigationBarDividerColor"    # I

    .line 3890
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarDividerColor:I

    .line 3891
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 3892
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 3894
    :cond_0
    return-void
.end method

.method public whitelist setReenterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 3263
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    .line 3264
    return-void
.end method

.method public whitelist setResizingCaptionDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 3944
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->setUserCaptionBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3945
    return-void
.end method

.method public whitelist setReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 3253
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    .line 3254
    return-void
.end method

.method public whitelist setSharedElementEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "sharedElementEnterTransition"    # Landroid/transition/Transition;

    .line 3268
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 3269
    return-void
.end method

.method public whitelist setSharedElementExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "sharedElementExitTransition"    # Landroid/transition/Transition;

    .line 3278
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    .line 3279
    return-void
.end method

.method public whitelist setSharedElementReenterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 3283
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    .line 3284
    return-void
.end method

.method public whitelist setSharedElementReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 3273
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 3274
    return-void
.end method

.method public whitelist setSharedElementsUseOverlay(Z)V
    .locals 1
    .param p1, "sharedElementsUseOverlay"    # Z

    .line 3366
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    .line 3367
    return-void
.end method

.method public whitelist setStatusBarColor(I)V
    .locals 3
    .param p1, "color"    # I

    .line 3852
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    .line 3853
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    .line 3854
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 3855
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 3857
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v0

    .line 3858
    .local v0, "callback":Landroid/view/Window$WindowControllerCallback;
    if-eqz v0, :cond_1

    .line 3859
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/Window$WindowControllerCallback;->updateStatusBarColor(I)V

    .line 3861
    :cond_1
    return-void
.end method

.method public whitelist setStatusBarContrastEnforced(Z)V
    .locals 3
    .param p1, "ensureContrast"    # Z

    .line 3903
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mEnsureStatusBarContrastWhenTransparent:Z

    .line 3904
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 3905
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 3907
    :cond_0
    return-void
.end method

.method public whitelist setSystemGestureExclusionRects(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 3974
    .local p1, "rects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->setRootSystemGestureExclusionRects(Ljava/util/List;)V

    .line 3975
    return-void
.end method

.method public blacklist setTheme(I)V
    .locals 2
    .param p1, "resid"    # I

    .line 3933
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTheme:I

    .line 3934
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 3935
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3936
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Lcom/android/internal/policy/DecorContext;

    if-eqz v1, :cond_0

    .line 3937
    invoke-virtual {v0, p1}, Landroid/content/Context;->setTheme(I)V

    .line 3940
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    return-void
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 605
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 606
    return-void
.end method

.method public blacklist setTitle(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "updateAccessibilityTitle"    # Z

    .line 609
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 610
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_1

    .line 612
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 614
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    .line 615
    if-eqz p2, :cond_3

    .line 616
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 617
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 618
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 619
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_2

    .line 621
    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 622
    .local v1, "vr":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_2

    .line 623
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->onWindowTitleChanged()V

    .line 626
    .end local v1    # "vr":Landroid/view/ViewRootImpl;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 629
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    return-void
.end method

.method public whitelist setTitleColor(I)V
    .locals 1
    .param p1, "textColor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 634
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 635
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 637
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    .line 638
    return-void
.end method

.method public whitelist setTransitionBackgroundFadeDuration(J)V
    .locals 2
    .param p1, "fadeDurationMillis"    # J

    .line 3358
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 3361
    iput-wide p1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    .line 3362
    return-void

    .line 3359
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "negative durations are not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTransitionManager(Landroid/transition/TransitionManager;)V
    .locals 0
    .param p1, "tm"    # Landroid/transition/TransitionManager;

    .line 464
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    .line 465
    return-void
.end method

.method public whitelist setUiOptions(I)V
    .locals 0
    .param p1, "uiOptions"    # I

    .line 449
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    .line 450
    return-void
.end method

.method public whitelist setUiOptions(II)V
    .locals 2
    .param p1, "uiOptions"    # I
    .param p2, "mask"    # I

    .line 454
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    .line 455
    return-void
.end method

.method public whitelist setVolumeControlStream(I)V
    .locals 0
    .param p1, "streamType"    # I

    .line 3228
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    .line 3229
    return-void
.end method

.method public whitelist superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1928
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1908
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1913
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1918
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1923
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist takeInputQueue(Landroid/view/InputQueue$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/InputQueue$Callback;

    .line 573
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 574
    return-void
.end method

.method public whitelist takeKeyEvents(Z)V
    .locals 1
    .param p1, "get"    # Z

    .line 1903
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->setFocusable(Z)V

    .line 1904
    return-void
.end method

.method public whitelist takeSurface(Landroid/view/SurfaceHolder$Callback2;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback2;

    .line 569
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 570
    return-void
.end method

.method public final whitelist togglePanel(ILandroid/view/KeyEvent;)V
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1043
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1044
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    iget-boolean v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_0

    .line 1045
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_0

    .line 1047
    :cond_0
    invoke-direct {p0, v1, p2}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 1049
    :goto_0
    return-void
.end method

.method public whitelist unregisterScrollCaptureCallback(Landroid/view/ScrollCaptureCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/view/ScrollCaptureCallback;

    .line 4031
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->removeScrollCaptureCallback(Landroid/view/ScrollCaptureCallback;)V

    .line 4032
    return-void
.end method

.method protected final blacklist updateDrawable(IZ)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "fromActive"    # Z

    .line 1643
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1644
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_0

    .line 1645
    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1647
    :cond_0
    return-void
.end method
