.class Landroid/widget/OverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SplineOverScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/OverScroller$SplineOverScroller$SplineOverScrollerWrapper;
    }
.end annotation


# static fields
.field private static final greylist-max-o BALLISTIC:I = 0x2

.field private static final greylist-max-o CUBIC:I = 0x1

.field private static greylist-max-o DECELERATION_RATE:F = 0.0f

.field private static final greylist-max-o END_TENSION:F = 1.0f

.field private static final greylist-max-o GRAVITY:F = 2000.0f

.field private static final greylist-max-o INFLEXION:F = 0.35f

.field private static final greylist-max-o NB_SAMPLES:I = 0x64

.field private static final greylist-max-o P1:F = 0.175f

.field private static final greylist-max-o P2:F = 0.35000002f

.field private static final greylist-max-o SPLINE:I = 0x0

.field private static final greylist-max-o SPLINE_POSITION:[F

.field private static final greylist-max-o SPLINE_TIME:[F

.field private static final greylist-max-o START_TENSION:F = 0.5f


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private greylist mCurrVelocity:F

.field private greylist-max-o mCurrentPosition:I

.field private greylist-max-o mDeceleration:F

.field private greylist-max-o mDuration:I

.field private greylist-max-o mFinal:I

.field private greylist-max-o mFinished:Z

.field private greylist-max-o mFlingFriction:F

.field private greylist-max-o mOver:I

.field public blacklist mOverScrollerSocExt:Landroid/widget/IOverScrollerSocExt;

.field private greylist-max-o mPhysicalCoeff:F

.field private greylist-max-o mSplineDistance:I

.field private greylist-max-o mSplineDuration:I

.field private blacklist mSplineOverScrollerExt:Landroid/widget/ISplineOverScrollerExt;

.field public blacklist mSplineOverScrollerSocExt:Landroid/widget/ISplineOverScrollerSocExt;

.field private blacklist mSplineOverScrollerWrapper:Landroid/widget/ISplineOverScrollerWrapper;

.field private greylist-max-o mStart:I

.field private greylist-max-o mStartTime:J

.field private greylist-max-o mState:I

.field private greylist-max-o mVelocity:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/widget/OverScroller$SplineOverScroller;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrVelocity(Landroid/widget/OverScroller$SplineOverScroller;)F
    .locals 0

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentPosition(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 0

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDuration(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 0

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFinal(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 0

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFinished(Landroid/widget/OverScroller$SplineOverScroller;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlingFriction(Landroid/widget/OverScroller$SplineOverScroller;)F
    .locals 0

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhysicalCoeff(Landroid/widget/OverScroller$SplineOverScroller;)F
    .locals 0

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSplineOverScrollerExt(Landroid/widget/OverScroller$SplineOverScroller;)Landroid/widget/ISplineOverScrollerExt;
    .locals 0

    iget-object p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerExt:Landroid/widget/ISplineOverScrollerExt;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStart(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 0

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartTime(Landroid/widget/OverScroller$SplineOverScroller;)J
    .locals 2

    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmState(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 0

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFinished(Landroid/widget/OverScroller$SplineOverScroller;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSplineFlingDistance(Landroid/widget/OverScroller$SplineOverScroller;I)D
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSplineFlingDuration(Landroid/widget/OverScroller$SplineOverScroller;I)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSPLINE_POSITION()[F
    .locals 1

    sget-object v0, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 21

    .line 877
    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    .line 885
    const/16 v0, 0x65

    new-array v1, v0, [F

    sput-object v1, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 886
    new-array v0, v0, [F

    sput-object v0, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    .line 893
    const/4 v0, 0x0

    .line 894
    .local v0, "x_min":F
    const/4 v1, 0x0

    .line 895
    .local v1, "y_min":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x64

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v2, v3, :cond_4

    .line 896
    int-to-float v3, v2

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v5, v3, v5

    .line 898
    .local v5, "alpha":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 901
    .local v3, "x_max":F
    :goto_1
    sub-float v6, v3, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v0

    .line 902
    .local v6, "x":F
    const/high16 v8, 0x40400000    # 3.0f

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float/2addr v9, v10

    .line 903
    .local v9, "coef":F
    sub-float v10, v4, v6

    const v11, 0x3e333333    # 0.175f

    mul-float/2addr v10, v11

    const v12, 0x3eb33334    # 0.35000002f

    mul-float v13, v6, v12

    add-float/2addr v10, v13

    mul-float/2addr v10, v9

    mul-float v13, v6, v6

    mul-float/2addr v13, v6

    add-float/2addr v10, v13

    .line 904
    .local v10, "tx":F
    sub-float v13, v10, v5

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-double v13, v13

    const-wide v15, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v13, v13, v15

    if-gez v13, :cond_2

    .line 908
    sget-object v13, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    sub-float v14, v4, v6

    const/high16 v17, 0x3f000000    # 0.5f

    mul-float v14, v14, v17

    add-float/2addr v14, v6

    mul-float/2addr v14, v9

    mul-float v18, v6, v6

    mul-float v18, v18, v6

    add-float v14, v14, v18

    aput v14, v13, v2

    .line 910
    const/high16 v13, 0x3f800000    # 1.0f

    .line 913
    .local v13, "y_max":F
    :goto_2
    sub-float v14, v13, v1

    div-float/2addr v14, v7

    add-float/2addr v14, v1

    .line 914
    .local v14, "y":F
    mul-float v18, v14, v8

    sub-float v19, v4, v14

    mul-float v9, v18, v19

    .line 915
    sub-float v18, v4, v14

    mul-float v18, v18, v17

    add-float v18, v18, v14

    mul-float v18, v18, v9

    mul-float v19, v14, v14

    mul-float v19, v19, v14

    add-float v18, v18, v19

    .line 916
    .local v18, "dy":F
    sub-float v19, v18, v5

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move/from16 v20, v9

    .end local v9    # "coef":F
    .local v20, "coef":F
    float-to-double v8, v7

    cmpg-double v7, v8, v15

    if-gez v7, :cond_0

    .line 920
    sget-object v7, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    sub-float/2addr v4, v14

    mul-float/2addr v4, v11

    mul-float/2addr v12, v14

    add-float/2addr v4, v12

    mul-float v9, v20, v4

    mul-float v4, v14, v14

    mul-float/2addr v4, v14

    add-float/2addr v9, v4

    aput v9, v7, v2

    .line 895
    .end local v3    # "x_max":F
    .end local v5    # "alpha":F
    .end local v6    # "x":F
    .end local v10    # "tx":F
    .end local v13    # "y_max":F
    .end local v14    # "y":F
    .end local v18    # "dy":F
    .end local v20    # "coef":F
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 917
    .restart local v3    # "x_max":F
    .restart local v5    # "alpha":F
    .restart local v6    # "x":F
    .restart local v10    # "tx":F
    .restart local v13    # "y_max":F
    .restart local v14    # "y":F
    .restart local v18    # "dy":F
    .restart local v20    # "coef":F
    :cond_0
    cmpl-float v7, v18, v5

    if-lez v7, :cond_1

    move v13, v14

    move/from16 v9, v20

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x40400000    # 3.0f

    goto :goto_2

    .line 918
    :cond_1
    move v1, v14

    move/from16 v9, v20

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x40400000    # 3.0f

    goto :goto_2

    .line 905
    .end local v13    # "y_max":F
    .end local v14    # "y":F
    .end local v18    # "dy":F
    .end local v20    # "coef":F
    .restart local v9    # "coef":F
    :cond_2
    cmpl-float v7, v10, v5

    if-lez v7, :cond_3

    move v3, v6

    goto/16 :goto_1

    .line 906
    :cond_3
    move v0, v6

    goto/16 :goto_1

    .line 922
    .end local v2    # "i":I
    .end local v3    # "x_max":F
    .end local v5    # "alpha":F
    .end local v6    # "x":F
    .end local v9    # "coef":F
    .end local v10    # "tx":F
    :cond_4
    sget-object v2, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    sget-object v5, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aput v4, v5, v3

    aput v4, v2, v3

    .line 923
    .end local v0    # "x_min":F
    .end local v1    # "y_min":F
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 829
    const-class v0, Landroid/widget/ISplineOverScrollerSocExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ISplineOverScrollerSocExt;

    iput-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerSocExt:Landroid/widget/ISplineOverScrollerSocExt;

    .line 866
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 869
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 1343
    new-instance v0, Landroid/widget/OverScroller$SplineOverScroller$SplineOverScrollerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/OverScroller$SplineOverScroller$SplineOverScrollerWrapper;-><init>(Landroid/widget/OverScroller$SplineOverScroller;Landroid/widget/OverScroller$SplineOverScroller$SplineOverScrollerWrapper-IA;)V

    iput-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerWrapper:Landroid/widget/ISplineOverScrollerWrapper;

    .line 1345
    const-class v0, Landroid/widget/ISplineOverScrollerExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ISplineOverScrollerExt;

    iput-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerExt:Landroid/widget/ISplineOverScrollerExt;

    .line 935
    iput-object p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mContext:Landroid/content/Context;

    .line 936
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 937
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    .line 938
    .local v0, "ppi":F
    const v1, 0x43c10b3d

    mul-float/2addr v1, v0

    const v2, 0x3f570a3d    # 0.84f

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    .line 942
    return-void
.end method

.method private greylist-max-o adjustDuration(III)V
    .locals 10
    .param p1, "start"    # I
    .param p2, "oldFinal"    # I
    .param p3, "newFinal"    # I

    .line 960
    sub-int v0, p2, p1

    .line 961
    .local v0, "oldDistance":I
    sub-int v1, p3, p1

    .line 962
    .local v1, "newDistance":I
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 963
    .local v2, "x":F
    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v4, v2, v3

    float-to-int v4, v4

    .line 964
    .local v4, "index":I
    const/16 v5, 0x64

    if-ge v4, v5, :cond_0

    .line 965
    int-to-float v5, v4

    div-float/2addr v5, v3

    .line 966
    .local v5, "x_inf":F
    add-int/lit8 v6, v4, 0x1

    int-to-float v6, v6

    div-float/2addr v6, v3

    .line 967
    .local v6, "x_sup":F
    sget-object v3, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aget v7, v3, v4

    .line 968
    .local v7, "t_inf":F
    add-int/lit8 v8, v4, 0x1

    aget v3, v3, v8

    .line 969
    .local v3, "t_sup":F
    sub-float v8, v2, v5

    sub-float v9, v6, v5

    div-float/2addr v8, v9

    sub-float v9, v3, v7

    mul-float/2addr v8, v9

    add-float/2addr v8, v7

    .line 970
    .local v8, "timeCoef":F
    iget v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-float v9, v9

    mul-float/2addr v9, v8

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 972
    .end local v3    # "t_sup":F
    .end local v5    # "x_inf":F
    .end local v6    # "x_sup":F
    .end local v7    # "t_inf":F
    .end local v8    # "timeCoef":F
    :cond_0
    return-void
.end method

.method private greylist-max-o fitOnBounceCurve(III)V
    .locals 9
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .line 1149
    neg-int v0, p3

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v0, v1

    .line 1151
    .local v0, "durationToApex":F
    int-to-float v2, p3

    int-to-float v3, p3

    mul-float/2addr v2, v3

    .line 1152
    .local v2, "velocitySquared":F
    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v2, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v3, v1

    .line 1153
    .local v3, "distanceToApex":F
    sub-int v1, p2, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    .line 1154
    .local v1, "distanceToEdge":F
    add-float v4, v3, v1

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 1155
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    div-double/2addr v4, v6

    .line 1154
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 1156
    .local v4, "totalDuration":F
    iget-wide v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-float v7, v4, v0

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    int-to-long v7, v7

    sub-long/2addr v5, v7

    iput-wide v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 1157
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 1158
    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    neg-float v5, v5

    mul-float/2addr v5, v4

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 1159
    return-void
.end method

.method private static greylist-max-o getDeceleration(I)F
    .locals 1
    .param p0, "velocity"    # I

    .line 952
    if-lez p0, :cond_0

    const/high16 v0, -0x3b060000    # -2000.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x44fa0000    # 2000.0f

    :goto_0
    return v0
.end method

.method private greylist-max-o getSplineDeceleration(I)D
    .locals 3
    .param p1, "velocity"    # I

    .line 1121
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private greylist-max-o getSplineFlingDistance(I)D
    .locals 8
    .param p1, "velocity"    # I

    .line 1125
    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    .line 1126
    .local v0, "l":D
    sget v2, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 1128
    .local v2, "decelMinusOne":D
    iget-object v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerSocExt:Landroid/widget/ISplineOverScrollerSocExt;

    invoke-interface {v4}, Landroid/widget/ISplineOverScrollerSocExt;->isVariableRefreshRateEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerSocExt:Landroid/widget/ISplineOverScrollerSocExt;

    invoke-interface {v4}, Landroid/widget/ISplineOverScrollerSocExt;->isSmoothFlingEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1129
    iget-object v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerSocExt:Landroid/widget/ISplineOverScrollerSocExt;

    invoke-interface {v4}, Landroid/widget/ISplineOverScrollerSocExt;->getSplineFlingDistance()D

    move-result-wide v4

    return-wide v4

    .line 1132
    :cond_0
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    sget v6, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v6, v6

    div-double/2addr v6, v2

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method private greylist-max-o getSplineFlingDuration(I)I
    .locals 8
    .param p1, "velocity"    # I

    .line 1137
    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    .line 1138
    .local v0, "l":D
    sget v2, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 1140
    .local v2, "decelMinusOne":D
    iget-object v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerSocExt:Landroid/widget/ISplineOverScrollerSocExt;

    invoke-interface {v4}, Landroid/widget/ISplineOverScrollerSocExt;->isVariableRefreshRateEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerSocExt:Landroid/widget/ISplineOverScrollerSocExt;

    invoke-interface {v4}, Landroid/widget/ISplineOverScrollerSocExt;->isSmoothFlingEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1141
    iget-object v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerSocExt:Landroid/widget/ISplineOverScrollerSocExt;

    invoke-interface {v4}, Landroid/widget/ISplineOverScrollerSocExt;->getSplineDuration()I

    move-result v4

    return v4

    .line 1144
    :cond_0
    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v6, v0, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v6, v4

    double-to-int v4, v6

    return v4
.end method

.method private greylist-max-o onEdgeReached()V
    .locals 7

    .line 1204
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v1, v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    .line 1205
    .local v1, "velocitySquared":F
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    div-float v0, v1, v0

    .line 1206
    .local v0, "distance":F
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    .line 1208
    .local v3, "sign":F
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v5, v4

    cmpl-float v5, v0, v5

    if-lez v5, :cond_0

    .line 1210
    neg-float v5, v3

    mul-float/2addr v5, v1

    int-to-float v6, v4

    mul-float/2addr v6, v2

    div-float/2addr v5, v6

    iput v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 1211
    int-to-float v0, v4

    .line 1214
    :cond_0
    float-to-int v2, v0

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 1215
    const/4 v2, 0x2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 1216
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    if-lez v4, :cond_1

    move v5, v0

    goto :goto_0

    :cond_1
    neg-float v5, v0

    :goto_0
    float-to-int v5, v5

    add-int/2addr v2, v5

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 1217
    const/high16 v2, 0x447a0000    # 1000.0f

    int-to-float v4, v4

    mul-float/2addr v4, v2

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v4, v2

    float-to-int v2, v4

    neg-int v2, v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 1218
    return-void
.end method

.method private greylist-max-o startAfterEdge(IIII)V
    .locals 17
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "velocity"    # I

    .line 1168
    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p3

    move/from16 v9, p4

    const/4 v0, 0x1

    move/from16 v10, p2

    if-le v7, v10, :cond_0

    if-ge v7, v8, :cond_0

    .line 1169
    const-string v1, "OverScroller"

    const-string/jumbo v2, "startAfterEdge called from a valid position"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    iput-boolean v0, v6, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 1171
    return-void

    .line 1173
    :cond_0
    const/4 v1, 0x0

    if-le v7, v8, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    move v11, v2

    .line 1174
    .local v11, "positive":Z
    if-eqz v11, :cond_2

    move v2, v8

    goto :goto_1

    :cond_2
    move v2, v10

    :goto_1
    move v12, v2

    .line 1175
    .local v12, "edge":I
    sub-int v13, v7, v12

    .line 1176
    .local v13, "overDistance":I
    mul-int v2, v13, v9

    if-ltz v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    move v14, v0

    .line 1177
    .local v14, "keepIncreasing":Z
    if-eqz v14, :cond_4

    .line 1179
    invoke-direct {v6, v7, v12, v9}, Landroid/widget/OverScroller$SplineOverScroller;->startBounceAfterEdge(III)V

    goto :goto_5

    .line 1181
    :cond_4
    invoke-direct {v6, v9}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v15

    .line 1182
    .local v15, "totalDistance":D
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v0, v0

    cmpl-double v0, v15, v0

    if-lez v0, :cond_7

    .line 1183
    if-eqz v11, :cond_5

    move v3, v10

    goto :goto_3

    :cond_5
    move v3, v7

    :goto_3
    if-eqz v11, :cond_6

    move v4, v7

    goto :goto_4

    :cond_6
    move v4, v8

    :goto_4
    iget v5, v6, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    goto :goto_5

    .line 1185
    :cond_7
    invoke-direct {v6, v7, v12, v9}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 1188
    .end local v15    # "totalDistance":D
    :goto_5
    return-void
.end method

.method private greylist-max-o startBounceAfterEdge(III)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .line 1162
    if-nez p3, :cond_0

    sub-int v0, p1, p2

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 1163
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->fitOnBounceCurve(III)V

    .line 1164
    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    .line 1165
    return-void
.end method

.method private greylist-max-o startSpringback(III)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .line 1051
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 1052
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 1053
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 1054
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 1055
    sub-int v0, p1, p2

    .line 1056
    .local v0, "delta":I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 1058
    neg-int v1, v0

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 1059
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 1060
    int-to-double v1, v0

    const-wide/high16 v3, -0x4000000000000000L    # -2.0

    mul-double/2addr v1, v3

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    float-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 1061
    return-void
.end method


# virtual methods
.method greylist-max-o continueWhenFinished()Z
    .locals 6

    .line 1221
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1238
    :pswitch_0
    iget-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 1239
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 1240
    goto :goto_0

    .line 1242
    :pswitch_1
    return v1

    .line 1224
    :pswitch_2
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    if-ge v0, v2, :cond_0

    .line 1226
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 1228
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 1229
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 1230
    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 1231
    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    goto :goto_0

    .line 1234
    :cond_0
    return v1

    .line 1245
    :goto_0
    invoke-virtual {p0}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    .line 1246
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method greylist-max-o extendDuration(I)V
    .locals 4
    .param p1, "extend"    # I

    .line 1022
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 1023
    .local v0, "time":J
    iget-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    .line 1024
    .local v2, "elapsedTime":I
    add-int v3, v2, p1

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 1025
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 1026
    return-void
.end method

.method greylist-max-o finish()V
    .locals 2

    .line 990
    iget-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerSocExt:Landroid/widget/ISplineOverScrollerSocExt;

    invoke-interface {v0}, Landroid/widget/ISplineOverScrollerSocExt;->isVariableRefreshRateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerSocExt:Landroid/widget/ISplineOverScrollerSocExt;

    invoke-interface {v0}, Landroid/widget/ISplineOverScrollerSocExt;->perfHintFinish()V

    .line 996
    :cond_0
    iget-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOverScrollerSocExt:Landroid/widget/IOverScrollerSocExt;

    if-eqz v0, :cond_1

    .line 997
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/widget/IOverScrollerSocExt;->hookScrollPerfHint(Ljava/lang/Object;Z)V

    .line 1000
    :cond_1
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 1006
    iget-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerExt:Landroid/widget/ISplineOverScrollerExt;

    invoke-interface {v0}, Landroid/widget/ISplineOverScrollerExt;->hookResetVeloAccuCount()V

    .line 1008
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 1011
    iget-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerExt:Landroid/widget/ISplineOverScrollerExt;

    invoke-interface {v0, p0}, Landroid/widget/ISplineOverScrollerExt;->updateScrollerStateToIdle(Ljava/lang/Object;)V

    .line 1013
    return-void
.end method

.method greylist-max-o fling(IIIII)V
    .locals 8
    .param p1, "start"    # I
    .param p2, "velocity"    # I
    .param p3, "min"    # I
    .param p4, "max"    # I
    .param p5, "over"    # I

    .line 1065
    iget-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerSocExt:Landroid/widget/ISplineOverScrollerSocExt;

    invoke-interface {v0}, Landroid/widget/ISplineOverScrollerSocExt;->isVariableRefreshRateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerSocExt:Landroid/widget/ISplineOverScrollerSocExt;

    int-to-float v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ISplineOverScrollerSocExt;->perfHintStart(F)V

    .line 1071
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1072
    .local v0, "now":J
    iget-object v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerExt:Landroid/widget/ISplineOverScrollerExt;

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    iget-boolean v7, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    move-wide v3, v0

    move v6, p2

    invoke-interface/range {v2 .. v7}, Landroid/widget/ISplineOverScrollerExt;->hookStartFling(JFIZ)V

    .line 1077
    iget-object v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOverScrollerSocExt:Landroid/widget/IOverScrollerSocExt;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1078
    invoke-interface {v2, p0, v3}, Landroid/widget/IOverScrollerSocExt;->hookScrollPerfHint(Ljava/lang/Object;Z)V

    .line 1082
    :cond_1
    iput p5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 1083
    iput-boolean v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 1084
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v2, p2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1085
    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 1086
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 1087
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 1089
    if-gt p1, p4, :cond_6

    if-ge p1, p3, :cond_2

    goto :goto_0

    .line 1094
    :cond_2
    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 1095
    const-wide/16 v2, 0x0

    .line 1097
    .local v2, "totalDistance":D
    if-eqz p2, :cond_3

    .line 1100
    iget-object v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerExt:Landroid/widget/ISplineOverScrollerExt;

    iget-object v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mContext:Landroid/content/Context;

    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    invoke-interface {v4, v5, p2, v6}, Landroid/widget/ISplineOverScrollerExt;->hookEndFling(Landroid/content/Context;IF)Landroid/util/Pair;

    move-result-object v4

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 1101
    iget-object v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerExt:Landroid/widget/ISplineOverScrollerExt;

    iget-object v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mContext:Landroid/content/Context;

    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    invoke-interface {v4, v5, p2, v6}, Landroid/widget/ISplineOverScrollerExt;->hookEndFling(Landroid/content/Context;IF)Landroid/util/Pair;

    move-result-object v4

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 1105
    :cond_3
    int-to-float v4, p2

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    float-to-double v4, v4

    mul-double/2addr v4, v2

    double-to-int v4, v4

    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    .line 1106
    add-int/2addr v4, p1

    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 1109
    if-ge v4, p3, :cond_4

    .line 1110
    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, v5, v4, p3}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 1111
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 1114
    :cond_4
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    if-le v4, p4, :cond_5

    .line 1115
    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, v5, v4, p4}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 1116
    iput p4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 1118
    :cond_5
    return-void

    .line 1090
    .end local v2    # "totalDistance":D
    :cond_6
    :goto_0
    invoke-direct {p0, p1, p3, p4, p2}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 1091
    return-void
.end method

.method public blacklist getWrapper()Landroid/widget/ISplineOverScrollerWrapper;
    .locals 1

    .line 1349
    iget-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerWrapper:Landroid/widget/ISplineOverScrollerWrapper;

    return-object v0
.end method

.method greylist-max-o notifyEdgeReached(III)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "over"    # I

    .line 1192
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    if-nez v0, :cond_0

    .line 1193
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 1194
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 1197
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    invoke-direct {p0, p1, p2, p2, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 1199
    :cond_0
    return-void
.end method

.method greylist-max-o setFinalPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 1016
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 1017
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    sub-int v0, p1, v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    .line 1018
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 1019
    return-void
.end method

.method greylist-max-o setFriction(F)V
    .locals 2
    .param p1, "friction"    # F

    .line 926
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 928
    iget-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerSocExt:Landroid/widget/ISplineOverScrollerSocExt;

    invoke-interface {v0}, Landroid/widget/ISplineOverScrollerSocExt;->isVariableRefreshRateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerSocExt:Landroid/widget/ISplineOverScrollerSocExt;

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    invoke-interface {v0, v1}, Landroid/widget/ISplineOverScrollerSocExt;->setFlingFriction(F)V

    .line 932
    :cond_0
    return-void
.end method

.method greylist-max-o springback(III)Z
    .locals 4
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .line 1029
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 1032
    iget-object v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerExt:Landroid/widget/ISplineOverScrollerExt;

    invoke-interface {v1}, Landroid/widget/ISplineOverScrollerExt;->hookResetVeloAccuCount()V

    .line 1034
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 1035
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 1037
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 1038
    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 1040
    if-ge p1, p2, :cond_0

    .line 1041
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    .line 1042
    :cond_0
    if-le p1, p3, :cond_1

    .line 1043
    invoke-direct {p0, p1, p3, v1}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 1046
    :cond_1
    :goto_0
    iget-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    xor-int/2addr v0, v1

    return v0
.end method

.method greylist-max-o startScroll(III)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "distance"    # I
    .param p3, "duration"    # I

    .line 975
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 977
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 978
    add-int v1, p1, p2

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 980
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 981
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 984
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 985
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 986
    return-void
.end method

.method greylist-max-o update()Z
    .locals 20

    .line 1255
    move-object/from16 v0, p0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 1257
    .local v1, "time":J
    iget-object v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOverScrollerSocExt:Landroid/widget/IOverScrollerSocExt;

    if-eqz v3, :cond_0

    iget-wide v4, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    invoke-interface {v3, v1, v2, v4, v5}, Landroid/widget/IOverScrollerSocExt;->getAdjustedAnimationClock(JJ)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    .line 1259
    .local v3, "adjustedTime":J
    :goto_0
    iget-wide v5, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long v5, v3, v5

    .line 1263
    .local v5, "currentTime":J
    iget-object v7, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerExt:Landroid/widget/ISplineOverScrollerExt;

    invoke-interface {v7, v0, v5, v6}, Landroid/widget/ISplineOverScrollerExt;->updateScrollerStateToFling(Ljava/lang/Object;J)V

    .line 1265
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-gtz v7, :cond_2

    .line 1267
    iget v7, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    if-lez v7, :cond_1

    move v8, v9

    :cond_1
    return v8

    .line 1269
    :cond_2
    iget v7, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v10, v7

    cmp-long v7, v5, v10

    if-lez v7, :cond_3

    .line 1270
    return v8

    .line 1275
    :cond_3
    iget-object v7, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOverScrollerSocExt:Landroid/widget/IOverScrollerSocExt;

    if-eqz v7, :cond_4

    .line 1276
    invoke-interface {v7, v0, v9}, Landroid/widget/IOverScrollerSocExt;->hookScrollPerfHint(Ljava/lang/Object;Z)V

    .line 1279
    :cond_4
    const-wide/16 v7, 0x0

    .line 1280
    .local v7, "distance":D
    iget v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    const/high16 v11, 0x447a0000    # 1000.0f

    const/high16 v12, 0x40000000    # 2.0f

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_1

    .line 1316
    :pswitch_0
    long-to-float v10, v5

    div-float/2addr v10, v11

    .line 1317
    .local v10, "t":F
    iget v11, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v13, v11

    iget v14, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    mul-float v15, v14, v10

    add-float/2addr v13, v15

    iput v13, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1318
    int-to-float v11, v11

    mul-float/2addr v11, v10

    mul-float/2addr v14, v10

    mul-float/2addr v14, v10

    div-float/2addr v14, v12

    add-float/2addr v11, v14

    float-to-double v7, v11

    .line 1319
    goto/16 :goto_1

    .line 1323
    .end local v10    # "t":F
    :pswitch_1
    long-to-float v10, v5

    iget v11, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    .line 1324
    .restart local v10    # "t":F
    mul-float v11, v10, v10

    .line 1325
    .local v11, "t2":F
    iget v13, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v13, v13

    invoke-static {v13}, Ljava/lang/Math;->signum(F)F

    move-result v13

    .line 1326
    .local v13, "sign":F
    iget v14, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v15, v14

    mul-float/2addr v15, v13

    const/high16 v16, 0x40400000    # 3.0f

    mul-float v16, v16, v11

    mul-float/2addr v12, v10

    mul-float/2addr v12, v11

    sub-float v16, v16, v12

    mul-float v15, v15, v16

    float-to-double v7, v15

    .line 1327
    int-to-float v12, v14

    mul-float/2addr v12, v13

    const/high16 v14, 0x40c00000    # 6.0f

    mul-float/2addr v12, v14

    neg-float v14, v10

    add-float/2addr v14, v11

    mul-float/2addr v12, v14

    iput v12, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1328
    goto :goto_1

    .line 1283
    .end local v10    # "t":F
    .end local v11    # "t2":F
    .end local v13    # "sign":F
    :pswitch_2
    iget-object v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerSocExt:Landroid/widget/ISplineOverScrollerSocExt;

    invoke-interface {v10}, Landroid/widget/ISplineOverScrollerSocExt;->isVariableRefreshRateEnabled()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1284
    iget-object v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerSocExt:Landroid/widget/ISplineOverScrollerSocExt;

    invoke-interface {v10, v5, v6}, Landroid/widget/ISplineOverScrollerSocExt;->perfHintUpdate(J)V

    .line 1285
    iget-object v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerSocExt:Landroid/widget/ISplineOverScrollerSocExt;

    invoke-interface {v10}, Landroid/widget/ISplineOverScrollerSocExt;->getCurrentDistance()D

    move-result-wide v7

    .line 1286
    iget-object v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerSocExt:Landroid/widget/ISplineOverScrollerSocExt;

    invoke-interface {v10}, Landroid/widget/ISplineOverScrollerSocExt;->getCurrentVelocity()F

    move-result v10

    iput v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1287
    goto :goto_1

    .line 1291
    :cond_5
    long-to-float v10, v5

    iget v12, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v13, v12

    div-float/2addr v10, v13

    .line 1292
    .restart local v10    # "t":F
    const/high16 v13, 0x42c80000    # 100.0f

    mul-float v14, v10, v13

    float-to-int v14, v14

    .line 1293
    .local v14, "index":I
    const/high16 v15, 0x3f800000    # 1.0f

    .line 1294
    .local v15, "distanceCoef":F
    const/16 v16, 0x0

    .line 1300
    .local v16, "velocityCoef":F
    const/16 v9, 0x64

    if-ge v14, v9, :cond_6

    if-ltz v14, :cond_6

    .line 1302
    int-to-float v9, v14

    div-float/2addr v9, v13

    .line 1303
    .local v9, "t_inf":F
    add-int/lit8 v11, v14, 0x1

    int-to-float v11, v11

    div-float/2addr v11, v13

    .line 1304
    .local v11, "t_sup":F
    sget-object v13, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v17, v13, v14

    .line 1305
    .local v17, "d_inf":F
    add-int/lit8 v18, v14, 0x1

    aget v13, v13, v18

    .line 1306
    .local v13, "d_sup":F
    sub-float v18, v13, v17

    sub-float v19, v11, v9

    div-float v16, v18, v19

    .line 1307
    sub-float v18, v10, v9

    mul-float v18, v18, v16

    add-float v15, v17, v18

    .line 1310
    .end local v9    # "t_inf":F
    .end local v11    # "t_sup":F
    .end local v13    # "d_sup":F
    .end local v17    # "d_inf":F
    :cond_6
    iget v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    int-to-float v11, v9

    mul-float/2addr v11, v15

    float-to-double v7, v11

    .line 1311
    int-to-float v9, v9

    mul-float v9, v9, v16

    int-to-float v11, v12

    div-float/2addr v9, v11

    const/high16 v11, 0x447a0000    # 1000.0f

    mul-float/2addr v9, v11

    iput v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1312
    nop

    .line 1334
    .end local v10    # "t":F
    .end local v14    # "index":I
    .end local v15    # "distanceCoef":F
    .end local v16    # "velocityCoef":F
    :goto_1
    iget-object v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineOverScrollerExt:Landroid/widget/ISplineOverScrollerExt;

    iget v10, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-int v11, v11

    add-int/2addr v10, v11

    iget v11, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-interface {v9, v0, v10}, Landroid/widget/ISplineOverScrollerExt;->updateScrollerStateToEnd(Ljava/lang/Object;I)V

    .line 1337
    iget v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    add-int/2addr v9, v10

    iput v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 1339
    const/4 v9, 0x1

    return v9

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method greylist-max-o updateScroll(F)V
    .locals 2
    .param p1, "q"    # F

    .line 945
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 946
    return-void
.end method
