.class final Landroid/inputmethodservice/NavigationBarController$Impl;
.super Ljava/lang/Object;
.source "NavigationBarController.java"

# interfaces
.implements Landroid/inputmethodservice/NavigationBarController$Callback;
.implements Landroid/view/Window$DecorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/NavigationBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Impl"
.end annotation


# static fields
.field private static final blacklist DEFAULT_COLOR_ADAPT_TRANSITION_TIME:I = 0x6a4

.field private static final blacklist LEGACY_DECELERATE:Landroid/view/animation/Interpolator;


# instance fields
.field private blacklist mAppearance:I

.field private blacklist mDarkIntensity:F

.field private blacklist mDestroyed:Z

.field private blacklist mDrawLegacyNavigationBarBackground:Z

.field private blacklist mImeDrawsImeNavBar:Z

.field blacklist mLastInsets:Landroid/graphics/Insets;

.field private blacklist mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

.field private final blacklist mService:Landroid/inputmethodservice/InputMethodService;

.field private blacklist mShouldShowImeSwitcherWhenImeIsShown:Z

.field private final blacklist mTempPos:[I

.field private final blacklist mTempRect:Landroid/graphics/Rect;

.field private blacklist mTintAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 126
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/inputmethodservice/NavigationBarController$Impl;->LEGACY_DECELERATE:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 1
    .param p1, "inputMethodService"    # Landroid/inputmethodservice/InputMethodService;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDestroyed:Z

    .line 154
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    .line 155
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    .line 158
    iput-object p1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    .line 159
    return-void
.end method

.method private static blacklist calculateTargetDarkIntensity(IZ)F
    .locals 2
    .param p0, "appearance"    # I
    .param p1, "drawLegacyNavigationBarBackground"    # Z

    .line 508
    if-nez p1, :cond_0

    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 510
    .local v0, "lightNavBar":Z
    :goto_0
    if-eqz v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private blacklist getSystemInsets()Landroid/graphics/Insets;
    .locals 5

    .line 163
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 164
    return-object v1

    .line 166
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 167
    .local v0, "decorView":Landroid/view/View;
    if-nez v0, :cond_1

    .line 168
    return-object v1

    .line 170
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    .line 171
    .local v2, "windowInsets":Landroid/view/WindowInsets;
    if-nez v2, :cond_2

    .line 172
    return-object v1

    .line 174
    :cond_2
    nop

    .line 175
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v1

    .line 176
    .local v1, "stableBarInsets":Landroid/graphics/Insets;
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    .line 177
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v4

    or-int/2addr v3, v4

    .line 176
    invoke-virtual {v2, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v3

    return-object v3
.end method

.method private blacklist installNavigationBarFrameIfNecessary()V
    .locals 8

    .line 181
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mImeDrawsImeNavBar:Z

    if-nez v0, :cond_0

    .line 182
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-eqz v0, :cond_1

    .line 185
    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 188
    .local v0, "rawDecorView":Landroid/view/View;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_2

    .line 189
    return-void

    .line 191
    :cond_2
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 192
    .local v1, "decorView":Landroid/view/ViewGroup;
    const-class v2, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    .line 193
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    .line 192
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    iput-object v2, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    .line 194
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->getSystemInsets()Landroid/graphics/Insets;

    move-result-object v2

    .line 195
    .local v2, "systemInsets":Landroid/graphics/Insets;
    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    const/16 v4, 0x50

    const/4 v5, -0x1

    if-nez v3, :cond_6

    .line 196
    new-instance v3, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    iget-object v6, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {v3, v6}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    .line 197
    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v6, 0x1090091

    iget-object v7, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 200
    if-eqz v2, :cond_3

    .line 201
    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, v2, Landroid/graphics/Insets;->bottom:I

    invoke-direct {v6, v5, v7, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iput-object v2, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mLastInsets:Landroid/graphics/Insets;

    goto :goto_0

    .line 206
    :cond_3
    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 208
    :goto_0
    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    const-class v4, Landroid/inputmethodservice/navigationbar/NavigationBarView;

    .line 209
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    .line 208
    invoke-virtual {v3, v5}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/inputmethodservice/navigationbar/NavigationBarView;

    .line 210
    .local v3, "navigationBarView":Landroid/inputmethodservice/navigationbar/NavigationBarView;
    if-eqz v3, :cond_5

    .line 213
    nop

    .line 214
    iget-boolean v4, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mShouldShowImeSwitcherWhenImeIsShown:Z

    if-eqz v4, :cond_4

    .line 215
    const/4 v4, 0x4

    goto :goto_1

    .line 216
    :cond_4
    const/4 v4, 0x0

    :goto_1
    or-int/lit8 v4, v4, 0x1

    .line 217
    .local v4, "hints":I
    invoke-virtual {v3, v4}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->setNavigationIconHints(I)V

    .line 219
    .end local v3    # "navigationBarView":Landroid/inputmethodservice/navigationbar/NavigationBarView;
    .end local v4    # "hints":I
    :cond_5
    goto :goto_2

    .line 220
    :cond_6
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, v2, Landroid/graphics/Insets;->bottom:I

    invoke-direct {v6, v5, v7, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v6}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    iput-object v2, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mLastInsets:Landroid/graphics/Insets;

    .line 225
    :goto_2
    iget-boolean v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDrawLegacyNavigationBarBackground:Z

    if-eqz v3, :cond_7

    .line 226
    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setBackgroundColor(I)V

    goto :goto_3

    .line 228
    :cond_7
    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 231
    :goto_3
    iget v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mAppearance:I

    iget-boolean v4, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDrawLegacyNavigationBarBackground:Z

    invoke-static {v3, v4}, Landroid/inputmethodservice/NavigationBarController$Impl;->calculateTargetDarkIntensity(IZ)F

    move-result v3

    invoke-direct {p0, v3}, Landroid/inputmethodservice/NavigationBarController$Impl;->setIconTintInternal(F)V

    .line 233
    return-void
.end method

.method private blacklist scheduleRelayout()V
    .locals 2

    .line 325
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    .line 326
    .local v0, "frame":Landroid/inputmethodservice/navigationbar/NavigationBarFrame;
    new-instance v1, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda2;-><init>(Landroid/inputmethodservice/NavigationBarController$Impl;Landroid/inputmethodservice/navigationbar/NavigationBarFrame;)V

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->post(Ljava/lang/Runnable;)Z

    .line 360
    return-void
.end method

.method private blacklist setIconTintInternal(F)V
    .locals 3
    .param p1, "darkIntensity"    # F

    .line 493
    iput p1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDarkIntensity:F

    .line 494
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-nez v0, :cond_0

    .line 495
    return-void

    .line 497
    :cond_0
    const-class v1, Landroid/inputmethodservice/navigationbar/NavigationBarView;

    .line 498
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/navigationbar/NavigationBarView;

    .line 499
    .local v0, "navigationBarView":Landroid/inputmethodservice/navigationbar/NavigationBarView;
    if-nez v0, :cond_1

    .line 500
    return-void

    .line 502
    :cond_1
    invoke-virtual {v0, p1}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->setDarkIntensity(F)V

    .line 503
    return-void
.end method

.method private blacklist uninstallNavigationBarFrameIfNecessary()V
    .locals 3

    .line 236
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-nez v0, :cond_0

    .line 237
    return-void

    .line 239
    :cond_0
    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 240
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 241
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 243
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    .line 244
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onSystemBarAppearanceChanged$1$android-inputmethodservice-NavigationBarController$Impl(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 485
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/inputmethodservice/NavigationBarController$Impl;->setIconTintInternal(F)V

    return-void
.end method

.method synthetic blacklist lambda$scheduleRelayout$0$android-inputmethodservice-NavigationBarController$Impl(Landroid/inputmethodservice/navigationbar/NavigationBarFrame;)V
    .locals 8
    .param p1, "frame"    # Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    .line 327
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 328
    return-void

    .line 330
    :cond_0
    invoke-virtual {p1}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 331
    return-void

    .line 333
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 334
    .local v0, "window":Landroid/view/Window;
    if-nez v0, :cond_2

    .line 335
    return-void

    .line 337
    :cond_2
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    .line 338
    .local v1, "decor":Landroid/view/View;
    if-nez v1, :cond_3

    .line 339
    return-void

    .line 341
    :cond_3
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-nez v2, :cond_4

    .line 342
    return-void

    .line 344
    :cond_4
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    .line 345
    .local v2, "decorGroup":Landroid/view/ViewGroup;
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->getSystemInsets()Landroid/graphics/Insets;

    move-result-object v3

    .line 346
    .local v3, "currentSystemInsets":Landroid/graphics/Insets;
    iget-object v4, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mLastInsets:Landroid/graphics/Insets;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 347
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    iget v6, v3, Landroid/graphics/Insets;->bottom:I

    const/16 v7, 0x50

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v4}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    iput-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mLastInsets:Landroid/graphics/Insets;

    .line 352
    :cond_5
    nop

    .line 353
    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarBackgroundView()Landroid/view/View;

    move-result-object v4

    .line 354
    .local v4, "navbarBackgroundView":Landroid/view/View;
    if-eqz v4, :cond_6

    .line 355
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 356
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    if-le v5, v6, :cond_6

    .line 357
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 359
    :cond_6
    return-void
.end method

.method public blacklist onDestroy()V
    .locals 1

    .line 379
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 380
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 383
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 384
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    .line 386
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDestroyed:Z

    .line 387
    return-void
.end method

.method public blacklist onDrawLegacyNavigationBarBackgroundChanged(Z)Z
    .locals 2
    .param p1, "drawLegacyNavigationBarBackground"    # Z

    .line 516
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 517
    const/4 v0, 0x0

    return v0

    .line 520
    :cond_0
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDrawLegacyNavigationBarBackground:Z

    if-eq p1, v0, :cond_3

    .line 521
    iput-boolean p1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDrawLegacyNavigationBarBackground:Z

    .line 522
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-eqz v0, :cond_2

    .line 523
    if-eqz p1, :cond_1

    .line 524
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setBackgroundColor(I)V

    goto :goto_0

    .line 526
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 528
    :goto_0
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->scheduleRelayout()V

    .line 530
    :cond_2
    iget v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mAppearance:I

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/NavigationBarController$Impl;->onSystemBarAppearanceChanged(I)V

    .line 532
    :cond_3
    return p1
.end method

.method public blacklist onNavButtonFlagsChanged(I)V
    .locals 8
    .param p1, "navButtonFlags"    # I

    .line 423
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 424
    return-void

    .line 429
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getWrapper()Landroid/inputmethodservice/IInputMethodServiceWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/inputmethodservice/IInputMethodServiceWrapper;->getExtImpl()Landroid/inputmethodservice/IInputMethodServiceExt;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/inputmethodservice/IInputMethodServiceExt;->updateNavButtonFlags(I)I

    move-result p1

    .line 431
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 433
    .local v0, "imeDrawsImeNavBar":Z
    :goto_0
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    .line 437
    .local v3, "shouldShowImeSwitcherWhenImeIsShown":Z
    :goto_1
    iput-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mImeDrawsImeNavBar:Z

    .line 438
    iget-boolean v4, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mShouldShowImeSwitcherWhenImeIsShown:Z

    .line 440
    .local v4, "prevShouldShowImeSwitcherWhenImeIsShown":Z
    iput-boolean v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mShouldShowImeSwitcherWhenImeIsShown:Z

    .line 442
    if-eqz v0, :cond_7

    .line 443
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->installNavigationBarFrameIfNecessary()V

    .line 444
    iget-object v5, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-nez v5, :cond_3

    .line 445
    return-void

    .line 447
    :cond_3
    iget-boolean v6, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mShouldShowImeSwitcherWhenImeIsShown:Z

    if-ne v6, v4, :cond_4

    .line 449
    return-void

    .line 451
    :cond_4
    const-class v6, Landroid/inputmethodservice/navigationbar/NavigationBarView;

    .line 452
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda0;

    invoke-direct {v7, v6}, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    .line 451
    invoke-virtual {v5, v7}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/inputmethodservice/navigationbar/NavigationBarView;

    .line 453
    .local v5, "navigationBarView":Landroid/inputmethodservice/navigationbar/NavigationBarView;
    if-nez v5, :cond_5

    .line 454
    return-void

    .line 456
    :cond_5
    nop

    .line 457
    if-eqz v3, :cond_6

    .line 458
    const/4 v1, 0x4

    goto :goto_2

    :cond_6
    nop

    :goto_2
    or-int/2addr v1, v2

    .line 459
    .local v1, "hints":I
    invoke-virtual {v5, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->setNavigationIconHints(I)V

    .line 460
    .end local v1    # "hints":I
    .end local v5    # "navigationBarView":Landroid/inputmethodservice/navigationbar/NavigationBarView;
    goto :goto_3

    .line 461
    :cond_7
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->uninstallNavigationBarFrameIfNecessary()V

    .line 463
    :goto_3
    return-void
.end method

.method public blacklist onSoftInputWindowCreated(Landroid/inputmethodservice/SoftInputWindow;)V
    .locals 2
    .param p1, "softInputWindow"    # Landroid/inputmethodservice/SoftInputWindow;

    .line 364
    invoke-virtual {p1}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 365
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getSystemBarAppearance()I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mAppearance:I

    .line 366
    invoke-virtual {v0, p0}, Landroid/view/Window;->setDecorCallback(Landroid/view/Window$DecorCallback;)V

    .line 367
    return-void
.end method

.method public blacklist onSystemBarAppearanceChanged(I)V
    .locals 4
    .param p1, "appearance"    # I

    .line 467
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 468
    return-void

    .line 471
    :cond_0
    iput p1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mAppearance:I

    .line 473
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-nez v0, :cond_1

    .line 474
    return-void

    .line 477
    :cond_1
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDrawLegacyNavigationBarBackground:Z

    invoke-static {p1, v0}, Landroid/inputmethodservice/NavigationBarController$Impl;->calculateTargetDarkIntensity(IZ)F

    move-result v0

    .line 480
    .local v0, "targetDarkIntensity":F
    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    .line 481
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 483
    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDarkIntensity:F

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    .line 484
    new-instance v2, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda1;-><init>(Landroid/inputmethodservice/NavigationBarController$Impl;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 486
    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x6a4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 487
    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 488
    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Landroid/inputmethodservice/NavigationBarController$Impl;->LEGACY_DECELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 489
    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 490
    return-void
.end method

.method public blacklist onViewInitialized()V
    .locals 1

    .line 371
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 372
    return-void

    .line 374
    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->installNavigationBarFrameIfNecessary()V

    .line 375
    return-void
.end method

.method public blacklist onWindowShown()V
    .locals 7

    .line 391
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDestroyed:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mImeDrawsImeNavBar:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-nez v0, :cond_0

    goto :goto_0

    .line 394
    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->getSystemInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 395
    .local v0, "systemInsets":Landroid/graphics/Insets;
    if-eqz v0, :cond_3

    .line 396
    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mLastInsets:Landroid/graphics/Insets;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 397
    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    iget v4, v0, Landroid/graphics/Insets;->bottom:I

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    iput-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mLastInsets:Landroid/graphics/Insets;

    .line 402
    :cond_1
    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v1}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 403
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 404
    .local v2, "rawDecorView":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 405
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    .line 406
    .local v3, "decor":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/Window;->getNavigationBarBackgroundView()Landroid/view/View;

    move-result-object v4

    .line 407
    .local v4, "navbarBackgroundView":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 408
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    .line 409
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    if-le v5, v6, :cond_2

    .line 410
    iget-object v5, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 413
    .end local v3    # "decor":Landroid/view/ViewGroup;
    .end local v4    # "navbarBackgroundView":Landroid/view/View;
    :cond_2
    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setVisibility(I)V

    .line 416
    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v3}, Landroid/inputmethodservice/InputMethodService;->getWrapper()Landroid/inputmethodservice/IInputMethodServiceWrapper;

    move-result-object v3

    invoke-interface {v3}, Landroid/inputmethodservice/IInputMethodServiceWrapper;->getExtImpl()Landroid/inputmethodservice/IInputMethodServiceExt;

    move-result-object v3

    iget-object v4, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-interface {v3, v4}, Landroid/inputmethodservice/IInputMethodServiceExt;->updateNavigationBarOnShown(Landroid/view/View;)V

    .line 419
    .end local v1    # "window":Landroid/view/Window;
    .end local v2    # "rawDecorView":Landroid/view/View;
    :cond_3
    return-void

    .line 392
    .end local v0    # "systemInsets":Landroid/graphics/Insets;
    :cond_4
    :goto_0
    return-void
.end method

.method public blacklist toDebugString()Ljava/lang/String;
    .locals 2

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mImeDrawsImeNavBar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mImeDrawsImeNavBar:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNavigationBarFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mShouldShowImeSwitcherWhenImeIsShown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mShouldShowImeSwitcherWhenImeIsShown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAppearance=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mAppearance:I

    .line 541
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDarkIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDarkIntensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDrawLegacyNavigationBarBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDrawLegacyNavigationBarBackground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 537
    return-object v0
.end method

.method public blacklist updateTouchableInsets(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 13
    .param p1, "originalInsets"    # Landroid/inputmethodservice/InputMethodService$Insets;
    .param p2, "dest"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 249
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mImeDrawsImeNavBar:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    .line 250
    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 254
    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->getSystemInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 255
    .local v0, "systemInsets":Landroid/graphics/Insets;
    if-eqz v0, :cond_6

    .line 256
    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v1}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 257
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 258
    .local v2, "decor":Landroid/view/View;
    const/4 v3, 0x0

    .line 259
    .local v3, "touchableRegion":Landroid/graphics/Region;
    iget-object v4, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v4, v4, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    .line 260
    .local v4, "inputFrame":Landroid/view/View;
    iget v5, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_0

    .line 289
    :pswitch_0
    new-instance v5, Landroid/graphics/Region;

    invoke-direct {v5}, Landroid/graphics/Region;-><init>()V

    move-object v3, v5

    .line 290
    iget-object v5, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v3, v5}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    goto/16 :goto_0

    .line 280
    :pswitch_1
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 281
    iget-object v5, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 282
    iget-object v5, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    aget v8, v8, v7

    iget v9, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    iget-object v10, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    aget v10, v10, v7

    .line 283
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    aget v11, v11, v6

    .line 284
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    .line 282
    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 285
    new-instance v5, Landroid/graphics/Region;

    iget-object v8, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {v5, v8}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    move-object v3, v5

    goto :goto_0

    .line 271
    :pswitch_2
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 272
    iget-object v5, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 273
    iget-object v5, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    aget v8, v8, v7

    iget v9, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    iget-object v10, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    aget v10, v10, v7

    .line 274
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    aget v11, v11, v6

    .line 275
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    .line 273
    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 276
    new-instance v5, Landroid/graphics/Region;

    iget-object v8, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {v5, v8}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    move-object v3, v5

    goto :goto_0

    .line 262
    :pswitch_3
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 263
    iget-object v5, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 264
    iget-object v5, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    aget v9, v8, v7

    aget v8, v8, v6

    .line 265
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v10, v9

    iget-object v11, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    aget v11, v11, v6

    .line 266
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    .line 264
    invoke-virtual {v5, v9, v8, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 267
    new-instance v5, Landroid/graphics/Region;

    iget-object v8, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {v5, v8}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    move-object v3, v5

    .line 294
    :cond_1
    :goto_0
    iget-object v5, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, v0, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v9, v10

    .line 295
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 294
    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 296
    if-nez v3, :cond_2

    .line 297
    new-instance v5, Landroid/graphics/Region;

    iget-object v8, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {v5, v8}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    move-object v3, v5

    goto :goto_1

    .line 299
    :cond_2
    iget-object v5, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 302
    :goto_1
    iget-object v5, p2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v5, v3}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 303
    const/4 v5, 0x3

    invoke-virtual {p2, v5}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 308
    const/4 v5, 0x0

    .line 309
    .local v5, "zOrderChanged":Z
    instance-of v8, v2, Landroid/view/ViewGroup;

    if-eqz v8, :cond_4

    .line 310
    move-object v8, v2

    check-cast v8, Landroid/view/ViewGroup;

    .line 311
    .local v8, "decorGroup":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/Window;->getNavigationBarBackgroundView()Landroid/view/View;

    move-result-object v9

    .line 312
    .local v9, "navbarBackgroundView":Landroid/view/View;
    if-eqz v9, :cond_3

    .line 313
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v10

    iget-object v11, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    .line 314
    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v11

    if-le v10, v11, :cond_3

    move v7, v6

    goto :goto_2

    :cond_3
    nop

    :goto_2
    move v5, v7

    .line 316
    .end local v8    # "decorGroup":Landroid/view/ViewGroup;
    .end local v9    # "navbarBackgroundView":Landroid/view/View;
    :cond_4
    iget-object v7, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mLastInsets:Landroid/graphics/Insets;

    invoke-static {v0, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v6, v7

    .line 317
    .local v6, "insetChanged":Z
    if-nez v5, :cond_5

    if-eqz v6, :cond_6

    .line 318
    :cond_5
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->scheduleRelayout()V

    .line 321
    .end local v1    # "window":Landroid/view/Window;
    .end local v2    # "decor":Landroid/view/View;
    .end local v3    # "touchableRegion":Landroid/graphics/Region;
    .end local v4    # "inputFrame":Landroid/view/View;
    .end local v5    # "zOrderChanged":Z
    .end local v6    # "insetChanged":Z
    :cond_6
    return-void

    .line 251
    .end local v0    # "systemInsets":Landroid/graphics/Insets;
    :cond_7
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
