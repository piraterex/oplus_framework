.class public Lcom/android/internal/widget/PointerLocationView$PointerState;
.super Ljava/lang/Object;
.source "PointerLocationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/PointerLocationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointerState"
.end annotation


# instance fields
.field private blacklist mAltEstimator:Landroid/view/VelocityTracker$Estimator;

.field private blacklist mAltXVelocity:F

.field private blacklist mAltYVelocity:F

.field private blacklist mBoundingBottom:F

.field private blacklist mBoundingLeft:F

.field private blacklist mBoundingRight:F

.field private blacklist mBoundingTop:F

.field private blacklist mCoords:Landroid/view/MotionEvent$PointerCoords;

.field private greylist mCurDown:Z

.field private blacklist mEstimator:Landroid/view/VelocityTracker$Estimator;

.field private blacklist mHasBoundingBox:Z

.field private blacklist mToolType:I

.field private blacklist mTraceCount:I

.field private blacklist mTraceCurrent:[Z

.field private blacklist mTraceX:[F

.field private blacklist mTraceY:[F

.field private blacklist mXVelocity:F

.field private blacklist mYVelocity:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAltEstimator(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltEstimator:Landroid/view/VelocityTracker$Estimator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAltXVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltXVelocity:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAltYVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltYVelocity:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBoundingBottom(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingBottom:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBoundingLeft(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingLeft:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBoundingRight(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingRight:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBoundingTop(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingTop:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurDown(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEstimator(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mEstimator:Landroid/view/VelocityTracker$Estimator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHasBoundingBox(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mHasBoundingBox:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToolType(Lcom/android/internal/widget/PointerLocationView$PointerState;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mToolType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTraceCount(Lcom/android/internal/widget/PointerLocationView$PointerState;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTraceCurrent(Lcom/android/internal/widget/PointerLocationView$PointerState;)[Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCurrent:[Z

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTraceX(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTraceY(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmXVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mXVelocity:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmYVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mYVelocity:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAltXVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltXVelocity:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAltYVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltYVelocity:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBoundingBottom(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingBottom:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBoundingLeft(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingLeft:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBoundingRight(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingRight:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBoundingTop(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingTop:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurDown(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHasBoundingBox(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mHasBoundingBox:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmToolType(Lcom/android/internal/widget/PointerLocationView$PointerState;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mToolType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmXVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mXVelocity:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmYVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mYVelocity:F

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 2

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/16 v0, 0x20

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    .line 76
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F

    .line 77
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCurrent:[Z

    .line 85
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 102
    new-instance v0, Landroid/view/VelocityTracker$Estimator;

    invoke-direct {v0}, Landroid/view/VelocityTracker$Estimator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mEstimator:Landroid/view/VelocityTracker$Estimator;

    .line 103
    new-instance v0, Landroid/view/VelocityTracker$Estimator;

    invoke-direct {v0}, Landroid/view/VelocityTracker$Estimator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltEstimator:Landroid/view/VelocityTracker$Estimator;

    .line 107
    return-void
.end method


# virtual methods
.method public blacklist addTrace(FFZ)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "current"    # Z

    .line 114
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    array-length v1, v0

    .line 115
    .local v1, "traceCapacity":I
    iget v2, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    if-ne v2, v1, :cond_0

    .line 116
    mul-int/lit8 v1, v1, 0x2

    .line 117
    new-array v3, v1, [F

    .line 118
    .local v3, "newTraceX":[F
    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    iput-object v3, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    .line 121
    new-array v0, v1, [F

    .line 122
    .local v0, "newTraceY":[F
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F

    iget v5, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    invoke-static {v2, v4, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F

    .line 125
    new-array v2, v1, [Z

    .line 126
    .local v2, "newTraceCurrent":[Z
    iget-object v5, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCurrent:[Z

    iget v6, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    invoke-static {v5, v4, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCurrent:[Z

    .line 130
    .end local v0    # "newTraceY":[F
    .end local v2    # "newTraceCurrent":[Z
    .end local v3    # "newTraceX":[F
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    iget v2, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    aput p1, v0, v2

    .line 131
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F

    aput p2, v0, v2

    .line 132
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCurrent:[Z

    aput-boolean p3, v0, v2

    .line 133
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    .line 134
    return-void
.end method

.method public blacklist clearTrace()V
    .locals 1

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    .line 111
    return-void
.end method
