.class public final Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityNodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CollectionItemInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo$Builder;
    }
.end annotation


# instance fields
.field private greylist-max-o mColumnIndex:I

.field private greylist-max-o mColumnSpan:I

.field private blacklist mColumnTitle:Ljava/lang/String;

.field private greylist-max-o mHeading:Z

.field private greylist-max-o mRowIndex:I

.field private greylist-max-o mRowSpan:I

.field private blacklist mRowTitle:Ljava/lang/String;

.field private greylist-max-o mSelected:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmColumnIndex(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)I
    .locals 0

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmColumnSpan(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)I
    .locals 0

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnSpan:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmColumnTitle(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnTitle:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHeading(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mHeading:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRowIndex(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)I
    .locals 0

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRowSpan(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)I
    .locals 0

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowSpan:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRowTitle(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowTitle:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelected(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSelected:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmColumnIndex(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;I)V
    .locals 0

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnIndex:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmColumnSpan(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;I)V
    .locals 0

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnSpan:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmColumnTitle(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnTitle:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHeading(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mHeading:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRowIndex(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;I)V
    .locals 0

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowIndex:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRowSpan(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;I)V
    .locals 0

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowSpan:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRowTitle(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowTitle:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSelected(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSelected:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 5677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5679
    return-void
.end method

.method public constructor whitelist <init>(IIIIZ)V
    .locals 7
    .param p1, "rowIndex"    # I
    .param p2, "rowSpan"    # I
    .param p3, "columnIndex"    # I
    .param p4, "columnSpan"    # I
    .param p5, "heading"    # Z

    .line 5692
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;-><init>(IIIIZZ)V

    .line 5693
    return-void
.end method

.method public constructor whitelist <init>(IIIIZZ)V
    .locals 9
    .param p1, "rowIndex"    # I
    .param p2, "rowSpan"    # I
    .param p3, "columnIndex"    # I
    .param p4, "columnSpan"    # I
    .param p5, "heading"    # Z
    .param p6, "selected"    # Z

    .line 5707
    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;-><init>(Ljava/lang/String;IILjava/lang/String;IIZZ)V

    .line 5709
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IILjava/lang/String;IIZZ)V
    .locals 0
    .param p1, "rowTitle"    # Ljava/lang/String;
    .param p2, "rowIndex"    # I
    .param p3, "rowSpan"    # I
    .param p4, "columnTitle"    # Ljava/lang/String;
    .param p5, "columnIndex"    # I
    .param p6, "columnSpan"    # I
    .param p7, "heading"    # Z
    .param p8, "selected"    # Z

    .line 5726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5727
    iput p2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowIndex:I

    .line 5728
    iput p3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowSpan:I

    .line 5729
    iput p5, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnIndex:I

    .line 5730
    iput p6, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnSpan:I

    .line 5731
    iput-boolean p7, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mHeading:Z

    .line 5732
    iput-boolean p8, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSelected:Z

    .line 5733
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowTitle:Ljava/lang/String;

    .line 5734
    iput-object p4, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnTitle:Ljava/lang/String;

    .line 5735
    return-void
.end method

.method private greylist-max-o clear()V
    .locals 1

    .line 5823
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnIndex:I

    .line 5824
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnSpan:I

    .line 5825
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowIndex:I

    .line 5826
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowSpan:I

    .line 5827
    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mHeading:Z

    .line 5828
    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSelected:Z

    .line 5829
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowTitle:Ljava/lang/String;

    .line 5830
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnTitle:Ljava/lang/String;

    .line 5831
    return-void
.end method

.method public static whitelist obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .locals 8
    .param p0, "rowIndex"    # I
    .param p1, "rowSpan"    # I
    .param p2, "columnIndex"    # I
    .param p3, "columnSpan"    # I
    .param p4, "heading"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5614
    new-instance v7, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    const/4 v6, 0x0

    move-object v0, v7

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;-><init>(IIIIZZ)V

    return-object v7
.end method

.method public static whitelist obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .locals 8
    .param p0, "rowIndex"    # I
    .param p1, "rowSpan"    # I
    .param p2, "columnIndex"    # I
    .param p3, "columnSpan"    # I
    .param p4, "heading"    # Z
    .param p5, "selected"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5636
    new-instance v7, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-object v0, v7

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;-><init>(IIIIZZ)V

    return-object v7
.end method

.method public static greylist-max-o obtain(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .locals 10
    .param p0, "other"    # Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5592
    new-instance v9, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowTitle:Ljava/lang/String;

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowIndex:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowSpan:I

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnTitle:Ljava/lang/String;

    iget v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnIndex:I

    iget v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnSpan:I

    iget-boolean v7, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mHeading:Z

    iget-boolean v8, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSelected:Z

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;-><init>(Ljava/lang/String;IILjava/lang/String;IIZZ)V

    return-object v9
.end method

.method public static greylist obtain(Ljava/lang/String;IILjava/lang/String;IIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .locals 10
    .param p0, "rowTitle"    # Ljava/lang/String;
    .param p1, "rowIndex"    # I
    .param p2, "rowSpan"    # I
    .param p3, "columnTitle"    # Ljava/lang/String;
    .param p4, "columnIndex"    # I
    .param p5, "columnSpan"    # I
    .param p6, "heading"    # Z
    .param p7, "selected"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5664
    new-instance v9, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;-><init>(Ljava/lang/String;IILjava/lang/String;IIZZ)V

    return-object v9
.end method


# virtual methods
.method public whitelist getColumnIndex()I
    .locals 1

    .line 5743
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnIndex:I

    return v0
.end method

.method public whitelist getColumnSpan()I
    .locals 1

    .line 5761
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnSpan:I

    return v0
.end method

.method public whitelist getColumnTitle()Ljava/lang/String;
    .locals 1

    .line 5810
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnTitle:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRowIndex()I
    .locals 1

    .line 5752
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowIndex:I

    return v0
.end method

.method public whitelist getRowSpan()I
    .locals 1

    .line 5770
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowSpan:I

    return v0
.end method

.method public whitelist getRowTitle()Ljava/lang/String;
    .locals 1

    .line 5800
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowTitle:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist isHeading()Z
    .locals 1

    .line 5781
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mHeading:Z

    return v0
.end method

.method public whitelist isSelected()Z
    .locals 1

    .line 5790
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSelected:Z

    return v0
.end method

.method greylist-max-o recycle()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5820
    return-void
.end method
