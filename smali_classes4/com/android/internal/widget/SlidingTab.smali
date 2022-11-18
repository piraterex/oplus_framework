.class public Lcom/android/internal/widget/SlidingTab;
.super Landroid/view/ViewGroup;
.source "SlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/SlidingTab$Slider;,
        Lcom/android/internal/widget/SlidingTab$OnTriggerListener;
    }
.end annotation


# static fields
.field private static final blacklist ANIM_DURATION:I = 0xfa

.field private static final blacklist ANIM_TARGET_TIME:I = 0x1f4

.field private static final blacklist DBG:Z = false

.field private static final blacklist HORIZONTAL:I = 0x0

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SlidingTab"

.field private static final blacklist THRESHOLD:F = 0.6666667f

.field private static final blacklist TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field private static final blacklist TRACKING_MARGIN:I = 0x32

.field private static final blacklist VERTICAL:I = 0x1

.field private static final blacklist VIBRATE_LONG:J = 0x28L

.field private static final blacklist VIBRATE_SHORT:J = 0x1eL


# instance fields
.field private blacklist mAnimating:Z

.field private final greylist mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

.field private blacklist mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

.field private final blacklist mDensity:F

.field private blacklist mGrabbedState:I

.field private blacklist mHoldLeftOnTransition:Z

.field private blacklist mHoldRightOnTransition:Z

.field private final greylist mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

.field private blacklist mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

.field private final blacklist mOrientation:I

.field private blacklist mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

.field private final greylist mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

.field private blacklist mThreshold:F

.field private final blacklist mTmpRect:Landroid/graphics/Rect;

.field private blacklist mTracking:Z

.field private blacklist mTriggered:Z

