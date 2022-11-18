.class public Landroid/view/ViewPropertyAnimator;
.super Ljava/lang/Object;
.source "ViewPropertyAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewPropertyAnimator$AnimatorEventListener;,
        Landroid/view/ViewPropertyAnimator$NameValuesHolder;,
        Landroid/view/ViewPropertyAnimator$PropertyBundle;
    }
.end annotation


# static fields
.field static final greylist-max-o ALPHA:I = 0x800

.field static final greylist-max-o NONE:I = 0x0

.field static final greylist-max-o ROTATION:I = 0x20

.field static final greylist-max-o ROTATION_X:I = 0x40

.field static final greylist-max-o ROTATION_Y:I = 0x80

.field static final greylist-max-o SCALE_X:I = 0x8

.field static final greylist-max-o SCALE_Y:I = 0x10

.field private static final greylist-max-o TRANSFORM_MASK:I = 0x7ff

.field static final greylist-max-o TRANSLATION_X:I = 0x1

.field static final greylist-max-o TRANSLATION_Y:I = 0x2

.field static final greylist-max-o TRANSLATION_Z:I = 0x4

.field static final greylist-max-o X:I = 0x100

.field static final greylist-max-o Y:I = 0x200

.field static final greylist-max-o Z:I = 0x400


# instance fields
.field private greylist-max-o mAnimationStarter:Ljava/lang/Runnable;

.field private greylist-max-o mAnimatorCleanupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/animation/Animator;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mAnimatorEventListener:Landroid/view/ViewPropertyAnimator$AnimatorEventListener;

.field private greylist-max-o mAnimatorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/animation/Animator;",
            "Landroid/view/ViewPropertyAnimator$PropertyBundle;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mAnimatorOnEndMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/animation/Animator;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mAnimatorOnStartMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/animation/Animator;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mAnimatorSetupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/animation/Animator;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDuration:J

.field private greylist-max-o mDurationSet:Z

.field private greylist-max-o mInterpolator:Landroid/animation/TimeInterpolator;

.field private greylist-max-o mInterpolatorSet:Z

.field private greylist-max-o mListener:Landroid/animation/Animator$AnimatorListener;

.field greylist-max-o mPendingAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewPropertyAnimator$NameValuesHolder;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPendingCleanupAction:Ljava/lang/Runnable;

.field private greylist-max-o mPendingOnEndAction:Ljava/lang/Runnable;

.field private greylist-max-o mPendingOnStartAction:Ljava/lang/Runnable;

.field private greylist-max-o mPendingSetupAction:Ljava/lang/Runnable;

.field private greylist-max-o mStartDelay:J

.field private greylist-max-o mStartDelaySet:Z

.field private greylist-max-o mTempValueAnimator:Landroid/animation/ValueAnimator;

