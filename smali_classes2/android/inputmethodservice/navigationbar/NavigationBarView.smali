.class public final Landroid/inputmethodservice/navigationbar/NavigationBarView;
.super Landroid/widget/FrameLayout;
.source "NavigationBarView.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field private static final blacklist TAG:Ljava/lang/String; = "NavBarView"


# instance fields
.field private blacklist mBackIcon:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

.field private final blacklist mButtonDispatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/inputmethodservice/navigationbar/ButtonDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mConfiguration:Landroid/content/res/Configuration;

.field private blacklist mCurrentRotation:I

.field blacklist mCurrentView:Landroid/view/View;

.field private final blacklist mDarkIconColor:I

.field private final blacklist mDeadZone:Landroid/inputmethodservice/navigationbar/DeadZone;

.field private blacklist mDeadZoneConsuming:Z

.field blacklist mDisabledFlags:I

.field private blacklist mHorizontal:Landroid/view/View;

.field private blacklist mImeSwitcherIcon:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

.field private blacklist mLightContext:Landroid/content/Context;

.field private final blacklist mLightIconColor:I

.field private final blacklist mNavBarMode:I

.field blacklist mNavigationIconHints:I

.field private blacklist mNavigationInflaterView:Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;

.field private blacklist mTmpLastConfiguration:Landroid/content/res/Configuration;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 55
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mCurrentRotation:I

    .line 63
    const/4 v1, 0x0

    iput v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDisabledFlags:I

    .line 64
    const/4 v2, 0x1

    iput v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavigationIconHints:I

    .line 65
    const/4 v2, 0x2

    iput v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavBarMode:I

    .line 74
    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZoneConsuming:Z

    .line 76
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 85
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mLightContext:Landroid/content/Context;

    .line 86
    iput v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mLightIconColor:I

    .line 87
    const/high16 v0, -0x67000000

    iput v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDarkIconColor:I

    .line 89
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    .line 90
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    .line 91
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 93
    new-instance v0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    const v2, 0x1020344

    invoke-direct {v0, v2}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    new-instance v0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    const v2, 0x102034a

    invoke-direct {v0, v2}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    new-instance v0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    const v2, 0x1020348

    invoke-direct {v0, v2}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    new-instance v0, Landroid/inputmethodservice/navigationbar/DeadZone;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/navigationbar/DeadZone;-><init>(Landroid/inputmethodservice/navigationbar/NavigationBarView;)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZone:Landroid/inputmethodservice/navigationbar/DeadZone;

    .line 102
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getImeSwitchButton()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    move-result-object v0

    new-instance v1, Landroid/inputmethodservice/navigationbar/NavigationBarView$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/inputmethodservice/navigationbar/NavigationBarView$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-void
.end method

