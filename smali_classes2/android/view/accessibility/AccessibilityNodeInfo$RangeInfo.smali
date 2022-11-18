.class public final Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityNodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RangeInfo"
.end annotation


# static fields
.field public static final whitelist RANGE_TYPE_FLOAT:I = 0x1

.field public static final whitelist RANGE_TYPE_INT:I = 0x0

.field public static final whitelist RANGE_TYPE_PERCENT:I = 0x2


# instance fields
.field private greylist-max-o mCurrent:F

.field private greylist-max-o mMax:F

.field private greylist-max-o mMin:F

.field private greylist-max-o mType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCurrent(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)F
    .locals 0

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mCurrent:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMax(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)F
    .locals 0

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMax:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMin(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)F
    .locals 0

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMin:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmType(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)I
    .locals 0

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mType:I

    return p0
.end method

.method public constructor whitelist <init>(IFFF)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "min"    # F
    .param p3, "max"    # F
    .param p4, "current"    # F

    .line 5338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5339
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mType:I

    .line 5340
    iput p2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMin:F

    .line 5341
    iput p3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMax:F

    .line 5342
    iput p4, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mCurrent:F

    .line 5343
    return-void
.end method

.method private greylist-max-o clear()V
    .locals 1

    .line 5395
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mType:I

    .line 5396
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMin:F

    .line 5397
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMax:F

    .line 5398
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mCurrent:F

    .line 5399
    return-void
.end method

.method public static whitelist obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    .locals 1
    .param p0, "type"    # I
    .param p1, "min"    # F
    .param p2, "max"    # F
    .param p3, "current"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5325
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;-><init>(IFFF)V

    return-object v0
.end method


# virtual methods
.method public whitelist getCurrent()F
    .locals 1

    .line 5382
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mCurrent:F

    return v0
.end method

.method public whitelist getMax()F
    .locals 1

    .line 5373
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMax:F

    return v0
.end method

.method public whitelist getMin()F
    .locals 1

    .line 5364
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMin:F

    return v0
.end method

.method public whitelist getType()I
    .locals 1

    .line 5355
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mType:I

    return v0
.end method

.method greylist-max-o recycle()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5392
    return-void
.end method
