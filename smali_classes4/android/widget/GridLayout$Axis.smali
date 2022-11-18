.class final Landroid/widget/GridLayout$Axis;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Axis"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o COMPLETE:I = 0x2

.field private static final greylist-max-o NEW:I = 0x0

.field private static final greylist-max-o PENDING:I = 0x1


# instance fields
.field public greylist-max-o arcs:[Landroid/widget/GridLayout$Arc;

.field public greylist-max-o arcsValid:Z

.field greylist-max-o backwardLinks:Landroid/widget/GridLayout$PackedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/GridLayout$PackedMap<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o backwardLinksValid:Z

.field public greylist-max-o definedCount:I

.field public greylist-max-o deltas:[I

.field greylist-max-o forwardLinks:Landroid/widget/GridLayout$PackedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/GridLayout$PackedMap<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o forwardLinksValid:Z

.field greylist-max-o groupBounds:Landroid/widget/GridLayout$PackedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/GridLayout$PackedMap<",
            "Landroid/widget/GridLayout$Spec;",
            "Landroid/widget/GridLayout$Bounds;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o groupBoundsValid:Z

.field public greylist-max-o hasWeights:Z

.field public greylist-max-o hasWeightsValid:Z

.field public final greylist-max-o horizontal:Z

.field public greylist-max-o leadingMargins:[I

.field public greylist-max-o leadingMarginsValid:Z

.field public greylist-max-o locations:[I

.field public greylist-max-o locationsValid:Z

.field private greylist-max-o maxIndex:I

.field greylist-max-o orderPreserved:Z

.field private greylist-max-o parentMax:Landroid/widget/GridLayout$MutableInt;

.field private greylist-max-o parentMin:Landroid/widget/GridLayout$MutableInt;

.field final synthetic blacklist this$0:Landroid/widget/GridLayout;

.field public greylist-max-o trailingMargins:[I

.field public greylist-max-o trailingMarginsValid:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 1236
    const-class v0, Landroid/widget/GridLayout;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/widget/GridLayout;Z)V
    .locals 2
    .param p1, "this$0"    # Landroid/widget/GridLayout;
    .param p2, "horizontal"    # Z

    .line 1276
    iput-object p1, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1243
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/widget/GridLayout$Axis;->definedCount:I

    .line 1244
    iput v0, p0, Landroid/widget/GridLayout$Axis;->maxIndex:I

    .line 1247
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->groupBoundsValid:Z

    .line 1250
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinksValid:Z

    .line 1253
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinksValid:Z

    .line 1256
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->leadingMarginsValid:Z

    .line 1259
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->trailingMarginsValid:Z

    .line 1262
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->arcsValid:Z

    .line 1265
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->locationsValid:Z

    .line 1268
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->hasWeightsValid:Z

    .line 1271
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->orderPreserved:Z

    .line 1273
    new-instance v1, Landroid/widget/GridLayout$MutableInt;

    invoke-direct {v1, v0}, Landroid/widget/GridLayout$MutableInt;-><init>(I)V

    iput-object v1, p0, Landroid/widget/GridLayout$Axis;->parentMin:Landroid/widget/GridLayout$MutableInt;

    .line 1274
    new-instance v0, Landroid/widget/GridLayout$MutableInt;

    const v1, -0x186a0

    invoke-direct {v0, v1}, Landroid/widget/GridLayout$MutableInt;-><init>(I)V

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->parentMax:Landroid/widget/GridLayout$MutableInt;

    .line 1277
    iput-boolean p2, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    .line 1278
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/GridLayout;ZLandroid/widget/GridLayout$Axis-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout$Axis;-><init>(Landroid/widget/GridLayout;Z)V

    return-void
.end method

.method private greylist-max-o addComponentSizes(Ljava/util/List;Landroid/widget/GridLayout$PackedMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/GridLayout$Arc;",
            ">;",
            "Landroid/widget/GridLayout$PackedMap<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;)V"
        }
    .end annotation

    .line 1507
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    .local p2, "links":Landroid/widget/GridLayout$PackedMap;, "Landroid/widget/GridLayout$PackedMap<Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p2, Landroid/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    check-cast v1, [Landroid/widget/GridLayout$Interval;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1508
    iget-object v1, p2, Landroid/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    check-cast v1, [Landroid/widget/GridLayout$Interval;

    aget-object v1, v1, v0

    .line 1509
    .local v1, "key":Landroid/widget/GridLayout$Interval;
    iget-object v2, p2, Landroid/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v2, [Landroid/widget/GridLayout$MutableInt;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;Z)V

    .line 1507
    .end local v1    # "key":Landroid/widget/GridLayout$Interval;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1511
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private greylist-max-o arcsToString(Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/GridLayout$Arc;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1581
    .local p1, "arcs":Ljava/util/List;, "Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "x"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "y"

    .line 1582
    .local v0, "var":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1583
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 1584
    .local v2, "first":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/GridLayout$Arc;

    .line 1585
    .local v4, "arc":Landroid/widget/GridLayout$Arc;
    if-eqz v2, :cond_1

    .line 1586
    const/4 v2, 0x0

    goto :goto_2

    .line 1588
    :cond_1
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1590
    :goto_2
    iget-object v5, v4, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v5, v5, Landroid/widget/GridLayout$Interval;->min:I

    .line 1591
    .local v5, "src":I
    iget-object v6, v4, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v6, v6, Landroid/widget/GridLayout$Interval;->max:I

    .line 1592
    .local v6, "dst":I
    iget-object v7, v4, Landroid/widget/GridLayout$Arc;->value:Landroid/widget/GridLayout$MutableInt;

    iget v7, v7, Landroid/widget/GridLayout$MutableInt;->value:I

    .line 1593
    .local v7, "value":I
    const-string v8, "-"

    if-ge v5, v6, :cond_2

    .line 1594
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 1595
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "<="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    neg-int v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1593
    :goto_3
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1597
    .end local v4    # "arc":Landroid/widget/GridLayout$Arc;
    .end local v5    # "src":I
    .end local v6    # "dst":I
    .end local v7    # "value":I
    goto :goto_1

    .line 1598
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private greylist-max-o calculateMaxIndex()I
    .locals 8

    .line 1282
    const/4 v0, -0x1

    .line 1283
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v2}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v2

    .local v2, "N":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1284
    iget-object v3, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v3, v1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1285
    .local v3, "c":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v4, v3}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v4

    .line 1286
    .local v4, "params":Landroid/widget/GridLayout$LayoutParams;
    iget-boolean v5, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_1

    :cond_0
    iget-object v5, v4, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 1287
    .local v5, "spec":Landroid/widget/GridLayout$Spec;
    :goto_1
    iget-object v6, v5, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 1288
    .local v6, "span":Landroid/widget/GridLayout$Interval;
    iget v7, v6, Landroid/widget/GridLayout$Interval;->min:I

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1289
    iget v7, v6, Landroid/widget/GridLayout$Interval;->max:I

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1290
    invoke-virtual {v6}, Landroid/widget/GridLayout$Interval;->size()I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1283
    .end local v3    # "c":Landroid/view/View;
    .end local v4    # "params":Landroid/widget/GridLayout$LayoutParams;
    .end local v5    # "spec":Landroid/widget/GridLayout$Spec;
    .end local v6    # "span":Landroid/widget/GridLayout$Interval;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1292
    .end local v1    # "i":I
    .end local v2    # "N":I
    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/high16 v1, -0x80000000

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    return v1
.end method

.method private greylist-max-o calculateTotalWeight()F
    .locals 7

    .line 1821
    const/4 v0, 0x0

    .line 1822
    .local v0, "totalWeight":F
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v2}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v2

    .local v2, "N":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1823
    iget-object v3, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v3, v1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1824
    .local v3, "c":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 1825
    goto :goto_2

    .line 1827
    :cond_0
    iget-object v4, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v4, v3}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v4

    .line 1828
    .local v4, "lp":Landroid/widget/GridLayout$LayoutParams;
    iget-boolean v5, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v5, :cond_1

    iget-object v5, v4, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_1

    :cond_1
    iget-object v5, v4, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 1829
    .local v5, "spec":Landroid/widget/GridLayout$Spec;
    :goto_1
    iget v6, v5, Landroid/widget/GridLayout$Spec;->weight:F

    add-float/2addr v0, v6

    .line 1822
    .end local v3    # "c":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .end local v5    # "spec":Landroid/widget/GridLayout$Spec;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1831
    .end local v1    # "i":I
    .end local v2    # "N":I
    :cond_2
    return v0
.end method

.method private greylist-max-o computeArcs()V
    .locals 0

    .line 1545
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->getForwardLinks()Landroid/widget/GridLayout$PackedMap;

    .line 1546
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->getBackwardLinks()Landroid/widget/GridLayout$PackedMap;

    .line 1547
    return-void
.end method

.method private greylist-max-o computeGroupBounds()V
    .locals 13

    .line 1338
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->groupBounds:Landroid/widget/GridLayout$PackedMap;

    iget-object v0, v0, Landroid/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v0, [Landroid/widget/GridLayout$Bounds;

    .line 1339
    .local v0, "values":[Landroid/widget/GridLayout$Bounds;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1340
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/widget/GridLayout$Bounds;->reset()V

    .line 1339
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1342
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    iget-object v2, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v2}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v2

    .local v2, "N":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 1343
    iget-object v3, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v3, v1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1345
    .local v3, "c":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v4, v3}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v10

    .line 1346
    .local v10, "lp":Landroid/widget/GridLayout$LayoutParams;
    iget-boolean v4, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v4, :cond_1

    iget-object v4, v10, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_2

    :cond_1
    iget-object v4, v10, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    :goto_2
    move-object v11, v4

    .line 1347
    .local v11, "spec":Landroid/widget/GridLayout$Spec;
    iget-object v4, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    iget-boolean v5, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    invoke-virtual {v4, v3, v5}, Landroid/widget/GridLayout;->getMeasurementIncludingMargin(Landroid/view/View;Z)I

    move-result v4

    .line 1348
    iget v5, v11, Landroid/widget/GridLayout$Spec;->weight:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    const/4 v5, 0x0

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getDeltas()[I

    move-result-object v5

    aget v5, v5, v1

    :goto_3
    add-int v12, v4, v5

    .line 1349
    .local v12, "size":I
    iget-object v4, p0, Landroid/widget/GridLayout$Axis;->groupBounds:Landroid/widget/GridLayout$PackedMap;

    invoke-virtual {v4, v1}, Landroid/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/GridLayout$Bounds;

    iget-object v5, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    move-object v6, v3

    move-object v7, v11

    move-object v8, p0

    move v9, v12

    invoke-virtual/range {v4 .. v9}, Landroid/widget/GridLayout$Bounds;->include(Landroid/widget/GridLayout;Landroid/view/View;Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Axis;I)V

    .line 1342
    .end local v3    # "c":Landroid/view/View;
    .end local v10    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .end local v11    # "spec":Landroid/widget/GridLayout$Spec;
    .end local v12    # "size":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1351
    .end local v1    # "i":I
    .end local v2    # "N":I
    :cond_3
    return-void
.end method

.method private greylist-max-o computeHasWeights()Z
    .locals 7

    .line 1735
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v1}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v1

    .local v1, "N":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 1736
    iget-object v2, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v2, v0}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1737
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 1738
    goto :goto_2

    .line 1740
    :cond_0
    iget-object v3, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v3, v2}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v3

    .line 1741
    .local v3, "lp":Landroid/widget/GridLayout$LayoutParams;
    iget-boolean v4, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_1

    :cond_1
    iget-object v4, v3, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 1742
    .local v4, "spec":Landroid/widget/GridLayout$Spec;
    :goto_1
    iget v5, v4, Landroid/widget/GridLayout$Spec;->weight:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    .line 1743
    const/4 v5, 0x1

    return v5

    .line 1735
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .end local v4    # "spec":Landroid/widget/GridLayout$Spec;
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1746
    .end local v0    # "i":I
    .end local v1    # "N":I
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o computeLinks(Landroid/widget/GridLayout$PackedMap;Z)V
    .locals 7
    .param p2, "min"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/GridLayout$PackedMap<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;Z)V"
        }
    .end annotation

    .line 1376
    .local p1, "links":Landroid/widget/GridLayout$PackedMap;, "Landroid/widget/GridLayout$PackedMap<Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;>;"
    iget-object v0, p1, Landroid/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v0, [Landroid/widget/GridLayout$MutableInt;

    .line 1377
    .local v0, "spans":[Landroid/widget/GridLayout$MutableInt;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1378
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/widget/GridLayout$MutableInt;->reset()V

    .line 1377
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1382
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getGroupBounds()Landroid/widget/GridLayout$PackedMap;

    move-result-object v1

    iget-object v1, v1, Landroid/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v1, [Landroid/widget/GridLayout$Bounds;

    .line 1383
    .local v1, "bounds":[Landroid/widget/GridLayout$Bounds;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 1384
    aget-object v3, v1, v2

    invoke-virtual {v3, p2}, Landroid/widget/GridLayout$Bounds;->size(Z)I

    move-result v3

    .line 1385
    .local v3, "size":I
    invoke-virtual {p1, v2}, Landroid/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/GridLayout$MutableInt;

    .line 1387
    .local v4, "valueHolder":Landroid/widget/GridLayout$MutableInt;
    iget v5, v4, Landroid/widget/GridLayout$MutableInt;->value:I

    if-eqz p2, :cond_1

    move v6, v3

    goto :goto_2

    :cond_1
    neg-int v6, v3

    :goto_2
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Landroid/widget/GridLayout$MutableInt;->value:I

    .line 1383
    .end local v3    # "size":I
    .end local v4    # "valueHolder":Landroid/widget/GridLayout$MutableInt;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1389
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private greylist-max-o computeLocations([I)V
    .locals 4
    .param p1, "a"    # [I

    .line 1835
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->hasWeights()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1836
    invoke-direct {p0, p1}, Landroid/widget/GridLayout$Axis;->solve([I)Z

    goto :goto_0

    .line 1838
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/GridLayout$Axis;->solveAndDistributeSpace([I)V

    .line 1840
    :goto_0
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->orderPreserved:Z

    if-nez v0, :cond_1

    .line 1847
    const/4 v0, 0x0

    aget v0, p1, v0

    .line 1848
    .local v0, "a0":I
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p1

    .local v2, "N":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 1849
    aget v3, p1, v1

    sub-int/2addr v3, v0

    aput v3, p1, v1

    .line 1848
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1852
    .end local v0    # "a0":I
    .end local v1    # "i":I
    .end local v2    # "N":I
    :cond_1
    return-void
.end method

.method private greylist-max-o computeMargins(Z)V
    .locals 11
    .param p1, "leading"    # Z

    .line 1694
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->leadingMargins:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->trailingMargins:[I

    .line 1695
    .local v0, "margins":[I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v2}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v2

    .local v2, "N":I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 1696
    iget-object v3, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v3, v1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1697
    .local v3, "c":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    goto :goto_4

    .line 1698
    :cond_1
    iget-object v4, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v4, v3}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v4

    .line 1699
    .local v4, "lp":Landroid/widget/GridLayout$LayoutParams;
    iget-boolean v5, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v5, :cond_2

    iget-object v5, v4, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_2

    :cond_2
    iget-object v5, v4, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 1700
    .local v5, "spec":Landroid/widget/GridLayout$Spec;
    :goto_2
    iget-object v6, v5, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 1701
    .local v6, "span":Landroid/widget/GridLayout$Interval;
    if-eqz p1, :cond_3

    iget v7, v6, Landroid/widget/GridLayout$Interval;->min:I

    goto :goto_3

    :cond_3
    iget v7, v6, Landroid/widget/GridLayout$Interval;->max:I

    .line 1702
    .local v7, "index":I
    :goto_3
    aget v8, v0, v7

    iget-object v9, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    iget-boolean v10, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    invoke-virtual {v9, v3, v10, p1}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v0, v7

    .line 1695
    .end local v3    # "c":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .end local v5    # "spec":Landroid/widget/GridLayout$Spec;
    .end local v6    # "span":Landroid/widget/GridLayout$Interval;
    .end local v7    # "index":I
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1704
    .end local v1    # "i":I
    .end local v2    # "N":I
    :cond_4
    return-void
.end method

.method private greylist-max-o createArcs()[Landroid/widget/GridLayout$Arc;
    .locals 6

    .line 1514
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1515
    .local v0, "mins":Ljava/util/List;, "Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1518
    .local v1, "maxs":Ljava/util/List;, "Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->getForwardLinks()Landroid/widget/GridLayout$PackedMap;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/widget/GridLayout$Axis;->addComponentSizes(Ljava/util/List;Landroid/widget/GridLayout$PackedMap;)V

    .line 1520
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->getBackwardLinks()Landroid/widget/GridLayout$PackedMap;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/widget/GridLayout$Axis;->addComponentSizes(Ljava/util/List;Landroid/widget/GridLayout$PackedMap;)V

    .line 1523
    iget-boolean v2, p0, Landroid/widget/GridLayout$Axis;->orderPreserved:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1525
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 1526
    new-instance v4, Landroid/widget/GridLayout$Interval;

    add-int/lit8 v5, v2, 0x1

    invoke-direct {v4, v2, v5}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    new-instance v5, Landroid/widget/GridLayout$MutableInt;

    invoke-direct {v5, v3}, Landroid/widget/GridLayout$MutableInt;-><init>(I)V

    invoke-direct {p0, v0, v4, v5}, Landroid/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;)V

    .line 1525
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1532
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v2

    .line 1533
    .local v2, "N":I
    new-instance v4, Landroid/widget/GridLayout$Interval;

    invoke-direct {v4, v3, v2}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    iget-object v5, p0, Landroid/widget/GridLayout$Axis;->parentMin:Landroid/widget/GridLayout$MutableInt;

    invoke-direct {p0, v0, v4, v5, v3}, Landroid/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;Z)V

    .line 1534
    new-instance v4, Landroid/widget/GridLayout$Interval;

    invoke-direct {v4, v2, v3}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    iget-object v5, p0, Landroid/widget/GridLayout$Axis;->parentMax:Landroid/widget/GridLayout$MutableInt;

    invoke-direct {p0, v1, v4, v5, v3}, Landroid/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;Z)V

    .line 1537
    invoke-direct {p0, v0}, Landroid/widget/GridLayout$Axis;->topologicalSort(Ljava/util/List;)[Landroid/widget/GridLayout$Arc;

    move-result-object v3

    .line 1538
    .local v3, "sMins":[Landroid/widget/GridLayout$Arc;
    invoke-direct {p0, v1}, Landroid/widget/GridLayout$Axis;->topologicalSort(Ljava/util/List;)[Landroid/widget/GridLayout$Arc;

    move-result-object v4

    .line 1540
    .local v4, "sMaxs":[Landroid/widget/GridLayout$Arc;
    invoke-static {v3, v4}, Landroid/widget/GridLayout;->append([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/widget/GridLayout$Arc;

    return-object v5
.end method

.method private greylist-max-o createGroupBounds()Landroid/widget/GridLayout$PackedMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/GridLayout$PackedMap<",
            "Landroid/widget/GridLayout$Spec;",
            "Landroid/widget/GridLayout$Bounds;",
            ">;"
        }
    .end annotation

    .line 1325
    const-class v0, Landroid/widget/GridLayout$Spec;

    const-class v1, Landroid/widget/GridLayout$Bounds;

    invoke-static {v0, v1}, Landroid/widget/GridLayout$Assoc;->of(Ljava/lang/Class;Ljava/lang/Class;)Landroid/widget/GridLayout$Assoc;

    move-result-object v0

    .line 1326
    .local v0, "assoc":Landroid/widget/GridLayout$Assoc;, "Landroid/widget/GridLayout$Assoc<Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Bounds;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v2}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v2

    .local v2, "N":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1327
    iget-object v3, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v3, v1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1329
    .local v3, "c":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v4, v3}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v4

    .line 1330
    .local v4, "lp":Landroid/widget/GridLayout$LayoutParams;
    iget-boolean v5, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_1

    :cond_0
    iget-object v5, v4, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 1331
    .local v5, "spec":Landroid/widget/GridLayout$Spec;
    :goto_1
    iget-boolean v6, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    invoke-static {v5, v6}, Landroid/widget/GridLayout$Spec;->-$$Nest$mgetAbsoluteAlignment(Landroid/widget/GridLayout$Spec;Z)Landroid/widget/GridLayout$Alignment;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/GridLayout$Alignment;->getBounds()Landroid/widget/GridLayout$Bounds;

    move-result-object v6

    .line 1332
    .local v6, "bounds":Landroid/widget/GridLayout$Bounds;
    invoke-virtual {v0, v5, v6}, Landroid/widget/GridLayout$Assoc;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1326
    .end local v3    # "c":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .end local v5    # "spec":Landroid/widget/GridLayout$Spec;
    .end local v6    # "bounds":Landroid/widget/GridLayout$Bounds;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1334
    .end local v1    # "i":I
    .end local v2    # "N":I
    :cond_1
    invoke-virtual {v0}, Landroid/widget/GridLayout$Assoc;->pack()Landroid/widget/GridLayout$PackedMap;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o createLinks(Z)Landroid/widget/GridLayout$PackedMap;
    .locals 6
    .param p1, "min"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/widget/GridLayout$PackedMap<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation

    .line 1366
    const-class v0, Landroid/widget/GridLayout$Interval;

    const-class v1, Landroid/widget/GridLayout$MutableInt;

    invoke-static {v0, v1}, Landroid/widget/GridLayout$Assoc;->of(Ljava/lang/Class;Ljava/lang/Class;)Landroid/widget/GridLayout$Assoc;

    move-result-object v0

    .line 1367
    .local v0, "result":Landroid/widget/GridLayout$Assoc;, "Landroid/widget/GridLayout$Assoc<Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;>;"
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getGroupBounds()Landroid/widget/GridLayout$PackedMap;

    move-result-object v1

    iget-object v1, v1, Landroid/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    check-cast v1, [Landroid/widget/GridLayout$Spec;

    .line 1368
    .local v1, "keys":[Landroid/widget/GridLayout$Spec;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v1

    .local v3, "N":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1369
    if-eqz p1, :cond_0

    aget-object v4, v1, v2

    iget-object v4, v4, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    goto :goto_1

    :cond_0
    aget-object v4, v1, v2

    iget-object v4, v4, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    invoke-virtual {v4}, Landroid/widget/GridLayout$Interval;->inverse()Landroid/widget/GridLayout$Interval;

    move-result-object v4

    .line 1370
    .local v4, "span":Landroid/widget/GridLayout$Interval;
    :goto_1
    new-instance v5, Landroid/widget/GridLayout$MutableInt;

    invoke-direct {v5}, Landroid/widget/GridLayout$MutableInt;-><init>()V

    invoke-virtual {v0, v4, v5}, Landroid/widget/GridLayout$Assoc;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1368
    .end local v4    # "span":Landroid/widget/GridLayout$Interval;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1372
    .end local v2    # "i":I
    .end local v3    # "N":I
    :cond_1
    invoke-virtual {v0}, Landroid/widget/GridLayout$Assoc;->pack()Landroid/widget/GridLayout$PackedMap;

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o getBackwardLinks()Landroid/widget/GridLayout$PackedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/GridLayout$PackedMap<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation

    .line 1403
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinks:Landroid/widget/GridLayout$PackedMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1404
    invoke-direct {p0, v1}, Landroid/widget/GridLayout$Axis;->createLinks(Z)Landroid/widget/GridLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinks:Landroid/widget/GridLayout$PackedMap;

    .line 1406
    :cond_0
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinksValid:Z

    if-nez v0, :cond_1

    .line 1407
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinks:Landroid/widget/GridLayout$PackedMap;

    invoke-direct {p0, v0, v1}, Landroid/widget/GridLayout$Axis;->computeLinks(Landroid/widget/GridLayout$PackedMap;Z)V

    .line 1408
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinksValid:Z

    .line 1410
    :cond_1
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinks:Landroid/widget/GridLayout$PackedMap;

    return-object v0
.end method

.method private greylist-max-o getForwardLinks()Landroid/widget/GridLayout$PackedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/GridLayout$PackedMap<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation

    .line 1392
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinks:Landroid/widget/GridLayout$PackedMap;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1393
    invoke-direct {p0, v1}, Landroid/widget/GridLayout$Axis;->createLinks(Z)Landroid/widget/GridLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinks:Landroid/widget/GridLayout$PackedMap;

    .line 1395
    :cond_0
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinksValid:Z

    if-nez v0, :cond_1

    .line 1396
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinks:Landroid/widget/GridLayout$PackedMap;

    invoke-direct {p0, v0, v1}, Landroid/widget/GridLayout$Axis;->computeLinks(Landroid/widget/GridLayout$PackedMap;Z)V

    .line 1397
    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->forwardLinksValid:Z

    .line 1399
    :cond_1
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinks:Landroid/widget/GridLayout$PackedMap;

    return-object v0
.end method

.method private greylist-max-o getMaxIndex()I
    .locals 2

    .line 1296
    iget v0, p0, Landroid/widget/GridLayout$Axis;->maxIndex:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 1297
    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->calculateMaxIndex()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridLayout$Axis;->maxIndex:I

    .line 1299
    :cond_0
    iget v0, p0, Landroid/widget/GridLayout$Axis;->maxIndex:I

    return v0
.end method

.method private greylist-max-o getMeasure(II)I
    .locals 1
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 1880
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout$Axis;->setParentConstraints(II)V

    .line 1881
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/GridLayout$Axis;->size([I)I

    move-result v0

    return v0
.end method

.method private greylist-max-o hasWeights()Z
    .locals 1

    .line 1750
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->hasWeightsValid:Z

    if-nez v0, :cond_0

    .line 1751
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->computeHasWeights()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->hasWeights:Z

    .line 1752
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->hasWeightsValid:Z

    .line 1754
    :cond_0
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->hasWeights:Z

    return v0
.end method

.method private greylist-max-o include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;)V
    .locals 1
    .param p2, "key"    # Landroid/widget/GridLayout$Interval;
    .param p3, "size"    # Landroid/widget/GridLayout$MutableInt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/GridLayout$Arc;",
            ">;",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ")V"
        }
    .end annotation

    .line 1438
    .local p1, "arcs":Ljava/util/List;, "Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;Z)V

    .line 1439
    return-void
.end method

.method private greylist-max-o include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;Z)V
    .locals 4
    .param p2, "key"    # Landroid/widget/GridLayout$Interval;
    .param p3, "size"    # Landroid/widget/GridLayout$MutableInt;
    .param p4, "ignoreIfAlreadyPresent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/GridLayout$Arc;",
            ">;",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            "Z)V"
        }
    .end annotation

    .line 1421
    .local p1, "arcs":Ljava/util/List;, "Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    invoke-virtual {p2}, Landroid/widget/GridLayout$Interval;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1422
    return-void

    .line 1426
    :cond_0
    if-eqz p4, :cond_2

    .line 1427
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/GridLayout$Arc;

    .line 1428
    .local v1, "arc":Landroid/widget/GridLayout$Arc;
    iget-object v2, v1, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    .line 1429
    .local v2, "span":Landroid/widget/GridLayout$Interval;
    invoke-virtual {v2, p2}, Landroid/widget/GridLayout$Interval;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1430
    return-void

    .line 1432
    .end local v1    # "arc":Landroid/widget/GridLayout$Arc;
    .end local v2    # "span":Landroid/widget/GridLayout$Interval;
    :cond_1
    goto :goto_0

    .line 1434
    :cond_2
    new-instance v0, Landroid/widget/GridLayout$Arc;

    invoke-direct {v0, p2, p3}, Landroid/widget/GridLayout$Arc;-><init>(Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1435
    return-void
.end method

.method private greylist-max-o init([I)V
    .locals 1
    .param p1, "locations"    # [I

    .line 1577
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1578
    return-void
.end method

.method private greylist-max-o logError(Ljava/lang/String;[Landroid/widget/GridLayout$Arc;[Z)V
    .locals 5
    .param p1, "axisName"    # Ljava/lang/String;
    .param p2, "arcs"    # [Landroid/widget/GridLayout$Arc;
    .param p3, "culprits0"    # [Z

    .line 1602
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1603
    .local v0, "culprits":Ljava/util/List;, "Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1604
    .local v1, "removed":Ljava/util/List;, "Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    const/4 v2, 0x0

    .local v2, "c":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_2

    .line 1605
    aget-object v3, p2, v2

    .line 1606
    .local v3, "arc":Landroid/widget/GridLayout$Arc;
    aget-boolean v4, p3, v2

    if-eqz v4, :cond_0

    .line 1607
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1609
    :cond_0
    iget-boolean v4, v3, Landroid/widget/GridLayout$Arc;->valid:Z

    if-nez v4, :cond_1

    .line 1610
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1604
    .end local v3    # "arc":Landroid/widget/GridLayout$Arc;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1613
    .end local v2    # "c":I
    :cond_2
    iget-object v2, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    iget-object v2, v2, Landroid/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " constraints: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v0}, Landroid/widget/GridLayout$Axis;->arcsToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " are inconsistent; permanently removing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1614
    invoke-direct {p0, v1}, Landroid/widget/GridLayout$Axis;->arcsToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1613
    invoke-interface {v2, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1615
    return-void
.end method

.method private greylist-max-o relax([ILandroid/widget/GridLayout$Arc;)Z
    .locals 7
    .param p1, "locations"    # [I
    .param p2, "entry"    # Landroid/widget/GridLayout$Arc;

    .line 1561
    iget-boolean v0, p2, Landroid/widget/GridLayout$Arc;->valid:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1562
    return v1

    .line 1564
    :cond_0
    iget-object v0, p2, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    .line 1565
    .local v0, "span":Landroid/widget/GridLayout$Interval;
    iget v2, v0, Landroid/widget/GridLayout$Interval;->min:I

    .line 1566
    .local v2, "u":I
    iget v3, v0, Landroid/widget/GridLayout$Interval;->max:I

    .line 1567
    .local v3, "v":I
    iget-object v4, p2, Landroid/widget/GridLayout$Arc;->value:Landroid/widget/GridLayout$MutableInt;

    iget v4, v4, Landroid/widget/GridLayout$MutableInt;->value:I

    .line 1568
    .local v4, "value":I
    aget v5, p1, v2

    add-int/2addr v5, v4

    .line 1569
    .local v5, "candidate":I
    aget v6, p1, v3

    if-le v5, v6, :cond_1

    .line 1570
    aput v5, p1, v3

    .line 1571
    const/4 v1, 0x1

    return v1

    .line 1573
    :cond_1
    return v1
.end method

.method private greylist-max-o setParentConstraints(II)V
    .locals 2
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 1874
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->parentMin:Landroid/widget/GridLayout$MutableInt;

    iput p1, v0, Landroid/widget/GridLayout$MutableInt;->value:I

    .line 1875
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->parentMax:Landroid/widget/GridLayout$MutableInt;

    neg-int v1, p2

    iput v1, v0, Landroid/widget/GridLayout$MutableInt;->value:I

    .line 1876
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->locationsValid:Z

    .line 1877
    return-void
.end method

.method private greylist-max-o shareOutDelta(IF)V
    .locals 8
    .param p1, "totalDelta"    # I
    .param p2, "totalWeight"    # F

    .line 1765
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->deltas:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1766
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v1}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v1

    .local v1, "N":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 1767
    iget-object v2, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v2, v0}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1768
    .local v2, "c":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 1769
    goto :goto_2

    .line 1771
    :cond_0
    iget-object v3, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v3, v2}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v3

    .line 1772
    .local v3, "lp":Landroid/widget/GridLayout$LayoutParams;
    iget-boolean v4, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_1

    :cond_1
    iget-object v4, v3, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 1773
    .local v4, "spec":Landroid/widget/GridLayout$Spec;
    :goto_1
    iget v5, v4, Landroid/widget/GridLayout$Spec;->weight:F

    .line 1774
    .local v5, "weight":F
    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_2

    .line 1775
    int-to-float v6, p1

    mul-float/2addr v6, v5

    div-float/2addr v6, p2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 1776
    .local v6, "delta":I
    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->deltas:[I

    aput v6, v7, v0

    .line 1779
    sub-int/2addr p1, v6

    .line 1780
    sub-float/2addr p2, v5

    .line 1766
    .end local v2    # "c":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .end local v4    # "spec":Landroid/widget/GridLayout$Spec;
    .end local v5    # "weight":F
    .end local v6    # "delta":I
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1783
    .end local v0    # "i":I
    .end local v1    # "N":I
    :cond_3
    return-void
.end method

.method private greylist-max-o size([I)I
    .locals 1
    .param p1, "locations"    # [I

    .line 1870
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v0

    aget v0, p1, v0

    return v0
.end method

.method private greylist-max-o solve([I)Z
    .locals 1
    .param p1, "a"    # [I

    .line 1731
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getArcs()[Landroid/widget/GridLayout$Arc;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/widget/GridLayout$Axis;->solve([Landroid/widget/GridLayout$Arc;[I)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o solve([Landroid/widget/GridLayout$Arc;[I)Z
    .locals 1
    .param p1, "arcs"    # [Landroid/widget/GridLayout$Arc;
    .param p2, "locations"    # [I

    .line 1638
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridLayout$Axis;->solve([Landroid/widget/GridLayout$Arc;[IZ)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o solve([Landroid/widget/GridLayout$Arc;[IZ)Z
    .locals 12
    .param p1, "arcs"    # [Landroid/widget/GridLayout$Arc;
    .param p2, "locations"    # [I
    .param p3, "modifyOnError"    # Z

    .line 1642
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v0, :cond_0

    const-string v0, "horizontal"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "vertical"

    .line 1643
    .local v0, "axisName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 1644
    .local v1, "N":I
    const/4 v3, 0x0

    .line 1646
    .local v3, "originalCulprits":[Z
    const/4 v4, 0x0

    .local v4, "p":I
    :goto_1
    array-length v5, p1

    if-ge v4, v5, :cond_c

    .line 1647
    invoke-direct {p0, p2}, Landroid/widget/GridLayout$Axis;->init([I)V

    .line 1650
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v1, :cond_4

    .line 1651
    const/4 v6, 0x0

    .line 1652
    .local v6, "changed":Z
    const/4 v7, 0x0

    .local v7, "j":I
    array-length v8, p1

    .local v8, "length":I
    :goto_3
    if-ge v7, v8, :cond_1

    .line 1653
    aget-object v9, p1, v7

    invoke-direct {p0, p2, v9}, Landroid/widget/GridLayout$Axis;->relax([ILandroid/widget/GridLayout$Arc;)Z

    move-result v9

    or-int/2addr v6, v9

    .line 1652
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1655
    .end local v7    # "j":I
    .end local v8    # "length":I
    :cond_1
    if-nez v6, :cond_3

    .line 1656
    if-eqz v3, :cond_2

    .line 1657
    invoke-direct {p0, v0, p1, v3}, Landroid/widget/GridLayout$Axis;->logError(Ljava/lang/String;[Landroid/widget/GridLayout$Arc;[Z)V

    .line 1659
    :cond_2
    return v2

    .line 1650
    .end local v6    # "changed":Z
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1663
    .end local v5    # "i":I
    :cond_4
    const/4 v5, 0x0

    if-nez p3, :cond_5

    .line 1664
    return v5

    .line 1667
    :cond_5
    array-length v6, p1

    new-array v6, v6, [Z

    .line 1668
    .local v6, "culprits":[Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    if-ge v7, v1, :cond_7

    .line 1669
    const/4 v8, 0x0

    .local v8, "j":I
    array-length v9, p1

    .local v9, "length":I
    :goto_5
    if-ge v8, v9, :cond_6

    .line 1670
    aget-boolean v10, v6, v8

    aget-object v11, p1, v8

    invoke-direct {p0, p2, v11}, Landroid/widget/GridLayout$Axis;->relax([ILandroid/widget/GridLayout$Arc;)Z

    move-result v11

    or-int/2addr v10, v11

    aput-boolean v10, v6, v8

    .line 1669
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1668
    .end local v8    # "j":I
    .end local v9    # "length":I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1674
    .end local v7    # "i":I
    :cond_7
    if-nez v4, :cond_8

    .line 1675
    move-object v3, v6

    .line 1678
    :cond_8
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_6
    array-length v8, p1

    if-ge v7, v8, :cond_b

    .line 1679
    aget-boolean v8, v6, v7

    if-eqz v8, :cond_a

    .line 1680
    aget-object v8, p1, v7

    .line 1682
    .local v8, "arc":Landroid/widget/GridLayout$Arc;
    iget-object v9, v8, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v9, v9, Landroid/widget/GridLayout$Interval;->min:I

    iget-object v10, v8, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v10, v10, Landroid/widget/GridLayout$Interval;->max:I

    if-ge v9, v10, :cond_9

    .line 1683
    goto :goto_7

    .line 1685
    :cond_9
    iput-boolean v5, v8, Landroid/widget/GridLayout$Arc;->valid:Z

    .line 1686
    goto :goto_8

    .line 1678
    .end local v8    # "arc":Landroid/widget/GridLayout$Arc;
    :cond_a
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 1646
    .end local v6    # "culprits":[Z
    .end local v7    # "i":I
    :cond_b
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1690
    .end local v4    # "p":I
    :cond_c
    return v2
.end method

.method private greylist-max-o solveAndDistributeSpace([I)V
    .locals 10
    .param p1, "a"    # [I

    .line 1786
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getDeltas()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1787
    invoke-direct {p0, p1}, Landroid/widget/GridLayout$Axis;->solve([I)Z

    .line 1788
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->parentMin:Landroid/widget/GridLayout$MutableInt;

    iget v0, v0, Landroid/widget/GridLayout$MutableInt;->value:I

    iget-object v2, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v2}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v2

    mul-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    .line 1789
    .local v0, "deltaMax":I
    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 1790
    return-void

    .line 1792
    :cond_0
    const/4 v2, 0x0

    .line 1794
    .local v2, "deltaMin":I
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->calculateTotalWeight()F

    move-result v3

    .line 1796
    .local v3, "totalWeight":F
    const/4 v4, -0x1

    .line 1797
    .local v4, "validDelta":I
    const/4 v5, 0x1

    .line 1799
    .local v5, "validSolution":Z
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1801
    int-to-long v6, v2

    int-to-long v8, v0

    add-long/2addr v6, v8

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    long-to-int v6, v6

    .line 1802
    .local v6, "delta":I
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->invalidateValues()V

    .line 1803
    invoke-direct {p0, v6, v3}, Landroid/widget/GridLayout$Axis;->shareOutDelta(IF)V

    .line 1804
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getArcs()[Landroid/widget/GridLayout$Arc;

    move-result-object v7

    invoke-direct {p0, v7, p1, v1}, Landroid/widget/GridLayout$Axis;->solve([Landroid/widget/GridLayout$Arc;[IZ)Z

    move-result v5

    .line 1805
    if-eqz v5, :cond_1

    .line 1806
    move v4, v6

    .line 1807
    add-int/lit8 v2, v6, 0x1

    goto :goto_1

    .line 1809
    :cond_1
    move v0, v6

    .line 1811
    .end local v6    # "delta":I
    :goto_1
    goto :goto_0

    .line 1812
    :cond_2
    if-lez v4, :cond_3

    if-nez v5, :cond_3

    .line 1814
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->invalidateValues()V

    .line 1815
    invoke-direct {p0, v4, v3}, Landroid/widget/GridLayout$Axis;->shareOutDelta(IF)V

    .line 1816
    invoke-direct {p0, p1}, Landroid/widget/GridLayout$Axis;->solve([I)Z

    .line 1818
    :cond_3
    return-void
.end method

.method private greylist-max-o topologicalSort(Ljava/util/List;)[Landroid/widget/GridLayout$Arc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/GridLayout$Arc;",
            ">;)[",
            "Landroid/widget/GridLayout$Arc;"
        }
    .end annotation

    .line 1503
    .local p1, "arcs":Ljava/util/List;, "Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/widget/GridLayout$Arc;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/GridLayout$Arc;

    invoke-direct {p0, v0}, Landroid/widget/GridLayout$Axis;->topologicalSort([Landroid/widget/GridLayout$Arc;)[Landroid/widget/GridLayout$Arc;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o topologicalSort([Landroid/widget/GridLayout$Arc;)[Landroid/widget/GridLayout$Arc;
    .locals 1
    .param p1, "arcs"    # [Landroid/widget/GridLayout$Arc;

    .line 1464
    new-instance v0, Landroid/widget/GridLayout$Axis$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/GridLayout$Axis$1;-><init>(Landroid/widget/GridLayout$Axis;[Landroid/widget/GridLayout$Arc;)V

    .line 1499
    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis$1;->sort()[Landroid/widget/GridLayout$Arc;

    move-result-object v0

    .line 1464
    return-object v0
.end method


# virtual methods
.method public greylist-max-o getArcs()[Landroid/widget/GridLayout$Arc;
    .locals 1

    .line 1550
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->arcs:[Landroid/widget/GridLayout$Arc;

    if-nez v0, :cond_0

    .line 1551
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->createArcs()[Landroid/widget/GridLayout$Arc;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->arcs:[Landroid/widget/GridLayout$Arc;

    .line 1553
    :cond_0
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->arcsValid:Z

    if-nez v0, :cond_1

    .line 1554
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->computeArcs()V

    .line 1555
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->arcsValid:Z

    .line 1557
    :cond_1
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->arcs:[Landroid/widget/GridLayout$Arc;

    return-object v0
.end method

.method public greylist-max-o getCount()I
    .locals 2

    .line 1303
    iget v0, p0, Landroid/widget/GridLayout$Axis;->definedCount:I

    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->getMaxIndex()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getDeltas()[I
    .locals 1

    .line 1758
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->deltas:[I

    if-nez v0, :cond_0

    .line 1759
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->deltas:[I

    .line 1761
    :cond_0
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->deltas:[I

    return-object v0
.end method

.method public greylist-max-o getGroupBounds()Landroid/widget/GridLayout$PackedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/GridLayout$PackedMap<",
            "Landroid/widget/GridLayout$Spec;",
            "Landroid/widget/GridLayout$Bounds;",
            ">;"
        }
    .end annotation

    .line 1354
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->groupBounds:Landroid/widget/GridLayout$PackedMap;

    if-nez v0, :cond_0

    .line 1355
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->createGroupBounds()Landroid/widget/GridLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->groupBounds:Landroid/widget/GridLayout$PackedMap;

    .line 1357
    :cond_0
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->groupBoundsValid:Z

    if-nez v0, :cond_1

    .line 1358
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->computeGroupBounds()V

    .line 1359
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->groupBoundsValid:Z

    .line 1361
    :cond_1
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->groupBounds:Landroid/widget/GridLayout$PackedMap;

    return-object v0
.end method

.method public greylist-max-o getLeadingMargins()[I
    .locals 2

    .line 1709
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->leadingMargins:[I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1710
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v0

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->leadingMargins:[I

    .line 1712
    :cond_0
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->leadingMarginsValid:Z

    if-nez v0, :cond_1

    .line 1713
    invoke-direct {p0, v1}, Landroid/widget/GridLayout$Axis;->computeMargins(Z)V

    .line 1714
    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->leadingMarginsValid:Z

    .line 1716
    :cond_1
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->leadingMargins:[I

    return-object v0
.end method

.method public greylist-max-o getLocations()[I
    .locals 3

    .line 1855
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->locations:[I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1856
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v0

    add-int/2addr v0, v1

    .line 1857
    .local v0, "N":I
    new-array v2, v0, [I

    iput-object v2, p0, Landroid/widget/GridLayout$Axis;->locations:[I

    .line 1859
    .end local v0    # "N":I
    :cond_0
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->locationsValid:Z

    if-nez v0, :cond_1

    .line 1860
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->locations:[I

    invoke-direct {p0, v0}, Landroid/widget/GridLayout$Axis;->computeLocations([I)V

    .line 1861
    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->locationsValid:Z

    .line 1863
    :cond_1
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->locations:[I

    return-object v0
.end method

.method public greylist-max-o getMeasure(I)I
    .locals 4
    .param p1, "measureSpec"    # I

    .line 1885
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1886
    .local v0, "mode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1887
    .local v1, "size":I
    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 1898
    goto :goto_0

    .line 1892
    :sswitch_0
    invoke-direct {p0, v1, v1}, Landroid/widget/GridLayout$Axis;->getMeasure(II)I

    move-result v2

    return v2

    .line 1889
    :sswitch_1
    const v3, 0x186a0

    invoke-direct {p0, v2, v3}, Landroid/widget/GridLayout$Axis;->getMeasure(II)I

    move-result v2

    return v2

    .line 1895
    :sswitch_2
    invoke-direct {p0, v2, v1}, Landroid/widget/GridLayout$Axis;->getMeasure(II)I

    move-result v2

    return v2

    .line 1899
    :goto_0
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public greylist-max-o getTrailingMargins()[I
    .locals 2

    .line 1720
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->trailingMargins:[I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1721
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v0

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->trailingMargins:[I

    .line 1723
    :cond_0
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->trailingMarginsValid:Z

    if-nez v0, :cond_1

    .line 1724
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/GridLayout$Axis;->computeMargins(Z)V

    .line 1725
    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->trailingMarginsValid:Z

    .line 1727
    :cond_1
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->trailingMargins:[I

    return-object v0
.end method

.method greylist-max-o groupArcsByFirstVertex([Landroid/widget/GridLayout$Arc;)[[Landroid/widget/GridLayout$Arc;
    .locals 10
    .param p1, "arcs"    # [Landroid/widget/GridLayout$Arc;

    .line 1444
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1445
    .local v0, "N":I
    new-array v1, v0, [[Landroid/widget/GridLayout$Arc;

    .line 1446
    .local v1, "result":[[Landroid/widget/GridLayout$Arc;
    new-array v2, v0, [I

    .line 1447
    .local v2, "sizes":[I
    array-length v3, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, p1, v5

    .line 1448
    .local v6, "arc":Landroid/widget/GridLayout$Arc;
    iget-object v7, v6, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v7, v7, Landroid/widget/GridLayout$Interval;->min:I

    aget v8, v2, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v2, v7

    .line 1447
    .end local v6    # "arc":Landroid/widget/GridLayout$Arc;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1450
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v5, v2

    if-ge v3, v5, :cond_1

    .line 1451
    aget v5, v2, v3

    new-array v5, v5, [Landroid/widget/GridLayout$Arc;

    aput-object v5, v1, v3

    .line 1450
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1454
    .end local v3    # "i":I
    :cond_1
    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([II)V

    .line 1455
    array-length v3, p1

    :goto_2
    if-ge v4, v3, :cond_2

    aget-object v5, p1, v4

    .line 1456
    .local v5, "arc":Landroid/widget/GridLayout$Arc;
    iget-object v6, v5, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v6, v6, Landroid/widget/GridLayout$Interval;->min:I

    .line 1457
    .local v6, "i":I
    aget-object v7, v1, v6

    aget v8, v2, v6

    add-int/lit8 v9, v8, 0x1

    aput v9, v2, v6

    aput-object v5, v7, v8

    .line 1455
    .end local v5    # "arc":Landroid/widget/GridLayout$Arc;
    .end local v6    # "i":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1460
    :cond_2
    return-object v1
.end method

.method public greylist-max-o invalidateStructure()V
    .locals 1

    .line 1910
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/widget/GridLayout$Axis;->maxIndex:I

    .line 1912
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->groupBounds:Landroid/widget/GridLayout$PackedMap;

    .line 1913
    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinks:Landroid/widget/GridLayout$PackedMap;

    .line 1914
    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinks:Landroid/widget/GridLayout$PackedMap;

    .line 1916
    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->leadingMargins:[I

    .line 1917
    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->trailingMargins:[I

    .line 1918
    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->arcs:[Landroid/widget/GridLayout$Arc;

    .line 1920
    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->locations:[I

    .line 1922
    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->deltas:[I

    .line 1923
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->hasWeightsValid:Z

    .line 1925
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->invalidateValues()V

    .line 1926
    return-void
.end method

.method public greylist-max-o invalidateValues()V
    .locals 1

    .line 1929
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->groupBoundsValid:Z

    .line 1930
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinksValid:Z

    .line 1931
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinksValid:Z

    .line 1933
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->leadingMarginsValid:Z

    .line 1934
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->trailingMarginsValid:Z

    .line 1935
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->arcsValid:Z

    .line 1937
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->locationsValid:Z

    .line 1938
    return-void
.end method

.method public greylist-max-o isOrderPreserved()Z
    .locals 1

    .line 1316
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->orderPreserved:Z

    return v0
.end method

.method public greylist-max-o layout(I)V
    .locals 0
    .param p1, "size"    # I

    .line 1905
    invoke-direct {p0, p1, p1}, Landroid/widget/GridLayout$Axis;->setParentConstraints(II)V

    .line 1906
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getLocations()[I

    .line 1907
    return-void
.end method

.method public greylist-max-o setCount(I)V
    .locals 2
    .param p1, "count"    # I

    .line 1307
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->getMaxIndex()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v1, :cond_0

    const-string v1, "column"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "row"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Count must be greater than or equal to the maximum of all grid indices (and spans) defined in the LayoutParams of each child"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/GridLayout;->-$$Nest$smhandleInvalidParams(Ljava/lang/String;)V

    .line 1312
    :cond_1
    iput p1, p0, Landroid/widget/GridLayout$Axis;->definedCount:I

    .line 1313
    return-void
.end method

.method public greylist-max-o setOrderPreserved(Z)V
    .locals 0
    .param p1, "orderPreserved"    # Z

    .line 1320
    iput-boolean p1, p0, Landroid/widget/GridLayout$Axis;->orderPreserved:Z

    .line 1321
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->invalidateStructure()V

    .line 1322
    return-void
.end method