.method private blacklist getBackDrawable()Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;
    .locals 1

    .line 185
    const v0, 0x10803c7

    invoke-direct {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getDrawable(I)Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    move-result-object v0

    .line 186
    .local v0, "drawable":Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;
    invoke-direct {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->orientBackButton(Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;)V

    .line 187
    return-object v0
.end method

.method private blacklist getContextDisplay()Landroid/view/Display;
    .locals 1

    .line 281
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getDrawable(I)Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;
    .locals 6
    .param p1, "icon"    # I

    .line 225
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mLightContext:Landroid/content/Context;

    iget v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mLightIconColor:I

    iget v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDarkIconColor:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v3, p1

    invoke-static/range {v0 .. v5}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->create(Landroid/content/Context;IIIZLandroid/graphics/Color;)Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isGesturalMode(I)Z
    .locals 1
    .param p0, "mode"    # I

    .line 194
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$new$0(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 103
    nop

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    return-void
.end method

.method static synthetic blacklist lambda$reorient$1(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 323
    instance-of v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    return v0
.end method

.method private blacklist orientBackButton(Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;)V
    .locals 9
    .param p1, "drawable"    # Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    .line 198
    iget v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavigationIconHints:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 200
    .local v0, "useAltBack":Z
    :goto_0
    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-ne v3, v1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 201
    .local v3, "isRtl":Z
    :goto_1
    const/4 v4, 0x0

    if-eqz v0, :cond_3

    if-eqz v3, :cond_2

    const/16 v5, 0x5a

    goto :goto_2

    :cond_2
    const/16 v5, -0x5a

    :goto_2
    int-to-float v5, v5

    goto :goto_3

    :cond_3
    move v5, v4

    .line 202
    .local v5, "degrees":F
    :goto_3
    invoke-virtual {p1}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getRotation()F

    move-result v6

    cmpl-float v6, v6, v5

    if-nez v6, :cond_4

    .line 203
    return-void

    .line 206
    :cond_4
    const/4 v6, 0x2

    invoke-static {v6}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->isGesturalMode(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 207
    invoke-virtual {p1, v5}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setRotation(F)V

    .line 208
    return-void

    .line 213
    :cond_5
    if-eqz v0, :cond_6

    .line 214
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/inputmethodservice/navigationbar/NavigationBarUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    goto :goto_4

    .line 215
    :cond_6
    nop

    :goto_4
    nop

    .line 216
    .local v4, "targetY":F
    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    sget-object v7, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->KEY_DRAWABLE_ROTATE:Landroid/util/FloatProperty;

    new-array v8, v1, [F

    aput v5, v8, v2

    .line 217
    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v6, v2

    sget-object v7, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->KEY_DRAWABLE_TRANSLATE_Y:Landroid/util/FloatProperty;

    new-array v8, v1, [F

    aput v4, v8, v2

    .line 218
    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v6, v1

    .line 216
    invoke-static {p1, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 219
    .local v1, "navBarAnimator":Landroid/animation/ObjectAnimator;
    sget-object v2, Landroid/inputmethodservice/navigationbar/NavigationBarView;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 220
    const-wide/16 v6, 0xc8

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 221
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 222
    return-void
.end method

.method private blacklist reloadNavIcons()V
    .locals 1

    .line 167
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    .line 168
    return-void
.end method

.method private blacklist reorient()V
    .locals 3

    .line 320
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->updateCurrentView()V

    .line 322
    nop

    .line 323
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/inputmethodservice/navigationbar/NavigationBarView$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/inputmethodservice/navigationbar/NavigationBarView$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    .line 324
    .local v0, "frame":Landroid/inputmethodservice/navigationbar/NavigationBarFrame;
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZone:Landroid/inputmethodservice/navigationbar/DeadZone;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setDeadZone(Landroid/inputmethodservice/navigationbar/DeadZone;)V

    .line 325
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZone:Landroid/inputmethodservice/navigationbar/DeadZone;

    iget v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mCurrentRotation:I

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/navigationbar/DeadZone;->onConfigurationChanged(I)V

    .line 333
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->isLayoutDirectionResolved()Z

    move-result v1

    if-nez v1, :cond_0

    .line 334
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->resolveLayoutDirection()Z

    .line 336
    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    .line 337
    return-void
.end method

.method private blacklist resetViews()V
    .locals 2

    .line 316
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 317
    return-void
.end method

.method private blacklist shouldDeadZoneConsumeTouchEvents(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 119
    .local v0, "action":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 120
    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZoneConsuming:Z

    .line 122
    :cond_0
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZone:Landroid/inputmethodservice/navigationbar/DeadZone;

    invoke-virtual {v2, p1}, Landroid/inputmethodservice/navigationbar/DeadZone;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZoneConsuming:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 134
    :cond_1
    return v1

    .line 123
    :cond_2
    :goto_0
    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 129
    :pswitch_1
    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZoneConsuming:Z

    goto :goto_1

    .line 125
    :pswitch_2
    iput-boolean v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZoneConsuming:Z

    .line 126
    nop

    .line 132
    :goto_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist updateCurrentView()V
    .locals 4

    .line 307
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->resetViews()V

    .line 308
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 309
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 310
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getContextDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mCurrentRotation:I

    .line 311
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavigationInflaterView:Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v1, v3

    :cond_0
    invoke-virtual {v2, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->setAlternativeOrder(Z)V

    .line 312
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavigationInflaterView:Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->updateButtonDispatchersCurrentView()V

    .line 313
    return-void
.end method

.method private blacklist updateIcons(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "oldConfig"    # Landroid/content/res/Configuration;

    .line 171
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 172
    .local v0, "orientationChange":Z
    :goto_0
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v4, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, v4, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .line 173
    .local v1, "densityChange":Z
    :goto_1
    nop

    .line 174
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    iget-object v5, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    if-eq v4, v5, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    .line 176
    .local v2, "dirChange":Z
    :goto_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_4

    .line 177
    :cond_3
    const v3, 0x10803c8

    invoke-direct {p0, v3}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getDrawable(I)Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    move-result-object v3

    iput-object v3, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mImeSwitcherIcon:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    .line 179
    :cond_4
    if-nez v0, :cond_5

    if-nez v1, :cond_5

    if-eqz v2, :cond_6

    .line 180
    :cond_5
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getBackDrawable()Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    move-result-object v3

    iput-object v3, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mBackIcon:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    .line 182
    :cond_6
    return-void
.end method

.method private blacklist updateNavButtonIcons()V
    .locals 6

    .line 262
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mBackIcon:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    .line 263
    .local v0, "backIcon":Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;
    invoke-direct {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->orientBackButton(Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;)V

    .line 264
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getBackButton()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setImageDrawable(Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;)V

    .line 266
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getImeSwitchButton()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mImeSwitcherIcon:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setImageDrawable(Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;)V

    .line 269
    iget v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavigationIconHints:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 271
    .local v1, "imeSwitcherVisible":Z
    :goto_0
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getImeSwitchButton()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    move-result-object v4

    if-eqz v1, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    invoke-virtual {v4, v5}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setVisibility(I)V

    .line 273
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getBackButton()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setVisibility(I)V

    .line 274
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getHomeHandle()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setVisibility(I)V

    .line 278
    return-void
.end method

.method private blacklist updateOrientationViews()V
    .locals 1

    .line 301
    const v0, 0x1020349

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    .line 303
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->updateCurrentView()V

    .line 304
    return-void
.end method


# virtual methods
.method public blacklist forEachView(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 145
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/View;>;"
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 146
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 148
    :cond_0
    return-void
.end method

.method public blacklist getBackButton()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;
    .locals 2

    .line 151
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x1020344

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    return-object v0
.end method

.method public blacklist getButtonDispatchers()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/inputmethodservice/navigationbar/ButtonDispatcher;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    return-object v0
.end method

.method public blacklist getCurrentView()Landroid/view/View;
    .locals 1

    .line 138
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public blacklist getHomeHandle()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;
    .locals 2

    .line 159
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x1020348

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    return-object v0
.end method

.method public blacklist getImeSwitchButton()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;
    .locals 2

    .line 155
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x102034a

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    return-object v0
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 0

    .line 356
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 359
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->requestApplyInsets()V

    .line 360
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->reorient()V

    .line 361
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    .line 362
    return-void
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 341
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 342
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 343
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 345
    .local v0, "changes":I
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    .line 346
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    .line 347
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    .line 348
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 350
    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    .line 352
    :cond_1
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 2

    .line 366
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 367
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 368
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    invoke-virtual {v1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->onDestroy()V

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 370
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 296
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZone:Landroid/inputmethodservice/navigationbar/DeadZone;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/navigationbar/DeadZone;->onDraw(Landroid/graphics/Canvas;)V

    .line 297
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 298
    return-void
.end method

.method public whitelist onFinishInflate()V
    .locals 2

    .line 286
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 287
    const v0, 0x102034b

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavigationInflaterView:Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;

    .line 288
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->setButtonDispatchers(Landroid/util/SparseArray;)V

    .line 290
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->updateOrientationViews()V

    .line 291
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->reloadNavIcons()V

    .line 292
    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 108
    invoke-direct {p0, p1}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->shouldDeadZoneConsumeTouchEvents(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 113
    invoke-direct {p0, p1}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->shouldDeadZoneConsumeTouchEvents(Landroid/view/MotionEvent;)Z

    .line 114
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public blacklist setDarkIntensity(F)V
    .locals 2
    .param p1, "intensity"    # F

    .line 378
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 379
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    invoke-virtual {v1, p1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setDarkIntensity(F)V

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 381
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public whitelist setLayoutDirection(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .line 231
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->reloadNavIcons()V

    .line 233
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 234
    return-void
.end method

.method public blacklist setNavigationIconHints(I)V
    .locals 4
    .param p1, "hints"    # I

    .line 242
    iget v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavigationIconHints:I

    if-ne p1, v0, :cond_0

    return-void

    .line 243
    :cond_0
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 244
    .local v1, "newBackAlt":Z
    :goto_0
    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    move v2, v3

    :cond_2
    move v0, v2

    .line 246
    .local v0, "oldBackAlt":Z
    nop

    .line 254
    iput p1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavigationIconHints:I

    .line 255
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    .line 256
    return-void
.end method