.field private greylist-max-o mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field final greylist-max-o mView:Landroid/view/View;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAnimatorCleanupMap(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorCleanupMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAnimatorMap(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAnimatorOnEndMap(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorOnEndMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAnimatorOnStartMap(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorOnStartMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAnimatorSetupMap(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorSetupMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    iget-object p0, p0, Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUpdateListener(Landroid/view/ViewPropertyAnimator;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    iget-object p0, p0, Landroid/view/ViewPropertyAnimator;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetValue(Landroid/view/ViewPropertyAnimator;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setValue(IF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartAnimation(Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewPropertyAnimator;->startAnimation()V

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewPropertyAnimator;->mDurationSet:Z

    .line 78
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/ViewPropertyAnimator;->mStartDelay:J

    .line 84
    iput-boolean v0, p0, Landroid/view/ViewPropertyAnimator;->mStartDelaySet:Z

    .line 97
    iput-boolean v0, p0, Landroid/view/ViewPropertyAnimator;->mInterpolatorSet:Z

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;

    .line 107
    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 120
    new-instance v1, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;

    invoke-direct {v1, p0, v0}, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;-><init>(Landroid/view/ViewPropertyAnimator;Landroid/view/ViewPropertyAnimator$AnimatorEventListener-IA;)V

    iput-object v1, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorEventListener:Landroid/view/ViewPropertyAnimator$AnimatorEventListener;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Landroid/view/ViewPropertyAnimator$1;

    invoke-direct {v0, p0}, Landroid/view/ViewPropertyAnimator$1;-><init>(Landroid/view/ViewPropertyAnimator;)V

    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimationStarter:Ljava/lang/Runnable;

    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    .line 252
    iput-object p1, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    .line 253
    invoke-virtual {p1}, Landroid/view/View;->ensureTransformationInfo()V

    .line 254
    return-void
.end method

.method private greylist-max-o animateProperty(IF)V
    .locals 2
    .param p1, "constantName"    # I
    .param p2, "toValue"    # F

    .line 918
    invoke-direct {p0, p1}, Landroid/view/ViewPropertyAnimator;->getValue(I)F

    move-result v0

    .line 919
    .local v0, "fromValue":F
    sub-float v1, p2, v0

    .line 920
    .local v1, "deltaValue":F
    invoke-direct {p0, p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IFF)V

    .line 921
    return-void
.end method

.method private greylist-max-o animatePropertyBy(IF)V
    .locals 1
    .param p1, "constantName"    # I
    .param p2, "byValue"    # F

    .line 932
    invoke-direct {p0, p1}, Landroid/view/ViewPropertyAnimator;->getValue(I)F

    move-result v0

    .line 933
    .local v0, "fromValue":F
    invoke-direct {p0, p1, v0, p2}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IFF)V

    .line 934
    return-void
.end method

.method private greylist-max-o animatePropertyBy(IFF)V
    .locals 6
    .param p1, "constantName"    # I
    .param p2, "startValue"    # F
    .param p3, "byValue"    # F

    .line 946
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 947
    const/4 v0, 0x0

    .line 948
    .local v0, "animatorToCancel":Landroid/animation/Animator;
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 949
    .local v1, "animatorSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/animation/Animator;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 950
    .local v3, "runningAnim":Landroid/animation/Animator;
    iget-object v4, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewPropertyAnimator$PropertyBundle;

    .line 951
    .local v4, "bundle":Landroid/view/ViewPropertyAnimator$PropertyBundle;
    invoke-virtual {v4, p1}, Landroid/view/ViewPropertyAnimator$PropertyBundle;->cancel(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 956
    iget v5, v4, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mPropertyMask:I

    if-nez v5, :cond_0

    .line 958
    move-object v0, v3

    .line 959
    goto :goto_1

    .line 962
    .end local v3    # "runningAnim":Landroid/animation/Animator;
    .end local v4    # "bundle":Landroid/view/ViewPropertyAnimator$PropertyBundle;
    :cond_0
    goto :goto_0

    .line 963
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 964
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 968
    .end local v0    # "animatorToCancel":Landroid/animation/Animator;
    .end local v1    # "animatorSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/animation/Animator;>;"
    :cond_2
    new-instance v0, Landroid/view/ViewPropertyAnimator$NameValuesHolder;

    invoke-direct {v0, p1, p2, p3}, Landroid/view/ViewPropertyAnimator$NameValuesHolder;-><init>(IFF)V

    .line 969
    .local v0, "nameValuePair":Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 970
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget-object v2, p0, Landroid/view/ViewPropertyAnimator;->mAnimationStarter:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 971
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget-object v2, p0, Landroid/view/ViewPropertyAnimator;->mAnimationStarter:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 972
    return-void
.end method

.method private greylist-max-o getValue(I)F
    .locals 3
    .param p1, "propertyConstant"    # I

    .line 1032
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    .line 1033
    .local v0, "node":Landroid/graphics/RenderNode;
    sparse-switch p1, :sswitch_data_0

    .line 1059
    const/4 v1, 0x0

    return v1

    .line 1057
    :sswitch_0
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    return v1

    .line 1055
    :sswitch_1
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->getElevation()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->getTranslationZ()F

    move-result v2

    add-float/2addr v1, v2

    return v1

    .line 1053
    :sswitch_2
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mTop:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    return v1

    .line 1051
    :sswitch_3
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mLeft:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->getTranslationX()F

    move-result v2

    add-float/2addr v1, v2

    return v1

    .line 1045
    :sswitch_4
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->getRotationY()F

    move-result v1

    return v1

    .line 1043
    :sswitch_5
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->getRotationX()F

    move-result v1

    return v1

    .line 1041
    :sswitch_6
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->getRotationZ()F

    move-result v1

    return v1

    .line 1049
    :sswitch_7
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->getScaleY()F

    move-result v1

    return v1

    .line 1047
    :sswitch_8
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->getScaleX()F

    move-result v1

    return v1

    .line 1039
    :sswitch_9
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->getTranslationZ()F

    move-result v1

    return v1

    .line 1037
    :sswitch_a
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->getTranslationY()F

    move-result v1

    return v1

    .line 1035
    :sswitch_b
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->getTranslationX()F

    move-result v1

    return v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_a
        0x4 -> :sswitch_9
        0x8 -> :sswitch_8
        0x10 -> :sswitch_7
        0x20 -> :sswitch_6
        0x40 -> :sswitch_5
        0x80 -> :sswitch_4
        0x100 -> :sswitch_3
        0x200 -> :sswitch_2
        0x400 -> :sswitch_1
        0x800 -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o setValue(IF)V
    .locals 2
    .param p1, "propertyConstant"    # I
    .param p2, "value"    # F

    .line 983
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    .line 984
    .local v0, "renderNode":Landroid/graphics/RenderNode;
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1019
    :sswitch_0
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setAlphaInternal(F)V

    .line 1020
    invoke-virtual {v0, p2}, Landroid/graphics/RenderNode;->setAlpha(F)Z

    goto :goto_0

    .line 1016
    :sswitch_1
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->getElevation()F

    move-result v1

    sub-float v1, p2, v1

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setTranslationZ(F)Z

    .line 1017
    goto :goto_0

    .line 1013
    :sswitch_2
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mTop:I

    int-to-float v1, v1

    sub-float v1, p2, v1

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setTranslationY(F)Z

    .line 1014
    goto :goto_0

    .line 1010
    :sswitch_3
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mLeft:I

    int-to-float v1, v1

    sub-float v1, p2, v1

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setTranslationX(F)Z

    .line 1011
    goto :goto_0

    .line 1001
    :sswitch_4
    invoke-virtual {v0, p2}, Landroid/graphics/RenderNode;->setRotationY(F)Z

    .line 1002
    goto :goto_0

    .line 998
    :sswitch_5
    invoke-virtual {v0, p2}, Landroid/graphics/RenderNode;->setRotationX(F)Z

    .line 999
    goto :goto_0

    .line 995
    :sswitch_6
    invoke-virtual {v0, p2}, Landroid/graphics/RenderNode;->setRotationZ(F)Z

    .line 996
    goto :goto_0

    .line 1007
    :sswitch_7
    invoke-virtual {v0, p2}, Landroid/graphics/RenderNode;->setScaleY(F)Z

    .line 1008
    goto :goto_0

    .line 1004
    :sswitch_8
    invoke-virtual {v0, p2}, Landroid/graphics/RenderNode;->setScaleX(F)Z

    .line 1005
    goto :goto_0

    .line 992
    :sswitch_9
    invoke-virtual {v0, p2}, Landroid/graphics/RenderNode;->setTranslationZ(F)Z

    .line 993
    goto :goto_0

    .line 989
    :sswitch_a
    invoke-virtual {v0, p2}, Landroid/graphics/RenderNode;->setTranslationY(F)Z

    .line 990
    goto :goto_0

    .line 986
    :sswitch_b
    invoke-virtual {v0, p2}, Landroid/graphics/RenderNode;->setTranslationX(F)Z

    .line 987
    nop

    .line 1023
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_a
        0x4 -> :sswitch_9
        0x8 -> :sswitch_8
        0x10 -> :sswitch_7
        0x20 -> :sswitch_6
        0x40 -> :sswitch_5
        0x80 -> :sswitch_4
        0x100 -> :sswitch_3
        0x200 -> :sswitch_2
        0x400 -> :sswitch_1
        0x800 -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o startAnimation()V
    .locals 7

    .line 863
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setHasTransientState(Z)V

    .line 864
    new-array v0, v1, [F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 865
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    .line 866
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 867
    .local v1, "nameValueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewPropertyAnimator$NameValuesHolder;>;"
    iget-object v2, p0, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 868
    const/4 v2, 0x0

    .line 869
    .local v2, "propertyMask":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 870
    .local v3, "propertyCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 871
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewPropertyAnimator$NameValuesHolder;

    .line 872
    .local v5, "nameValuesHolder":Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    iget v6, v5, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mNameConstant:I

    or-int/2addr v2, v6

    .line 870
    .end local v5    # "nameValuesHolder":Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 874
    .end local v4    # "i":I
    :cond_0
    iget-object v4, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    new-instance v5, Landroid/view/ViewPropertyAnimator$PropertyBundle;

    invoke-direct {v5, v2, v1}, Landroid/view/ViewPropertyAnimator$PropertyBundle;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    iget-object v4, p0, Landroid/view/ViewPropertyAnimator;->mPendingSetupAction:Ljava/lang/Runnable;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 876
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorSetupMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    iput-object v5, p0, Landroid/view/ViewPropertyAnimator;->mPendingSetupAction:Ljava/lang/Runnable;

    .line 879
    :cond_1
    iget-object v4, p0, Landroid/view/ViewPropertyAnimator;->mPendingCleanupAction:Ljava/lang/Runnable;

    if-eqz v4, :cond_2

    .line 880
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorCleanupMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    iput-object v5, p0, Landroid/view/ViewPropertyAnimator;->mPendingCleanupAction:Ljava/lang/Runnable;

    .line 883
    :cond_2
    iget-object v4, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnStartAction:Ljava/lang/Runnable;

    if-eqz v4, :cond_3

    .line 884
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorOnStartMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    iput-object v5, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnStartAction:Ljava/lang/Runnable;

    .line 887
    :cond_3
    iget-object v4, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnEndAction:Ljava/lang/Runnable;

    if-eqz v4, :cond_4

    .line 888
    iget-object v6, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorOnEndMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    iput-object v5, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnEndAction:Ljava/lang/Runnable;

    .line 891
    :cond_4
    iget-object v4, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorEventListener:Landroid/view/ViewPropertyAnimator$AnimatorEventListener;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 892
    iget-object v4, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorEventListener:Landroid/view/ViewPropertyAnimator$AnimatorEventListener;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 893
    iget-boolean v4, p0, Landroid/view/ViewPropertyAnimator;->mStartDelaySet:Z

    if-eqz v4, :cond_5

    .line 894
    iget-wide v4, p0, Landroid/view/ViewPropertyAnimator;->mStartDelay:J

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 896
    :cond_5
    iget-boolean v4, p0, Landroid/view/ViewPropertyAnimator;->mDurationSet:Z

    if-eqz v4, :cond_6

    .line 897
    iget-wide v4, p0, Landroid/view/ViewPropertyAnimator;->mDuration:J

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 899
    :cond_6
    iget-boolean v4, p0, Landroid/view/ViewPropertyAnimator;->mInterpolatorSet:Z

    if-eqz v4, :cond_7

    .line 900
    iget-object v4, p0, Landroid/view/ViewPropertyAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 902
    :cond_7
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 903
    return-void
.end method


# virtual methods
.method public whitelist alpha(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .line 737
    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    .line 738
    return-object p0
.end method

.method public whitelist alphaBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .line 750
    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    .line 751
    return-object p0
.end method

.method public whitelist cancel()V
    .locals 4

    .line 427
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 428
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    .line 429
    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 430
    .local v0, "mAnimatorMapCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/animation/Animator;Landroid/view/ViewPropertyAnimator$PropertyBundle;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 431
    .local v1, "animatorSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/animation/Animator;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 432
    .local v3, "runningAnim":Landroid/animation/Animator;
    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    .line 433
    .end local v3    # "runningAnim":Landroid/animation/Animator;
    goto :goto_0

    .line 435
    .end local v0    # "mAnimatorMapCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/animation/Animator;Landroid/view/ViewPropertyAnimator$PropertyBundle;>;"
    .end local v1    # "animatorSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/animation/Animator;>;"
    :cond_0
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 436
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mPendingSetupAction:Ljava/lang/Runnable;

    .line 437
    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mPendingCleanupAction:Ljava/lang/Runnable;

    .line 438
    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnStartAction:Ljava/lang/Runnable;

    .line 439
    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnEndAction:Ljava/lang/Runnable;

    .line 440
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mAnimationStarter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 441
    return-void
.end method

.method public whitelist getDuration()J
    .locals 2

    .line 283
    iget-boolean v0, p0, Landroid/view/ViewPropertyAnimator;->mDurationSet:Z

    if-eqz v0, :cond_0

    .line 284
    iget-wide v0, p0, Landroid/view/ViewPropertyAnimator;->mDuration:J

    return-wide v0

    .line 288
    :cond_0
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mTempValueAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 289
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mTempValueAnimator:Landroid/animation/ValueAnimator;

    .line 291
    :cond_1
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mTempValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 352
    iget-boolean v0, p0, Landroid/view/ViewPropertyAnimator;->mInterpolatorSet:Z

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0

    .line 357
    :cond_0
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mTempValueAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 358
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mTempValueAnimator:Landroid/animation/ValueAnimator;

    .line 360
    :cond_1
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mTempValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getListener()Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 380
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method public whitelist getStartDelay()J
    .locals 2

    .line 304
    iget-boolean v0, p0, Landroid/view/ViewPropertyAnimator;->mStartDelaySet:Z

    if-eqz v0, :cond_0

    .line 305
    iget-wide v0, p0, Landroid/view/ViewPropertyAnimator;->mStartDelay:J

    return-wide v0

    .line 309
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method greylist-max-o getUpdateListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1

    .line 404
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object v0
.end method

.method greylist-max-o hasActions()Z
    .locals 1

    .line 851
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mPendingSetupAction:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mPendingCleanupAction:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnStartAction:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnEndAction:Ljava/lang/Runnable;

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

.method public whitelist rotation(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .line 530
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    .line 531
    return-object p0
.end method

.method public whitelist rotationBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .line 543
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    .line 544
    return-object p0
.end method

.method public whitelist rotationX(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .line 556
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    .line 557
    return-object p0
.end method

.method public whitelist rotationXBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .line 569
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    .line 570
    return-object p0
.end method

.method public whitelist rotationY(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .line 582
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    .line 583
    return-object p0
.end method

.method public whitelist rotationYBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .line 595
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    .line 596
    return-object p0
.end method

.method public whitelist scaleX(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .line 685
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    .line 686
    return-object p0
.end method

.method public whitelist scaleXBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .line 698
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    .line 699
    return-object p0
.end method

.method public whitelist scaleY(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .line 711
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    .line 712
    return-object p0
.end method

.method public whitelist scaleYBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .line 724
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    .line 725
    return-object p0
.end method

.method public whitelist setDuration(J)Landroid/view/ViewPropertyAnimator;
    .locals 3
    .param p1, "duration"    # J

    .line 265
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewPropertyAnimator;->mDurationSet:Z

    .line 270
    iput-wide p1, p0, Landroid/view/ViewPropertyAnimator;->mDuration:J

    .line 271
    return-object p0

    .line 266
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewPropertyAnimator;->mInterpolatorSet:Z

    .line 342
    iput-object p1, p0, Landroid/view/ViewPropertyAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 343
    return-object p0
.end method

.method public whitelist setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
    .locals 0
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 375
    iput-object p1, p0, Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;

    .line 376
    return-object p0
.end method

.method public whitelist setStartDelay(J)Landroid/view/ViewPropertyAnimator;
    .locals 3
    .param p1, "startDelay"    # J

    .line 322
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewPropertyAnimator;->mStartDelaySet:Z

    .line 327
    iput-wide p1, p0, Landroid/view/ViewPropertyAnimator;->mStartDelay:J

    .line 328
    return-object p0

    .line 323
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animators cannot have negative start delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;
    .locals 0
    .param p1, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 399
    iput-object p1, p0, Landroid/view/ViewPropertyAnimator;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 400
    return-object p0
.end method

.method public whitelist start()V
    .locals 2

    .line 417
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mViewExt:Landroid/view/IViewExt;

    invoke-interface {v0, p0}, Landroid/view/IViewExt;->checkNeedBoostedPropertyAnimator(Landroid/view/ViewPropertyAnimator;)V

    .line 419
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mAnimationStarter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 420
    invoke-direct {p0}, Landroid/view/ViewPropertyAnimator;->startAnimation()V

    .line 421
    return-void
.end method

.method public whitelist translationX(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .line 608
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    .line 609
    return-object p0
.end method

.method public whitelist translationXBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .line 621
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    .line 622
    return-object p0
.end method

.method public whitelist translationY(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .line 634
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    .line 635
    return-object p0
.end method

.method public whitelist translationYBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .line 647
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    .line 648
    return-object p0
.end method

.method public whitelist translationZ(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .line 660
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    .line 661
    return-object p0
.end method

.method public whitelist translationZBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .line 673
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    .line 674
    return-object p0
.end method

.method public whitelist withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 843
    iput-object p1, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnEndAction:Ljava/lang/Runnable;

    .line 844
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorOnEndMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 845
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorOnEndMap:Ljava/util/HashMap;

    .line 847
    :cond_0
    return-object p0
.end method

.method public whitelist withLayer()Landroid/view/ViewPropertyAnimator;
    .locals 2

    .line 776
    new-instance v0, Landroid/view/ViewPropertyAnimator$2;

    invoke-direct {v0, p0}, Landroid/view/ViewPropertyAnimator$2;-><init>(Landroid/view/ViewPropertyAnimator;)V

    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mPendingSetupAction:Ljava/lang/Runnable;

    .line 785
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v0

    .line 786
    .local v0, "currentLayerType":I
    new-instance v1, Landroid/view/ViewPropertyAnimator$3;

    invoke-direct {v1, p0, v0}, Landroid/view/ViewPropertyAnimator$3;-><init>(Landroid/view/ViewPropertyAnimator;I)V

    iput-object v1, p0, Landroid/view/ViewPropertyAnimator;->mPendingCleanupAction:Ljava/lang/Runnable;

    .line 792
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorSetupMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 793
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorSetupMap:Ljava/util/HashMap;

    .line 795
    :cond_0
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorCleanupMap:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 796
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorCleanupMap:Ljava/util/HashMap;

    .line 799
    :cond_1
    return-object p0
.end method

.method public whitelist withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 814
    iput-object p1, p0, Landroid/view/ViewPropertyAnimator;->mPendingOnStartAction:Ljava/lang/Runnable;

    .line 815
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorOnStartMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 816
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/view/ViewPropertyAnimator;->mAnimatorOnStartMap:Ljava/util/HashMap;

    .line 818
    :cond_0
    return-object p0
.end method

.method public whitelist x(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .line 452
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    .line 453
    return-object p0
.end method

.method public whitelist xBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .line 465
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    .line 466
    return-object p0
.end method

.method public whitelist y(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .line 478
    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    .line 479
    return-object p0
.end method

.method public whitelist yBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .line 491
    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    .line 492
    return-object p0
.end method

.method public whitelist z(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .line 504
    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animateProperty(IF)V

    .line 505
    return-object p0
.end method

.method public whitelist zBy(F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "value"    # F

    .line 517
    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Landroid/view/ViewPropertyAnimator;->animatePropertyBy(IF)V

    .line 518
    return-object p0
.end method
