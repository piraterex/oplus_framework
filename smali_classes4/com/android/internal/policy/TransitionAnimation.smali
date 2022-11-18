.class public Lcom/android/internal/policy/TransitionAnimation;
.super Ljava/lang/Object;
.source "TransitionAnimation.java"


# static fields
.field private static final blacklist CLIP_REVEAL_TRANSLATION_Y_DP:I = 0x8

.field public static final blacklist DEFAULT_APP_TRANSITION_DURATION:I = 0x150

.field private static final blacklist DEFAULT_PACKAGE:Ljava/lang/String; = "android"

.field private static final blacklist MAX_CLIP_REVEAL_TRANSITION_DURATION:I = 0x1a4

.field private static final blacklist RECENTS_THUMBNAIL_FADEIN_FRACTION:F = 0.5f

.field private static final blacklist RECENTS_THUMBNAIL_FADEOUT_FRACTION:F = 0.5f

.field private static final blacklist THUMBNAIL_APP_TRANSITION_DURATION:I = 0x150

.field private static final blacklist THUMBNAIL_TRANSITION_ENTER_SCALE_DOWN:I = 0x2

.field private static final blacklist THUMBNAIL_TRANSITION_ENTER_SCALE_UP:I = 0x0

.field private static final blacklist THUMBNAIL_TRANSITION_EXIT_SCALE_DOWN:I = 0x3

.field private static final blacklist THUMBNAIL_TRANSITION_EXIT_SCALE_UP:I = 0x1

.field static final blacklist TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final blacklist WALLPAPER_TRANSITION_CLOSE:I = 0x2

.field public static final blacklist WALLPAPER_TRANSITION_INTRA_CLOSE:I = 0x4

.field public static final blacklist WALLPAPER_TRANSITION_INTRA_OPEN:I = 0x3

.field public static final blacklist WALLPAPER_TRANSITION_NONE:I = 0x0

.field public static final blacklist WALLPAPER_TRANSITION_OPEN:I = 0x1


# instance fields
.field private final blacklist mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mClipRevealTranslationY:I

.field private final blacklist mConfigShortAnimTime:I

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDebug:Z

.field private final blacklist mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mDefaultWindowAnimationStyleResId:I

.field private final blacklist mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mGridLayoutRecentsEnabled:Z

.field private final blacklist mInterpolator:Lcom/android/internal/policy/LogDecelerateInterpolator;

.field private final blacklist mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mLowRamRecentsEnabled:Z

.field private final blacklist mTag:Ljava/lang/String;

.field private final blacklist mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mTmpFromClipRect:Landroid/graphics/Rect;

.field private final blacklist mTmpRect:Landroid/graphics/Rect;

.field private final blacklist mTmpToClipRect:Landroid/graphics/Rect;

.field private final blacklist mTouchResponseInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 96
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/policy/TransitionAnimation;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "debug"    # Z
    .param p3, "tag"    # Ljava/lang/String;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lcom/android/internal/policy/LogDecelerateInterpolator;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/LogDecelerateInterpolator;-><init>(II)V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mInterpolator:Lcom/android/internal/policy/LogDecelerateInterpolator;

    .line 106
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    .line 108
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v3, v3, v1, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    .line 127
    iput-object p1, p0, Lcom/android/internal/policy/TransitionAnimation;->mContext:Landroid/content/Context;

    .line 128
    iput-boolean p2, p0, Lcom/android/internal/policy/TransitionAnimation;->mDebug:Z

    .line 129
    iput-object p3, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    .line 131
    const v0, 0x10c0003

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 133
    const v0, 0x10c000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 135
    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 137
    new-instance v0, Lcom/android/internal/policy/TransitionAnimation$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/TransitionAnimation$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/policy/TransitionAnimation;)V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    .line 146
    new-instance v0, Lcom/android/internal/policy/TransitionAnimation$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/TransitionAnimation$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/policy/TransitionAnimation;)V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    .line 155
    nop

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mClipRevealTranslationY:I

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mConfigShortAnimTime:I

    .line 160
    const-string/jumbo v0, "ro.recents.grid"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mGridLayoutRecentsEnabled:Z

    .line 161
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mLowRamRecentsEnabled:Z

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 165
    .local v0, "windowStyle":Landroid/content/res/TypedArray;
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/TransitionAnimation;->mDefaultWindowAnimationStyleResId:I

    .line 167
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 168
    return-void
.end method

.method private static blacklist calculateClipRevealTransitionDuration(ZFFLandroid/graphics/Rect;)J
    .locals 3
    .param p0, "cutOff"    # Z
    .param p1, "translationX"    # F
    .param p2, "translationY"    # F
    .param p3, "displayFrame"    # Landroid/graphics/Rect;

    .line 1078
    if-nez p0, :cond_0

    .line 1079
    const-wide/16 v0, 0x150

    return-wide v0

    .line 1081
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1082
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1081
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1083
    .local v0, "fraction":F
    const/high16 v1, 0x43a80000    # 336.0f

    const/high16 v2, 0x42a80000    # 84.0f

    mul-float/2addr v2, v0

    add-float/2addr v2, v1

    float-to-long v1, v2

    return-wide v1
.end method

.method public static blacklist computePivot(IF)F
    .locals 3
    .param p0, "startPos"    # I
    .param p1, "finalScale"    # F

    .line 1197
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, p1, v0

    .line 1198
    .local v0, "denom":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 1199
    int-to-float v1, p0

    return v1

    .line 1201
    :cond_0
    neg-int v1, p0

    int-to-float v1, v1

    div-float/2addr v1, v0

    return v1
.end method

