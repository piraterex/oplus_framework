.class public final Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityNodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CollectionInfo"
.end annotation


# static fields
.field public static final whitelist SELECTION_MODE_MULTIPLE:I = 0x2

.field public static final whitelist SELECTION_MODE_NONE:I = 0x0

.field public static final whitelist SELECTION_MODE_SINGLE:I = 0x1


# instance fields
.field private greylist-max-o mColumnCount:I

.field private greylist-max-o mHierarchical:Z

.field private greylist-max-o mRowCount:I

.field private greylist-max-o mSelectionMode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmColumnCount(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)I
    .locals 0

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mColumnCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHierarchical(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mHierarchical:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRowCount(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)I
    .locals 0

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mRowCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectionMode(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)I
    .locals 0

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mSelectionMode:I

    return p0
.end method

.method public constructor whitelist <init>(IIZ)V
    .locals 1
    .param p1, "rowCount"    # I
    .param p2, "columnCount"    # I
    .param p3, "hierarchical"    # Z

    .line 5491
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;-><init>(IIZI)V

    .line 5492
    return-void
.end method

.method public constructor whitelist <init>(IIZI)V
    .locals 0
    .param p1, "rowCount"    # I
    .param p2, "columnCount"    # I
    .param p3, "hierarchical"    # Z
    .param p4, "selectionMode"    # I

    .line 5503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5504
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mRowCount:I

    .line 5505
    iput p2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mColumnCount:I

    .line 5506
    iput-boolean p3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mHierarchical:Z

    .line 5507
    iput p4, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mSelectionMode:I

    .line 5508
    return-void
.end method

.method private greylist-max-o clear()V
    .locals 1

    .line 5561
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mRowCount:I

    .line 5562
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mColumnCount:I

    .line 5563
    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mHierarchical:Z

    .line 5564
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mSelectionMode:I

    .line 5565
    return-void
.end method

.method public static whitelist obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    .locals 2
    .param p0, "rowCount"    # I
    .param p1, "columnCount"    # I
    .param p2, "hierarchical"    # Z

    .line 5457
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;-><init>(IIZI)V

    return-object v0
.end method

.method public static whitelist obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    .locals 1
    .param p0, "rowCount"    # I
    .param p1, "columnCount"    # I
    .param p2, "hierarchical"    # Z
    .param p3, "selectionMode"    # I

    .line 5480
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;-><init>(IIZI)V

    return-object v0
.end method

.method public static greylist-max-o obtain(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    .locals 5
    .param p0, "other"    # Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 5439
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mRowCount:I

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mColumnCount:I

    iget-boolean v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mHierarchical:Z

    iget v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mSelectionMode:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;-><init>(IIZI)V

    return-object v0
.end method


# virtual methods
.method public whitelist getColumnCount()I
    .locals 1

    .line 5525
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mColumnCount:I

    return v0
.end method

.method public whitelist getRowCount()I
    .locals 1

    .line 5516
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mRowCount:I

    return v0
.end method

.method public whitelist getSelectionMode()I
    .locals 1

    .line 5548
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mSelectionMode:I

    return v0
.end method

.method public whitelist isHierarchical()Z
    .locals 1

    .line 5534
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mHierarchical:Z

    return v0
.end method

.method greylist-max-o recycle()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5558
    return-void
.end method