.field private blacklist mVibrator:Landroid/os/Vibrator;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAnimationDoneListener(Lcom/android/internal/widget/SlidingTab;)Landroid/view/animation/Animation$AnimationListener;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/SlidingTab;->mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLeftSlider(Lcom/android/internal/widget/SlidingTab;)Lcom/android/internal/widget/SlidingTab$Slider;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRightSlider(Lcom/android/internal/widget/SlidingTab;)Lcom/android/internal/widget/SlidingTab$Slider;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAnimating(Lcom/android/internal/widget/SlidingTab;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monAnimationDone(Lcom/android/internal/widget/SlidingTab;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->onAnimationDone()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mresetView(Lcom/android/internal/widget/SlidingTab;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->resetView()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 70
    nop

    .line 71
    const/16 v0, 0x12

    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/SlidingTab;->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 70
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 450
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/SlidingTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 451
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 457
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mHoldLeftOnTransition:Z

    .line 68
    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mHoldRightOnTransition:Z

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    .line 75
    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    .line 98
    new-instance v1, Lcom/android/internal/widget/SlidingTab$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/SlidingTab$1;-><init>(Lcom/android/internal/widget/SlidingTab;)V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

    .line 460
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    .line 462
    sget-object v1, Lcom/android/internal/R$styleable;->SlidingTab:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 463
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/SlidingTab;->mOrientation:I

    .line 464
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 466
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 467
    .local v0, "r":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/android/internal/widget/SlidingTab;->mDensity:F

    .line 470
    new-instance v2, Lcom/android/internal/widget/SlidingTab$Slider;

    const v3, 0x10805c2

    const v4, 0x10805b1

    const v5, 0x10805d0

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/internal/widget/SlidingTab$Slider;-><init>(Landroid/view/ViewGroup;III)V

    iput-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 474
    new-instance v2, Lcom/android/internal/widget/SlidingTab$Slider;

    const v3, 0x10805cb

    const v4, 0x10805ba

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/internal/widget/SlidingTab$Slider;-><init>(Landroid/view/ViewGroup;III)V

    iput-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 480
    return-void
.end method

.method private blacklist cancelGrab()V
    .locals 3

    .line 635
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    .line 636
    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    .line 637
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SlidingTab$Slider;->show(Z)V

    .line 638
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    .line 639
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v1}, Lcom/android/internal/widget/SlidingTab$Slider;->hideTarget()V

    .line 640
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 641
    iput-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 642
    invoke-direct {p0, v0}, Lcom/android/internal/widget/SlidingTab;->setGrabbedState(I)V

    .line 643
    return-void
.end method

.method private blacklist dispatchTriggerEvent(I)V
    .locals 2
    .param p1, "whichHandle"    # I

    .line 857
    const-wide/16 v0, 0x28

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTab;->vibrate(J)V

    .line 858
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 859
    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/SlidingTab$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 861
    :cond_0
    return-void
.end method

.method private blacklist isHorizontal()Z
    .locals 1

    .line 726
    iget v0, p0, Lcom/android/internal/widget/SlidingTab;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 888
    const-string v0, "SlidingTab"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    return-void
.end method

.method private blacklist moveHandle(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 746
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-static {v0}, Lcom/android/internal/widget/SlidingTab$Slider;->-$$Nest$fgettab(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v0

    .line 747
    .local v0, "handle":Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-static {v1}, Lcom/android/internal/widget/SlidingTab$Slider;->-$$Nest$fgettext(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/TextView;

    move-result-object v1

    .line 748
    .local v1, "content":Landroid/view/View;
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 749
    float-to-int v2, p1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 750
    .local v2, "deltaX":I
    invoke-virtual {v0, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 751
    invoke-virtual {v1, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 752
    .end local v2    # "deltaX":I
    goto :goto_0

    .line 753
    :cond_0
    float-to-int v2, p2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 754
    .local v2, "deltaY":I
    invoke-virtual {v0, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 755
    invoke-virtual {v1, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 757
    .end local v2    # "deltaY":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->invalidate()V

    .line 758
    return-void
.end method

.method private greylist onAnimationDone()V
    .locals 1

    .line 716
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->resetView()V

    .line 717
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    .line 718
    return-void
.end method

.method private greylist resetView()V
    .locals 2

    .line 731
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    .line 732
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    .line 734
    return-void
.end method

.method private blacklist setGrabbedState(I)V
    .locals 1
    .param p1, "newState"    # I

    .line 879
    iget v0, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    if-eq p1, v0, :cond_0

    .line 880
    iput p1, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    .line 881
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 882
    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/SlidingTab$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 885
    :cond_0
    return-void
.end method

.method private declared-synchronized blacklist vibrate(J)V
    .locals 3
    .param p1, "duration"    # J

    monitor-enter p0

    .line 834
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 835
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mVibrator:Landroid/os/Vibrator;

    .line 837
    .end local p0    # "this":Lcom/android/internal/widget/SlidingTab;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mVibrator:Landroid/os/Vibrator;

    const/4 v1, -0x1

    .line 838
    invoke-static {p1, p2, v1}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v1

    sget-object v2, Lcom/android/internal/widget/SlidingTab;->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 837
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    monitor-exit p0

    return-void

    .line 833
    .end local p1    # "duration":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private blacklist withinView(FFLandroid/view/View;)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "view"    # Landroid/view/View;

    .line 721
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v0

    const/high16 v1, -0x3db80000    # -50.0f

    if-eqz v0, :cond_0

    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_1

    .line 722
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v0

    if-nez v0, :cond_2

    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 721
    :goto_0
    return v0
.end method


# virtual methods
.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 519
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 520
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 521
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 523
    .local v2, "y":F
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 524
    return v4

    .line 527
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-static {v3}, Lcom/android/internal/widget/SlidingTab$Slider;->-$$Nest$fgettab(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v3

    .line 528
    .local v3, "leftHandle":Landroid/view/View;
    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 529
    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    float-to-int v6, v1

    float-to-int v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    .line 531
    .local v5, "leftHit":Z
    iget-object v6, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-static {v6}, Lcom/android/internal/widget/SlidingTab$Slider;->-$$Nest$fgettab(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v6

    .line 532
    .local v6, "rightHandle":Landroid/view/View;
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 533
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    float-to-int v8, v1

    float-to-int v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    .line 535
    .local v7, "rightHit":Z
    iget-boolean v8, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    if-nez v8, :cond_1

    if-nez v5, :cond_1

    if-nez v7, :cond_1

    .line 536
    return v4

    .line 539
    :cond_1
    const/4 v8, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 541
    :pswitch_0
    iput-boolean v8, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    .line 542
    iput-boolean v4, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    .line 543
    const-wide/16 v9, 0x1e

    invoke-direct {p0, v9, v10}, Lcom/android/internal/widget/SlidingTab;->vibrate(J)V

    .line 544
    const v4, 0x3eaaaaaa

    const v9, 0x3f2aaaab

    if-eqz v5, :cond_3

    .line 545
    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iput-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 546
    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iput-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 547
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v10

    if-eqz v10, :cond_2

    move v4, v9

    :cond_2
    iput v4, p0, Lcom/android/internal/widget/SlidingTab;->mThreshold:F

    .line 548
    invoke-direct {p0, v8}, Lcom/android/internal/widget/SlidingTab;->setGrabbedState(I)V

    goto :goto_1

    .line 550
    :cond_3
    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iput-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 551
    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iput-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 552
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_0

    :cond_4
    move v4, v9

    :goto_0
    iput v4, p0, Lcom/android/internal/widget/SlidingTab;->mThreshold:F

    .line 553
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/android/internal/widget/SlidingTab;->setGrabbedState(I)V

    .line 555
    :goto_1
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v4, v8}, Lcom/android/internal/widget/SlidingTab$Slider;->setState(I)V

    .line 556
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v4}, Lcom/android/internal/widget/SlidingTab$Slider;->showTarget()V

    .line 557
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v4}, Lcom/android/internal/widget/SlidingTab$Slider;->hide()V

    .line 562
    :goto_2
    return v8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 738
    move-object v0, p0

    if-nez p1, :cond_0

    return-void

    .line 741
    :cond_0
    iget-object v1, v0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    :goto_0
    move v6, v2

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/SlidingTab$Slider;->layout(IIIII)V

    .line 742
    iget-object v7, v0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    :goto_1
    move v12, v1

    move v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/widget/SlidingTab$Slider;->layout(IIIII)V

    .line 743
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 484
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 485
    .local v0, "widthSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 487
    .local v1, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 488
    .local v2, "heightSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 499
    .local v3, "heightSpecSize":I
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v4, p1, p2}, Lcom/android/internal/widget/SlidingTab$Slider;->measure(II)V

    .line 500
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v4, p1, p2}, Lcom/android/internal/widget/SlidingTab$Slider;->measure(II)V

    .line 501
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v4}, Lcom/android/internal/widget/SlidingTab$Slider;->getTabWidth()I

    move-result v4

    .line 502
    .local v4, "leftTabWidth":I
    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v5}, Lcom/android/internal/widget/SlidingTab$Slider;->getTabWidth()I

    move-result v5

    .line 503
    .local v5, "rightTabWidth":I
    iget-object v6, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v6}, Lcom/android/internal/widget/SlidingTab$Slider;->getTabHeight()I

    move-result v6

    .line 504
    .local v6, "leftTabHeight":I
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v7}, Lcom/android/internal/widget/SlidingTab$Slider;->getTabHeight()I

    move-result v7

    .line 507
    .local v7, "rightTabHeight":I
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 508
    add-int v8, v4, v5

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 509
    .local v8, "width":I
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v9

    .local v9, "height":I
    goto :goto_0

    .line 511
    .end local v8    # "width":I
    .end local v9    # "height":I
    :cond_0
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 512
    .restart local v8    # "width":I
    add-int v9, v6, v7

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 514
    .restart local v9    # "height":I
    :goto_0
    invoke-virtual {p0, v8, v9}, Lcom/android/internal/widget/SlidingTab;->setMeasuredDimension(II)V

    .line 515
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 590
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    .line 591
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 592
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 593
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 595
    .local v4, "y":F
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    .line 597
    :pswitch_0
    invoke-direct {p0, v3, v4, p0}, Lcom/android/internal/widget/SlidingTab;->withinView(FFLandroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 598
    invoke-direct {p0, v3, v4}, Lcom/android/internal/widget/SlidingTab;->moveHandle(FF)V

    .line 599
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    .line 600
    .local v5, "position":F
    :goto_0
    iget v6, p0, Lcom/android/internal/widget/SlidingTab;->mThreshold:F

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getWidth()I

    move-result v7

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getHeight()I

    move-result v7

    :goto_1
    int-to-float v7, v7

    mul-float/2addr v6, v7

    .line 602
    .local v6, "target":F
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 603
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iget-object v8, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    if-ne v7, v8, :cond_2

    .line 604
    cmpl-float v7, v5, v6

    if-lez v7, :cond_3

    goto :goto_2

    :cond_2
    cmpg-float v7, v5, v6

    if-gez v7, :cond_3

    :goto_2
    move v7, v2

    goto :goto_3

    :cond_3
    move v7, v1

    .local v7, "thresholdReached":Z
    :goto_3
    goto :goto_5

    .line 606
    .end local v7    # "thresholdReached":Z
    :cond_4
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iget-object v8, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    if-ne v7, v8, :cond_5

    .line 607
    cmpg-float v7, v5, v6

    if-gez v7, :cond_6

    goto :goto_4

    :cond_5
    cmpl-float v7, v5, v6

    if-lez v7, :cond_6

    :goto_4
    move v7, v2

    goto :goto_5

    :cond_6
    move v7, v1

    .line 609
    .restart local v7    # "thresholdReached":Z
    :goto_5
    iget-boolean v8, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    if-nez v8, :cond_b

    if-eqz v7, :cond_b

    .line 610
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    .line 611
    iput-boolean v1, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    .line 612
    iget-object v8, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/SlidingTab$Slider;->setState(I)V

    .line 613
    iget-object v8, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    if-ne v8, v10, :cond_7

    move v8, v2

    goto :goto_6

    :cond_7
    move v8, v1

    .line 614
    .local v8, "isLeft":Z
    :goto_6
    if-eqz v8, :cond_8

    .line 615
    move v9, v2

    goto :goto_7

    :cond_8
    nop

    .line 614
    :goto_7
    invoke-direct {p0, v9}, Lcom/android/internal/widget/SlidingTab;->dispatchTriggerEvent(I)V

    .line 617
    if-eqz v8, :cond_9

    iget-boolean v9, p0, Lcom/android/internal/widget/SlidingTab;->mHoldLeftOnTransition:Z

    goto :goto_8

    :cond_9
    iget-boolean v9, p0, Lcom/android/internal/widget/SlidingTab;->mHoldRightOnTransition:Z

    :goto_8
    invoke-virtual {p0, v9}, Lcom/android/internal/widget/SlidingTab;->startAnimating(Z)V

    .line 618
    invoke-direct {p0, v1}, Lcom/android/internal/widget/SlidingTab;->setGrabbedState(I)V

    .line 619
    .end local v8    # "isLeft":Z
    goto :goto_9

    .line 626
    .end local v5    # "position":F
    .end local v6    # "target":F
    .end local v7    # "thresholdReached":Z
    :cond_a
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->cancelGrab()V

    .line 631
    .end local v0    # "action":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_b
    :goto_9
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    if-nez v0, :cond_c

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    move v1, v2

    :cond_d
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected whitelist onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 865
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    .line 868
    if-ne p1, p0, :cond_0

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    if-eqz v0, :cond_0

    .line 870
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->cancelGrab()V

    .line 872
    :cond_0
    return-void
.end method

.method public blacklist reset(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 572
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    .line 573
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    .line 574
    if-nez p1, :cond_0

    .line 575
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    .line 577
    :cond_0
    return-void
.end method

.method public greylist setHoldAfterTrigger(ZZ)V
    .locals 0
    .param p1, "holdLeft"    # Z
    .param p2, "holdRight"    # Z

    .line 826
    iput-boolean p1, p0, Lcom/android/internal/widget/SlidingTab;->mHoldLeftOnTransition:Z

    .line 827
    iput-boolean p2, p0, Lcom/android/internal/widget/SlidingTab;->mHoldRightOnTransition:Z

    .line 828
    return-void
.end method

.method public greylist setLeftHintText(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 787
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setHintText(I)V

    .line 790
    :cond_0
    return-void
.end method

.method public greylist setLeftTabResources(IIII)V
    .locals 1
    .param p1, "iconId"    # I
    .param p2, "targetId"    # I
    .param p3, "barId"    # I
    .param p4, "tabId"    # I

    .line 773
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setIcon(I)V

    .line 774
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/SlidingTab$Slider;->setTarget(I)V

    .line 775
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p3}, Lcom/android/internal/widget/SlidingTab$Slider;->setBarBackgroundResource(I)V

    .line 776
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p4}, Lcom/android/internal/widget/SlidingTab$Slider;->setTabBackgroundResource(I)V

    .line 777
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0}, Lcom/android/internal/widget/SlidingTab$Slider;->updateDrawableStates()V

    .line 778
    return-void
.end method

.method public greylist setOnTriggerListener(Lcom/android/internal/widget/SlidingTab$OnTriggerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    .line 849
    iput-object p1, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    .line 850
    return-void
.end method

.method public greylist setRightHintText(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 819
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setHintText(I)V

    .line 822
    :cond_0
    return-void
.end method

.method public greylist setRightTabResources(IIII)V
    .locals 1
    .param p1, "iconId"    # I
    .param p2, "targetId"    # I
    .param p3, "barId"    # I
    .param p4, "tabId"    # I

    .line 805
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setIcon(I)V

    .line 806
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/SlidingTab$Slider;->setTarget(I)V

    .line 807
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p3}, Lcom/android/internal/widget/SlidingTab$Slider;->setBarBackgroundResource(I)V

    .line 808
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p4}, Lcom/android/internal/widget/SlidingTab$Slider;->setTabBackgroundResource(I)V

    .line 809
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0}, Lcom/android/internal/widget/SlidingTab$Slider;->updateDrawableStates()V

    .line 810
    return-void
.end method

.method public whitelist setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 582
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 583
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SlidingTab;->reset(Z)V

    .line 585
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 586
    return-void
.end method

.method blacklist startAnimating(Z)V
    .locals 12
    .param p1, "holdAfter"    # Z

    .line 646
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    .line 649
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 650
    .local v1, "slider":Lcom/android/internal/widget/SlidingTab$Slider;
    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    .line 653
    .local v2, "other":Lcom/android/internal/widget/SlidingTab$Slider;
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 654
    invoke-static {v1}, Lcom/android/internal/widget/SlidingTab$Slider;->-$$Nest$fgettab(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getRight()I

    move-result v3

    .line 655
    .local v3, "right":I
    invoke-static {v1}, Lcom/android/internal/widget/SlidingTab$Slider;->-$$Nest$fgettab(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    .line 656
    .local v5, "width":I
    invoke-static {v1}, Lcom/android/internal/widget/SlidingTab$Slider;->-$$Nest$fgettab(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLeft()I

    move-result v6

    .line 657
    .local v6, "left":I
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getWidth()I

    move-result v7

    .line 658
    .local v7, "viewWidth":I
    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    .line 659
    .local v4, "holdOffset":I
    :goto_0
    iget-object v8, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    if-ne v1, v8, :cond_1

    add-int v8, v3, v7

    sub-int/2addr v8, v4

    neg-int v8, v8

    goto :goto_1

    .line 660
    :cond_1
    sub-int v8, v7, v6

    add-int/2addr v8, v7

    sub-int/2addr v8, v4

    :goto_1
    nop

    .line 661
    .local v8, "dx":I
    const/4 v3, 0x0

    .line 662
    .end local v4    # "holdOffset":I
    .end local v5    # "width":I
    .end local v6    # "left":I
    .end local v7    # "viewWidth":I
    .local v3, "dy":I
    goto :goto_4

    .line 663
    .end local v3    # "dy":I
    .end local v8    # "dx":I
    :cond_2
    invoke-static {v1}, Lcom/android/internal/widget/SlidingTab$Slider;->-$$Nest$fgettab(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v3

    .line 664
    .local v3, "top":I
    invoke-static {v1}, Lcom/android/internal/widget/SlidingTab$Slider;->-$$Nest$fgettab(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getBottom()I

    move-result v5

    .line 665
    .local v5, "bottom":I
    invoke-static {v1}, Lcom/android/internal/widget/SlidingTab$Slider;->-$$Nest$fgettab(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    .line 666
    .local v6, "height":I
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getHeight()I

    move-result v7

    .line 667
    .local v7, "viewHeight":I
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v4, v6

    .line 668
    .restart local v4    # "holdOffset":I
    :goto_2
    const/4 v8, 0x0

    .line 669
    .restart local v8    # "dx":I
    iget-object v9, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    if-ne v1, v9, :cond_4

    add-int v9, v3, v7

    sub-int/2addr v9, v4

    goto :goto_3

    .line 670
    :cond_4
    sub-int v9, v7, v5

    add-int/2addr v9, v7

    sub-int/2addr v9, v4

    neg-int v9, v9

    :goto_3
    move v3, v9

    .line 672
    .end local v4    # "holdOffset":I
    .end local v5    # "bottom":I
    .end local v6    # "height":I
    .end local v7    # "viewHeight":I
    .local v3, "dy":I
    :goto_4
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    int-to-float v5, v8

    int-to-float v6, v3

    const/4 v7, 0x0

    invoke-direct {v4, v7, v5, v7, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 673
    .local v4, "trans1":Landroid/view/animation/Animation;
    const-wide/16 v5, 0xfa

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 674
    new-instance v9, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v9}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v9}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 675
    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 676
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    int-to-float v10, v8

    int-to-float v11, v3

    invoke-direct {v9, v7, v10, v7, v11}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v7, v9

    .line 677
    .local v7, "trans2":Landroid/view/animation/Animation;
    invoke-virtual {v7, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 678
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 679
    invoke-virtual {v7, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 681
    new-instance v0, Lcom/android/internal/widget/SlidingTab$2;

    invoke-direct {v0, p0, p1, v8, v3}, Lcom/android/internal/widget/SlidingTab$2;-><init>(Lcom/android/internal/widget/SlidingTab;ZII)V

    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 710
    invoke-virtual {v1}, Lcom/android/internal/widget/SlidingTab$Slider;->hideTarget()V

    .line 711
    invoke-virtual {v1, v4, v7}, Lcom/android/internal/widget/SlidingTab$Slider;->startAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 712
    return-void
.end method