.method private blacklist createAspectScaledThumbnailEnterFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p3, "startRect"    # Landroid/graphics/Rect;
    .param p4, "defaultStartRect"    # Landroid/graphics/Rect;

    .line 964
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, p3, p4, v0}, Lcom/android/internal/policy/TransitionAnimation;->getNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 965
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/internal/policy/TransitionAnimation;->createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method private blacklist createAspectScaledThumbnailExitFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p3, "startRect"    # Landroid/graphics/Rect;
    .param p4, "defaultStartRect"    # Landroid/graphics/Rect;

    .line 972
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, p3, p4, v0}, Lcom/android/internal/policy/TransitionAnimation;->getNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 973
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/internal/policy/TransitionAnimation;->createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method private blacklist createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;
    .locals 26
    .param p1, "sourceFrame"    # Landroid/graphics/Rect;
    .param p2, "destFrame"    # Landroid/graphics/Rect;
    .param p3, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p4, "enter"    # Z

    .line 988
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    .line 989
    .local v3, "sourceWidth":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    .line 990
    .local v4, "sourceHeight":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    .line 991
    .local v5, "destWidth":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    .line 992
    .local v6, "destHeight":F
    if-eqz p4, :cond_0

    div-float v7, v3, v5

    goto :goto_0

    :cond_0
    div-float v7, v5, v3

    :goto_0
    move v9, v7

    .line 993
    .local v9, "scaleH":F
    if-eqz p4, :cond_1

    div-float v7, v4, v6

    goto :goto_1

    :cond_1
    div-float v7, v6, v4

    :goto_1
    move v11, v7

    .line 994
    .local v11, "scaleV":F
    new-instance v7, Landroid/view/animation/AnimationSet;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 995
    .local v7, "set":Landroid/view/animation/AnimationSet;
    const/4 v8, 0x0

    if-nez v2, :cond_2

    .line 996
    move v10, v8

    goto :goto_2

    :cond_2
    iget v10, v2, Landroid/graphics/Rect;->left:I

    iget v12, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v12

    :goto_2
    move v15, v10

    .line 997
    .local v15, "surfaceInsetsH":I
    if-nez v2, :cond_3

    .line 998
    goto :goto_3

    :cond_3
    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v10

    :goto_3
    move v14, v8

    .line 1001
    .local v14, "surfaceInsetsV":I
    if-eqz p4, :cond_4

    move v8, v5

    goto :goto_4

    :cond_4
    move v8, v3

    :goto_4
    int-to-float v10, v15

    add-float/2addr v8, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float v23, v8, v10

    .line 1002
    .local v23, "scaleHCenter":F
    if-eqz p4, :cond_5

    move v8, v6

    goto :goto_5

    :cond_5
    move v8, v4

    :goto_5
    int-to-float v12, v14

    add-float/2addr v8, v12

    div-float v24, v8, v10

    .line 1003
    .local v24, "scaleVCenter":F
    if-eqz p4, :cond_6

    .line 1004
    new-instance v16, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v8, v16

    move/from16 v13, v23

    move/from16 v25, v14

    .end local v14    # "surfaceInsetsV":I
    .local v25, "surfaceInsetsV":I
    move/from16 v14, v24

    invoke-direct/range {v8 .. v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    goto :goto_6

    .line 1005
    .end local v25    # "surfaceInsetsV":I
    .restart local v14    # "surfaceInsetsV":I
    :cond_6
    move/from16 v25, v14

    .end local v14    # "surfaceInsetsV":I
    .restart local v25    # "surfaceInsetsV":I
    new-instance v8, Landroid/view/animation/ScaleAnimation;

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v16, v8

    move/from16 v18, v9

    move/from16 v20, v11

    move/from16 v21, v23

    move/from16 v22, v24

    invoke-direct/range {v16 .. v22}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    :goto_6
    move-object/from16 v8, v16

    .line 1006
    .local v8, "scale":Landroid/view/animation/ScaleAnimation;
    iget v10, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v10, v12

    .line 1007
    .local v10, "sourceHCenter":I
    iget v12, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    .line 1008
    .local v12, "sourceVCenter":I
    iget v13, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    .line 1009
    .local v13, "destHCenter":I
    iget v14, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v14, v14, v16

    .line 1010
    .local v14, "destVCenter":I
    if-eqz p4, :cond_7

    sub-int v16, v10, v13

    goto :goto_7

    :cond_7
    sub-int v16, v13, v10

    :goto_7
    move/from16 v17, v16

    .line 1011
    .local v17, "fromX":I
    if-eqz p4, :cond_8

    sub-int v16, v12, v14

    goto :goto_8

    :cond_8
    sub-int v16, v14, v12

    :goto_8
    move/from16 v18, v16

    .line 1012
    .local v18, "fromY":I
    if-eqz p4, :cond_9

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move/from16 v1, v17

    .end local v17    # "fromX":I
    .local v1, "fromX":I
    int-to-float v2, v1

    move/from16 v17, v3

    move/from16 v3, v18

    move/from16 v18, v4

    .end local v4    # "sourceHeight":F
    .local v3, "fromY":I
    .local v17, "sourceWidth":F
    .local v18, "sourceHeight":F
    int-to-float v4, v3

    move/from16 v19, v5

    const/4 v5, 0x0

    .end local v5    # "destWidth":F
    .local v19, "destWidth":F
    invoke-direct {v0, v2, v5, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_9

    .line 1013
    .end local v1    # "fromX":I
    .end local v19    # "destWidth":F
    .local v3, "sourceWidth":F
    .restart local v4    # "sourceHeight":F
    .restart local v5    # "destWidth":F
    .local v17, "fromX":I
    .local v18, "fromY":I
    :cond_9
    move/from16 v19, v5

    move/from16 v1, v17

    const/4 v5, 0x0

    move/from16 v17, v3

    move/from16 v3, v18

    move/from16 v18, v4

    .end local v4    # "sourceHeight":F
    .end local v5    # "destWidth":F
    .restart local v1    # "fromX":I
    .local v3, "fromY":I
    .local v17, "sourceWidth":F
    .local v18, "sourceHeight":F
    .restart local v19    # "destWidth":F
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, v1

    int-to-float v4, v3

    invoke-direct {v0, v5, v2, v5, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    :goto_9
    nop

    .line 1014
    .local v0, "translation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v7, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1015
    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1016
    return-object v7
.end method

.method private static blacklist createCurvedMotion(FFFF)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "fromX"    # F
    .param p1, "toX"    # F
    .param p2, "fromY"    # F
    .param p3, "toY"    # F

    .line 1127
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    return-object v0
.end method

.method public static blacklist createHiddenByKeyguardExit(Landroid/content/Context;Lcom/android/internal/policy/LogDecelerateInterpolator;ZZZ)Landroid/view/animation/Animation;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "interpolator"    # Lcom/android/internal/policy/LogDecelerateInterpolator;
    .param p2, "onWallpaper"    # Z
    .param p3, "goingToNotificationShade"    # Z
    .param p4, "subtleAnimation"    # Z

    .line 1227
    if-eqz p3, :cond_0

    .line 1228
    const v0, 0x10a006c

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 1232
    :cond_0
    if-eqz p4, :cond_1

    .line 1233
    const v0, 0x10a006d

    .local v0, "resource":I
    goto :goto_0

    .line 1234
    .end local v0    # "resource":I
    :cond_1
    if-eqz p2, :cond_2

    .line 1235
    const v0, 0x10a006e

    .restart local v0    # "resource":I
    goto :goto_0

    .line 1237
    .end local v0    # "resource":I
    :cond_2
    const v0, 0x10a006b

    .line 1240
    .restart local v0    # "resource":I
    :goto_0
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    check-cast v1, Landroid/view/animation/AnimationSet;

    .line 1243
    .local v1, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v1}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v2

    .line 1244
    .local v2, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_3

    .line 1245
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/animation/Animation;

    invoke-virtual {v4, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1244
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1248
    .end local v3    # "i":I
    :cond_3
    return-object v1
.end method

.method private blacklist getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/internal/policy/AttributeCache$Entry;
    .locals 5
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .line 297
    iget-boolean v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mDebug:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 298
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading animations: layout params pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 299
    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resId=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 300
    if-eqz p1, :cond_1

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_2
    if-eqz p1, :cond_6

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v0, :cond_6

    .line 306
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string v0, "android"

    .line 307
    .local v0, "packageName":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/TransitionAnimation;->getAnimationStyleResId(Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    .line 308
    .local v1, "resId":I
    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    const/high16 v3, 0x1000000

    if-ne v2, v3, :cond_4

    .line 309
    const-string v0, "android"

    .line 311
    :cond_4
    iget-boolean v2, p0, Lcom/android/internal/policy/TransitionAnimation;->mDebug:Z

    if-eqz v2, :cond_5

    .line 312
    iget-object v2, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading animations: picked package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_5
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/policy/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object v2

    return-object v2

    .line 317
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "resId":I
    :cond_6
    return-object v1
.end method

.method private blacklist getCachedAnimations(Ljava/lang/String;I)Lcom/android/internal/policy/AttributeCache$Entry;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .line 322
    iget-boolean v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mDebug:Z

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading animations: package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resId=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 324
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 323
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_0
    if-eqz p1, :cond_3

    .line 327
    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_1

    .line 328
    const-string p1, "android"

    .line 330
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mDebug:Z

    if-eqz v0, :cond_2

    .line 331
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading animations: picked package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_2
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/policy/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object v0

    return-object v0

    .line 337
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "startRect"    # Landroid/graphics/Rect;
    .param p2, "defaultStartRect"    # Landroid/graphics/Rect;
    .param p3, "rect"    # Landroid/graphics/Rect;

    .line 978
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 979
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "Starting rect for container not available"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 980
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    .line 982
    :cond_0
    if-eqz p1, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 984
    :goto_1
    return-void
.end method

.method private blacklist getThumbnailTransitionState(ZZ)I
    .locals 1
    .param p1, "enter"    # Z
    .param p2, "scaleUp"    # Z

    .line 1091
    if-eqz p1, :cond_1

    .line 1092
    if-eqz p2, :cond_0

    .line 1093
    const/4 v0, 0x0

    return v0

    .line 1095
    :cond_0
    const/4 v0, 0x2

    return v0

    .line 1098
    :cond_1
    if-eqz p2, :cond_2

    .line 1099
    const/4 v0, 0x1

    return v0

    .line 1101
    :cond_2
    const/4 v0, 0x3

    return v0
.end method

.method private static blacklist getTransitCompatType(II)I
    .locals 1
    .param p0, "transit"    # I
    .param p1, "wallpaperTransit"    # I

    .line 1051
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1052
    const/16 v0, 0xe

    return v0

    .line 1053
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1054
    const/16 v0, 0xf

    return v0

    .line 1055
    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    .line 1056
    const/4 v0, 0x6

    return v0

    .line 1057
    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    .line 1058
    const/4 v0, 0x7

    return v0

    .line 1062
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist loadAnimationSafely(Landroid/content/Context;ILjava/lang/String;)Landroid/view/animation/Animation;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 1212
    :try_start_0
    sget-object v0, Lcom/android/internal/policy/TransitionAnimationExtPlugin;->hookLoadAnimationSafely:Lcom/oplus/reflect/RefStaticMethod;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/oplus/reflect/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1218
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1213
    :catch_1
    move-exception v0

    .line 1214
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "fail to add corners to animation "

    invoke-static {p2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1215
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    .line 1219
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    :goto_0
    const-string v1, "Unable to load animation resource"

    invoke-static {p2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1220
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;
    .locals 7
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "transit"    # I

    .line 947
    packed-switch p4, :pswitch_data_0

    .line 953
    const/16 v0, 0x150

    .local v0, "duration":I
    goto :goto_0

    .line 950
    .end local v0    # "duration":I
    :pswitch_0
    iget v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mConfigShortAnimTime:I

    .line 951
    .restart local v0    # "duration":I
    nop

    .line 956
    :goto_0
    int-to-long v4, v0

    iget-object v6, p0, Lcom/android/internal/policy/TransitionAnimation;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v1 .. v6}, Lcom/android/internal/policy/TransitionAnimation;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .locals 2
    .param p0, "a"    # Landroid/view/animation/Animation;
    .param p1, "appWidth"    # I
    .param p2, "appHeight"    # I
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 1111
    if-nez p0, :cond_0

    .line 1112
    const/4 v0, 0x0

    return-object v0

    .line 1115
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    .line 1116
    invoke-virtual {p0, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1118
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1119
    if-eqz p5, :cond_2

    .line 1120
    invoke-virtual {p0, p5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1122
    :cond_2
    invoke-virtual {p0, p1, p2, p1, p2}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 1123
    return-object p0
.end method

.method private blacklist setupDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "startRect"    # Landroid/graphics/Rect;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 397
    if-nez p1, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "Starting rect for app requested, but none available"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 399
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 401
    :cond_0
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 403
    :goto_0
    return-void
.end method

.method private blacklist shouldScaleDownThumbnailTransition(I)Z
    .locals 2
    .param p1, "orientation"    # I

    .line 1023
    iget-boolean v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mGridLayoutRecentsEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private static blacklist updateToTranslucentAnimIfNeeded(I)I
    .locals 1
    .param p0, "anim"    # I

    .line 1040
    const v0, 0x10a000f

    if-ne p0, v0, :cond_0

    .line 1041
    const v0, 0x10a0012

    return v0

    .line 1043
    :cond_0
    const v0, 0x10a000e

    if-ne p0, v0, :cond_1

    .line 1044
    const v0, 0x10a0011

    return v0

    .line 1046
    :cond_1
    return p0
.end method

.method private static blacklist updateToTranslucentAnimIfNeeded(II)I
    .locals 1
    .param p0, "anim"    # I
    .param p1, "transit"    # I

    .line 1028
    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    const v0, 0x10a000f

    if-ne p0, v0, :cond_0

    .line 1030
    const v0, 0x10a0012

    return v0

    .line 1032
    :cond_0
    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    const v0, 0x10a000e

    if-ne p0, v0, :cond_1

    .line 1034
    const v0, 0x10a0011

    return v0

    .line 1036
    :cond_1
    return p0
.end method


# virtual methods
.method public blacklist createAspectScaledThumbnailEnterExitAnimationLocked(ZZIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 28
    .param p1, "enter"    # Z
    .param p2, "scaleUp"    # Z
    .param p3, "orientation"    # I
    .param p4, "transit"    # I
    .param p5, "containingFrame"    # Landroid/graphics/Rect;
    .param p6, "contentInsets"    # Landroid/graphics/Rect;
    .param p7, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p8, "stableInsets"    # Landroid/graphics/Rect;
    .param p9, "freeform"    # Z
    .param p10, "startRect"    # Landroid/graphics/Rect;
    .param p11, "defaultStartRect"    # Landroid/graphics/Rect;

    .line 671
    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v14

    .line 672
    .local v14, "appWidth":I
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v15

    .line 673
    .local v15, "appHeight":I
    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v7, v8}, Lcom/android/internal/policy/TransitionAnimation;->setupDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 674
    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v13

    .line 675
    .local v13, "thumbWidthI":I
    const/high16 v8, 0x3f800000    # 1.0f

    if-lez v13, :cond_0

    int-to-float v9, v13

    goto :goto_0

    :cond_0
    move v9, v8

    :goto_0
    move/from16 v16, v9

    .line 676
    .local v16, "thumbWidth":F
    iget-object v9, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 677
    .local v11, "thumbHeightI":I
    if-lez v11, :cond_1

    int-to-float v9, v11

    goto :goto_1

    :cond_1
    move v9, v8

    :goto_1
    move/from16 v17, v9

    .line 678
    .local v17, "thumbHeight":F
    iget-object v9, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget v10, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    iget v10, v3, Landroid/graphics/Rect;->left:I

    sub-int v12, v9, v10

    .line 679
    .local v12, "thumbStartX":I
    iget-object v9, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget v10, v2, Landroid/graphics/Rect;->top:I

    sub-int v18, v9, v10

    .line 680
    .local v18, "thumbStartY":I
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/policy/TransitionAnimation;->getThumbnailTransitionState(ZZ)I

    move-result v19

    .line 682
    .local v19, "thumbTransitState":I
    const/16 v9, 0xe

    const/4 v10, 0x0

    packed-switch v19, :pswitch_data_0

    .line 791
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid thumbnail transition state"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 781
    :pswitch_0
    if-ne v1, v9, :cond_2

    .line 784
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, v10, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v8, v9

    move-object v1, v8

    move/from16 v21, v15

    .local v8, "a":Landroid/view/animation/Animation;
    goto/16 :goto_c

    .line 786
    .end local v8    # "a":Landroid/view/animation/Animation;
    :cond_2
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, v8, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v8, v9

    .line 788
    .restart local v8    # "a":Landroid/view/animation/Animation;
    move-object v1, v8

    move/from16 v21, v15

    goto/16 :goto_c

    .line 770
    .end local v8    # "a":Landroid/view/animation/Animation;
    :pswitch_1
    if-ne v1, v9, :cond_3

    .line 773
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, v8, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v8, v9

    move-object v1, v8

    move/from16 v21, v15

    .restart local v8    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_c

    .line 775
    .end local v8    # "a":Landroid/view/animation/Animation;
    :cond_3
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, v8, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v8, v9

    .line 777
    .restart local v8    # "a":Landroid/view/animation/Animation;
    move-object v1, v8

    move/from16 v21, v15

    goto/16 :goto_c

    .line 685
    .end local v8    # "a":Landroid/view/animation/Animation;
    :pswitch_2
    if-eqz p9, :cond_4

    if-eqz p2, :cond_4

    .line 686
    invoke-direct {v0, v2, v4, v6, v7}, Lcom/android/internal/policy/TransitionAnimation;->createAspectScaledThumbnailEnterFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v8

    move-object v1, v8

    move/from16 v21, v15

    .restart local v8    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_c

    .line 688
    .end local v8    # "a":Landroid/view/animation/Animation;
    :cond_4
    if-eqz p9, :cond_5

    .line 689
    invoke-direct {v0, v2, v4, v6, v7}, Lcom/android/internal/policy/TransitionAnimation;->createAspectScaledThumbnailExitFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v8

    move-object v1, v8

    move/from16 v21, v15

    .restart local v8    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_c

    .line 692
    .end local v8    # "a":Landroid/view/animation/Animation;
    :cond_5
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v8, 0x1

    invoke-direct {v9, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 695
    .local v9, "set":Landroid/view/animation/AnimationSet;
    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 696
    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 700
    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v10}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 701
    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v10, v10}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 704
    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v3}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 706
    move/from16 v10, p3

    invoke-direct {v0, v10}, Lcom/android/internal/policy/TransitionAnimation;->shouldScaleDownThumbnailTransition(I)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 708
    iget v8, v3, Landroid/graphics/Rect;->left:I

    sub-int v8, v14, v8

    iget v1, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v1

    int-to-float v1, v8

    div-float v1, v16, v1

    .line 710
    .local v1, "scale":F
    iget-boolean v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mGridLayoutRecentsEnabled:Z

    if-nez v8, :cond_6

    .line 711
    div-float v8, v17, v1

    float-to-int v8, v8

    .line 712
    .local v8, "unscaledThumbHeight":I
    iget-object v4, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v8

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 715
    .end local v8    # "unscaledThumbHeight":I
    :cond_6
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    .line 716
    if-eqz p2, :cond_7

    move/from16 v22, v1

    goto :goto_2

    :cond_7
    const/high16 v22, 0x3f800000    # 1.0f

    :goto_2
    if-eqz p2, :cond_8

    const/high16 v23, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_8
    move/from16 v23, v1

    .line 717
    :goto_3
    if-eqz p2, :cond_9

    move/from16 v24, v1

    goto :goto_4

    :cond_9
    const/high16 v24, 0x3f800000    # 1.0f

    :goto_4
    if-eqz p2, :cond_a

    const/high16 v25, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_a
    move/from16 v25, v1

    .line 718
    :goto_5
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float v26, v6, v8

    .line 719
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v8

    iget v8, v3, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    add-float v27, v6, v8

    move-object/from16 v21, v4

    invoke-direct/range {v21 .. v27}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 720
    .local v4, "scaleAnim":Landroid/view/animation/Animation;
    iget-object v6, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v8

    int-to-float v6, v6

    .line 721
    .local v6, "targetX":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    const/high16 v20, 0x40000000    # 2.0f

    div-float v8, v8, v20

    .line 722
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v7, v20

    mul-float/2addr v7, v1

    sub-float/2addr v8, v7

    .line 723
    .local v8, "x":F
    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v10, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v10

    int-to-float v7, v7

    .line 724
    .local v7, "targetY":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    const/high16 v20, 0x40000000    # 2.0f

    div-float v10, v10, v20

    .line 725
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v2, v20

    mul-float/2addr v2, v1

    sub-float/2addr v10, v2

    .line 729
    .local v10, "y":F
    iget-boolean v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mLowRamRecentsEnabled:Z

    if-eqz v2, :cond_b

    iget v2, v3, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_b

    if-eqz p2, :cond_b

    .line 730
    iget-object v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    move/from16 v20, v1

    .end local v1    # "scale":F
    .local v20, "scale":F
    iget v1, v2, Landroid/graphics/Rect;->top:I

    move/from16 v21, v15

    .end local v15    # "appHeight":I
    .local v21, "appHeight":I
    iget v15, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v15

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 731
    iget v1, v5, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v10, v1

    goto :goto_6

    .line 729
    .end local v20    # "scale":F
    .end local v21    # "appHeight":I
    .restart local v1    # "scale":F
    .restart local v15    # "appHeight":I
    :cond_b
    move/from16 v20, v1

    move/from16 v21, v15

    .line 733
    .end local v1    # "scale":F
    .end local v15    # "appHeight":I
    .restart local v20    # "scale":F
    .restart local v21    # "appHeight":I
    :goto_6
    sub-float v1, v6, v8

    .line 734
    .local v1, "startX":F
    sub-float v2, v7, v10

    .line 735
    .local v2, "startY":F
    if-eqz p2, :cond_c

    .line 736
    new-instance v15, Landroid/view/animation/ClipRectAnimation;

    iget-object v5, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    move/from16 v22, v6

    .end local v6    # "targetX":F
    .local v22, "targetX":F
    iget-object v6, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v15, v5, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_7

    .line 737
    .end local v22    # "targetX":F
    .restart local v6    # "targetX":F
    :cond_c
    move/from16 v22, v6

    .end local v6    # "targetX":F
    .restart local v22    # "targetX":F
    new-instance v15, Landroid/view/animation/ClipRectAnimation;

    iget-object v5, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {v15, v5, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_7
    move-object v5, v15

    .line 738
    .local v5, "clipAnim":Landroid/view/animation/Animation;
    if-eqz p2, :cond_d

    .line 739
    iget v6, v3, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float v6, v2, v6

    const/4 v15, 0x0

    invoke-static {v1, v15, v6, v15}, Lcom/android/internal/policy/TransitionAnimation;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v6

    goto :goto_8

    .line 740
    :cond_d
    const/4 v15, 0x0

    iget v6, v3, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float v6, v2, v6

    invoke-static {v15, v1, v15, v6}, Lcom/android/internal/policy/TransitionAnimation;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v6

    :goto_8
    nop

    .line 742
    .local v6, "translateAnim":Landroid/view/animation/Animation;
    invoke-virtual {v9, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 743
    invoke-virtual {v9, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 744
    invoke-virtual {v9, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 746
    .end local v1    # "startX":F
    .end local v2    # "startY":F
    .end local v4    # "scaleAnim":Landroid/view/animation/Animation;
    .end local v5    # "clipAnim":Landroid/view/animation/Animation;
    .end local v6    # "translateAnim":Landroid/view/animation/Animation;
    .end local v7    # "targetY":F
    .end local v8    # "x":F
    .end local v10    # "y":F
    .end local v20    # "scale":F
    .end local v22    # "targetX":F
    goto :goto_b

    .line 748
    .end local v21    # "appHeight":I
    .restart local v15    # "appHeight":I
    :cond_e
    move/from16 v21, v15

    .end local v15    # "appHeight":I
    .restart local v21    # "appHeight":I
    iget-object v1, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v11

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 749
    iget-object v1, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v13

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 751
    if-eqz p2, :cond_f

    .line 752
    new-instance v1, Landroid/view/animation/ClipRectAnimation;

    iget-object v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2, v4}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_9

    .line 753
    :cond_f
    new-instance v1, Landroid/view/animation/ClipRectAnimation;

    iget-object v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2, v4}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_9
    nop

    .line 754
    .local v1, "clipAnim":Landroid/view/animation/Animation;
    if-eqz p2, :cond_10

    .line 755
    int-to-float v2, v12

    iget v4, v3, Landroid/graphics/Rect;->top:I

    sub-int v4, v18, v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v2, v5, v4, v5}, Lcom/android/internal/policy/TransitionAnimation;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v2

    goto :goto_a

    .line 757
    :cond_10
    const/4 v5, 0x0

    int-to-float v2, v12

    iget v4, v3, Landroid/graphics/Rect;->top:I

    sub-int v4, v18, v4

    int-to-float v4, v4

    invoke-static {v5, v2, v5, v4}, Lcom/android/internal/policy/TransitionAnimation;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v2

    :goto_a
    nop

    .line 760
    .local v2, "translateAnim":Landroid/view/animation/Animation;
    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 761
    invoke-virtual {v9, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 763
    .end local v1    # "clipAnim":Landroid/view/animation/Animation;
    .end local v2    # "translateAnim":Landroid/view/animation/Animation;
    :goto_b
    move-object v8, v9

    .line 764
    .local v8, "a":Landroid/view/animation/Animation;
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 766
    .end local v9    # "set":Landroid/view/animation/AnimationSet;
    move-object v1, v8

    .line 794
    .end local v8    # "a":Landroid/view/animation/Animation;
    .local v1, "a":Landroid/view/animation/Animation;
    :goto_c
    const-wide/16 v4, 0x150

    iget-object v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    move-object v8, v1

    move v9, v14

    move/from16 v10, v21

    move v6, v11

    move v7, v12

    .end local v11    # "thumbHeightI":I
    .end local v12    # "thumbStartX":I
    .local v6, "thumbHeightI":I
    .local v7, "thumbStartX":I
    move-wide v11, v4

    move v4, v13

    .end local v13    # "thumbWidthI":I
    .local v4, "thumbWidthI":I
    move-object v13, v2

    invoke-static/range {v8 .. v13}, Lcom/android/internal/policy/TransitionAnimation;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public blacklist createClipRevealAnimationLocked(IIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 6
    .param p1, "transit"    # I
    .param p2, "wallpaperTransit"    # I
    .param p3, "enter"    # Z
    .param p4, "appFrame"    # Landroid/graphics/Rect;
    .param p5, "displayFrame"    # Landroid/graphics/Rect;
    .param p6, "startRect"    # Landroid/graphics/Rect;

    .line 407
    nop

    .line 408
    invoke-static {p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->getTransitCompatType(II)I

    move-result v1

    .line 407
    move-object v0, p0

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/TransitionAnimation;->createClipRevealAnimationLockedCompat(IZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createClipRevealAnimationLockedCompat(IZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 31
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "appFrame"    # Landroid/graphics/Rect;
    .param p4, "displayFrame"    # Landroid/graphics/Rect;
    .param p5, "startRect"    # Landroid/graphics/Rect;

    .line 415
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v4, 0x0

    if-eqz p2, :cond_5

    .line 416
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 417
    .local v6, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v15

    .line 421
    .local v15, "appHeight":I
    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v14, p5

    invoke-direct {v0, v14, v7}, Lcom/android/internal/policy/TransitionAnimation;->setupDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 423
    const/4 v7, 0x0

    .line 424
    .local v7, "t":F
    if-lez v15, :cond_0

    .line 425
    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float v7, v8, v9

    move/from16 v16, v7

    goto :goto_0

    .line 424
    :cond_0
    move/from16 v16, v7

    .line 427
    .end local v7    # "t":F
    .local v16, "t":F
    :goto_0
    iget v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mClipRevealTranslationY:I

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40e00000    # 7.0f

    div-float/2addr v8, v9

    mul-float v8, v8, v16

    float-to-int v8, v8

    add-int/2addr v7, v8

    .line 428
    .local v7, "translationY":I
    const/4 v8, 0x0

    .line 429
    .local v8, "translationX":I
    move v9, v7

    .line 430
    .local v9, "translationYCorrection":I
    iget-object v10, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    .line 431
    .local v17, "centerX":I
    iget-object v10, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v18

    .line 432
    .local v18, "centerY":I
    iget-object v10, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int/lit8 v19, v10, 0x2

    .line 433
    .local v19, "halfWidth":I
    iget-object v10, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    div-int/lit8 v20, v10, 0x2

    .line 434
    .local v20, "halfHeight":I
    sub-int v10, v17, v19

    iget v11, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    .line 435
    .local v10, "clipStartX":I
    sub-int v11, v18, v20

    iget v12, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    .line 436
    .local v11, "clipStartY":I
    const/4 v12, 0x0

    .line 441
    .local v12, "cutOff":Z
    iget v13, v2, Landroid/graphics/Rect;->top:I

    sub-int v3, v18, v20

    if-le v13, v3, :cond_1

    .line 442
    sub-int v3, v18, v20

    iget v13, v2, Landroid/graphics/Rect;->top:I

    sub-int v7, v3, v13

    .line 443
    const/4 v9, 0x0

    .line 444
    const/4 v11, 0x0

    .line 445
    const/4 v12, 0x1

    move v3, v7

    move/from16 v21, v9

    move/from16 v22, v11

    goto :goto_1

    .line 441
    :cond_1
    move v3, v7

    move/from16 v21, v9

    move/from16 v22, v11

    .line 447
    .end local v7    # "translationY":I
    .end local v9    # "translationYCorrection":I
    .end local v11    # "clipStartY":I
    .local v3, "translationY":I
    .local v21, "translationYCorrection":I
    .local v22, "clipStartY":I
    :goto_1
    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int v9, v17, v19

    if-le v7, v9, :cond_2

    .line 448
    sub-int v7, v17, v19

    iget v9, v2, Landroid/graphics/Rect;->left:I

    sub-int v8, v7, v9

    .line 449
    const/4 v10, 0x0

    .line 450
    const/4 v12, 0x1

    .line 452
    :cond_2
    iget v7, v2, Landroid/graphics/Rect;->right:I

    add-int v9, v17, v19

    if-ge v7, v9, :cond_3

    .line 453
    add-int v7, v17, v19

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int v8, v7, v9

    .line 454
    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int v10, v6, v7

    .line 455
    const/4 v12, 0x1

    move v13, v8

    move v11, v12

    move v12, v10

    goto :goto_2

    .line 452
    :cond_3
    move v13, v8

    move v11, v12

    move v12, v10

    .line 457
    .end local v8    # "translationX":I
    .end local v10    # "clipStartX":I
    .local v11, "cutOff":Z
    .local v12, "clipStartX":I
    .local v13, "translationX":I
    :goto_2
    int-to-float v7, v13

    int-to-float v8, v3

    move-object/from16 v10, p4

    invoke-static {v11, v7, v8, v10}, Lcom/android/internal/policy/TransitionAnimation;->calculateClipRevealTransitionDuration(ZFFLandroid/graphics/Rect;)J

    move-result-wide v8

    .line 461
    .local v8, "duration":J
    new-instance v7, Lcom/android/internal/policy/ClipRectLRAnimation;

    iget-object v5, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    .line 462
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v12

    const/4 v10, 0x0

    invoke-direct {v7, v12, v5, v10, v6}, Lcom/android/internal/policy/ClipRectLRAnimation;-><init>(IIII)V

    move-object v5, v7

    .line 463
    .local v5, "clipAnimLR":Landroid/view/animation/Animation;
    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 464
    long-to-float v7, v8

    const/high16 v23, 0x40200000    # 2.5f

    div-float v7, v7, v23

    move/from16 v23, v11

    .end local v11    # "cutOff":Z
    .local v23, "cutOff":Z
    float-to-long v10, v7

    invoke-virtual {v5, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 466
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    int-to-float v10, v13

    int-to-float v11, v3

    invoke-direct {v7, v10, v4, v11, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v4, v7

    .line 467
    .local v4, "translate":Landroid/view/animation/TranslateAnimation;
    if-eqz v23, :cond_4

    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_3

    .line 468
    :cond_4
    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 467
    :goto_3
    invoke-virtual {v4, v7}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 469
    invoke-virtual {v4, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 471
    new-instance v25, Lcom/android/internal/policy/ClipRectTBAnimation;

    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    .line 472
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int v10, v22, v7

    const/4 v11, 0x0

    const/16 v26, 0x0

    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v27, v7

    move-object/from16 v7, v25

    move-wide/from16 v28, v8

    .end local v8    # "duration":J
    .local v28, "duration":J
    move/from16 v8, v22

    move v9, v10

    move v10, v11

    move v11, v15

    move/from16 v24, v12

    .end local v12    # "clipStartX":I
    .local v24, "clipStartX":I
    move/from16 v12, v21

    move/from16 v30, v13

    .end local v13    # "translationX":I
    .local v30, "translationX":I
    move/from16 v13, v26

    move-object/from16 v14, v27

    invoke-direct/range {v7 .. v14}, Lcom/android/internal/policy/ClipRectTBAnimation;-><init>(IIIIIILandroid/view/animation/Interpolator;)V

    .line 476
    .local v7, "clipAnimTB":Landroid/view/animation/Animation;
    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 477
    move-wide/from16 v8, v28

    .end local v28    # "duration":J
    .restart local v8    # "duration":J
    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 480
    const-wide/16 v10, 0x4

    div-long v10, v8, v10

    .line 481
    .local v10, "alphaDuration":J
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/high16 v13, 0x3f000000    # 0.5f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v12, v13, v14}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 482
    .local v12, "alpha":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v12, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 483
    iget-object v13, v0, Lcom/android/internal/policy/TransitionAnimation;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v13}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 485
    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 486
    .local v13, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v13, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 487
    invoke-virtual {v13, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 488
    invoke-virtual {v13, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 489
    invoke-virtual {v13, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 490
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 491
    invoke-virtual {v13, v6, v15, v6, v15}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 492
    move-object v3, v13

    .line 493
    .end local v4    # "translate":Landroid/view/animation/TranslateAnimation;
    .end local v5    # "clipAnimLR":Landroid/view/animation/Animation;
    .end local v6    # "appWidth":I
    .end local v7    # "clipAnimTB":Landroid/view/animation/Animation;
    .end local v8    # "duration":J
    .end local v10    # "alphaDuration":J
    .end local v12    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v13    # "set":Landroid/view/animation/AnimationSet;
    .end local v15    # "appHeight":I
    .end local v16    # "t":F
    .end local v17    # "centerX":I
    .end local v18    # "centerY":I
    .end local v19    # "halfWidth":I
    .end local v20    # "halfHeight":I
    .end local v21    # "translationYCorrection":I
    .end local v22    # "clipStartY":I
    .end local v23    # "cutOff":Z
    .end local v24    # "clipStartX":I
    .end local v30    # "translationX":I
    .local v3, "anim":Landroid/view/animation/Animation;
    goto :goto_7

    .line 495
    .end local v3    # "anim":Landroid/view/animation/Animation;
    :cond_5
    packed-switch v1, :pswitch_data_0

    .line 501
    const-wide/16 v5, 0x150

    .local v5, "duration":J
    goto :goto_4

    .line 498
    .end local v5    # "duration":J
    :pswitch_0
    iget v3, v0, Lcom/android/internal/policy/TransitionAnimation;->mConfigShortAnimTime:I

    int-to-long v5, v3

    .line 499
    .restart local v5    # "duration":J
    nop

    .line 504
    :goto_4
    const/16 v3, 0xe

    if-eq v1, v3, :cond_7

    const/16 v3, 0xf

    if-ne v1, v3, :cond_6

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_5

    .line 514
    :cond_6
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v7, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v4, 0x1

    .restart local v3    # "anim":Landroid/view/animation/Animation;
    goto :goto_6

    .line 504
    .end local v3    # "anim":Landroid/view/animation/Animation;
    :cond_7
    const/high16 v7, 0x3f800000    # 1.0f

    .line 510
    :goto_5
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v7, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 511
    .restart local v3    # "anim":Landroid/view/animation/Animation;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 516
    :goto_6
    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 517
    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 518
    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 520
    .end local v5    # "duration":J
    :goto_7
    return-object v3

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist createCrossProfileAppsThumbnail(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Landroid/hardware/HardwareBuffer;
    .locals 9
    .param p1, "thumbnailDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .line 918
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 919
    .local v0, "width":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 921
    .local v1, "height":I
    new-instance v2, Landroid/graphics/Picture;

    invoke-direct {v2}, Landroid/graphics/Picture;-><init>()V

    .line 922
    .local v2, "picture":Landroid/graphics/Picture;
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v3

    .line 923
    .local v3, "canvas":Landroid/graphics/Canvas;
    const v4, 0x3f19999a    # 0.6f

    const/4 v5, 0x0

    invoke-static {v4, v5, v5, v5}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 924
    iget-object v4, p0, Lcom/android/internal/policy/TransitionAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10500f9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 926
    .local v4, "thumbnailSize":I
    sub-int v5, v0, v4

    div-int/lit8 v5, v5, 0x2

    sub-int v6, v1, v4

    div-int/lit8 v6, v6, 0x2

    add-int v7, v0, v4

    div-int/lit8 v7, v7, 0x2

    add-int v8, v1, v4

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 931
    iget-object v5, p0, Lcom/android/internal/policy/TransitionAnimation;->mContext:Landroid/content/Context;

    const v6, 0x106000b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 932
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 933
    invoke-virtual {v2}, Landroid/graphics/Picture;->endRecording()V

    .line 935
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v5

    return-object v5
.end method

.method public blacklist createCrossProfileAppsThumbnailAnimationLocked(Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 7
    .param p1, "appRect"    # Landroid/graphics/Rect;

    .line 220
    invoke-virtual {p0}, Lcom/android/internal/policy/TransitionAnimation;->loadCrossProfileAppThumbnailEnterAnimation()Landroid/view/animation/Animation;

    move-result-object v6

    .line 221
    .local v6, "animation":Landroid/view/animation/Animation;
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 222
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 221
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/TransitionAnimation;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 16
    .param p1, "containingFrame"    # Landroid/graphics/Rect;
    .param p2, "contentInsets"    # Landroid/graphics/Rect;
    .param p3, "startRect"    # Landroid/graphics/Rect;

    .line 355
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v4, p3

    invoke-direct {v0, v4, v3}, Lcom/android/internal/policy/TransitionAnimation;->setupDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 356
    iget-object v3, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 357
    .local v3, "left":I
    iget-object v5, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 358
    .local v5, "top":I
    iget-object v6, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    neg-int v7, v3

    neg-int v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 360
    iget-object v6, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 361
    new-instance v6, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 362
    .local v6, "set":Landroid/view/animation/AnimationSet;
    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    .line 363
    .local v8, "fromWidth":F
    iget-object v9, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    .line 364
    .local v9, "toWidth":F
    iget-object v10, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    .line 368
    .local v10, "fromHeight":F
    iget-object v11, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    iget v12, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    .line 369
    .local v11, "toHeight":F
    const/4 v12, 0x0

    .line 370
    .local v12, "translateAdjustment":I
    cmpg-float v13, v8, v9

    if-gtz v13, :cond_0

    cmpg-float v13, v10, v11

    if-gtz v13, :cond_0

    .line 374
    new-instance v13, Landroid/view/animation/ClipRectAnimation;

    iget-object v14, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v13, v14, v15}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v6, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 378
    :cond_0
    new-instance v13, Landroid/view/animation/ScaleAnimation;

    div-float v14, v8, v9

    div-float v15, v10, v11

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v13, v14, v7, v15, v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    invoke-virtual {v6, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 382
    iget v7, v2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    mul-float/2addr v7, v10

    div-float/2addr v7, v11

    float-to-int v12, v7

    .line 388
    :goto_0
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    iget v13, v1, Landroid/graphics/Rect;->left:I

    sub-int v13, v3, v13

    int-to-float v13, v13

    iget v14, v1, Landroid/graphics/Rect;->top:I

    sub-int v14, v5, v14

    sub-int/2addr v14, v12

    int-to-float v14, v14

    const/4 v15, 0x0

    invoke-direct {v7, v13, v15, v14, v15}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 390
    .local v7, "translate":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 391
    const-wide/16 v13, 0x150

    invoke-virtual {v6, v13, v14}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 392
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 393
    return-object v6
.end method

.method public blacklist createScaleUpAnimationLocked(IIZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 1
    .param p1, "transit"    # I
    .param p2, "wallpaperTransit"    # I
    .param p3, "enter"    # Z
    .param p4, "containingFrame"    # Landroid/graphics/Rect;
    .param p5, "startRect"    # Landroid/graphics/Rect;

    .line 525
    invoke-static {p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->getTransitCompatType(II)I

    move-result v0

    invoke-virtual {p0, v0, p3, p4, p5}, Lcom/android/internal/policy/TransitionAnimation;->createScaleUpAnimationLockedCompat(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createScaleUpAnimationLockedCompat(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 18
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "containingFrame"    # Landroid/graphics/Rect;
    .param p4, "startRect"    # Landroid/graphics/Rect;

    .line 532
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v3, p4

    invoke-direct {v0, v3, v2}, Lcom/android/internal/policy/TransitionAnimation;->setupDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 533
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 534
    .local v2, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 535
    .local v4, "appHeight":I
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    .line 537
    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v2

    div-float/2addr v8, v9

    .line 538
    .local v8, "scaleW":F
    iget-object v9, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v4

    div-float/2addr v9, v10

    .line 539
    .local v9, "scaleH":F
    new-instance v17, Landroid/view/animation/ScaleAnimation;

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    iget-object v10, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    .line 540
    invoke-static {v10, v8}, Lcom/android/internal/policy/TransitionAnimation;->computePivot(IF)F

    move-result v15

    iget-object v10, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    .line 541
    invoke-static {v10, v9}, Lcom/android/internal/policy/TransitionAnimation;->computePivot(IF)F

    move-result v16

    move-object/from16 v10, v17

    move v11, v8

    move v13, v9

    invoke-direct/range {v10 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 542
    .local v10, "scale":Landroid/view/animation/Animation;
    iget-object v11, v0, Lcom/android/internal/policy/TransitionAnimation;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v11}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 544
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v11, v5, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v5, v11

    .line 545
    .local v5, "alpha":Landroid/view/animation/Animation;
    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 547
    new-instance v7, Landroid/view/animation/AnimationSet;

    const/4 v11, 0x0

    invoke-direct {v7, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 548
    .local v7, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v7, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 549
    invoke-virtual {v7, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 550
    invoke-virtual {v7, v6}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 551
    move-object v5, v7

    .line 552
    .end local v7    # "set":Landroid/view/animation/AnimationSet;
    .end local v8    # "scaleW":F
    .end local v9    # "scaleH":F
    .end local v10    # "scale":Landroid/view/animation/Animation;
    .local v5, "a":Landroid/view/animation/Animation;
    goto :goto_1

    .end local v5    # "a":Landroid/view/animation/Animation;
    :cond_0
    const/16 v8, 0xe

    if-eq v1, v8, :cond_2

    const/16 v8, 0xf

    if-ne v1, v8, :cond_1

    goto :goto_0

    .line 562
    :cond_1
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v5, v7, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v5    # "a":Landroid/view/animation/Animation;
    goto :goto_1

    .line 558
    .end local v5    # "a":Landroid/view/animation/Animation;
    :cond_2
    :goto_0
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v8, v7, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v5, v8

    .line 559
    .restart local v5    # "a":Landroid/view/animation/Animation;
    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 569
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 575
    const-wide/16 v7, 0x150

    .local v7, "duration":J
    goto :goto_2

    .line 572
    .end local v7    # "duration":J
    :pswitch_0
    iget v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mConfigShortAnimTime:I

    int-to-long v7, v7

    .line 573
    .restart local v7    # "duration":J
    nop

    .line 578
    :goto_2
    invoke-virtual {v5, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 579
    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 580
    iget-object v6, v0, Lcom/android/internal/policy/TransitionAnimation;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 581
    invoke-virtual {v5, v2, v4, v2, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 582
    return-object v5

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/hardware/HardwareBuffer;ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/Animation;
    .locals 28
    .param p1, "appRect"    # Landroid/graphics/Rect;
    .param p2, "contentInsets"    # Landroid/graphics/Rect;
    .param p3, "thumbnailHeader"    # Landroid/hardware/HardwareBuffer;
    .param p4, "orientation"    # I
    .param p5, "startRect"    # Landroid/graphics/Rect;
    .param p6, "defaultStartRect"    # Landroid/graphics/Rect;
    .param p7, "scaleUp"    # Z

    .line 806
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v3

    .line 807
    .local v3, "thumbWidthI":I
    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v3, :cond_0

    int-to-float v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    .line 808
    .local v5, "thumbWidth":F
    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v6

    .line 809
    .local v6, "thumbHeightI":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v13

    .line 811
    .local v13, "appWidth":I
    int-to-float v7, v13

    div-float v21, v7, v5

    .line 812
    .local v21, "scaleW":F
    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v12, p5

    move-object/from16 v10, p6

    invoke-direct {v0, v12, v10, v7}, Lcom/android/internal/policy/TransitionAnimation;->getNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 819
    move/from16 v11, p4

    invoke-direct {v0, v11}, Lcom/android/internal/policy/TransitionAnimation;->shouldScaleDownThumbnailTransition(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 820
    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    .line 821
    .local v7, "fromX":F
    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    .line 825
    .local v8, "fromY":F
    iget-object v9, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sub-float v14, v21, v4

    mul-float/2addr v9, v14

    iget v14, v1, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    add-float/2addr v9, v14

    .line 826
    .local v9, "toX":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    div-float v15, v4, v21

    sub-float v15, v4, v15

    mul-float/2addr v14, v15

    iget v15, v1, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    add-float/2addr v14, v15

    .line 827
    .local v14, "toY":F
    iget-object v15, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    .line 828
    .local v15, "pivotX":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v16

    div-int/lit8 v4, v16, 0x2

    int-to-float v4, v4

    div-float v4, v4, v21

    .line 829
    .local v4, "pivotY":F
    move/from16 v16, v4

    .end local v4    # "pivotY":F
    .local v16, "pivotY":F
    iget-boolean v4, v0, Lcom/android/internal/policy/TransitionAnimation;->mGridLayoutRecentsEnabled:Z

    if-eqz v4, :cond_1

    .line 832
    int-to-float v4, v6

    sub-float/2addr v8, v4

    .line 833
    int-to-float v4, v6

    mul-float v4, v4, v21

    sub-float/2addr v14, v4

    move/from16 v22, v15

    move/from16 v4, v16

    move v15, v14

    move/from16 v27, v9

    move v9, v7

    move/from16 v7, v27

    goto :goto_1

    .line 829
    :cond_1
    move/from16 v22, v15

    move/from16 v4, v16

    move v15, v14

    move/from16 v27, v9

    move v9, v7

    move/from16 v7, v27

    goto :goto_1

    .line 836
    .end local v7    # "fromX":F
    .end local v8    # "fromY":F
    .end local v9    # "toX":F
    .end local v14    # "toY":F
    .end local v15    # "pivotX":F
    .end local v16    # "pivotY":F
    :cond_2
    const/4 v15, 0x0

    .line 837
    .restart local v15    # "pivotX":F
    const/4 v4, 0x0

    .line 838
    .restart local v4    # "pivotY":F
    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    .line 839
    .restart local v7    # "fromX":F
    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    .line 840
    .restart local v8    # "fromY":F
    iget v9, v1, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    .line 841
    .restart local v9    # "toX":F
    iget v14, v1, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    move/from16 v22, v15

    move v15, v14

    move/from16 v27, v9

    move v9, v7

    move/from16 v7, v27

    .line 843
    .local v7, "toX":F
    .local v9, "fromX":F
    .local v15, "toY":F
    .local v22, "pivotX":F
    :goto_1
    const/4 v14, 0x0

    move/from16 v16, v15

    .end local v15    # "toY":F
    .local v16, "toY":F
    const/4 v15, 0x0

    const-wide/16 v10, 0x150

    if-eqz p7, :cond_5

    .line 845
    new-instance v23, Landroid/view/animation/ScaleAnimation;

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v14, v23

    move/from16 v12, v16

    .end local v16    # "toY":F
    .local v12, "toY":F
    move/from16 v15, v17

    move/from16 v16, v21

    move/from16 v17, v18

    move/from16 v18, v21

    move/from16 v19, v22

    move/from16 v20, v4

    invoke-direct/range {v14 .. v20}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 846
    .local v14, "scale":Landroid/view/animation/Animation;
    sget-object v15, Lcom/android/internal/policy/TransitionAnimation;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v14, v15}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 847
    invoke-virtual {v14, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 848
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    move/from16 v23, v5

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    .end local v5    # "thumbWidth":F
    .local v23, "thumbWidth":F
    invoke-direct {v10, v5, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v5, v10

    .line 849
    .local v5, "alpha":Landroid/view/animation/Animation;
    iget-object v10, v0, Lcom/android/internal/policy/TransitionAnimation;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 850
    const-wide/16 v10, 0x150

    invoke-virtual {v5, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 851
    invoke-static {v9, v7, v8, v12}, Lcom/android/internal/policy/TransitionAnimation;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v10

    .line 852
    .local v10, "translate":Landroid/view/animation/Animation;
    invoke-virtual {v10, v15}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 853
    move/from16 v25, v7

    move/from16 v24, v8

    const-wide/16 v7, 0x150

    .end local v7    # "toX":F
    .end local v8    # "fromY":F
    .local v24, "fromY":F
    .local v25, "toX":F
    invoke-virtual {v10, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 855
    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v8, v3, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 856
    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 860
    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 861
    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v11, v7, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    div-float v11, v11, v21

    float-to-int v11, v11

    iput v11, v7, Landroid/graphics/Rect;->right:I

    .line 862
    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v11, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    div-float v11, v11, v21

    float-to-int v11, v11

    iput v11, v7, Landroid/graphics/Rect;->bottom:I

    .line 864
    if-eqz v2, :cond_3

    .line 865
    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v11, v2, Landroid/graphics/Rect;->left:I

    neg-int v11, v11

    int-to-float v11, v11

    mul-float v11, v11, v21

    float-to-int v11, v11

    iget v8, v2, Landroid/graphics/Rect;->top:I

    neg-int v8, v8

    int-to-float v8, v8

    mul-float v8, v8, v21

    float-to-int v8, v8

    iget v1, v2, Landroid/graphics/Rect;->right:I

    neg-int v1, v1

    int-to-float v1, v1

    mul-float v1, v1, v21

    float-to-int v1, v1

    move/from16 v26, v3

    .end local v3    # "thumbWidthI":I
    .local v26, "thumbWidthI":I
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    neg-int v3, v3

    int-to-float v3, v3

    mul-float v3, v3, v21

    float-to-int v3, v3

    invoke-virtual {v7, v11, v8, v1, v3}, Landroid/graphics/Rect;->inset(IIII)V

    goto :goto_2

    .line 864
    .end local v26    # "thumbWidthI":I
    .restart local v3    # "thumbWidthI":I
    :cond_3
    move/from16 v26, v3

    .line 871
    .end local v3    # "thumbWidthI":I
    .restart local v26    # "thumbWidthI":I
    :goto_2
    new-instance v1, Landroid/view/animation/ClipRectAnimation;

    iget-object v3, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v1, v3, v7}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 872
    .local v1, "clipAnim":Landroid/view/animation/Animation;
    invoke-virtual {v1, v15}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 873
    const-wide/16 v7, 0x150

    invoke-virtual {v1, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 876
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    invoke-direct {v3, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 877
    .local v3, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v3, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 878
    iget-boolean v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mGridLayoutRecentsEnabled:Z

    if-nez v7, :cond_4

    .line 880
    invoke-virtual {v3, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 882
    :cond_4
    invoke-virtual {v3, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 883
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 884
    move-object v1, v3

    .line 885
    .end local v3    # "set":Landroid/view/animation/AnimationSet;
    .end local v5    # "alpha":Landroid/view/animation/Animation;
    .end local v10    # "translate":Landroid/view/animation/Animation;
    .end local v14    # "scale":Landroid/view/animation/Animation;
    .local v1, "a":Landroid/view/animation/Animation;
    move/from16 v11, v24

    move/from16 v10, v25

    goto :goto_3

    .line 887
    .end local v1    # "a":Landroid/view/animation/Animation;
    .end local v12    # "toY":F
    .end local v23    # "thumbWidth":F
    .end local v24    # "fromY":F
    .end local v25    # "toX":F
    .end local v26    # "thumbWidthI":I
    .local v3, "thumbWidthI":I
    .local v5, "thumbWidth":F
    .restart local v7    # "toX":F
    .restart local v8    # "fromY":F
    .restart local v16    # "toY":F
    :cond_5
    move/from16 v26, v3

    move/from16 v23, v5

    move/from16 v25, v7

    move/from16 v24, v8

    move v11, v14

    move/from16 v12, v16

    .end local v3    # "thumbWidthI":I
    .end local v5    # "thumbWidth":F
    .end local v7    # "toX":F
    .end local v8    # "fromY":F
    .end local v16    # "toY":F
    .restart local v12    # "toY":F
    .restart local v23    # "thumbWidth":F
    .restart local v24    # "fromY":F
    .restart local v25    # "toX":F
    .restart local v26    # "thumbWidthI":I
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    move-object v14, v1

    move/from16 v15, v21

    move/from16 v17, v21

    move/from16 v19, v22

    move/from16 v20, v4

    invoke-direct/range {v14 .. v20}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 888
    .local v1, "scale":Landroid/view/animation/Animation;
    sget-object v3, Lcom/android/internal/policy/TransitionAnimation;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 889
    const-wide/16 v7, 0x150

    invoke-virtual {v1, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 890
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v5, v11, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 891
    .local v5, "alpha":Landroid/view/animation/Animation;
    iget-object v10, v0, Lcom/android/internal/policy/TransitionAnimation;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 892
    invoke-virtual {v5, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 893
    move/from16 v11, v24

    move/from16 v10, v25

    .end local v24    # "fromY":F
    .end local v25    # "toX":F
    .local v10, "toX":F
    .local v11, "fromY":F
    invoke-static {v10, v9, v12, v11}, Lcom/android/internal/policy/TransitionAnimation;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v14

    .line 894
    .local v14, "translate":Landroid/view/animation/Animation;
    invoke-virtual {v14, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 895
    invoke-virtual {v14, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 898
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    invoke-direct {v3, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 899
    .local v3, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 900
    iget-boolean v7, v0, Lcom/android/internal/policy/TransitionAnimation;->mGridLayoutRecentsEnabled:Z

    if-nez v7, :cond_6

    .line 902
    invoke-virtual {v3, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 904
    :cond_6
    invoke-virtual {v3, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 905
    move-object v7, v3

    move-object v1, v7

    .line 908
    .end local v3    # "set":Landroid/view/animation/AnimationSet;
    .end local v5    # "alpha":Landroid/view/animation/Animation;
    .end local v14    # "translate":Landroid/view/animation/Animation;
    .local v1, "a":Landroid/view/animation/Animation;
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    const-wide/16 v14, 0x0

    const/4 v5, 0x0

    move/from16 v16, v10

    .end local v10    # "toX":F
    .local v16, "toX":F
    move-object v7, v1

    move/from16 v17, v11

    .end local v11    # "fromY":F
    .local v17, "fromY":F
    move v8, v13

    move/from16 v18, v9

    .end local v9    # "fromX":F
    .local v18, "fromX":F
    move v9, v3

    move-wide v10, v14

    move v14, v12

    .end local v12    # "toY":F
    .local v14, "toY":F
    move-object v12, v5

    invoke-static/range {v7 .. v12}, Lcom/android/internal/policy/TransitionAnimation;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3
.end method

.method public blacklist createThumbnailEnterExitAnimationLocked(ZZLandroid/graphics/Rect;IILandroid/hardware/HardwareBuffer;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 7
    .param p1, "enter"    # Z
    .param p2, "scaleUp"    # Z
    .param p3, "containingFrame"    # Landroid/graphics/Rect;
    .param p4, "transit"    # I
    .param p5, "wallpaperTransit"    # I
    .param p6, "thumbnailHeader"    # Landroid/hardware/HardwareBuffer;
    .param p7, "startRect"    # Landroid/graphics/Rect;

    .line 588
    nop

    .line 589
    invoke-static {p4, p5}, Lcom/android/internal/policy/TransitionAnimation;->getTransitCompatType(II)I

    move-result v4

    .line 588
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/policy/TransitionAnimation;->createThumbnailEnterExitAnimationLockedCompat(ZZLandroid/graphics/Rect;ILandroid/hardware/HardwareBuffer;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createThumbnailEnterExitAnimationLockedCompat(ZZLandroid/graphics/Rect;ILandroid/hardware/HardwareBuffer;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 22
    .param p1, "enter"    # Z
    .param p2, "scaleUp"    # Z
    .param p3, "containingFrame"    # Landroid/graphics/Rect;
    .param p4, "transit"    # I
    .param p5, "thumbnailHeader"    # Landroid/hardware/HardwareBuffer;
    .param p6, "startRect"    # Landroid/graphics/Rect;

    .line 599
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 600
    .local v2, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 602
    .local v3, "appHeight":I
    iget-object v4, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v5, p6

    invoke-direct {v0, v5, v4}, Lcom/android/internal/policy/TransitionAnimation;->setupDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 603
    if-eqz p5, :cond_0

    invoke-virtual/range {p5 .. p5}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v2

    .line 604
    .local v4, "thumbWidthI":I
    :goto_0
    const/high16 v6, 0x3f800000    # 1.0f

    if-lez v4, :cond_1

    int-to-float v7, v4

    goto :goto_1

    :cond_1
    move v7, v6

    .line 605
    .local v7, "thumbWidth":F
    :goto_1
    if-eqz p5, :cond_2

    invoke-virtual/range {p5 .. p5}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v8

    goto :goto_2

    :cond_2
    move v8, v3

    .line 606
    .local v8, "thumbHeightI":I
    :goto_2
    if-lez v8, :cond_3

    int-to-float v9, v8

    goto :goto_3

    :cond_3
    move v9, v6

    .line 607
    .local v9, "thumbHeight":F
    :goto_3
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/policy/TransitionAnimation;->getThumbnailTransitionState(ZZ)I

    move-result v10

    .line 609
    .local v10, "thumbTransitState":I
    const/4 v11, 0x0

    packed-switch v10, :pswitch_data_0

    .line 656
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v11, "Invalid thumbnail transition state"

    invoke-direct {v6, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 640
    :pswitch_0
    int-to-float v12, v2

    div-float v12, v7, v12

    .line 641
    .local v12, "scaleW":F
    int-to-float v13, v3

    div-float v15, v9, v13

    .line 642
    .local v15, "scaleH":F
    new-instance v20, Landroid/view/animation/ScaleAnimation;

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    iget-object v13, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    .line 643
    invoke-static {v13, v12}, Lcom/android/internal/policy/TransitionAnimation;->computePivot(IF)F

    move-result v18

    iget-object v13, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    .line 644
    invoke-static {v13, v15}, Lcom/android/internal/policy/TransitionAnimation;->computePivot(IF)F

    move-result v19

    move-object/from16 v13, v20

    move/from16 v21, v15

    .end local v15    # "scaleH":F
    .local v21, "scaleH":F
    move v15, v12

    move/from16 v17, v21

    invoke-direct/range {v13 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 646
    .local v13, "scale":Landroid/view/animation/Animation;
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v14, v6, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v6, v14

    .line 648
    .local v6, "alpha":Landroid/view/animation/Animation;
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v14, 0x1

    invoke-direct {v11, v14}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 649
    .local v11, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v11, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 650
    invoke-virtual {v11, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 651
    invoke-virtual {v11, v14}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 652
    move-object v14, v11

    .line 653
    .local v14, "a":Landroid/view/animation/Animation;
    goto :goto_4

    .line 635
    .end local v6    # "alpha":Landroid/view/animation/Animation;
    .end local v11    # "set":Landroid/view/animation/AnimationSet;
    .end local v12    # "scaleW":F
    .end local v13    # "scale":Landroid/view/animation/Animation;
    .end local v14    # "a":Landroid/view/animation/Animation;
    .end local v21    # "scaleH":F
    :pswitch_1
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v11, v6, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v14, v11

    .line 636
    .restart local v14    # "a":Landroid/view/animation/Animation;
    goto :goto_4

    .line 621
    .end local v14    # "a":Landroid/view/animation/Animation;
    :pswitch_2
    const/16 v12, 0xe

    if-ne v1, v12, :cond_4

    .line 625
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v12, v6, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v14, v12

    .restart local v14    # "a":Landroid/view/animation/Animation;
    goto :goto_4

    .line 628
    .end local v14    # "a":Landroid/view/animation/Animation;
    :cond_4
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v11, v6, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v14, v11

    .line 630
    .restart local v14    # "a":Landroid/view/animation/Animation;
    goto :goto_4

    .line 612
    .end local v14    # "a":Landroid/view/animation/Animation;
    :pswitch_3
    int-to-float v6, v2

    div-float v6, v7, v6

    .line 613
    .local v6, "scaleW":F
    int-to-float v11, v3

    div-float v15, v9, v11

    .line 614
    .restart local v15    # "scaleH":F
    new-instance v18, Landroid/view/animation/ScaleAnimation;

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    iget-object v11, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    .line 615
    invoke-static {v11, v6}, Lcom/android/internal/policy/TransitionAnimation;->computePivot(IF)F

    move-result v17

    iget-object v11, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    .line 616
    invoke-static {v11, v15}, Lcom/android/internal/policy/TransitionAnimation;->computePivot(IF)F

    move-result v19

    move-object/from16 v11, v18

    move v12, v6

    move v14, v15

    move/from16 v20, v15

    .end local v15    # "scaleH":F
    .local v20, "scaleH":F
    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v19

    invoke-direct/range {v11 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object/from16 v14, v18

    .line 617
    .restart local v14    # "a":Landroid/view/animation/Animation;
    nop

    .line 659
    .end local v6    # "scaleW":F
    .end local v20    # "scaleH":F
    :goto_4
    invoke-direct {v0, v14, v2, v3, v1}, Lcom/android/internal/policy/TransitionAnimation;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    move-result-object v6

    return-object v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getAnimationStyleResId(Landroid/view/WindowManager$LayoutParams;)I
    .locals 3
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .line 342
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 343
    .local v0, "resId":I
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 348
    iget v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mDefaultWindowAnimationStyleResId:I

    .line 350
    :cond_0
    return v0
.end method

.method synthetic blacklist lambda$new$0$com-android-internal-policy-TransitionAnimation(F)F
    .locals 2
    .param p1, "input"    # F

    .line 139
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    .line 140
    const/4 v0, 0x0

    return v0

    .line 142
    :cond_0
    sub-float v1, p1, v0

    div-float/2addr v1, v0

    .line 144
    .local v1, "t":F
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$new$1$com-android-internal-policy-TransitionAnimation(F)F
    .locals 2
    .param p1, "input"    # F

    .line 148
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    .line 149
    div-float v0, p1, v0

    .line 150
    .local v0, "t":F
    iget-object v1, p0, Lcom/android/internal/policy/TransitionAnimation;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    return v1

    .line 152
    .end local v0    # "t":F
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public blacklist loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;II)Landroid/view/animation/Animation;
    .locals 5
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "animAttr"    # I
    .param p3, "transit"    # I

    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, "resId":I
    iget-object v1, p0, Lcom/android/internal/policy/TransitionAnimation;->mContext:Landroid/content/Context;

    .line 248
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_0

    .line 249
    invoke-direct {p0, p1}, Lcom/android/internal/policy/TransitionAnimation;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object v2

    .line 250
    .local v2, "ent":Lcom/android/internal/policy/AttributeCache$Entry;
    if-eqz v2, :cond_0

    .line 251
    iget-object v1, v2, Lcom/android/internal/policy/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 252
    iget-object v3, v2, Lcom/android/internal/policy/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 255
    .end local v2    # "ent":Lcom/android/internal/policy/AttributeCache$Entry;
    :cond_0
    invoke-static {v0, p3}, Lcom/android/internal/policy/TransitionAnimation;->updateToTranslucentAnimIfNeeded(II)I

    move-result v0

    .line 256
    invoke-static {v0}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 257
    iget-object v2, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationSafely(Landroid/content/Context;ILjava/lang/String;)Landroid/view/animation/Animation;

    move-result-object v2

    return-object v2

    .line 259
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public blacklist loadAnimationAttr(Ljava/lang/String;IIZ)Landroid/view/animation/Animation;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "animStyleResId"    # I
    .param p3, "animAttr"    # I
    .param p4, "translucent"    # Z

    .line 266
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 267
    return-object v0

    .line 269
    :cond_0
    const/4 v1, 0x0

    .line 270
    .local v1, "resId":I
    iget-object v2, p0, Lcom/android/internal/policy/TransitionAnimation;->mContext:Landroid/content/Context;

    .line 271
    .local v2, "context":Landroid/content/Context;
    if-ltz p3, :cond_2

    .line 272
    if-eqz p1, :cond_1

    move-object v3, p1

    goto :goto_0

    :cond_1
    const-string v3, "android"

    :goto_0
    move-object p1, v3

    .line 273
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object v3

    .line 274
    .local v3, "ent":Lcom/android/internal/policy/AttributeCache$Entry;
    if-eqz v3, :cond_2

    .line 275
    iget-object v2, v3, Lcom/android/internal/policy/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 276
    iget-object v4, v3, Lcom/android/internal/policy/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v5, 0x0

    invoke-virtual {v4, p3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 279
    .end local v3    # "ent":Lcom/android/internal/policy/AttributeCache$Entry;
    :cond_2
    if-eqz p4, :cond_3

    .line 280
    invoke-static {v1}, Lcom/android/internal/policy/TransitionAnimation;->updateToTranslucentAnimIfNeeded(I)I

    move-result v1

    .line 282
    :cond_3
    invoke-static {v1}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 283
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationSafely(Landroid/content/Context;ILjava/lang/String;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 285
    :cond_4
    return-object v0
.end method

.method public blacklist loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .line 228
    invoke-static {p2}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object v0

    .line 230
    .local v0, "ent":Lcom/android/internal/policy/AttributeCache$Entry;
    if-eqz v0, :cond_0

    .line 231
    iget-object v1, v0, Lcom/android/internal/policy/AttributeCache$Entry;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    invoke-static {v1, p2, v2}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationSafely(Landroid/content/Context;ILjava/lang/String;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    .line 234
    .end local v0    # "ent":Lcom/android/internal/policy/AttributeCache$Entry;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist loadAppTransitionAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .line 203
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadCrossProfileAppEnterAnimation()Landroid/view/animation/Animation;
    .locals 2

    .line 208
    const-string v0, "android"

    const v1, 0x10a00b6

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadCrossProfileAppThumbnailEnterAnimation()Landroid/view/animation/Animation;
    .locals 2

    .line 214
    const-string v0, "android"

    const v1, 0x10a0021

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadDefaultAnimationAttr(IZ)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "animAttr"    # I
    .param p2, "translucent"    # Z

    .line 291
    iget v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mDefaultWindowAnimationStyleResId:I

    const-string v1, "android"

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationAttr(Ljava/lang/String;IIZ)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadDefaultAnimationRes(I)Landroid/view/animation/Animation;
    .locals 1
    .param p1, "resId"    # I

    .line 240
    const-string v0, "android"

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadKeyguardExitAnimation(IZ)Landroid/view/animation/Animation;
    .locals 4
    .param p1, "transitionFlags"    # I
    .param p2, "onWallpaper"    # Z

    .line 172
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x0

    return-object v0

    .line 175
    :cond_0
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 177
    .local v0, "toShade":Z
    :goto_0
    and-int/lit8 v3, p1, 0x8

    if-eqz v3, :cond_2

    move v1, v2

    .line 179
    .local v1, "subtle":Z
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/TransitionAnimation;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/TransitionAnimation;->mInterpolator:Lcom/android/internal/policy/LogDecelerateInterpolator;

    invoke-static {v2, v3, p2, v0, v1}, Lcom/android/internal/policy/TransitionAnimation;->createHiddenByKeyguardExit(Landroid/content/Context;Lcom/android/internal/policy/LogDecelerateInterpolator;ZZZ)Landroid/view/animation/Animation;

    move-result-object v2

    return-object v2
.end method

.method public blacklist loadKeyguardUnoccludeAnimation()Landroid/view/animation/Animation;
    .locals 1

    .line 184
    const v0, 0x10a00cd

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadVoiceActivityExitAnimation(Z)Landroid/view/animation/Animation;
    .locals 1
    .param p1, "enter"    # Z

    .line 196
    if-eqz p1, :cond_0

    .line 197
    const v0, 0x10a00be

    goto :goto_0

    .line 198
    :cond_0
    const v0, 0x10a00bf

    .line 196
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadVoiceActivityOpenAnimation(Z)Landroid/view/animation/Animation;
    .locals 1
    .param p1, "enter"    # Z

    .line 189
    if-eqz p1, :cond_0

    .line 190
    const v0, 0x10a00c0

    goto :goto_0

    .line 191
    :cond_0
    const v0, 0x10a00c1

    .line 189
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method
