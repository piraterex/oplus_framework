.class public final Landroid/view/InputDevice$MotionRange;
.super Ljava/lang/Object;
.source "InputDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MotionRange"
.end annotation


# instance fields
.field private greylist-max-o mAxis:I

.field private greylist-max-o mFlat:F

.field private greylist-max-o mFuzz:F

.field private greylist-max-o mMax:F

.field private greylist-max-o mMin:F

.field private greylist-max-o mResolution:F

.field private greylist-max-o mSource:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAxis(Landroid/view/InputDevice$MotionRange;)I
    .locals 0

    iget p0, p0, Landroid/view/InputDevice$MotionRange;->mAxis:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlat(Landroid/view/InputDevice$MotionRange;)F
    .locals 0

    iget p0, p0, Landroid/view/InputDevice$MotionRange;->mFlat:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFuzz(Landroid/view/InputDevice$MotionRange;)F
    .locals 0

    iget p0, p0, Landroid/view/InputDevice$MotionRange;->mFuzz:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMax(Landroid/view/InputDevice$MotionRange;)F
    .locals 0

    iget p0, p0, Landroid/view/InputDevice$MotionRange;->mMax:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMin(Landroid/view/InputDevice$MotionRange;)F
    .locals 0

    iget p0, p0, Landroid/view/InputDevice$MotionRange;->mMin:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResolution(Landroid/view/InputDevice$MotionRange;)F
    .locals 0

    iget p0, p0, Landroid/view/InputDevice$MotionRange;->mResolution:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSource(Landroid/view/InputDevice$MotionRange;)I
    .locals 0

    iget p0, p0, Landroid/view/InputDevice$MotionRange;->mSource:I

    return p0
.end method

.method private constructor greylist-max-o <init>(IIFFFFF)V
    .locals 0
    .param p1, "axis"    # I
    .param p2, "source"    # I
    .param p3, "min"    # F
    .param p4, "max"    # F
    .param p5, "flat"    # F
    .param p6, "fuzz"    # F
    .param p7, "resolution"    # F

    .line 1039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1040
    iput p1, p0, Landroid/view/InputDevice$MotionRange;->mAxis:I

    .line 1041
    iput p2, p0, Landroid/view/InputDevice$MotionRange;->mSource:I

    .line 1042
    iput p3, p0, Landroid/view/InputDevice$MotionRange;->mMin:F

    .line 1043
    iput p4, p0, Landroid/view/InputDevice$MotionRange;->mMax:F

    .line 1044
    iput p5, p0, Landroid/view/InputDevice$MotionRange;->mFlat:F

    .line 1045
    iput p6, p0, Landroid/view/InputDevice$MotionRange;->mFuzz:F

    .line 1046
    iput p7, p0, Landroid/view/InputDevice$MotionRange;->mResolution:F

    .line 1047
    return-void
.end method

.method synthetic constructor blacklist <init>(IIFFFFFLandroid/view/InputDevice$MotionRange-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroid/view/InputDevice$MotionRange;-><init>(IIFFFFF)V

    return-void
.end method


# virtual methods
.method public whitelist getAxis()I
    .locals 1

    .line 1054
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mAxis:I

    return v0
.end method

.method public whitelist getFlat()F
    .locals 1

    .line 1111
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mFlat:F

    return v0
.end method

.method public whitelist getFuzz()F
    .locals 1

    .line 1123
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mFuzz:F

    return v0
.end method

.method public whitelist getMax()F
    .locals 1

    .line 1091
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mMax:F

    return v0
.end method

.method public whitelist getMin()F
    .locals 1

    .line 1083
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mMin:F

    return v0
.end method

.method public whitelist getRange()F
    .locals 2

    .line 1099
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mMax:F

    iget v1, p0, Landroid/view/InputDevice$MotionRange;->mMin:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public whitelist getResolution()F
    .locals 1

    .line 1131
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mResolution:F

    return v0
.end method

.method public whitelist getSource()I
    .locals 1

    .line 1062
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mSource:I

    return v0
.end method

.method public whitelist isFromSource(I)Z
    .locals 1
    .param p1, "source"    # I

    .line 1075
    invoke-virtual {p0}, Landroid/view/InputDevice$MotionRange;->getSource()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
