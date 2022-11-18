.class public Lcom/android/internal/policy/DecorView;
.super Landroid/widget/FrameLayout;
.source "DecorView.java"

# interfaces
.implements Lcom/android/internal/view/RootViewSurfaceTaker;
.implements Landroid/view/WindowCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/DecorView$DecorViewWrapper;,
        Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;,
        Lcom/android/internal/policy/DecorView$ColorViewAttributes;,
        Lcom/android/internal/policy/DecorView$ColorViewState;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG_MEASURE:Z = false

.field public static final blacklist DECOR_SHADOW_FOCUSED_HEIGHT_IN_DIP:I = 0x14

.field public static final blacklist DECOR_SHADOW_UNFOCUSED_HEIGHT_IN_DIP:I = 0x5

.field public static final blacklist NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

.field private static final blacklist PIP_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

.field private static final blacklist SCRIM_LIGHT:I = -0x19000001

.field public static final blacklist STATUS_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

.field private static final blacklist SWEEP_OPEN_MENU:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "DecorView"

.field private static blacklist isClosedSuperFirewall:Z


# instance fields
.field private blacklist mAllowUpdateElevation:Z

.field private blacklist mApplyFloatingHorizontalInsets:Z

.field private blacklist mApplyFloatingVerticalInsets:Z

.field private blacklist mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

.field private blacklist mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

.field private final blacklist mBackgroundBlurOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private blacklist mBackgroundBlurRadius:I

.field private final blacklist mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

.field private blacklist mBackgroundInsets:Landroid/graphics/Insets;

.field private final blacklist mBackgroundPadding:Landroid/graphics/Rect;

.field private final blacklist mBarEnterExitDuration:I

.field private blacklist mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mChanging:Z

.field blacklist mContentRoot:Landroid/view/ViewGroup;

.field private blacklist mCrossWindowBlurEnabled:Z

.field private blacklist mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

.field private blacklist mDecorViewExt:Lcom/android/internal/policy/IDecorViewExt;

.field private blacklist mDecorViewWrapper:Lcom/android/internal/policy/IDecorViewWrapper;

.field blacklist mDefaultOpacity:I

.field private blacklist mDownY:I

.field private blacklist mDrawLegacyNavigationBarBackground:Z

.field private blacklist mDrawLegacyNavigationBarBackgroundHandled:Z

.field private final blacklist mDrawingBounds:Landroid/graphics/Rect;

.field private blacklist mElevationAdjustedForStack:Z

.field private blacklist mFadeAnim:Landroid/animation/ObjectAnimator;

.field private final blacklist mFeatureId:I

.field private blacklist mFloatingActionMode:Landroid/view/ActionMode;

.field private blacklist mFloatingActionModeOriginatingView:Landroid/view/View;

.field private final blacklist mFloatingInsets:Landroid/graphics/Rect;

.field private blacklist mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

.field private blacklist mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field final blacklist mForceWindowDrawsBarBackgrounds:Z

.field private final blacklist mFrameOffsets:Landroid/graphics/Rect;

.field private final blacklist mFramePadding:Landroid/graphics/Rect;

.field private blacklist mHasCaption:Z

.field private final blacklist mHideInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mHorizontalResizeShadowPaint:Landroid/graphics/Paint;

.field private blacklist mIsInPictureInPictureMode:Z

.field private blacklist mLastBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

.field private blacklist mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

.field private blacklist mLastBackgroundInsets:Landroid/graphics/Insets;

.field private greylist mLastBottomInset:I

.field private blacklist mLastHasBottomStableInset:Z

.field private blacklist mLastHasLeftStableInset:Z

.field private blacklist mLastHasRightStableInset:Z

.field private blacklist mLastHasTopStableInset:Z

.field private greylist mLastLeftInset:I

.field private blacklist mLastOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

.field private greylist mLastRightInset:I

.field private blacklist mLastShouldAlwaysConsumeSystemBars:Z

.field private blacklist mLastTopInset:I

.field private blacklist mLastWindowFlags:I

.field private final blacklist mLegacyNavigationBarBackgroundPaint:Landroid/graphics/Paint;

.field blacklist mLogTag:Ljava/lang/String;

.field private blacklist mMenuBackground:Landroid/graphics/drawable/Drawable;

.field private final blacklist mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

.field private blacklist mOriginalBackgroundBlurRadius:I

.field private blacklist mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mPendingInsetsController:Landroid/view/PendingInsetsController;

.field private blacklist mPendingWindowBackground:Landroid/graphics/drawable/Drawable;

.field blacklist mPrimaryActionMode:Landroid/view/ActionMode;

.field private blacklist mPrimaryActionModePopup:Landroid/widget/PopupWindow;

.field private blacklist mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

.field private blacklist mResizeMode:I

.field private final blacklist mResizeShadowSize:I

.field private blacklist mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mRootScrollY:I

.field private final blacklist mSemiTransparentBarColor:I

.field private final blacklist mShowInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mShowPrimaryActionModePopup:Ljava/lang/Runnable;

.field private final blacklist mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

.field private blacklist mStatusGuard:Landroid/view/View;

.field private blacklist mTempRect:Landroid/graphics/Rect;

.field private blacklist mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final blacklist mVerticalResizeShadowPaint:Landroid/graphics/Paint;

.field private blacklist mWatchingForMenu:Z

.field private greylist mWindow:Lcom/android/internal/policy/PhoneWindow;

.field private blacklist mWindowResizeCallbacksAdded:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDecorViewExt(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/policy/IDecorViewExt;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mDecorViewExt:Lcom/android/internal/policy/IDecorViewExt;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFadeAnim(Lcom/android/internal/policy/DecorView;)Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFloatingActionMode(Lcom/android/internal/policy/DecorView;)Landroid/view/ActionMode;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrimaryActionModePopup(Lcom/android/internal/policy/DecorView;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrimaryActionModeView(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShowPrimaryActionModePopup(Lcom/android/internal/policy/DecorView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindow(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/policy/PhoneWindow;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFadeAnim(Lcom/android/internal/policy/DecorView;Landroid/animation/ObjectAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFloatingActionMode(Lcom/android/internal/policy/DecorView;Landroid/view/ActionMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcleanupFloatingActionModeViews(Lcom/android/internal/policy/DecorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupFloatingActionModeViews()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mendOnGoingFadeAnimation(Lcom/android/internal/policy/DecorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->endOnGoingFadeAnimation()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 19

    .line 150
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/DecorView;->isClosedSuperFirewall:Z

    .line 153
    new-instance v0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    const/high16 v2, 0x4000000

    const/16 v3, 0x30

    const/4 v4, 0x3

    const/4 v5, 0x5

    const-string v6, "android:status:background"

    const v7, 0x102002f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;-><init>(IIIILjava/lang/String;IILcom/android/internal/policy/DecorView$ColorViewAttributes-IA;)V

    sput-object v0, Lcom/android/internal/policy/DecorView;->STATUS_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    .line 159
    new-instance v0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    const/high16 v11, 0x8000000

    const/16 v12, 0x50

    const/4 v13, 0x5

    const/4 v14, 0x3

    const-string v15, "android:navigation:background"

    const v16, 0x1020030

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;-><init>(IIIILjava/lang/String;IILcom/android/internal/policy/DecorView$ColorViewAttributes-IA;)V

    sput-object v0, Lcom/android/internal/policy/DecorView;->NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    .line 167
    new-instance v0, Lcom/android/internal/policy/DecorView$1;

    invoke-direct {v0}, Lcom/android/internal/policy/DecorView$1;-><init>()V

    sput-object v0, Lcom/android/internal/policy/DecorView;->PIP_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;ILcom/android/internal/policy/PhoneWindow;Landroid/view/WindowManager$LayoutParams;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "featureId"    # I
    .param p3, "window"    # Lcom/android/internal/policy/PhoneWindow;
    .param p4, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 310
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    .line 180
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    .line 188
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/policy/DecorView;->mDefaultOpacity:I

    .line 193
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    .line 195
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 197
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 199
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .line 201
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    .line 222
    new-instance v2, Lcom/android/internal/policy/DecorView$ColorViewState;

    sget-object v3, Lcom/android/internal/policy/DecorView;->STATUS_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    invoke-direct {v2, v3}, Lcom/android/internal/policy/DecorView$ColorViewState;-><init>(Lcom/android/internal/policy/DecorView$ColorViewAttributes;)V

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 224
    new-instance v2, Lcom/android/internal/policy/DecorView$ColorViewState;

    sget-object v3, Lcom/android/internal/policy/DecorView;->NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    invoke-direct {v2, v3}, Lcom/android/internal/policy/DecorView$ColorViewState;-><init>(Lcom/android/internal/policy/DecorView$ColorViewAttributes;)V

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 233
    new-instance v2, Lcom/android/internal/widget/BackgroundFallback;

    invoke-direct {v2}, Lcom/android/internal/widget/BackgroundFallback;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    .line 235
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    .line 236
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    .line 238
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    .line 240
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    .line 242
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastHasTopStableInset:Z

    .line 243
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastHasBottomStableInset:Z

    .line 244
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastHasRightStableInset:Z

    .line 245
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastHasLeftStableInset:Z

    .line 246
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastWindowFlags:I

    .line 247
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastShouldAlwaysConsumeSystemBars:Z

    .line 249
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mRootScrollY:I

    .line 263
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    .line 264
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    .line 265
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    .line 282
    const-string v3, "DecorView"

    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    .line 283
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    .line 284
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    .line 285
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    .line 287
    iput v1, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    .line 289
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mVerticalResizeShadowPaint:Landroid/graphics/Paint;

    .line 290
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mHorizontalResizeShadowPaint:Landroid/graphics/Paint;

    .line 291
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mLegacyNavigationBarBackgroundPaint:Landroid/graphics/Paint;

    .line 292
    sget-object v3, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    .line 293
    sget-object v3, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundInsets:Landroid/graphics/Insets;

    .line 297
    new-instance v3, Landroid/view/PendingInsetsController;

    invoke-direct {v3}, Landroid/view/PendingInsetsController;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mPendingInsetsController:Landroid/view/PendingInsetsController;

    .line 299
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundBlurRadius:I

    .line 300
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurRadius:I

    .line 302
    new-instance v3, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/policy/DecorView;)V

    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 3004
    new-instance v3, Lcom/android/internal/policy/DecorView$DecorViewWrapper;

    invoke-direct {v3, p0, v2}, Lcom/android/internal/policy/DecorView$DecorViewWrapper;-><init>(Lcom/android/internal/policy/DecorView;Lcom/android/internal/policy/DecorView$DecorViewWrapper-IA;)V

    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mDecorViewWrapper:Lcom/android/internal/policy/IDecorViewWrapper;

    .line 3007
    const-class v3, Lcom/android/internal/policy/IDecorViewExt;

    invoke-static {v3}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/IDecorViewExt;

    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mDecorViewExt:Lcom/android/internal/policy/IDecorViewExt;

    .line 315
    iput p2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    .line 317
    const v3, 0x10c000e

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mShowInterpolator:Landroid/view/animation/Interpolator;

    .line 319
    const v3, 0x10c000f

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mHideInterpolator:Landroid/view/animation/Interpolator;

    .line 322
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0108

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/DecorView;->mBarEnterExitDuration:I

    .line 330
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111015b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 332
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 333
    .local v0, "defaultForceWindowDrawsBarBackgrounds":Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mDecorViewExt:Lcom/android/internal/policy/IDecorViewExt;

    invoke-interface {v3, p1, v0}, Lcom/android/internal/policy/IDecorViewExt;->hookDecorView(Landroid/content/Context;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsBarBackgrounds:Z

    .line 335
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1060297

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/DecorView;->mSemiTransparentBarColor:I

    .line 338
    invoke-virtual {p0, p3}, Lcom/android/internal/policy/DecorView;->setWindow(Lcom/android/internal/policy/PhoneWindow;)V

    .line 340
    invoke-virtual {p0, p4}, Lcom/android/internal/policy/DecorView;->updateLogTag(Landroid/view/WindowManager$LayoutParams;)V

    .line 342
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050254

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    .line 344
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initResizingPaints()V

    .line 346
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 352
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorViewExt:Lcom/android/internal/policy/IDecorViewExt;

    invoke-interface {v2}, Lcom/android/internal/policy/IDecorViewExt;->getLegacyNavBarBackgroundColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 357
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorViewExt:Lcom/android/internal/policy/IDecorViewExt;

    invoke-interface {v1}, Lcom/android/internal/policy/IDecorViewExt;->initDarkModeBackgroundColor()V

    .line 362
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorViewExt:Lcom/android/internal/policy/IDecorViewExt;

    invoke-interface {v1}, Lcom/android/internal/policy/IDecorViewExt;->isClosedSuperFirewall()Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/policy/DecorView;->isClosedSuperFirewall:Z

    .line 364
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/policy/DecorView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/DecorView;

    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static blacklist calculateBarColor(IIIIIIZ)I
    .locals 2
    .param p0, "flags"    # I
    .param p1, "translucentFlag"    # I
    .param p2, "semiTransparentBarColor"    # I
    .param p3, "barColor"    # I
    .param p4, "appearance"    # I
    .param p5, "lightAppearanceFlag"    # I
    .param p6, "scrimTransparent"    # Z

    .line 1499
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    .line 1500
    return p2

    .line 1509
    :cond_0
    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/internal/policy/DecorView;->isClosedSuperFirewall:Z

    if-nez v0, :cond_1

    const/16 v0, 0x8

    if-ne p5, v0, :cond_2

    .line 1511
    :cond_1
    const/high16 v0, -0x1000000

    return v0

    .line 1515
    :cond_2
    if-eqz p6, :cond_5

    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_5

    .line 1516
    and-int v0, p4, p5

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 1517
    .local v0, "light":Z
    :goto_0
    if-eqz v0, :cond_4

    const v1, -0x19000001

    goto :goto_1

    :cond_4
    move v1, p2

    :goto_1
    return v1

    .line 1519
    .end local v0    # "light":Z
    :cond_5
    return p3
.end method

.method private blacklist calculateNavigationBarColor(I)I
    .locals 8
    .param p1, "appearance"    # I

    .line 1489
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mSemiTransparentBarColor:I

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v4, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mEnsureNavigationBarContrastWhenTransparent:Z

    if-eqz v0, :cond_0

    .line 1493
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1110185

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    .line 1489
    const/high16 v2, 0x8000000

    const/16 v6, 0x10

    move v5, p1

    invoke-static/range {v1 .. v7}, Lcom/android/internal/policy/DecorView;->calculateBarColor(IIIIIIZ)I

    move-result v0

    return v0
.end method

.method private blacklist calculateStatusBarColor(I)I
    .locals 8
    .param p1, "appearance"    # I

    .line 1482
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mSemiTransparentBarColor:I

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v4, v0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v7, v0, Lcom/android/internal/policy/PhoneWindow;->mEnsureStatusBarContrastWhenTransparent:Z

    const/high16 v2, 0x4000000

    const/16 v6, 0x8

    move v5, p1

    invoke-static/range {v1 .. v7}, Lcom/android/internal/policy/DecorView;->calculateBarColor(IIIIIIZ)I

    move-result v0

    return v0
.end method

.method private blacklist cleanupFloatingActionModeViews()V
    .locals 3

    .line 1036
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1037
    invoke-virtual {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->dismiss()V

    .line 1038
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1041
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v2, :cond_1

    .line 1042
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 1043
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1044
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 1046
    :cond_1
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 1048
    :cond_2
    return-void
.end method

.method private blacklist cleanupPrimaryActionMode()V
    .locals 1

    .line 1026
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1027
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1028
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    .line 1030
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 1031
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 1033
    :cond_1
    return-void
.end method

.method private blacklist createActionMode(ILandroid/view/ActionMode$Callback2;Landroid/view/View;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "type"    # I
    .param p2, "callback"    # Landroid/view/ActionMode$Callback2;
    .param p3, "originatingView"    # Landroid/view/View;

    .line 2049
    packed-switch p1, :pswitch_data_0

    .line 2052
    invoke-direct {p0, p2}, Lcom/android/internal/policy/DecorView;->createStandaloneActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 2054
    :pswitch_0
    invoke-direct {p0, p3, p2}, Lcom/android/internal/policy/DecorView;->createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist createDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .line 2393
    const/4 v0, 0x0

    .line 2394
    .local v0, "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    if-nez v0, :cond_1

    .line 2395
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2396
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v4, :cond_0

    .line 2398
    move-object v0, v3

    check-cast v0, Lcom/android/internal/widget/DecorCaptionView;

    .line 2399
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->removeViewAt(I)V

    .line 2394
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2402
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 2403
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x0

    if-eq v3, v2, :cond_3

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v2

    .line 2405
    .local v3, "isApplication":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2407
    .local v5, "winConfig":Landroid/app/WindowConfiguration;
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz v3, :cond_5

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->hasWindowDecorCaption()Z

    move-result v6

    if-eqz v6, :cond_5

    sget-boolean v6, Landroid/view/ViewRootImpl;->CAPTION_ON_SHELL:Z

    if-nez v6, :cond_5

    .line 2411
    if-nez v0, :cond_4

    .line 2412
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->inflateDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v0

    .line 2414
    :cond_4
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, v6, v2}, Lcom/android/internal/widget/DecorCaptionView;->setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;Z)V

    goto :goto_3

    .line 2416
    :cond_5
    const/4 v0, 0x0

    .line 2420
    :goto_3
    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    move v2, v4

    :goto_4
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/DecorView;->enableCaption(Z)V

    .line 2421
    return-object v0
.end method

.method private blacklist createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;
    .locals 3
    .param p1, "originatingView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback2;

    .line 2206
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 2207
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2209
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupFloatingActionModeViews()V

    .line 2210
    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;-><init>(Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 2211
    new-instance v0, Lcom/android/internal/view/FloatingActionMode;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/android/internal/view/FloatingActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)V

    .line 2213
    .local v0, "mode":Lcom/android/internal/view/FloatingActionMode;
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 2214
    new-instance v1, Lcom/android/internal/policy/DecorView$6;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/policy/DecorView$6;-><init>(Lcom/android/internal/policy/DecorView;Lcom/android/internal/view/FloatingActionMode;)V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 2222
    return-object v0
.end method

.method private blacklist createStandaloneActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 9
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 2067
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->endOnGoingFadeAnimation()V

    .line 2068
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupPrimaryActionMode()V

    .line 2075
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2076
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2078
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2079
    .local v0, "outValue":Landroid/util/TypedValue;
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 2080
    .local v4, "baseTheme":Landroid/content/res/Resources$Theme;
    const v5, 0x1010431

    invoke-virtual {v4, v5, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2083
    iget v5, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_1

    .line 2084
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 2085
    .local v5, "actionBarTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 2086
    iget v6, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 2088
    new-instance v6, Landroid/view/ContextThemeWrapper;

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 2089
    .local v6, "actionBarContext":Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 2090
    .end local v5    # "actionBarTheme":Landroid/content/res/Resources$Theme;
    goto :goto_0

    .line 2091
    .end local v6    # "actionBarContext":Landroid/content/Context;
    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    .line 2094
    .restart local v6    # "actionBarContext":Landroid/content/Context;
    :goto_0
    new-instance v5, Lcom/android/internal/widget/ActionBarContextView;

    invoke-direct {v5, v6}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 2095
    new-instance v5, Landroid/widget/PopupWindow;

    const v7, 0x1120008

    invoke-direct {v5, v6, v2, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 2097
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 2099
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v5, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 2100
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    invoke-virtual {v5, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 2102
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v7, 0x10102eb

    invoke-virtual {v5, v7, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2104
    iget v5, v0, Landroid/util/TypedValue;->data:I

    .line 2105
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 2104
    invoke-static {v5, v7}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v5

    .line 2106
    .local v5, "height":I
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v5}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 2107
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v8, -0x2

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 2108
    new-instance v7, Lcom/android/internal/policy/DecorView$4;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/DecorView$4;-><init>(Lcom/android/internal/policy/DecorView;)V

    iput-object v7, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    .line 2137
    .end local v0    # "outValue":Landroid/util/TypedValue;
    .end local v4    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v5    # "height":I
    .end local v6    # "actionBarContext":Landroid/content/Context;
    goto :goto_1

    .line 2138
    :cond_2
    const v0, 0x10201c5

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 2139
    .local v0, "stub":Landroid/view/ViewStub;
    if-eqz v0, :cond_3

    .line 2140
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ActionBarContextView;

    iput-object v4, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 2141
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 2145
    .end local v0    # "stub":Landroid/view/ViewStub;
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_5

    .line 2146
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 2147
    new-instance v0, Lcom/android/internal/view/StandaloneActionMode;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 2148
    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    if-nez v5, :cond_4

    move v1, v3

    :cond_4
    invoke-direct {v0, v2, v4, p1, v1}, Lcom/android/internal/view/StandaloneActionMode;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)V

    .line 2150
    .local v0, "mode":Landroid/view/ActionMode;
    return-object v0

    .line 2152
    .end local v0    # "mode":Landroid/view/ActionMode;
    :cond_5
    return-object v2
.end method

.method private blacklist dipToPx(F)F
    .locals 2
    .param p1, "dip"    # F

    .line 2738
    nop

    .line 2739
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2738
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private blacklist drawLegacyNavigationBarBackground(Landroid/graphics/RecordingCanvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/RecordingCanvas;

    .line 2631
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackgroundHandled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2634
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    .line 2635
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 2636
    return-void

    .line 2638
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v5, v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v6, v1

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mLegacyNavigationBarBackgroundPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/RecordingCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2640
    return-void

    .line 2632
    .end local v0    # "v":Landroid/view/View;
    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist drawResizingShadowIfNeeded(Landroid/graphics/RecordingCanvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/RecordingCanvas;

    .line 2615
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2616
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2617
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isShowingWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2620
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RecordingCanvas;->save()I

    .line 2621
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/RecordingCanvas;->translate(FF)V

    .line 2622
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v0

    int-to-float v5, v0

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mHorizontalResizeShadowPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/RecordingCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2623
    invoke-virtual {p1}, Landroid/graphics/RecordingCanvas;->restore()V

    .line 2624
    invoke-virtual {p1}, Landroid/graphics/RecordingCanvas;->save()I

    .line 2625
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RecordingCanvas;->translate(FF)V

    .line 2626
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mVerticalResizeShadowPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/RecordingCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2627
    invoke-virtual {p1}, Landroid/graphics/RecordingCanvas;->restore()V

    .line 2628
    return-void

    .line 2618
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist drawableChanged()V
    .locals 10

    .line 1824
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mChanging:Z

    if-eqz v0, :cond_0

    .line 1825
    return-void

    .line 1829
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1830
    .local v0, "framePadding":Landroid/graphics/Rect;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1832
    .local v1, "backgroundPadding":Landroid/graphics/Rect;
    :goto_1
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/policy/DecorView;->setPadding(IIII)V

    .line 1836
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->requestLayout()V

    .line 1837
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->invalidate()V

    .line 1839
    const/4 v2, -0x1

    .line 1840
    .local v2, "opacity":I
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1841
    .local v3, "winConfig":Landroid/app/WindowConfiguration;
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v4, v4, Lcom/android/internal/policy/PhoneWindow;->mRenderShadowsInCompositor:Z

    .line 1844
    .local v4, "renderShadowsInCompositor":Z
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->hasWindowShadow()Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v4, :cond_3

    .line 1846
    const/4 v2, -0x3

    goto :goto_4

    .line 1853
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1854
    .local v5, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1855
    .local v6, "fg":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_a

    .line 1856
    if-nez v6, :cond_4

    .line 1857
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    goto :goto_4

    .line 1858
    :cond_4
    iget v7, v0, Landroid/graphics/Rect;->left:I

    if-gtz v7, :cond_9

    iget v7, v0, Landroid/graphics/Rect;->top:I

    if-gtz v7, :cond_9

    iget v7, v0, Landroid/graphics/Rect;->right:I

    if-gtz v7, :cond_9

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    if-gtz v7, :cond_9

    .line 1862
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v7

    .line 1863
    .local v7, "fop":I
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v8

    .line 1866
    .local v8, "bop":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_8

    if-ne v8, v9, :cond_5

    goto :goto_2

    .line 1868
    :cond_5
    if-nez v7, :cond_6

    .line 1869
    move v2, v8

    goto :goto_3

    .line 1870
    :cond_6
    if-nez v8, :cond_7

    .line 1871
    move v2, v7

    goto :goto_3

    .line 1873
    :cond_7
    invoke-static {v7, v8}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v2

    goto :goto_3

    .line 1867
    :cond_8
    :goto_2
    const/4 v2, -0x1

    .line 1875
    .end local v7    # "fop":I
    .end local v8    # "bop":I
    :goto_3
    goto :goto_4

    .line 1881
    :cond_9
    const/4 v2, -0x3

    .line 1891
    .end local v5    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v6    # "fg":Landroid/graphics/drawable/Drawable;
    :cond_a
    :goto_4
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mDefaultOpacity:I

    .line 1892
    iget v5, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v5, :cond_b

    .line 1893
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v5, v2}, Lcom/android/internal/policy/PhoneWindow;->setDefaultWindowFormat(I)V

    .line 1895
    :cond_b
    return-void
.end method

.method private blacklist endOnGoingFadeAnimation()V
    .locals 1

    .line 2156
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 2157
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 2159
    :cond_0
    return-void
.end method

.method private static blacklist enforceNonTranslucentBackground(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "windowTranslucent"    # Z

    .line 2496
    if-nez p1, :cond_0

    instance-of v0, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    .line 2497
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .line 2498
    .local v0, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    .line 2499
    .local v1, "color":I
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/16 v3, 0xff

    if-eq v2, v3, :cond_0

    .line 2500
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2501
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    .line 2502
    .local v2, "copy":Landroid/graphics/drawable/ColorDrawable;
    nop

    .line 2503
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 2502
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 2504
    return-object v2

    .line 2507
    .end local v0    # "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    .end local v1    # "color":I
    .end local v2    # "copy":Landroid/graphics/drawable/ColorDrawable;
    :cond_0
    return-object p0
.end method

.method private blacklist getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I
    .locals 1
    .param p1, "state"    # Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 1524
    iget-boolean v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-eqz v0, :cond_0

    .line 1525
    iget v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->color:I

    return v0

    .line 1527
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getNavBarSize(III)I
    .locals 1
    .param p0, "bottomInset"    # I
    .param p1, "rightInset"    # I
    .param p2, "leftInset"    # I

    .line 1166
    invoke-static {p0, p1}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p1

    goto :goto_0

    .line 1167
    :cond_0
    invoke-static {p0, p2}, Lcom/android/internal/policy/DecorView;->isNavBarToLeftEdge(II)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    .line 1166
    :goto_0
    return v0
.end method

.method public static blacklist getNavigationBarRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;F)V
    .locals 6
    .param p0, "canvasWidth"    # I
    .param p1, "canvasHeight"    # I
    .param p2, "systemBarInsets"    # Landroid/graphics/Rect;
    .param p3, "outRect"    # Landroid/graphics/Rect;
    .param p4, "scale"    # F

    .line 1172
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float/2addr v0, p4

    float-to-int v0, v0

    .line 1173
    .local v0, "bottomInset":I
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    mul-float/2addr v1, p4

    float-to-int v1, v1

    .line 1174
    .local v1, "leftInset":I
    iget v2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v2, p4

    float-to-int v2, v2

    .line 1175
    .local v2, "rightInset":I
    invoke-static {v0, v2, v1}, Lcom/android/internal/policy/DecorView;->getNavBarSize(III)I

    move-result v3

    .line 1176
    .local v3, "size":I
    invoke-static {v0, v2}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 1177
    sub-int v4, p0, v3

    invoke-virtual {p3, v4, v5, p0, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1178
    :cond_0
    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->isNavBarToLeftEdge(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1179
    invoke-virtual {p3, v5, v5, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1181
    :cond_1
    sub-int v4, p1, v3

    invoke-virtual {p3, v5, v4, p0, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1183
    :goto_0
    return-void
.end method

.method public static blacklist getResizingBackgroundDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "backgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "fallbackDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "windowTranslucent"    # Z

    .line 2480
    if-eqz p0, :cond_0

    .line 2481
    invoke-static {p0, p2}, Lcom/android/internal/policy/DecorView;->enforceNonTranslucentBackground(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 2484
    :cond_0
    if-eqz p1, :cond_1

    .line 2485
    invoke-static {p1, p2}, Lcom/android/internal/policy/DecorView;->enforceNonTranslucentBackground(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 2487
    :cond_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method private static blacklist getTitleSuffix(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;
    .locals 3
    .param p0, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 2753
    const-string v0, ""

    if-nez p0, :cond_0

    .line 2754
    return-object v0

    .line 2756
    :cond_0
    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2757
    .local v1, "split":[Ljava/lang/String;
    array-length v2, v1

    if-lez v2, :cond_3

    .line 2760
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    if-eqz v0, :cond_2

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    const-string v2, "WLAN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    const-string v2, "Wi-Fi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2761
    :cond_1
    const-string v0, "****"

    return-object v0

    .line 2764
    :cond_2
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    return-object v0

    .line 2770
    :cond_3
    return-object v0
.end method

.method private blacklist inflateDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .line 2425
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2427
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 2428
    const v1, 0x109006f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/DecorCaptionView;

    .line 2430
    .local v1, "view":Lcom/android/internal/widget/DecorCaptionView;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/DecorView;->setDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V

    .line 2431
    return-object v1
.end method

.method private blacklist initResizingPaints()V
    .locals 18

    .line 2601
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060261

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 2603
    .local v1, "startColor":I
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1060260

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 2605
    .local v2, "endColor":I
    add-int v3, v1, v2

    const/4 v4, 0x2

    div-int/2addr v3, v4

    .line 2606
    .local v3, "middleColor":I
    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mHorizontalResizeShadowPaint:Landroid/graphics/Paint;

    new-instance v14, Landroid/graphics/LinearGradient;

    iget v6, v0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    int-to-float v10, v6

    const/4 v15, 0x3

    new-array v11, v15, [I

    const/16 v16, 0x0

    aput v1, v11, v16

    const/16 v17, 0x1

    aput v3, v11, v17

    aput v2, v11, v4

    new-array v12, v15, [F

    fill-array-data v12, :array_0

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v14

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 2609
    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mVerticalResizeShadowPaint:Landroid/graphics/Paint;

    new-instance v14, Landroid/graphics/LinearGradient;

    iget v6, v0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    int-to-float v9, v6

    new-array v11, v15, [I

    aput v1, v11, v16

    aput v3, v11, v17

    aput v2, v11, v4

    new-array v12, v15, [F

    fill-array-data v12, :array_1

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v10, 0x0

    move-object v6, v14

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 2612
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist initializeElevation()V
    .locals 1

    .line 2667
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    .line 2668
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    .line 2669
    return-void
.end method

.method private blacklist isFillingScreen(Landroid/content/res/Configuration;)Z
    .locals 5
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 2314
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2316
    .local v0, "isFullscreen":Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getSystemUiVisibility()I

    move-result v4

    or-int/2addr v3, v4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public static blacklist isNavBarToLeftEdge(II)Z
    .locals 1
    .param p0, "bottomInset"    # I
    .param p1, "leftInset"    # I

    .line 1162
    if-nez p0, :cond_0

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isNavBarToRightEdge(II)Z
    .locals 1
    .param p0, "bottomInset"    # I
    .param p1, "rightInset"    # I

    .line 1158
    if-nez p0, :cond_0

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isOutOfBounds(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 590
    const/4 v0, -0x5

    if-lt p1, v0, :cond_1

    if-lt p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_1

    .line 591
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 590
    :goto_1
    return v0
.end method

.method private blacklist isOutOfInnerBounds(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 586
    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v0

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private blacklist isResizing()Z
    .locals 1

    .line 2658
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist loadBackgroundDrawablesIfNeeded()V
    .locals 3

    .line 2371
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 2372
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2373
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2374
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isShowingWallpaper()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 2372
    :goto_1
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->getResizingBackgroundDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2375
    if-nez v0, :cond_2

    .line 2378
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find background drawable for PhoneWindow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 2382
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x108027f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2385
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 2386
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    .line 2387
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2389
    :cond_4
    return-void
.end method

.method private blacklist releaseThreadedRenderer()V
    .locals 3

    .line 2644
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v2, :cond_0

    .line 2645
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2646
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    .line 2649
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_1

    .line 2650
    invoke-virtual {v0}, Lcom/android/internal/policy/BackdropFrameRenderer;->releaseRenderer()V

    .line 2651
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    .line 2653
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    .line 2655
    :cond_1
    return-void
.end method

.method private static blacklist setColor(Landroid/view/View;IIZZ)V
    .locals 11
    .param p0, "v"    # Landroid/view/View;
    .param p1, "color"    # I
    .param p2, "dividerColor"    # I
    .param p3, "verticalBar"    # Z
    .param p4, "seascape"    # Z

    .line 1649
    if-eqz p2, :cond_5

    .line 1650
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1651
    .local v0, "dir":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, p3, :cond_1

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v3, p4, :cond_0

    goto :goto_0

    .line 1664
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 1665
    .local v3, "d":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/InsetDrawable;

    .line 1666
    .local v1, "inset":Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 1667
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2, p2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    goto :goto_4

    .line 1652
    .end local v1    # "inset":Landroid/graphics/drawable/InsetDrawable;
    .end local v3    # "d":Landroid/graphics/drawable/LayerDrawable;
    :cond_1
    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1654
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1653
    invoke-static {v1, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 1652
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1656
    .local v3, "size":I
    new-instance v10, Landroid/graphics/drawable/InsetDrawable;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1657
    if-eqz p3, :cond_2

    if-nez p4, :cond_2

    move v6, v3

    goto :goto_1

    :cond_2
    move v6, v2

    .line 1658
    :goto_1
    if-nez p3, :cond_3

    move v7, v3

    goto :goto_2

    :cond_3
    move v7, v2

    .line 1659
    :goto_2
    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    move v8, v3

    goto :goto_3

    :cond_4
    move v8, v2

    :goto_3
    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 1660
    .local v4, "d":Landroid/graphics/drawable/InsetDrawable;
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v7, v6, v2

    aput-object v4, v6, v1

    invoke-direct {v5, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1662
    new-instance v1, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1663
    .end local v3    # "size":I
    .end local v4    # "d":Landroid/graphics/drawable/InsetDrawable;
    nop

    .line 1669
    .end local v0    # "dir":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    :goto_4
    goto :goto_5

    .line 1670
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1671
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1673
    :goto_5
    return-void
.end method

.method private blacklist setDarkDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 2
    .param p1, "view"    # Lcom/android/internal/widget/DecorCaptionView;

    .line 2468
    const v0, 0x102039a

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1080283

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2470
    const v0, 0x1020256

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1080281

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2472
    return-void
.end method

.method private blacklist setDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 2
    .param p1, "view"    # Lcom/android/internal/widget/DecorCaptionView;

    .line 2435
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorCaptionShade()I

    move-result v0

    .line 2436
    .local v0, "shade":I
    packed-switch v0, :pswitch_data_0

    .line 2444
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result v1

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_0

    .line 2445
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->setDarkDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V

    goto :goto_0

    .line 2441
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->setDarkDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V

    .line 2442
    goto :goto_0

    .line 2438
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->setLightDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V

    .line 2439
    goto :goto_0

    .line 2447
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->setLightDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V

    .line 2452
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist setHandledActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 2059
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 2060
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->setHandledPrimaryActionMode(Landroid/view/ActionMode;)V

    goto :goto_0

    .line 2061
    :cond_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2062
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->setHandledFloatingActionMode(Landroid/view/ActionMode;)V

    .line 2064
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist setHandledFloatingActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 2226
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    .line 2227
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    .line 2228
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 2229
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2230
    return-void
.end method

.method private blacklist setHandledPrimaryActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 2162
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->endOnGoingFadeAnimation()V

    .line 2163
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    .line 2164
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    .line 2165
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    .line 2166
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 2167
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2169
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->shouldAnimatePrimaryActionModeView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2170
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    .line 2173
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorViewExt:Lcom/android/internal/policy/IDecorViewExt;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/IDecorViewExt;->hookSetHandledPrimaryActionMode(Landroid/animation/ObjectAnimator;)V

    .line 2176
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/internal/policy/DecorView$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/DecorView$5;-><init>(Lcom/android/internal/policy/DecorView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2188
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 2190
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setAlpha(F)V

    .line 2191
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 2194
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 2196
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist setLightDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 2
    .param p1, "view"    # Lcom/android/internal/widget/DecorCaptionView;

    .line 2461
    const v0, 0x102039a

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1080284

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2463
    const v0, 0x1020256

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1080282

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2465
    return-void
.end method

.method private blacklist showContextMenuForChildInternal(Landroid/view/View;FF)Z
    .locals 6
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 922
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    invoke-interface {v0}, Lcom/android/internal/view/menu/MenuHelper;->dismiss()V

    .line 924
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;

    .line 929
    .local v0, "callback":Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-nez v1, :cond_1

    .line 930
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    new-instance v2, Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/view/menu/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 931
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v1, v0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    goto :goto_0

    .line 933
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ContextMenuBuilder;->clearAll()V

    .line 937
    :goto_0
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    .line 938
    .local v1, "isPopup":Z
    :goto_1
    if-eqz v1, :cond_3

    .line 939
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, p1, p2, p3}, Lcom/android/internal/view/menu/ContextMenuBuilder;->showPopup(Landroid/content/Context;Landroid/view/View;FF)Lcom/android/internal/view/menu/MenuPopupHelper;

    move-result-object v4

    .local v4, "helper":Lcom/android/internal/view/menu/MenuHelper;
    goto :goto_2

    .line 941
    .end local v4    # "helper":Lcom/android/internal/view/menu/MenuHelper;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/android/internal/view/menu/ContextMenuBuilder;->showDialog(Landroid/view/View;Landroid/os/IBinder;)Lcom/android/internal/view/menu/MenuDialogHelper;

    move-result-object v4

    .line 944
    .restart local v4    # "helper":Lcom/android/internal/view/menu/MenuHelper;
    :goto_2
    if-eqz v4, :cond_5

    .line 948
    if-nez v1, :cond_4

    move v5, v2

    goto :goto_3

    :cond_4
    move v5, v3

    :goto_3
    invoke-virtual {v0, v5}, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->setShowDialogForSubmenu(Z)V

    .line 949
    invoke-interface {v4, v0}, Lcom/android/internal/view/menu/MenuHelper;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 952
    :cond_5
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iput-object v4, v5, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    .line 953
    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    move v2, v3

    :goto_4
    return v2
.end method

.method private blacklist startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 4
    .param p1, "originatingView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .line 980
    new-instance v0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;-><init>(Lcom/android/internal/policy/DecorView;Landroid/view/ActionMode$Callback;)V

    .line 981
    .local v0, "wrappedCallback":Landroid/view/ActionMode$Callback2;
    const/4 v1, 0x0

    .line 982
    .local v1, "mode":Landroid/view/ActionMode;
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 984
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-interface {v2, v0, p3}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 995
    goto :goto_0

    .line 985
    :catch_0
    move-exception v2

    .line 987
    .local v2, "ame":Ljava/lang/AbstractMethodError;
    if-nez p3, :cond_0

    .line 989
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v3

    .line 993
    goto :goto_0

    .line 991
    :catch_1
    move-exception v3

    .line 997
    .end local v2    # "ame":Ljava/lang/AbstractMethodError;
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 998
    invoke-virtual {v1}, Landroid/view/ActionMode;->getType()I

    move-result v2

    if-nez v2, :cond_1

    .line 999
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupPrimaryActionMode()V

    .line 1000
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    goto :goto_1

    .line 1001
    :cond_1
    invoke-virtual {v1}, Landroid/view/ActionMode;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 1002
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_2

    .line 1003
    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 1005
    :cond_2
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    goto :goto_1

    .line 1008
    :cond_3
    invoke-direct {p0, p3, v0, p1}, Lcom/android/internal/policy/DecorView;->createActionMode(ILandroid/view/ActionMode$Callback2;Landroid/view/View;)Landroid/view/ActionMode;

    move-result-object v1

    .line 1009
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ActionMode$Callback2;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1010
    invoke-direct {p0, v1}, Lcom/android/internal/policy/DecorView;->setHandledActionMode(Landroid/view/ActionMode;)V

    goto :goto_1

    .line 1012
    :cond_4
    const/4 v1, 0x0

    .line 1015
    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1017
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V
    :try_end_2
    .catch Ljava/lang/AbstractMethodError; {:try_start_2 .. :try_end_2} :catch_2

    .line 1020
    goto :goto_2

    .line 1018
    :catch_2
    move-exception v2

    .line 1022
    :cond_6
    :goto_2
    return-object v1
.end method

.method private blacklist updateBackgroundBlurCorners()V
    .locals 4

    .line 1417
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-nez v0, :cond_0

    return-void

    .line 1419
    :cond_0
    const/4 v0, 0x0

    .line 1422
    .local v0, "cornerRadius":F
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurRadius:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 1423
    new-instance v1, Landroid/graphics/Outline;

    invoke-direct {v1}, Landroid/graphics/Outline;-><init>()V

    .line 1424
    .local v1, "outline":Landroid/graphics/Outline;
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 1425
    iget v2, v1, Landroid/graphics/Outline;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Outline;->getRadius()F

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 1427
    .end local v1    # "outline":Landroid/graphics/Outline;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-virtual {v1, v0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->setCornerRadius(F)V

    .line 1428
    return-void
.end method

.method private blacklist updateBackgroundBlurRadius()V
    .locals 2

    .line 1431
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1433
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1434
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundBlurRadius:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurRadius:I

    .line 1435
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-nez v1, :cond_2

    if-lez v0, :cond_2

    .line 1436
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->createBackgroundBlurDrawable()Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    .line 1437
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundDrawable()V

    .line 1440
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-eqz v0, :cond_3

    .line 1441
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurRadius:I

    invoke-virtual {v0, v1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->setBlurRadius(I)V

    .line 1443
    :cond_3
    return-void
.end method

.method private blacklist updateBackgroundDrawable()V
    .locals 9

    .line 1376
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    if-nez v0, :cond_0

    .line 1377
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    .line 1380
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundInsets:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mLastOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, v1, :cond_1

    .line 1383
    return-void

    .line 1386
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1387
    .local v0, "destDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-eqz v1, :cond_2

    .line 1388
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v0, v1

    .line 1392
    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v1, v2}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1393
    new-instance v8, Lcom/android/internal/policy/DecorView$2;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    iget v4, v1, Landroid/graphics/Insets;->left:I

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    iget v5, v1, Landroid/graphics/Insets;->top:I

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    iget v6, v1, Landroid/graphics/Insets;->right:I

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    iget v7, v1, Landroid/graphics/Insets;->bottom:I

    move-object v1, v8

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/policy/DecorView$2;-><init>(Lcom/android/internal/policy/DecorView;Landroid/graphics/drawable/Drawable;IIII)V

    move-object v0, v8

    .line 1409
    :cond_3
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1411
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundInsets:Landroid/graphics/Insets;

    .line 1412
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    .line 1413
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1414
    return-void
.end method

.method private blacklist updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIZZIZZLandroid/view/WindowInsetsController;)V
    .locals 19
    .param p1, "state"    # Lcom/android/internal/policy/DecorView$ColorViewState;
    .param p2, "color"    # I
    .param p3, "dividerColor"    # I
    .param p4, "size"    # I
    .param p5, "verticalBar"    # Z
    .param p6, "seascape"    # Z
    .param p7, "sideMargin"    # I
    .param p8, "animate"    # Z
    .param p9, "force"    # Z
    .param p10, "controller"    # Landroid/view/WindowInsetsController;

    .line 1546
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p9

    iget-object v8, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget-object v9, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v9, v9, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->insetsType:I

    .line 1547
    move-object/from16 v10, p10

    invoke-interface {v10, v9}, Landroid/view/WindowInsetsController;->isRequestedVisible(I)Z

    move-result v9

    iget-object v11, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 1548
    invoke-virtual {v11}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1546
    invoke-virtual {v8, v9, v11, v7}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isPresent(ZIZ)Z

    move-result v8

    iput-boolean v8, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    .line 1549
    iget-object v8, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget-boolean v9, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    iget-object v11, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 1550
    invoke-virtual {v11}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1549
    invoke-virtual {v8, v9, v2, v11, v7}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(ZIIZ)Z

    move-result v8

    .line 1551
    .local v8, "show":Z
    if-eqz v8, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v12

    if-nez v12, :cond_0

    iget-boolean v12, v0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    if-nez v12, :cond_0

    if-lez p4, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    .line 1553
    .local v12, "showView":Z
    :goto_0
    const/4 v13, 0x0

    .line 1554
    .local v13, "visibilityChanged":Z
    iget-object v14, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    .line 1556
    .local v14, "view":Landroid/view/View;
    const/4 v15, -0x1

    if-eqz v4, :cond_1

    move/from16 v16, v15

    goto :goto_1

    :cond_1
    move/from16 v16, p4

    :goto_1
    move/from16 v17, v16

    .line 1557
    .local v17, "resolvedHeight":I
    if-eqz v4, :cond_2

    move/from16 v15, p4

    .line 1558
    .local v15, "resolvedWidth":I
    :cond_2
    if-eqz v4, :cond_4

    .line 1559
    iget-object v9, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    if-eqz v5, :cond_3

    iget v9, v9, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->seascapeGravity:I

    goto :goto_2

    :cond_3
    iget v9, v9, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->horizontalGravity:I

    goto :goto_2

    .line 1560
    :cond_4
    iget-object v9, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v9, v9, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->verticalGravity:I

    :goto_2
    nop

    .line 1562
    .local v9, "resolvedGravity":I
    if-nez v14, :cond_7

    .line 1563
    if-eqz v12, :cond_6

    .line 1564
    new-instance v11, Landroid/view/View;

    iget-object v7, v0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v11, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object v14, v11

    iput-object v11, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    .line 1565
    invoke-static {v14, v2, v3, v4, v5}, Lcom/android/internal/policy/DecorView;->setColor(Landroid/view/View;IIZZ)V

    .line 1566
    iget-object v7, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget-object v7, v7, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->transitionName:Ljava/lang/String;

    invoke-virtual {v14, v7}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 1567
    iget-object v7, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v7, v7, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->id:I

    invoke-virtual {v14, v7}, Landroid/view/View;->setId(I)V

    .line 1568
    const/4 v13, 0x1

    .line 1569
    const/4 v7, 0x4

    invoke-virtual {v14, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1570
    const/4 v11, 0x0

    iput v11, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    .line 1572
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v7, v17

    .end local v17    # "resolvedHeight":I
    .local v7, "resolvedHeight":I
    invoke-direct {v11, v15, v7, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1574
    .local v11, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v5, :cond_5

    .line 1575
    iput v6, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_3

    .line 1577
    :cond_5
    iput v6, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1579
    :goto_3
    invoke-virtual {v0, v14, v11}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1580
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->updateColorViewTranslations()V

    .line 1581
    .end local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    goto/16 :goto_9

    .line 1563
    .end local v7    # "resolvedHeight":I
    .restart local v17    # "resolvedHeight":I
    :cond_6
    move/from16 v7, v17

    .end local v17    # "resolvedHeight":I
    .restart local v7    # "resolvedHeight":I
    goto/16 :goto_9

    .line 1583
    .end local v7    # "resolvedHeight":I
    .restart local v17    # "resolvedHeight":I
    :cond_7
    move/from16 v7, v17

    .end local v17    # "resolvedHeight":I
    .restart local v7    # "resolvedHeight":I
    if-eqz v12, :cond_8

    const/4 v11, 0x0

    goto :goto_4

    :cond_8
    const/4 v11, 0x4

    .line 1584
    .local v11, "vis":I
    :goto_4
    iget v6, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    if-eq v6, v11, :cond_9

    const/16 v16, 0x1

    goto :goto_5

    :cond_9
    const/16 v16, 0x0

    :goto_5
    move/from16 v13, v16

    .line 1585
    iput v11, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    .line 1586
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1587
    .local v6, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v5, :cond_a

    const/16 v16, 0x0

    goto :goto_6

    :cond_a
    move/from16 v16, p7

    :goto_6
    move/from16 v17, v16

    .line 1588
    .local v17, "rightMargin":I
    if-eqz v5, :cond_b

    move/from16 v16, p7

    goto :goto_7

    :cond_b
    const/16 v16, 0x0

    :goto_7
    move/from16 v18, v16

    .line 1589
    .local v18, "leftMargin":I
    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v10, v7, :cond_d

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v10, v15, :cond_d

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-ne v10, v9, :cond_d

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v16, v11

    move/from16 v11, v17

    .end local v17    # "rightMargin":I
    .local v11, "rightMargin":I
    .local v16, "vis":I
    if-ne v10, v11, :cond_c

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v17, v13

    move/from16 v13, v18

    .end local v18    # "leftMargin":I
    .local v13, "leftMargin":I
    .local v17, "visibilityChanged":Z
    if-eq v10, v13, :cond_e

    goto :goto_8

    .end local v17    # "visibilityChanged":Z
    .local v13, "visibilityChanged":Z
    .restart local v18    # "leftMargin":I
    :cond_c
    move/from16 v17, v13

    move/from16 v13, v18

    .end local v18    # "leftMargin":I
    .local v13, "leftMargin":I
    .restart local v17    # "visibilityChanged":Z
    goto :goto_8

    .end local v16    # "vis":I
    .local v11, "vis":I
    .local v13, "visibilityChanged":Z
    .local v17, "rightMargin":I
    .restart local v18    # "leftMargin":I
    :cond_d
    move/from16 v16, v11

    move/from16 v11, v17

    move/from16 v17, v13

    move/from16 v13, v18

    .line 1592
    .end local v18    # "leftMargin":I
    .local v11, "rightMargin":I
    .local v13, "leftMargin":I
    .restart local v16    # "vis":I
    .local v17, "visibilityChanged":Z
    :goto_8
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1593
    iput v15, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1594
    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1595
    iput v11, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1596
    iput v13, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1597
    invoke-virtual {v14, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1599
    :cond_e
    if-eqz v12, :cond_f

    .line 1600
    invoke-static {v14, v2, v3, v4, v5}, Lcom/android/internal/policy/DecorView;->setColor(Landroid/view/View;IIZZ)V

    .line 1604
    :cond_f
    iget-object v10, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v10, v3, :cond_10

    iget-object v3, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    if-ne v1, v3, :cond_10

    invoke-virtual {v14}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_10

    .line 1605
    invoke-virtual {v0, v14, v6}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1606
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->updateColorViewTranslations()V

    .line 1610
    .end local v6    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "rightMargin":I
    .end local v13    # "leftMargin":I
    .end local v16    # "vis":I
    :cond_10
    move/from16 v13, v17

    .end local v17    # "visibilityChanged":Z
    .local v13, "visibilityChanged":Z
    :goto_9
    if-eqz v13, :cond_15

    .line 1611
    invoke-virtual {v14}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1612
    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p8, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v6

    if-nez v6, :cond_13

    .line 1613
    const/4 v6, 0x0

    if-eqz v12, :cond_12

    .line 1614
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_11

    .line 1615
    const/4 v10, 0x0

    invoke-virtual {v14, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1616
    invoke-virtual {v14, v6}, Landroid/view/View;->setAlpha(F)V

    .line 1618
    :cond_11
    invoke-virtual {v14}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v6, v0, Lcom/android/internal/policy/DecorView;->mShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, v0, Lcom/android/internal/policy/DecorView;->mBarEnterExitDuration:I

    int-to-long v10, v6

    .line 1619
    invoke-virtual {v3, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_b

    .line 1621
    :cond_12
    invoke-virtual {v14}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v6, v0, Lcom/android/internal/policy/DecorView;->mHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, v0, Lcom/android/internal/policy/DecorView;->mBarEnterExitDuration:I

    int-to-long v10, v6

    .line 1622
    invoke-virtual {v3, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v6, Lcom/android/internal/policy/DecorView$3;

    invoke-direct {v6, v0, v1}, Lcom/android/internal/policy/DecorView$3;-><init>(Lcom/android/internal/policy/DecorView;Lcom/android/internal/policy/DecorView$ColorViewState;)V

    .line 1623
    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_b

    .line 1612
    :cond_13
    const/4 v10, 0x0

    .line 1632
    invoke-virtual {v14, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1633
    if-eqz v12, :cond_14

    move v11, v10

    goto :goto_a

    :cond_14
    const/4 v11, 0x4

    :goto_a
    invoke-virtual {v14, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1636
    :cond_15
    :goto_b
    iput-boolean v8, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    .line 1637
    iput v2, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->color:I

    .line 1640
    iget-object v3, v0, Lcom/android/internal/policy/DecorView;->mDecorViewExt:Lcom/android/internal/policy/IDecorViewExt;

    invoke-interface {v3}, Lcom/android/internal/policy/IDecorViewExt;->isDebugSystemBar()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1641
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "window title:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " translucentFlag:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v6, v6, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->translucentFlag:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " showView:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " color:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1642
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1641
    const-string v6, "DecorView"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    :cond_16
    return-void
.end method

.method private blacklist updateColorViewTranslations()V
    .locals 4

    .line 1678
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mRootScrollY:I

    .line 1679
    .local v0, "rootScrollY":I
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1680
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-lez v0, :cond_0

    int-to-float v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1682
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1683
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-gez v0, :cond_2

    int-to-float v2, v0

    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1685
    :cond_3
    return-void
.end method

.method private blacklist updateDecorCaptionStatus(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 2321
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->hasWindowDecorCaption()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2322
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->isFillingScreen(Landroid/content/res/Configuration;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2323
    .local v0, "displayWindowDecor":Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    .line 2325
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 2326
    .local v2, "inflater":Landroid/view/LayoutInflater;
    invoke-direct {p0, v2}, Lcom/android/internal/policy/DecorView;->createDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    .line 2327
    if-eqz v3, :cond_3

    .line 2328
    invoke-virtual {v3}, Lcom/android/internal/widget/DecorCaptionView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    const/4 v4, -0x1

    if-nez v3, :cond_1

    .line 2329
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v1, v5}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2332
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->removeView(Landroid/view/View;)V

    .line 2333
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    new-instance v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v5}, Lcom/android/internal/widget/DecorCaptionView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 2336
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_2
    if-eqz v2, :cond_3

    .line 2338
    invoke-virtual {v2, v0}, Lcom/android/internal/widget/DecorCaptionView;->onConfigurationChanged(Z)V

    .line 2339
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->enableCaption(Z)V

    goto :goto_2

    .line 2336
    :cond_3
    :goto_1
    nop

    .line 2341
    :goto_2
    return-void
.end method

.method private blacklist updateElevation()V
    .locals 5

    .line 2672
    nop

    .line 2673
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 2674
    .local v0, "windowingMode":I
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v1, v1, Lcom/android/internal/policy/PhoneWindow;->mRenderShadowsInCompositor:Z

    .line 2676
    .local v1, "renderShadowsInCompositor":Z
    if-eqz v1, :cond_0

    .line 2677
    return-void

    .line 2679
    :cond_0
    const/4 v2, 0x0

    .line 2680
    .local v2, "elevation":F
    iget-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    .line 2683
    .local v3, "wasAdjustedForStack":Z
    const/4 v4, 0x5

    if-ne v0, v4, :cond_3

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2684
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2685
    const/high16 v4, 0x41a00000    # 20.0f

    goto :goto_0

    :cond_1
    const/high16 v4, 0x40a00000    # 5.0f

    :goto_0
    move v2, v4

    .line 2690
    iget-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    if-nez v4, :cond_2

    .line 2691
    const/high16 v2, 0x41a00000    # 20.0f

    .line 2694
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/internal/policy/DecorView;->dipToPx(F)F

    move-result v2

    .line 2695
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    goto :goto_1

    .line 2697
    :cond_3
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    .line 2702
    :goto_1
    if-nez v3, :cond_4

    iget-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    if-eqz v4, :cond_6

    .line 2703
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getElevation()F

    move-result v4

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_6

    .line 2704
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v4

    if-nez v4, :cond_5

    .line 2705
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4, v2}, Lcom/android/internal/policy/PhoneWindow;->setElevation(F)V

    goto :goto_2

    .line 2710
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/DecorView;->setElevation(F)V

    .line 2713
    :cond_6
    :goto_2
    return-void
.end method

.method private blacklist updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 17
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 1688
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1690
    .local v2, "showStatusGuard":Z
    iget-object v3, v0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/16 v4, 0x8

    if-eqz v3, :cond_f

    .line 1691
    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_e

    .line 1693
    iget-object v3, v0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 1694
    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1695
    .local v3, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v6, 0x0

    .line 1696
    .local v6, "mlpChanged":Z
    iget-object v7, v0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->isShown()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1697
    iget-object v7, v0, Lcom/android/internal/policy/DecorView;->mTempRect:Landroid/graphics/Rect;

    if-nez v7, :cond_0

    .line 1698
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v0, Lcom/android/internal/policy/DecorView;->mTempRect:Landroid/graphics/Rect;

    .line 1700
    :cond_0
    iget-object v7, v0, Lcom/android/internal/policy/DecorView;->mTempRect:Landroid/graphics/Rect;

    .line 1703
    .local v7, "rect":Landroid/graphics/Rect;
    iget-object v8, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    .line 1704
    invoke-virtual {v8, v1, v7}, Landroid/view/ViewGroup;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object v8

    .line 1705
    .local v8, "innerInsets":Landroid/view/WindowInsets;
    invoke-virtual {v8}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v9

    .line 1706
    .local v9, "newTopMargin":I
    invoke-virtual {v8}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v10

    .line 1707
    .local v10, "newLeftMargin":I
    invoke-virtual {v8}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v11

    .line 1712
    .local v11, "newRightMargin":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v12

    .line 1713
    .local v12, "rootInsets":Landroid/view/WindowInsets;
    invoke-virtual {v12}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v13

    .line 1714
    .local v13, "newGuardLeftMargin":I
    invoke-virtual {v12}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v14

    .line 1716
    .local v14, "newGuardRightMargin":I
    iget v15, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v15, v9, :cond_1

    iget v15, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v15, v10, :cond_1

    iget v15, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v15, v11, :cond_2

    .line 1718
    :cond_1
    const/4 v6, 0x1

    .line 1719
    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1720
    iput v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1721
    iput v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1724
    :cond_2
    if-lez v9, :cond_3

    iget-object v15, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-nez v15, :cond_3

    .line 1725
    new-instance v15, Landroid/view/View;

    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v15, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v15, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    .line 1726
    invoke-virtual {v15, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1727
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v15, -0x1

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v16, v2

    .end local v2    # "showStatusGuard":Z
    .local v16, "showStatusGuard":Z
    const/16 v2, 0x33

    invoke-direct {v5, v15, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object v2, v5

    .line 1729
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1730
    iput v14, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1731
    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v5, v5, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {v0, v5}, Lcom/android/internal/policy/DecorView;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v0, v4, v5, v2}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_0

    .line 1724
    .end local v16    # "showStatusGuard":Z
    .local v2, "showStatusGuard":Z
    :cond_3
    move/from16 v16, v2

    .line 1732
    .end local v2    # "showStatusGuard":Z
    .restart local v16    # "showStatusGuard":Z
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 1733
    nop

    .line 1734
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1735
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v4, v5, :cond_4

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-ne v4, v13, :cond_4

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-eq v4, v14, :cond_6

    .line 1737
    :cond_4
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1738
    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1739
    iput v14, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1740
    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1732
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    :goto_0
    nop

    .line 1746
    :cond_6
    :goto_1
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    const/4 v4, 0x1

    if-eqz v2, :cond_7

    move v5, v4

    goto :goto_2

    :cond_7
    const/4 v5, 0x0

    .line 1748
    .end local v16    # "showStatusGuard":Z
    .local v5, "showStatusGuard":Z
    :goto_2
    if-eqz v5, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_8

    .line 1750
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->updateStatusGuardColor()V

    .line 1757
    :cond_8
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeaturesPrivate()I

    move-result v2

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_9

    goto :goto_3

    :cond_9
    const/4 v4, 0x0

    :goto_3
    move v2, v4

    .line 1759
    .local v2, "nonOverlay":Z
    if-eqz v2, :cond_a

    if-eqz v5, :cond_a

    .line 1760
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v4

    const/4 v15, 0x0

    invoke-virtual {v1, v15, v4, v15, v15}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object v1

    .line 1762
    .end local v2    # "nonOverlay":Z
    .end local v7    # "rect":Landroid/graphics/Rect;
    .end local v8    # "innerInsets":Landroid/view/WindowInsets;
    .end local v9    # "newTopMargin":I
    .end local v10    # "newLeftMargin":I
    .end local v11    # "newRightMargin":I
    .end local v12    # "rootInsets":Landroid/view/WindowInsets;
    .end local v13    # "newGuardLeftMargin":I
    .end local v14    # "newGuardRightMargin":I
    .end local p1    # "insets":Landroid/view/WindowInsets;
    .local v1, "insets":Landroid/view/WindowInsets;
    :cond_a
    move/from16 v16, v5

    const/4 v2, 0x0

    goto :goto_5

    .line 1764
    .end local v1    # "insets":Landroid/view/WindowInsets;
    .end local v5    # "showStatusGuard":Z
    .local v2, "showStatusGuard":Z
    .restart local p1    # "insets":Landroid/view/WindowInsets;
    :cond_b
    move/from16 v16, v2

    .end local v2    # "showStatusGuard":Z
    .restart local v16    # "showStatusGuard":Z
    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-nez v2, :cond_d

    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-nez v2, :cond_d

    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eqz v2, :cond_c

    goto :goto_4

    :cond_c
    const/4 v2, 0x0

    goto :goto_5

    .line 1765
    :cond_d
    :goto_4
    const/4 v6, 0x1

    .line 1766
    const/4 v2, 0x0

    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1769
    .end local p1    # "insets":Landroid/view/WindowInsets;
    .restart local v1    # "insets":Landroid/view/WindowInsets;
    :goto_5
    if-eqz v6, :cond_10

    .line 1770
    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 1691
    .end local v1    # "insets":Landroid/view/WindowInsets;
    .end local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6    # "mlpChanged":Z
    .end local v16    # "showStatusGuard":Z
    .restart local v2    # "showStatusGuard":Z
    .restart local p1    # "insets":Landroid/view/WindowInsets;
    :cond_e
    move/from16 v16, v2

    const/4 v2, 0x0

    .end local v2    # "showStatusGuard":Z
    .restart local v16    # "showStatusGuard":Z
    goto :goto_6

    .line 1690
    .end local v16    # "showStatusGuard":Z
    .restart local v2    # "showStatusGuard":Z
    :cond_f
    move/from16 v16, v2

    const/4 v2, 0x0

    .line 1774
    .end local v2    # "showStatusGuard":Z
    .end local p1    # "insets":Landroid/view/WindowInsets;
    .restart local v1    # "insets":Landroid/view/WindowInsets;
    .restart local v16    # "showStatusGuard":Z
    :cond_10
    :goto_6
    iget-object v3, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v3, :cond_12

    .line 1775
    if-eqz v16, :cond_11

    move v4, v2

    goto :goto_7

    :cond_11
    const/16 v4, 0x8

    :goto_7
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1777
    :cond_12
    return-object v1
.end method

.method private blacklist updateStatusGuardColor()V
    .locals 4

    .line 1781
    nop

    .line 1782
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1783
    .local v0, "lightStatusBar":Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1784
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    const v3, 0x1060197

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    goto :goto_1

    .line 1785
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    const v3, 0x1060196

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 1783
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1786
    return-void
.end method


# virtual methods
.method blacklist clearContentView()V
    .locals 3

    .line 2511
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_0

    .line 2512
    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->removeContentView()V

    goto :goto_1

    .line 2516
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2517
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2518
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v2, v2, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v2, v2, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eq v1, v2, :cond_1

    .line 2520
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->removeViewAt(I)V

    .line 2516
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2524
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2998
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2999
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorViewExt:Lcom/android/internal/policy/IDecorViewExt;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/policy/IDecorViewExt;->draw(Landroid/graphics/Canvas;II)V

    .line 3000
    return-void
.end method

.method public whitelist dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 529
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 530
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    .line 531
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 530
    :goto_0
    return v1
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 414
    const-string/jumbo v0, "v"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 415
    .local v1, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 416
    .local v2, "action":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    .line 420
    .local v5, "isDown":Z
    :goto_0
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mDecorViewExt:Lcom/android/internal/policy/IDecorViewExt;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dispatchKeyEvent, code="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", action="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", repeat="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 421
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", destoryed="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 420
    const-string v8, "d"

    const-string v9, "DecorView"

    const/4 v10, 0x0

    invoke-interface {v6, v8, v9, v7, v10}, Lcom/android/internal/policy/IDecorViewExt;->inputLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/MotionEvent;)V

    .line 423
    if-eqz v5, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_2

    .line 426
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v6, v6, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v6, v6, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    if-eq v6, v1, :cond_1

    .line 427
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v6

    .line 428
    .local v6, "handled":Z
    if-eqz v6, :cond_1

    .line 429
    return v4

    .line 435
    .end local v6    # "handled":Z
    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    iget-boolean v6, v6, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v6, :cond_2

    .line 436
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v7, v6, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    invoke-virtual {v6, v7, v1, p1, v3}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 437
    return v4

    .line 442
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 443
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v3

    .line 444
    .local v3, "cb":Landroid/view/Window$Callback;
    if-eqz v3, :cond_3

    iget v6, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v6, :cond_3

    invoke-interface {v3, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v6

    goto :goto_1

    .line 445
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v6

    :goto_1
    nop

    .line 448
    .restart local v6    # "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v11

    cmp-long v7, v7, v11

    if-eqz v7, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v7

    if-nez v7, :cond_4

    if-ne v2, v4, :cond_5

    .line 451
    :cond_4
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mDecorViewExt:Lcom/android/internal/policy/IDecorViewExt;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dispatchKeyEvent cb handled="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ", "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ", activity="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ", mFeatureId="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v0, v9, v8, v10}, Lcom/android/internal/policy/IDecorViewExt;->inputLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    goto :goto_2

    .line 453
    :catch_0
    move-exception v7

    .line 454
    .local v7, "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/android/internal/policy/DecorView;->mDecorViewExt:Lcom/android/internal/policy/IDecorViewExt;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dispatchKeyEvent: print log exception = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v0, v9, v11, v10}, Lcom/android/internal/policy/IDecorViewExt;->inputLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/MotionEvent;)V

    .line 458
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_2
    if-eqz v6, :cond_6

    .line 459
    return v4

    .line 463
    .end local v3    # "cb":Landroid/view/Window$Callback;
    .end local v6    # "handled":Z
    :cond_6
    if-eqz v5, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v0, v3, v4, p1}, Lcom/android/internal/policy/PhoneWindow;->onKeyDown(IILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_3

    .line 464
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v0, v3, v4, p1}, Lcom/android/internal/policy/PhoneWindow;->onKeyUp(IILandroid/view/KeyEvent;)Z

    move-result v0

    .line 463
    :goto_3
    return v0
.end method

.method public whitelist dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/KeyEvent;

    .line 471
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 472
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v0, v2, v3, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 474
    .local v0, "handled":Z
    if-eqz v0, :cond_1

    .line 475
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eqz v2, :cond_0

    .line 476
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    iput-boolean v1, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 478
    :cond_0
    return v1

    .line 483
    .end local v0    # "handled":Z
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 484
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v2, :cond_2

    .line 485
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 486
    .local v2, "handled":Z
    :goto_0
    if-eqz v2, :cond_3

    .line 487
    return v1

    .line 494
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 495
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v3

    .line 496
    .local v3, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-nez v5, :cond_4

    .line 497
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v5, v3, p1}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 498
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {v5, v3, v6, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v2

    .line 500
    iput-boolean v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 501
    if-eqz v2, :cond_4

    .line 502
    return v1

    .line 505
    :cond_4
    return v4
.end method

.method public whitelist dispatchPointerCaptureChanged(Z)V
    .locals 1
    .param p1, "hasCapture"    # Z

    .line 2792
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPointerCaptureChanged(Z)V

    .line 2793
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2794
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onPointerCaptureChanged(Z)V

    .line 2796
    :cond_0
    return-void
.end method

.method public blacklist dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 711
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 712
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 713
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 714
    const/4 v1, 0x1

    return v1

    .line 717
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    return v1
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 510
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 513
    .local v0, "cb":Landroid/view/Window$Callback;
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorViewExt:Lcom/android/internal/policy/IDecorViewExt;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchTouchEvent cb="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", destoryed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 514
    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", featureId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 513
    const-string v3, "d1"

    const-string v4, "DecorView"

    invoke-interface {v1, v3, v4, v2, p1}, Lcom/android/internal/policy/IDecorViewExt;->inputLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/MotionEvent;)V

    .line 516
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    .line 517
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 516
    :goto_0
    return v1
.end method

.method public whitelist dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 522
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 523
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    .line 524
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 523
    :goto_0
    return v1
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 898
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 900
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 901
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorViewExt:Lcom/android/internal/policy/IDecorViewExt;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/policy/IDecorViewExt;->draw(Landroid/graphics/Canvas;II)V

    .line 907
    return-void
.end method

.method blacklist enableCaption(Z)V
    .locals 1
    .param p1, "attachedAndVisible"    # Z

    .line 2238
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    if-eq v0, p1, :cond_1

    .line 2239
    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    .line 2240
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2241
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 2243
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->notifyCaptionHeightChanged()V

    .line 2245
    :cond_1
    return-void
.end method

.method blacklist finishChanging()V
    .locals 1

    .line 1055
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mChanging:Z

    .line 1056
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 1057
    return-void
.end method

.method public whitelist gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 4
    .param p1, "region"    # Landroid/graphics/Region;

    .line 386
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/policy/DecorView;->gatherTransparentRegion(Lcom/android/internal/policy/DecorView$ColorViewState;Landroid/graphics/Region;)Z

    move-result v0

    .line 387
    .local v0, "statusOpaque":Z
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/DecorView;->gatherTransparentRegion(Lcom/android/internal/policy/DecorView$ColorViewState;Landroid/graphics/Region;)Z

    move-result v1

    .line 388
    .local v1, "navOpaque":Z
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v2

    .line 391
    .local v2, "decorOpaque":Z
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3
.end method

.method blacklist gatherTransparentRegion(Lcom/android/internal/policy/DecorView$ColorViewState;Landroid/graphics/Region;)Z
    .locals 1
    .param p1, "colorViewState"    # Lcom/android/internal/policy/DecorView$ColorViewState;
    .param p2, "region"    # Landroid/graphics/Region;

    .line 395
    iget-object v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    return v0

    .line 401
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAccessibilityViewId()I
    .locals 1

    .line 2800
    const v0, 0x7ffffffe

    return v0
.end method

.method public whitelist getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1478
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public blacklist getBackgroundFallback()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    invoke-virtual {v0}, Lcom/android/internal/widget/BackgroundFallback;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method blacklist getCaptionHeight()I
    .locals 1

    .line 2720
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->getCaptionHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist getCaptionInsetsHeight()I
    .locals 1

    .line 2728
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isOverlayWithDecorCaptionEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2729
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getCaptionHeight()I

    move-result v0

    return v0
.end method

.method blacklist getNavigationBarBackgroundView()Landroid/view/View;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    return-object v0
.end method

.method public whitelist getResources()Landroid/content/res/Resources;
    .locals 1

    .line 2279
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method blacklist getStatusBarBackgroundView()Landroid/view/View;
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    return-object v0
.end method

.method public whitelist getWindowInsetsController()Landroid/view/WindowInsetsController;
    .locals 1

    .line 2805
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2806
    invoke-super {p0}, Landroid/widget/FrameLayout;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    return-object v0

    .line 2808
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPendingInsetsController:Landroid/view/PendingInsetsController;

    return-object v0
.end method

.method public blacklist getWrapper()Lcom/android/internal/policy/IDecorViewWrapper;
    .locals 1

    .line 3010
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorViewWrapper:Lcom/android/internal/policy/IDecorViewWrapper;

    return-object v0
.end method

.method blacklist isShowingCaption()Z
    .locals 1

    .line 2716
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->isCaptionShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isTransitionGroup()Z
    .locals 1

    .line 1154
    const/4 v0, 0x0

    return v0
.end method

.method synthetic blacklist lambda$new$0$com-android-internal-policy-DecorView()Z
    .locals 1

    .line 303
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundBlurCorners()V

    .line 304
    const/4 v0, 0x1

    return v0
.end method

.method synthetic blacklist lambda$setBackgroundBlurRadius$1$com-android-internal-policy-DecorView(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "enabled"    # Ljava/lang/Boolean;

    .line 1450
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabled:Z

    .line 1451
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundBlurRadius()V

    .line 1452
    return-void
.end method

.method public blacklist notifyCaptionHeightChanged()V
    .locals 2

    .line 2252
    sget-boolean v0, Landroid/view/ViewRootImpl;->CAPTION_ON_SHELL:Z

    if-nez v0, :cond_0

    .line 2253
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getCaptionInsetsHeight()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->setCaptionInsetsHeight(I)V

    .line 2255
    :cond_0
    return-void
.end method

.method public whitelist onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 1123
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1124
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1125
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_1

    .line 1130
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v2, -0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 1131
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 1132
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 1133
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    .line 1134
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    .line 1133
    invoke-virtual {p1, v3, v1, v3, v4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    .line 1136
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v1, v2, :cond_1

    .line 1137
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1138
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1139
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    .line 1140
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    .line 1139
    invoke-virtual {p1, v1, v3, v2, v3}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    .line 1143
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetsAsRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1144
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    move-result-object p1

    .line 1145
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 1146
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1147
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 1149
    :cond_2
    return-object p1
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 3

    .line 1925
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1928
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorViewExt:Lcom/android/internal/policy/IDecorViewExt;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindow()Landroid/view/IWindow;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/IDecorViewExt;->setWindow(Landroid/view/IWindow;)V

    .line 1931
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1932
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    .line 1933
    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 1936
    :cond_0
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1944
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->openPanelsAfterRestore()V

    .line 1947
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    if-nez v1, :cond_2

    .line 1950
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewRootImpl;->addWindowCallbacks(Landroid/view/WindowCallbacks;)V

    .line 1951
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    goto :goto_0

    .line 1952
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v1, :cond_3

    .line 1955
    invoke-virtual {v1}, Lcom/android/internal/policy/BackdropFrameRenderer;->onConfigurationChange()V

    .line 1958
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundBlurRadius()V

    .line 1960
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/PhoneWindow;->onViewRootImplSet(Landroid/view/ViewRootImpl;)V

    .line 1961
    return-void
.end method

.method public blacklist onCloseSystemDialogs(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 2007
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-ltz v0, :cond_0

    .line 2008
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->closeAllPanels()V

    .line 2010
    :cond_0
    return-void
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 2284
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2286
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->updateDecorCaptionStatus(Landroid/content/res/Configuration;)V

    .line 2288
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initializeElevation()V

    .line 2292
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorViewExt:Lcom/android/internal/policy/IDecorViewExt;

    invoke-interface {v0}, Lcom/android/internal/policy/IDecorViewExt;->requestLayoutForDarkModeBackgroundView()V

    .line 2298
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorViewExt:Lcom/android/internal/policy/IDecorViewExt;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-interface {v0, p1, v1}, Lcom/android/internal/policy/IDecorViewExt;->onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)V

    .line 2300
    return-void
.end method

.method public blacklist onContentDrawn(IIII)Z
    .locals 1
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I
    .param p3, "sizeX"    # I
    .param p4, "sizeY"    # I

    .line 2576
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-nez v0, :cond_0

    .line 2577
    const/4 v0, 0x0

    return v0

    .line 2579
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/policy/BackdropFrameRenderer;->onContentDrawn(IIII)Z

    move-result v0

    return v0
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 4

    .line 1965
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1967
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1968
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    .line 1969
    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 1972
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v1, :cond_1

    .line 1973
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorContentParent;->dismissPopups()V

    .line 1976
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 1977
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1978
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1979
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1981
    :cond_2
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 1983
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    if-eqz v1, :cond_4

    .line 1984
    invoke-virtual {v1}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->dismiss()V

    .line 1985
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 1988
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->removeBackgroundBlurDrawable()V

    .line 1990
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1991
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_5

    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v3, :cond_5

    .line 1992
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    .line 1995
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->releaseThreadedRenderer()V

    .line 1997
    iget-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    if-eqz v3, :cond_6

    .line 1998
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewRootImpl;->removeWindowCallbacks(Landroid/view/WindowCallbacks;)V

    .line 1999
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    .line 2002
    :cond_6
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPendingInsetsController:Landroid/view/PendingInsetsController;

    invoke-virtual {v2}, Landroid/view/PendingInsetsController;->detach()V

    .line 2003
    return-void
.end method

.method public whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 406
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 408
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, v1, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v5, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v6, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/BackgroundFallback;->draw(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/graphics/Canvas;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 410
    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 596
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 597
    .local v0, "action":I
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 606
    if-nez v0, :cond_0

    .line 607
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 608
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 609
    .local v3, "y":I
    invoke-direct {p0, v1, v3}, Lcom/android/internal/policy/DecorView;->isOutOfInnerBounds(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 610
    return v2

    .line 615
    .end local v1    # "x":I
    .end local v3    # "y":I
    :cond_0
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-ltz v1, :cond_1

    .line 616
    if-nez v0, :cond_1

    .line 617
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 618
    .restart local v1    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 619
    .restart local v3    # "y":I
    invoke-direct {p0, v1, v3}, Lcom/android/internal/policy/DecorView;->isOutOfBounds(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 620
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v5, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    .line 621
    return v2

    .line 627
    .end local v1    # "x":I
    .end local v3    # "y":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 872
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 873
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->offsetTopAndBottom(I)V

    .line 876
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    if-eqz v0, :cond_1

    .line 877
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->offsetLeftAndRight(I)V

    .line 882
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    .line 883
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    .line 885
    if-eqz p1, :cond_3

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    if-eq v1, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    if-eqz v0, :cond_3

    .line 888
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    .line 892
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorViewExt:Lcom/android/internal/policy/IDecorViewExt;

    invoke-interface {v0}, Lcom/android/internal/policy/IDecorViewExt;->relayoutZoomView()V

    .line 894
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 767
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 768
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 769
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    nop

    .line 770
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    .line 772
    .local v3, "isPortrait":Z
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 773
    .local v6, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 775
    .local v7, "heightMode":I
    const/4 v8, 0x0

    .line 776
    .local v8, "fixedWidth":Z
    iput-boolean v4, v0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    .line 777
    const/4 v9, 0x6

    const/4 v10, 0x5

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v12, -0x80000000

    if-ne v6, v12, :cond_5

    .line 778
    iget-object v13, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v3, :cond_1

    iget-object v13, v13, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    goto :goto_1

    :cond_1
    iget-object v13, v13, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 779
    .local v13, "tvw":Landroid/util/TypedValue;
    :goto_1
    if-eqz v13, :cond_5

    iget v14, v13, Landroid/util/TypedValue;->type:I

    if-eqz v14, :cond_5

    .line 781
    iget v14, v13, Landroid/util/TypedValue;->type:I

    if-ne v14, v10, :cond_2

    .line 782
    invoke-virtual {v13, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v14

    float-to-int v14, v14

    .local v14, "w":I
    goto :goto_2

    .line 783
    .end local v14    # "w":I
    :cond_2
    iget v14, v13, Landroid/util/TypedValue;->type:I

    if-ne v14, v9, :cond_3

    .line 784
    iget v14, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v14, v14

    iget v15, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v15, v15

    invoke-virtual {v13, v14, v15}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v14

    float-to-int v14, v14

    .restart local v14    # "w":I
    goto :goto_2

    .line 786
    .end local v14    # "w":I
    :cond_3
    const/4 v14, 0x0

    .line 789
    .restart local v14    # "w":I
    :goto_2
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 790
    .local v15, "widthSize":I
    if-lez v14, :cond_4

    .line 791
    nop

    .line 792
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 791
    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 793
    .end local p1    # "widthMeasureSpec":I
    .local v9, "widthMeasureSpec":I
    const/4 v8, 0x1

    goto :goto_3

    .line 795
    .end local v9    # "widthMeasureSpec":I
    .restart local p1    # "widthMeasureSpec":I
    :cond_4
    iget-object v9, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int v9, v15, v9

    iget-object v11, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v11

    invoke-static {v9, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 798
    .end local p1    # "widthMeasureSpec":I
    .restart local v9    # "widthMeasureSpec":I
    iput-boolean v5, v0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    goto :goto_3

    .line 803
    .end local v9    # "widthMeasureSpec":I
    .end local v13    # "tvw":Landroid/util/TypedValue;
    .end local v14    # "w":I
    .end local v15    # "widthSize":I
    .restart local p1    # "widthMeasureSpec":I
    :cond_5
    move/from16 v9, p1

    .end local p1    # "widthMeasureSpec":I
    .restart local v9    # "widthMeasureSpec":I
    :goto_3
    iput-boolean v4, v0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    .line 804
    if-ne v7, v12, :cond_a

    .line 805
    if-eqz v3, :cond_6

    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    goto :goto_4

    .line 806
    :cond_6
    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    :goto_4
    nop

    .line 807
    .local v4, "tvh":Landroid/util/TypedValue;
    if-eqz v4, :cond_a

    iget v11, v4, Landroid/util/TypedValue;->type:I

    if-eqz v11, :cond_a

    .line 809
    iget v11, v4, Landroid/util/TypedValue;->type:I

    if-ne v11, v10, :cond_7

    .line 810
    invoke-virtual {v4, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v11, v11

    .local v11, "h":I
    goto :goto_5

    .line 811
    .end local v11    # "h":I
    :cond_7
    iget v11, v4, Landroid/util/TypedValue;->type:I

    const/4 v13, 0x6

    if-ne v11, v13, :cond_8

    .line 812
    iget v11, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v11, v11

    iget v13, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v13, v13

    invoke-virtual {v4, v11, v13}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v11

    float-to-int v11, v11

    .restart local v11    # "h":I
    goto :goto_5

    .line 814
    .end local v11    # "h":I
    :cond_8
    const/4 v11, 0x0

    .line 817
    .restart local v11    # "h":I
    :goto_5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 818
    .local v13, "heightSize":I
    if-lez v11, :cond_9

    .line 819
    nop

    .line 820
    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 819
    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .end local p2    # "heightMeasureSpec":I
    .local v14, "heightMeasureSpec":I
    goto :goto_6

    .line 821
    .end local v14    # "heightMeasureSpec":I
    .restart local p2    # "heightMeasureSpec":I
    :cond_9
    iget-object v14, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v14}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    iget v14, v14, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v14, v14, 0x100

    if-nez v14, :cond_a

    .line 822
    iget-object v14, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    sub-int v14, v13, v14

    iget-object v15, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    invoke-static {v14, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 824
    .end local p2    # "heightMeasureSpec":I
    .restart local v14    # "heightMeasureSpec":I
    iput-boolean v5, v0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    goto :goto_6

    .line 829
    .end local v4    # "tvh":Landroid/util/TypedValue;
    .end local v11    # "h":I
    .end local v13    # "heightSize":I
    .end local v14    # "heightMeasureSpec":I
    .restart local p2    # "heightMeasureSpec":I
    :cond_a
    move/from16 v14, p2

    .end local p2    # "heightMeasureSpec":I
    .restart local v14    # "heightMeasureSpec":I
    :goto_6
    invoke-super {v0, v9, v14}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 831
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getMeasuredWidth()I

    move-result v4

    .line 832
    .local v4, "width":I
    const/4 v11, 0x0

    .line 834
    .local v11, "measure":Z
    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 836
    if-nez v8, :cond_e

    if-ne v6, v12, :cond_e

    .line 837
    iget-object v12, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v3, :cond_b

    iget-object v12, v12, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    goto :goto_7

    :cond_b
    iget-object v12, v12, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    .line 838
    .local v12, "tv":Landroid/util/TypedValue;
    :goto_7
    nop

    .line 839
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v13, v13

    .line 838
    invoke-static {v5, v13, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    .line 840
    .local v5, "availableWidth":F
    iget v13, v12, Landroid/util/TypedValue;->type:I

    if-eqz v13, :cond_e

    .line 842
    iget v13, v12, Landroid/util/TypedValue;->type:I

    if-ne v13, v10, :cond_c

    .line 843
    invoke-virtual {v12, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v10

    float-to-int v10, v10

    .local v10, "min":I
    goto :goto_8

    .line 844
    .end local v10    # "min":I
    :cond_c
    iget v10, v12, Landroid/util/TypedValue;->type:I

    const/4 v13, 0x6

    if-ne v10, v13, :cond_d

    .line 845
    invoke-virtual {v12, v5, v5}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v10

    float-to-int v10, v10

    .restart local v10    # "min":I
    goto :goto_8

    .line 847
    .end local v10    # "min":I
    :cond_d
    const/4 v10, 0x0

    .line 852
    .restart local v10    # "min":I
    :goto_8
    if-ge v4, v10, :cond_e

    .line 853
    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v10, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 854
    const/4 v11, 0x1

    .line 861
    .end local v5    # "availableWidth":F
    .end local v10    # "min":I
    .end local v12    # "tv":Landroid/util/TypedValue;
    :cond_e
    if-eqz v11, :cond_f

    .line 862
    invoke-super {v0, v9, v14}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 866
    :cond_f
    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mDecorViewExt:Lcom/android/internal/policy/IDecorViewExt;

    invoke-interface {v5, v9, v14}, Lcom/android/internal/policy/IDecorViewExt;->remeasureZoomView(II)Z

    .line 868
    return-void
.end method

.method public blacklist onMovedToDisplay(ILandroid/content/res/Configuration;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "config"    # Landroid/content/res/Configuration;

    .line 2304
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMovedToDisplay(ILandroid/content/res/Configuration;)V

    .line 2306
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->updateDisplay(I)V

    .line 2307
    return-void
.end method

.method public blacklist onPostDraw(Landroid/graphics/RecordingCanvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/RecordingCanvas;

    .line 2596
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->drawResizingShadowIfNeeded(Landroid/graphics/RecordingCanvas;)V

    .line 2597
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->drawLegacyNavigationBarBackground(Landroid/graphics/RecordingCanvas;)V

    .line 2598
    return-void
.end method

.method public blacklist onRequestDraw(Z)V
    .locals 1
    .param p1, "reportNextDraw"    # Z

    .line 2584
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_0

    .line 2585
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/BackdropFrameRenderer;->onRequestDraw(Z)V

    goto :goto_0

    .line 2586
    :cond_0
    if-eqz p1, :cond_1

    .line 2588
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2589
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->reportDrawFinish()V

    .line 2592
    :cond_1
    :goto_0
    return-void
.end method

.method blacklist onResourcesLoaded(Landroid/view/LayoutInflater;I)V
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "layoutResource"    # I

    .line 2344
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_0

    .line 2345
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->loadBackgroundDrawablesIfNeeded()V

    .line 2346
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 2348
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    move-result v6

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 2349
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    move-result v7

    .line 2346
    move-object v2, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/policy/BackdropFrameRenderer;->onResourcesLoaded(Lcom/android/internal/policy/DecorView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 2352
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->createDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    .line 2353
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2354
    .local v0, "root":Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    .line 2355
    invoke-virtual {v1}, Lcom/android/internal/widget/DecorCaptionView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2356
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2359
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v3}, Lcom/android/internal/widget/DecorCaptionView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2364
    :cond_2
    const/4 v1, 0x0

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2366
    :goto_0
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    .line 2367
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initializeElevation()V

    .line 2368
    return-void
.end method

.method public blacklist onRootViewScrollYChanged(I)V
    .locals 1
    .param p1, "rootScrollY"    # I

    .line 2035
    iput p1, p0, Lcom/android/internal/policy/DecorView;->mRootScrollY:I

    .line 2036
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_0

    .line 2037
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/DecorCaptionView;->onRootViewScrollYChanged(I)V

    .line 2039
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateColorViewTranslations()V

    .line 2040
    return-void
.end method

.method public blacklist onSystemBarAppearanceChanged(I)V
    .locals 2
    .param p1, "appearance"    # I

    .line 1115
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 1116
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_0

    .line 1117
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->dispatchOnSystemBarAppearanceChanged(I)V

    .line 1119
    :cond_0
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 582
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public blacklist onWindowDragResizeEnd()V
    .locals 2

    .line 2568
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->releaseThreadedRenderer()V

    .line 2569
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 2570
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    .line 2571
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    .line 2572
    return-void
.end method

.method public blacklist onWindowDragResizeStart(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 15
    .param p1, "initialBounds"    # Landroid/graphics/Rect;
    .param p2, "fullscreen"    # Z
    .param p3, "systemInsets"    # Landroid/graphics/Rect;
    .param p4, "stableInsets"    # Landroid/graphics/Rect;
    .param p5, "resizeMode"    # I

    .line 2537
    move-object v11, p0

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2539
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->releaseThreadedRenderer()V

    .line 2540
    return-void

    .line 2542
    :cond_0
    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_1

    .line 2543
    return-void

    .line 2545
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getThreadedRenderer()Landroid/view/ThreadedRenderer;

    move-result-object v12

    .line 2546
    .local v12, "renderer":Landroid/view/ThreadedRenderer;
    if-eqz v12, :cond_2

    .line 2547
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->loadBackgroundDrawablesIfNeeded()V

    .line 2548
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v13

    .line 2549
    .local v13, "rootInsets":Landroid/view/WindowInsets;
    new-instance v14, Lcom/android/internal/policy/BackdropFrameRenderer;

    iget-object v4, v11, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, v11, Lcom/android/internal/policy/DecorView;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, v11, Lcom/android/internal/policy/DecorView;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 2551
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    move-result v7

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 2552
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    move-result v8

    .line 2553
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v10

    move-object v0, v14

    move-object v1, p0

    move-object v2, v12

    move-object/from16 v3, p1

    move/from16 v9, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/policy/BackdropFrameRenderer;-><init>(Lcom/android/internal/policy/DecorView;Landroid/view/ThreadedRenderer;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZLandroid/graphics/Insets;)V

    iput-object v14, v11, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    .line 2558
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    .line 2560
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 2562
    .end local v13    # "rootInsets":Landroid/view/WindowInsets;
    :cond_2
    move/from16 v0, p5

    iput v0, v11, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    .line 2563
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    .line 2564
    return-void
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .line 1899
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 1903
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    if-eqz v0, :cond_0

    .line 1905
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    .line 1908
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1909
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_1

    .line 1910
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 1913
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    .line 1914
    invoke-virtual {v1, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    .line 1916
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_3

    .line 1917
    invoke-virtual {v1, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    .line 1920
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    .line 1921
    return-void
.end method

.method public blacklist onWindowSizeIsChanging(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "newBounds"    # Landroid/graphics/Rect;
    .param p2, "fullscreen"    # Z
    .param p3, "systemInsets"    # Landroid/graphics/Rect;
    .param p4, "stableInsets"    # Landroid/graphics/Rect;

    .line 2529
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_0

    .line 2530
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/BackdropFrameRenderer;->setTargetRect(Landroid/graphics/Rect;ZLandroid/graphics/Rect;)V

    .line 2532
    :cond_0
    return-void
.end method

.method public whitelist onWindowSystemUiVisibilityChanged(I)V
    .locals 2
    .param p1, "visible"    # I

    .line 1105
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 1106
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->updateDecorCaptionStatus(Landroid/content/res/Configuration;)V

    .line 1108
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1109
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateStatusGuardColor()V

    .line 1111
    :cond_0
    return-void
.end method

.method public blacklist providePendingInsetsController()Landroid/view/PendingInsetsController;
    .locals 1

    .line 2044
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPendingInsetsController:Landroid/view/PendingInsetsController;

    return-object v0
.end method

.method blacklist removeBackgroundBlurDrawable()V
    .locals 3

    .line 1466
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1467
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    .line 1468
    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V

    .line 1469
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    .line 1471
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1472
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    .line 1473
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundDrawable()V

    .line 1474
    return-void
.end method

.method public blacklist requestKeyboardShortcuts(Ljava/util/List;I)V
    .locals 3
    .param p2, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;I)V"
        }
    .end annotation

    .line 2783
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutGroup;>;"
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 2784
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2785
    .local v1, "menu":Landroid/view/Menu;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2786
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-interface {v2, p1, v1, p2}, Landroid/view/Window$Callback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    .line 2788
    :cond_1
    return-void
.end method

.method public whitelist sendAccessibilityEvent(I)V
    .locals 2
    .param p1, "eventType"    # I

    .line 691
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 692
    return-void

    .line 698
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 702
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 703
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 705
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    .line 707
    :goto_0
    return-void
.end method

.method blacklist setBackgroundBlurRadius(I)V
    .locals 2
    .param p1, "blurRadius"    # I

    .line 1446
    iput p1, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundBlurRadius:I

    .line 1447
    if-lez p1, :cond_1

    .line 1448
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    if-nez v0, :cond_0

    .line 1449
    new-instance v0, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/policy/DecorView;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    .line 1453
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    .line 1454
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->addCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V

    .line 1455
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 1457
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundBlurRadius()V

    goto :goto_0

    .line 1459
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    if-eqz v0, :cond_2

    .line 1460
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundBlurRadius()V

    .line 1461
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->removeBackgroundBlurDrawable()V

    .line 1463
    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 1088
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1089
    return-void
.end method

.method blacklist setBackgroundFallback(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "fallbackDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 367
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/BackgroundFallback;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 368
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    invoke-virtual {v0}, Lcom/android/internal/widget/BackgroundFallback;->hasFallback()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->setWillNotDraw(Z)V

    .line 369
    return-void
.end method

.method protected blacklist setFrame(IIII)Z
    .locals 8
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 722
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setFrame(IIII)Z

    move-result v0

    .line 723
    .local v0, "changed":Z
    if-eqz v0, :cond_1

    .line 724
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    .line 725
    .local v1, "drawingBounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 727
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 728
    .local v2, "fg":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 729
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .line 730
    .local v3, "frameOffsets":Landroid/graphics/Rect;
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 731
    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 732
    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 733
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 734
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 735
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 736
    .local v4, "framePadding":Landroid/graphics/Rect;
    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 737
    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 738
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v4, Landroid/graphics/Rect;->right:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 739
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 743
    .end local v3    # "frameOffsets":Landroid/graphics/Rect;
    .end local v4    # "framePadding":Landroid/graphics/Rect;
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 744
    .local v3, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    .line 745
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 762
    .end local v1    # "drawingBounds":Landroid/graphics/Rect;
    .end local v2    # "fg":Landroid/graphics/drawable/Drawable;
    .end local v3    # "bg":Landroid/graphics/drawable/Drawable;
    :cond_1
    return v0
.end method

.method public whitelist setOutlineProvider(Landroid/view/ViewOutlineProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/view/ViewOutlineProvider;

    .line 1817
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1820
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 1821
    return-void
.end method

.method public blacklist setSurfaceFormat(I)V
    .locals 1
    .param p1, "format"    # I

    .line 2025
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->setFormat(I)V

    .line 2026
    return-void
.end method

.method public blacklist setSurfaceKeepScreenOn(Z)V
    .locals 2
    .param p1, "keepOn"    # Z

    .line 2029
    const/16 v0, 0x80

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->addFlags(I)V

    goto :goto_0

    .line 2030
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->clearFlags(I)V

    .line 2031
    :goto_0
    return-void
.end method

.method public blacklist setSurfaceType(I)V
    .locals 1
    .param p1, "type"    # I

    .line 2021
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->setType(I)V

    .line 2022
    return-void
.end method

.method blacklist setUserCaptionBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 2746
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2747
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_0

    .line 2748
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/BackdropFrameRenderer;->setUserCaptionBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2750
    :cond_0
    return-void
.end method

.method blacklist setWindow(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 3
    .param p1, "phoneWindow"    # Lcom/android/internal/policy/PhoneWindow;

    .line 2258
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2261
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorViewExt:Lcom/android/internal/policy/IDecorViewExt;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IDecorViewExt;->updatePhoneWindow(Lcom/android/internal/policy/PhoneWindow;)V

    .line 2263
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2264
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Lcom/android/internal/policy/DecorContext;

    if-eqz v1, :cond_0

    .line 2265
    move-object v1, v0

    check-cast v1, Lcom/android/internal/policy/DecorContext;

    .line 2266
    .local v1, "decorContext":Lcom/android/internal/policy/DecorContext;
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/DecorContext;->setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;)V

    .line 2268
    .end local v1    # "decorContext":Lcom/android/internal/policy/DecorContext;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPendingWindowBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 2269
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPendingWindowBackground:Landroid/graphics/drawable/Drawable;

    .line 2270
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mPendingWindowBackground:Landroid/graphics/drawable/Drawable;

    .line 2271
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2273
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public blacklist setWindowBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1060
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-nez v0, :cond_0

    .line 1061
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mPendingWindowBackground:Landroid/graphics/drawable/Drawable;

    .line 1062
    return-void

    .line 1064
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_7

    .line 1065
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1066
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundDrawable()V

    .line 1067
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 1068
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 1069
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isShowingWallpaper()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    .line 1068
    :cond_2
    invoke-static {p1, v0}, Lcom/android/internal/policy/DecorView;->enforceNonTranslucentBackground(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1071
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 1073
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->isShowingWallpaper()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    move v0, v1

    .line 1071
    :cond_5
    invoke-static {v2, v3, v0}, Lcom/android/internal/policy/DecorView;->getResizingBackgroundDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1075
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 1076
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_1

    .line 1078
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1080
    :goto_1
    sget-boolean v0, Landroid/view/View;->sBrokenWindowBackground:Z

    if-nez v0, :cond_7

    .line 1081
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 1084
    :cond_7
    return-void
.end method

.method public blacklist setWindowFrame(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1092
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 1093
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1094
    if-eqz p1, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 1097
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1099
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 1101
    :cond_1
    return-void
.end method

.method blacklist shouldAnimatePrimaryActionModeView()Z
    .locals 1

    .line 2201
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isLaidOut()Z

    move-result v0

    return v0
.end method

.method public whitelist showContextMenuForChild(Landroid/view/View;)Z
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;

    .line 911
    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-direct {p0, p1, v0, v0}, Lcom/android/internal/policy/DecorView;->showContextMenuForChildInternal(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public whitelist showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 916
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/DecorView;->showContextMenuForChildInternal(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public whitelist startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 970
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/DecorView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .line 975
    invoke-direct {p0, p0, p1, p2}, Lcom/android/internal/policy/DecorView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .line 959
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/policy/DecorView;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .line 965
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/DecorView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method blacklist startChanging()V
    .locals 1

    .line 1051
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mChanging:Z

    .line 1052
    return-void
.end method

.method public blacklist superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 577
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public blacklist superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 537
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorViewExt:Lcom/android/internal/policy/IDecorViewExt;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " superDispatchKeyEvent(), event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 538
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 537
    const-string v2, "d"

    const-string v3, "DecorView"

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/android/internal/policy/IDecorViewExt;->inputLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/MotionEvent;)V

    .line 541
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 542
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 544
    .local v0, "action":I
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_1

    .line 545
    if-ne v0, v1, :cond_0

    .line 546
    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 550
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorViewExt:Lcom/android/internal/policy/IDecorViewExt;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " KeyEvent.KEYCODE_BACK consumed by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "v1"

    invoke-interface {v2, v6, v3, v5, v4}, Lcom/android/internal/policy/IDecorViewExt;->inputLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/MotionEvent;)V

    .line 553
    return v1

    .line 557
    .end local v0    # "action":I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 558
    return v1

    .line 561
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchUnhandledKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 565
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public blacklist superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 569
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public blacklist superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 573
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 2814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DecorView@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2815
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->getTitleSuffix(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2814
    return-object v0
.end method

.method blacklist updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    .locals 27
    .param p1, "insets"    # Landroid/view/WindowInsets;
    .param p2, "animate"    # Z

    .line 1186
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    .line 1187
    .local v13, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result v1

    or-int v14, v0, v1

    .line 1189
    .local v14, "sysUiVisibility":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v15

    .line 1192
    .local v15, "controller":Landroid/view/WindowInsetsController;
    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 1193
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v10, 0x1

    const/16 v1, 0x7db

    if-ne v0, v1, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v8, v0

    .line 1194
    .local v8, "isImeWindow":Z
    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    const/high16 v16, -0x80000000

    if-eqz v0, :cond_2

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v25, v8

    move-object/from16 v17, v13

    goto/16 :goto_16

    .line 1195
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->isLaidOut()Z

    move-result v0

    xor-int/2addr v0, v10

    .line 1196
    .local v0, "disallowAnimate":Z
    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastWindowFlags:I

    iget v2, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/2addr v1, v2

    and-int v1, v1, v16

    if-eqz v1, :cond_3

    move v1, v10

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    or-int/2addr v0, v1

    .line 1198
    iget v1, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v1, v11, Lcom/android/internal/policy/DecorView;->mLastWindowFlags:I

    .line 1200
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v7

    .line 1201
    .local v7, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v7, :cond_4

    .line 1202
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v1, v1, Landroid/view/InsetsFlags;->appearance:I

    goto :goto_3

    .line 1203
    :cond_4
    invoke-interface {v15}, Landroid/view/WindowInsetsController;->getSystemBarsAppearance()I

    move-result v1

    :goto_3
    move v6, v1

    .line 1205
    .local v6, "appearance":I
    if-eqz v12, :cond_e

    .line 1206
    iget v1, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v2, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1207
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    .line 1206
    invoke-static {v1, v2, v3}, Landroid/view/InsetsState;->clearsCompatInsets(III)Z

    move-result v1

    .line 1208
    .local v1, "clearsCompatInsets":Z
    nop

    .line 1209
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    .line 1208
    invoke-virtual {v12, v2}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v2

    .line 1210
    .local v2, "stableBarInsets":Landroid/graphics/Insets;
    if-eqz v1, :cond_5

    .line 1211
    sget-object v3, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_4

    .line 1212
    :cond_5
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    .line 1213
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v4

    or-int/2addr v3, v4

    .line 1212
    invoke-virtual {v12, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v3

    :goto_4
    nop

    .line 1214
    .local v3, "systemInsets":Landroid/graphics/Insets;
    iget v4, v3, Landroid/graphics/Insets;->top:I

    iput v4, v11, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    .line 1220
    iget-object v4, v11, Lcom/android/internal/policy/DecorView;->mDecorViewExt:Lcom/android/internal/policy/IDecorViewExt;

    iget v5, v3, Landroid/graphics/Insets;->bottom:I

    invoke-interface {v4, v8, v5, v12}, Lcom/android/internal/policy/IDecorViewExt;->getBottomInset(ZILandroid/view/WindowInsets;)I

    move-result v4

    iput v4, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    .line 1223
    iget v4, v3, Landroid/graphics/Insets;->right:I

    iput v4, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    .line 1224
    iget v4, v3, Landroid/graphics/Insets;->left:I

    iput v4, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    .line 1229
    iget v4, v2, Landroid/graphics/Insets;->top:I

    if-eqz v4, :cond_6

    move v4, v10

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    .line 1230
    .local v4, "hasTopStableInset":Z
    :goto_5
    iget-boolean v5, v11, Lcom/android/internal/policy/DecorView;->mLastHasTopStableInset:Z

    if-eq v4, v5, :cond_7

    move v5, v10

    goto :goto_6

    :cond_7
    const/4 v5, 0x0

    :goto_6
    or-int/2addr v0, v5

    .line 1231
    iput-boolean v4, v11, Lcom/android/internal/policy/DecorView;->mLastHasTopStableInset:Z

    .line 1233
    iget v5, v2, Landroid/graphics/Insets;->bottom:I

    if-eqz v5, :cond_8

    move v5, v10

    goto :goto_7

    :cond_8
    const/4 v5, 0x0

    .line 1234
    .local v5, "hasBottomStableInset":Z
    :goto_7
    iget-boolean v9, v11, Lcom/android/internal/policy/DecorView;->mLastHasBottomStableInset:Z

    if-eq v5, v9, :cond_9

    move v9, v10

    goto :goto_8

    :cond_9
    const/4 v9, 0x0

    :goto_8
    or-int/2addr v0, v9

    .line 1235
    iput-boolean v5, v11, Lcom/android/internal/policy/DecorView;->mLastHasBottomStableInset:Z

    .line 1237
    iget v9, v2, Landroid/graphics/Insets;->right:I

    if-eqz v9, :cond_a

    move v9, v10

    goto :goto_9

    :cond_a
    const/4 v9, 0x0

    .line 1238
    .local v9, "hasRightStableInset":Z
    :goto_9
    iget-boolean v10, v11, Lcom/android/internal/policy/DecorView;->mLastHasRightStableInset:Z

    if-eq v9, v10, :cond_b

    const/4 v10, 0x1

    goto :goto_a

    :cond_b
    const/4 v10, 0x0

    :goto_a
    or-int/2addr v0, v10

    .line 1239
    iput-boolean v9, v11, Lcom/android/internal/policy/DecorView;->mLastHasRightStableInset:Z

    .line 1241
    iget v10, v2, Landroid/graphics/Insets;->left:I

    if-eqz v10, :cond_c

    const/4 v10, 0x1

    goto :goto_b

    :cond_c
    const/4 v10, 0x0

    .line 1242
    .local v10, "hasLeftStableInset":Z
    :goto_b
    move/from16 v19, v1

    .end local v1    # "clearsCompatInsets":Z
    .local v19, "clearsCompatInsets":Z
    iget-boolean v1, v11, Lcom/android/internal/policy/DecorView;->mLastHasLeftStableInset:Z

    if-eq v10, v1, :cond_d

    const/4 v1, 0x1

    goto :goto_c

    :cond_d
    const/4 v1, 0x0

    :goto_c
    or-int/2addr v0, v1

    .line 1243
    iput-boolean v10, v11, Lcom/android/internal/policy/DecorView;->mLastHasLeftStableInset:Z

    .line 1245
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->shouldAlwaysConsumeSystemBars()Z

    move-result v1

    iput-boolean v1, v11, Lcom/android/internal/policy/DecorView;->mLastShouldAlwaysConsumeSystemBars:Z

    move/from16 v19, v0

    goto :goto_d

    .line 1205
    .end local v2    # "stableBarInsets":Landroid/graphics/Insets;
    .end local v3    # "systemInsets":Landroid/graphics/Insets;
    .end local v4    # "hasTopStableInset":Z
    .end local v5    # "hasBottomStableInset":Z
    .end local v9    # "hasRightStableInset":Z
    .end local v10    # "hasLeftStableInset":Z
    .end local v19    # "clearsCompatInsets":Z
    :cond_e
    move/from16 v19, v0

    .line 1248
    .end local v0    # "disallowAnimate":Z
    .local v19, "disallowAnimate":Z
    :goto_d
    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    move-result v20

    .line 1249
    .local v20, "navBarToRightEdge":Z
    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->isNavBarToLeftEdge(II)Z

    move-result v21

    .line 1250
    .local v21, "navBarToLeftEdge":Z
    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    iget v2, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->getNavBarSize(III)I

    move-result v22

    .line 1255
    .local v22, "navBarSize":I
    iget-object v1, v11, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mDecorViewExt:Lcom/android/internal/policy/IDecorViewExt;

    invoke-direct {v11, v6}, Lcom/android/internal/policy/DecorView;->calculateNavigationBarColor(I)I

    move-result v2

    invoke-interface {v0, v8, v2}, Lcom/android/internal/policy/IDecorViewExt;->calculateNavigationBarColor(ZI)I

    move-result v2

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v3, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarDividerColor:I

    if-nez v20, :cond_10

    if-eqz v21, :cond_f

    goto :goto_e

    :cond_f
    const/4 v5, 0x0

    goto :goto_f

    :cond_10
    :goto_e
    const/4 v5, 0x1

    :goto_f
    const/4 v9, 0x0

    if-eqz p2, :cond_11

    if-nez v19, :cond_11

    const/4 v10, 0x1

    goto :goto_10

    :cond_11
    const/4 v10, 0x0

    :goto_10
    iget-boolean v4, v11, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsBarBackgrounds:Z

    move-object/from16 v0, p0

    move/from16 v23, v4

    move/from16 v4, v22

    move v12, v6

    .end local v6    # "appearance":I
    .local v12, "appearance":I
    move/from16 v6, v21

    move-object/from16 v24, v7

    .end local v7    # "viewRoot":Landroid/view/ViewRootImpl;
    .local v24, "viewRoot":Landroid/view/ViewRootImpl;
    move v7, v9

    move/from16 v25, v8

    .end local v8    # "isImeWindow":Z
    .local v25, "isImeWindow":Z
    move v8, v10

    const/4 v10, 0x0

    move/from16 v9, v23

    move-object/from16 v17, v13

    const/4 v13, 0x1

    .end local v13    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v17, "attrs":Landroid/view/WindowManager$LayoutParams;
    move-object v10, v15

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/policy/DecorView;->updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIZZIZZLandroid/view/WindowInsetsController;)V

    .line 1261
    iget-boolean v10, v11, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    .line 1262
    .local v10, "oldDrawLegacy":Z
    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-eqz v0, :cond_12

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 1263
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v0, v16

    if-nez v0, :cond_12

    move v0, v13

    goto :goto_11

    :cond_12
    const/4 v0, 0x0

    :goto_11
    iput-boolean v0, v11, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    .line 1264
    if-eq v10, v0, :cond_13

    .line 1265
    iget-object v1, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 1266
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->onDrawLegacyNavigationBarBackgroundChanged(Z)Z

    move-result v0

    iput-boolean v0, v11, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackgroundHandled:Z

    .line 1268
    if-eqz v24, :cond_13

    .line 1269
    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    .line 1273
    :cond_13
    if-eqz v20, :cond_14

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    if-eqz v0, :cond_14

    move v0, v13

    goto :goto_12

    :cond_14
    const/4 v0, 0x0

    :goto_12
    move/from16 v18, v0

    .line 1275
    .local v18, "statusBarNeedsRightInset":Z
    if-eqz v21, :cond_15

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    if-eqz v0, :cond_15

    move v0, v13

    goto :goto_13

    :cond_15
    const/4 v0, 0x0

    :goto_13
    move/from16 v23, v0

    .line 1277
    .local v23, "statusBarNeedsLeftInset":Z
    if-eqz v18, :cond_16

    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    move v7, v0

    goto :goto_14

    .line 1278
    :cond_16
    if-eqz v23, :cond_17

    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    move v7, v0

    goto :goto_14

    :cond_17
    const/4 v7, 0x0

    :goto_14
    nop

    .line 1279
    .local v7, "statusBarSideInset":I
    invoke-direct {v11, v12}, Lcom/android/internal/policy/DecorView;->calculateStatusBarColor(I)I

    move-result v9

    .line 1280
    .local v9, "statusBarColor":I
    iget-object v1, v11, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    const/4 v3, 0x0

    iget v4, v11, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    const/4 v5, 0x0

    if-eqz p2, :cond_18

    if-nez v19, :cond_18

    move v8, v13

    goto :goto_15

    :cond_18
    const/4 v8, 0x0

    :goto_15
    iget-boolean v6, v11, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsBarBackgrounds:Z

    move-object/from16 v0, p0

    move v2, v9

    move/from16 v26, v6

    move/from16 v6, v23

    move v13, v9

    .end local v9    # "statusBarColor":I
    .local v13, "statusBarColor":I
    move/from16 v9, v26

    move/from16 v26, v10

    .end local v10    # "oldDrawLegacy":Z
    .local v26, "oldDrawLegacy":Z
    move-object v10, v15

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/policy/DecorView;->updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIZZIZZLandroid/view/WindowInsetsController;)V

    .line 1285
    iget-boolean v0, v11, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    if-eqz v0, :cond_19

    .line 1286
    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->getCaption()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1287
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->updateDecorCaptionShade()V

    .line 1301
    .end local v7    # "statusBarSideInset":I
    .end local v12    # "appearance":I
    .end local v13    # "statusBarColor":I
    .end local v18    # "statusBarNeedsRightInset":Z
    .end local v19    # "disallowAnimate":Z
    .end local v20    # "navBarToRightEdge":Z
    .end local v21    # "navBarToLeftEdge":Z
    .end local v22    # "navBarSize":I
    .end local v23    # "statusBarNeedsLeftInset":Z
    .end local v24    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v26    # "oldDrawLegacy":Z
    :cond_19
    :goto_16
    and-int/lit8 v0, v14, 0x2

    if-nez v0, :cond_1c

    if-eqz v15, :cond_1a

    .line 1302
    const/4 v0, 0x1

    invoke-interface {v15, v0}, Landroid/view/WindowInsetsController;->isRequestedVisible(I)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_17

    .line 1301
    :cond_1a
    const/4 v0, 0x1

    .line 1302
    :cond_1b
    const/4 v10, 0x0

    goto :goto_18

    .line 1301
    :cond_1c
    const/4 v0, 0x1

    .line 1302
    :goto_17
    move v10, v0

    :goto_18
    move v1, v10

    .line 1303
    .local v1, "hideNavigation":Z
    iget-object v2, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v2, v2, Lcom/android/internal/policy/PhoneWindow;->mDecorFitsSystemWindows:Z

    .line 1304
    .local v2, "decorFitsSystemWindows":Z
    iget-boolean v3, v11, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsBarBackgrounds:Z

    if-eqz v3, :cond_1d

    move-object/from16 v3, v17

    .end local v17    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v3, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v4, v4, v16

    if-nez v4, :cond_1e

    and-int/lit16 v4, v14, 0x200

    if-nez v4, :cond_1e

    if-eqz v2, :cond_1e

    if-eqz v1, :cond_1f

    goto :goto_19

    .end local v3    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v17    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_1d
    move-object/from16 v3, v17

    .end local v17    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v3    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_1e
    :goto_19
    iget-boolean v4, v11, Lcom/android/internal/policy/DecorView;->mLastShouldAlwaysConsumeSystemBars:Z

    if-eqz v4, :cond_20

    if-eqz v1, :cond_20

    :cond_1f
    move v10, v0

    goto :goto_1a

    :cond_20
    const/4 v10, 0x0

    :goto_1a
    move v4, v10

    .line 1311
    .local v4, "forceConsumingNavBar":Z
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v5, v5, v16

    if-eqz v5, :cond_21

    and-int/lit16 v5, v14, 0x200

    if-nez v5, :cond_21

    if-eqz v2, :cond_21

    if-eqz v1, :cond_22

    :cond_21
    if-eqz v4, :cond_23

    :cond_22
    move v10, v0

    goto :goto_1b

    :cond_23
    const/4 v10, 0x0

    :goto_1b
    move v5, v10

    .line 1322
    .local v5, "consumingNavBar":Z
    and-int/lit8 v6, v14, 0x4

    if-nez v6, :cond_26

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v6, v6, 0x400

    if-nez v6, :cond_26

    if-eqz v15, :cond_24

    .line 1324
    const/4 v6, 0x0

    invoke-interface {v15, v6}, Landroid/view/WindowInsetsController;->isRequestedVisible(I)Z

    move-result v7

    if-nez v7, :cond_25

    goto :goto_1c

    .line 1322
    :cond_24
    const/4 v6, 0x0

    .line 1324
    :cond_25
    move v10, v6

    goto :goto_1d

    .line 1322
    :cond_26
    const/4 v6, 0x0

    .line 1324
    :goto_1c
    move v10, v0

    :goto_1d
    move v7, v10

    .line 1325
    .local v7, "fullscreen":Z
    and-int/lit16 v8, v14, 0x400

    if-nez v8, :cond_27

    if-eqz v2, :cond_27

    iget v8, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v8, v8, 0x100

    if-nez v8, :cond_27

    iget v8, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v9, 0x10000

    and-int/2addr v8, v9

    if-nez v8, :cond_27

    iget-boolean v8, v11, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsBarBackgrounds:Z

    if-eqz v8, :cond_27

    iget v8, v11, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    if-nez v8, :cond_28

    :cond_27
    iget-boolean v8, v11, Lcom/android/internal/policy/DecorView;->mLastShouldAlwaysConsumeSystemBars:Z

    if-eqz v8, :cond_29

    if-eqz v7, :cond_29

    :cond_28
    move v10, v0

    goto :goto_1e

    :cond_29
    move v10, v6

    :goto_1e
    move v0, v10

    .line 1333
    .local v0, "consumingStatusBar":Z
    if-eqz v0, :cond_2a

    iget v9, v11, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    goto :goto_1f

    :cond_2a
    move v9, v6

    :goto_1f
    move v8, v9

    .line 1334
    .local v8, "consumedTop":I
    if-eqz v5, :cond_2b

    iget v9, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    goto :goto_20

    :cond_2b
    move v9, v6

    .line 1335
    .local v9, "consumedRight":I
    :goto_20
    if-eqz v5, :cond_2c

    iget v10, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    goto :goto_21

    :cond_2c
    move v10, v6

    .line 1336
    .local v10, "consumedBottom":I
    :goto_21
    if-eqz v5, :cond_2d

    iget v12, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    goto :goto_22

    :cond_2d
    move v12, v6

    .line 1338
    .local v12, "consumedLeft":I
    :goto_22
    iget-object v13, v11, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz v13, :cond_32

    .line 1339
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    instance-of v13, v13, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v13, :cond_31

    .line 1340
    iget-object v13, v11, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1341
    .local v13, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v6, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v6, v8, :cond_2f

    iget v6, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-ne v6, v9, :cond_2f

    iget v6, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-ne v6, v10, :cond_2f

    iget v6, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eq v6, v12, :cond_2e

    goto :goto_23

    :cond_2e
    move-object/from16 v6, p1

    goto :goto_24

    .line 1343
    :cond_2f
    :goto_23
    iput v8, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1344
    iput v9, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1345
    iput v10, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1346
    iput v12, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1347
    iget-object v6, v11, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v6, v13}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1349
    move-object/from16 v6, p1

    if-nez v6, :cond_30

    .line 1352
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->requestApplyInsets()V

    .line 1355
    :cond_30
    :goto_24
    if-eqz v6, :cond_33

    .line 1356
    invoke-virtual {v6, v12, v8, v9, v10}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object v6

    .end local p1    # "insets":Landroid/view/WindowInsets;
    .local v6, "insets":Landroid/view/WindowInsets;
    goto :goto_25

    .line 1339
    .end local v6    # "insets":Landroid/view/WindowInsets;
    .end local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local p1    # "insets":Landroid/view/WindowInsets;
    :cond_31
    move-object/from16 v6, p1

    goto :goto_25

    .line 1338
    :cond_32
    move-object/from16 v6, p1

    .line 1360
    .end local p1    # "insets":Landroid/view/WindowInsets;
    .restart local v6    # "insets":Landroid/view/WindowInsets;
    :cond_33
    :goto_25
    if-eqz v4, :cond_34

    if-nez v1, :cond_34

    iget-boolean v13, v11, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackgroundHandled:Z

    if-nez v13, :cond_34

    .line 1361
    iget v13, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    move/from16 v16, v0

    .end local v0    # "consumingStatusBar":Z
    .local v16, "consumingStatusBar":Z
    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    move/from16 v18, v1

    .end local v1    # "hideNavigation":Z
    .local v18, "hideNavigation":Z
    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    move/from16 v19, v2

    const/4 v2, 0x0

    .end local v2    # "decorFitsSystemWindows":Z
    .local v19, "decorFitsSystemWindows":Z
    invoke-static {v13, v2, v0, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, v11, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    goto :goto_26

    .line 1360
    .end local v16    # "consumingStatusBar":Z
    .end local v18    # "hideNavigation":Z
    .end local v19    # "decorFitsSystemWindows":Z
    .restart local v0    # "consumingStatusBar":Z
    .restart local v1    # "hideNavigation":Z
    .restart local v2    # "decorFitsSystemWindows":Z
    :cond_34
    move/from16 v16, v0

    move/from16 v18, v1

    move/from16 v19, v2

    .line 1363
    .end local v0    # "consumingStatusBar":Z
    .end local v1    # "hideNavigation":Z
    .end local v2    # "decorFitsSystemWindows":Z
    .restart local v16    # "consumingStatusBar":Z
    .restart local v18    # "hideNavigation":Z
    .restart local v19    # "decorFitsSystemWindows":Z
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, v11, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    .line 1365
    :goto_26
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundDrawable()V

    .line 1367
    return-object v6
.end method

.method blacklist updateDecorCaptionShade()V
    .locals 1

    .line 2455
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_0

    .line 2456
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->setDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V

    .line 2458
    :cond_0
    return-void
.end method

.method blacklist updateLogTag(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 2775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DecorView["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/policy/DecorView;->getTitleSuffix(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    .line 2776
    return-void
.end method

.method public blacklist updatePictureInPictureOutlineProvider(Z)V
    .locals 2
    .param p1, "isInPictureInPictureMode"    # Z

    .line 1794
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsInPictureInPictureMode:Z

    if-ne v0, p1, :cond_0

    .line 1795
    return-void

    .line 1798
    :cond_0
    if-eqz p1, :cond_2

    .line 1799
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 1800
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v0

    .line 1801
    .local v0, "callback":Landroid/view/Window$WindowControllerCallback;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/Window$WindowControllerCallback;->isTaskRoot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1804
    sget-object v1, Lcom/android/internal/policy/DecorView;->PIP_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1806
    .end local v0    # "callback":Landroid/view/Window$WindowControllerCallback;
    :cond_1
    goto :goto_0

    .line 1808
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

    if-eq v0, v1, :cond_3

    .line 1809
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1812
    :cond_3
    :goto_0
    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mIsInPictureInPictureMode:Z

    .line 1813
    return-void
.end method

.method public blacklist willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;
    .locals 1

    .line 2017
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public blacklist willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;
    .locals 1

    .line 2013
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
