.class public final Landroid/app/AppOpsManager$AttributedHistoricalOps;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttributedHistoricalOps"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$AttributedHistoricalOps;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mHistoricalOps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/AppOpsManager$HistoricalOp;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTag:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$maccept(Landroid/app/AppOpsManager$AttributedHistoricalOps;Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddDiscreteAccess(Landroid/app/AppOpsManager$AttributedHistoricalOps;IIIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->addDiscreteAccess(IIIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfilter(Landroid/app/AppOpsManager$AttributedHistoricalOps;[Ljava/lang/String;IIDJJ)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->filter([Ljava/lang/String;IIDJJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mincreaseAccessCount(Landroid/app/AppOpsManager$AttributedHistoricalOps;IIIJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->increaseAccessCount(IIIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mincreaseAccessDuration(Landroid/app/AppOpsManager$AttributedHistoricalOps;IIIJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->increaseAccessDuration(IIIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mincreaseRejectCount(Landroid/app/AppOpsManager$AttributedHistoricalOps;IIIJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->increaseRejectCount(IIIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misEmpty(Landroid/app/AppOpsManager$AttributedHistoricalOps;)Z
    .locals 0

    invoke-direct {p0}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->isEmpty()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmerge(Landroid/app/AppOpsManager$AttributedHistoricalOps;Landroid/app/AppOpsManager$AttributedHistoricalOps;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->merge(Landroid/app/AppOpsManager$AttributedHistoricalOps;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msplice(Landroid/app/AppOpsManager$AttributedHistoricalOps;D)Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->splice(D)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 6777
    new-instance v0, Landroid/app/AppOpsManager$AttributedHistoricalOps$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$AttributedHistoricalOps$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/AppOpsManager$AttributedHistoricalOps;)V
    .locals 6
    .param p1, "other"    # Landroid/app/AppOpsManager$AttributedHistoricalOps;

    .line 6504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6505
    iget-object v0, p1, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    .line 6506
    invoke-virtual {p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v0

    .line 6507
    .local v0, "opCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6508
    invoke-virtual {p1, v1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v2

    .line 6509
    .local v2, "origOp":Landroid/app/AppOpsManager$HistoricalOp;
    new-instance v3, Landroid/app/AppOpsManager$HistoricalOp;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/app/AppOpsManager$HistoricalOp;-><init>(Landroid/app/AppOpsManager$HistoricalOp;Landroid/app/AppOpsManager$HistoricalOp-IA;)V

    .line 6510
    .local v3, "cloneOp":Landroid/app/AppOpsManager$HistoricalOp;
    iget-object v4, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_0

    .line 6511
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v4, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    .line 6513
    :cond_0
    iget-object v4, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOp;->getOpName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6507
    .end local v2    # "origOp":Landroid/app/AppOpsManager$HistoricalOp;
    .end local v3    # "cloneOp":Landroid/app/AppOpsManager$HistoricalOp;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6515
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/AppOpsManager$AttributedHistoricalOps;Landroid/app/AppOpsManager$AttributedHistoricalOps-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;-><init>(Landroid/app/AppOpsManager$AttributedHistoricalOps;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 6758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6762
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 6763
    .local v0, "flg":B
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6764
    .local v1, "attributionTag":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    .line 6765
    .local v2, "historicalOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/AppOpsManager$HistoricalOp;>;"
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    .line 6766
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    move-object v2, v3

    .line 6767
    const-class v3, Landroid/app/AppOpsManager$HistoricalOp;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 6770
    :cond_1
    iput-object v1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    .line 6771
    iput-object v2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    .line 6774
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .line 6500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6501
    iput-object p1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    .line 6502
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/util/ArrayMap;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/AppOpsManager$HistoricalOp;",
            ">;)V"
        }
    .end annotation

    .line 6693
    .local p2, "historicalOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/AppOpsManager$HistoricalOp;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6694
    iput-object p1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    .line 6695
    iput-object p2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    .line 6698
    return-void
.end method

.method private blacklist accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V
    .locals 3
    .param p1, "visitor"    # Landroid/app/AppOpsManager$HistoricalOpsVisitor;

    .line 6641
    invoke-interface {p1, p0}, Landroid/app/AppOpsManager$HistoricalOpsVisitor;->visitHistoricalAttributionOps(Landroid/app/AppOpsManager$AttributedHistoricalOps;)V

    .line 6642
    invoke-virtual {p0}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v0

    .line 6643
    .local v0, "opCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 6644
    invoke-virtual {p0, v1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$maccept(Landroid/app/AppOpsManager$HistoricalOp;Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    .line 6643
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6646
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist addDiscreteAccess(IIIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V
    .locals 8
    .param p1, "opCode"    # I
    .param p2, "uidState"    # I
    .param p3, "flag"    # I
    .param p4, "discreteAccessTime"    # J
    .param p6, "discreteAccessDuration"    # J
    .param p8, "proxy"    # Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 6596
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOrCreateHistoricalOp(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-wide v5, p6

    move-object/from16 v7, p8

    invoke-static/range {v0 .. v7}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$maddDiscreteAccess(Landroid/app/AppOpsManager$HistoricalOp;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 6598
    return-void
.end method

.method private blacklist filter([Ljava/lang/String;IIDJJ)V
    .locals 13
    .param p1, "opNames"    # [Ljava/lang/String;
    .param p2, "filter"    # I
    .param p3, "historyFilter"    # I
    .param p4, "scaleFactor"    # D
    .param p6, "beginTimeMillis"    # J
    .param p8, "endTimeMillis"    # J

    .line 6555
    move-object v0, p0

    invoke-virtual {p0}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v1

    .line 6556
    .local v1, "opCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 6557
    iget-object v3, v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOp;

    .line 6558
    .local v3, "op":Landroid/app/AppOpsManager$HistoricalOp;
    and-int/lit8 v4, p2, 0x8

    if-eqz v4, :cond_0

    .line 6559
    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOp;->getOpName()Ljava/lang/String;

    move-result-object v4

    .line 6558
    move-object v12, p1

    invoke-static {p1, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 6560
    iget-object v4, v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_1

    .line 6558
    :cond_0
    move-object v12, p1

    .line 6562
    :cond_1
    move-object v4, v3

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-static/range {v4 .. v11}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$mfilter(Landroid/app/AppOpsManager$HistoricalOp;IDJJ)V

    .line 6556
    .end local v3    # "op":Landroid/app/AppOpsManager$HistoricalOp;
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    move-object v12, p1

    .line 6565
    .end local v2    # "i":I
    return-void
.end method

.method private blacklist getOrCreateHistoricalOp(I)Landroid/app/AppOpsManager$HistoricalOp;
    .locals 4
    .param p1, "opCode"    # I

    .line 6649
    iget-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 6650
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    .line 6656
    :cond_0
    const/16 v0, 0x2710

    if-le p1, v0, :cond_1

    const/16 v0, 0x2712

    if-ge p1, v0, :cond_1

    .line 6657
    add-int/lit16 v0, p1, -0x2710

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, 0x79

    goto :goto_0

    :cond_1
    move v0, p1

    .line 6658
    .local v0, "code":I
    :goto_0
    invoke-static {}, Landroid/app/AppOpsManager;->getOpStrs()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    .line 6660
    .local v1, "opStr":Ljava/lang/String;
    iget-object v2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$HistoricalOp;

    .line 6661
    .local v2, "op":Landroid/app/AppOpsManager$HistoricalOp;
    if-nez v2, :cond_2

    .line 6662
    new-instance v3, Landroid/app/AppOpsManager$HistoricalOp;

    invoke-direct {v3, p1}, Landroid/app/AppOpsManager$HistoricalOp;-><init>(I)V

    move-object v2, v3

    .line 6663
    iget-object v3, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6665
    :cond_2
    return-object v2
.end method

.method private blacklist increaseAccessCount(IIIJ)V
    .locals 1
    .param p1, "opCode"    # I
    .param p2, "uidState"    # I
    .param p3, "flags"    # I
    .param p4, "increment"    # J

    .line 6580
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOrCreateHistoricalOp(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v0

    invoke-static {v0, p2, p3, p4, p5}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$mincreaseAccessCount(Landroid/app/AppOpsManager$HistoricalOp;IIJ)V

    .line 6581
    return-void
.end method

.method private blacklist increaseAccessDuration(IIIJ)V
    .locals 1
    .param p1, "opCode"    # I
    .param p2, "uidState"    # I
    .param p3, "flags"    # I
    .param p4, "increment"    # J

    .line 6590
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOrCreateHistoricalOp(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v0

    invoke-static {v0, p2, p3, p4, p5}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$mincreaseAccessDuration(Landroid/app/AppOpsManager$HistoricalOp;IIJ)V

    .line 6591
    return-void
.end method

.method private blacklist increaseRejectCount(IIIJ)V
    .locals 1
    .param p1, "opCode"    # I
    .param p2, "uidState"    # I
    .param p3, "flags"    # I
    .param p4, "increment"    # J

    .line 6585
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOrCreateHistoricalOp(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v0

    invoke-static {v0, p2, p3, p4, p5}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$mincreaseRejectCount(Landroid/app/AppOpsManager$HistoricalOp;IIJ)V

    .line 6586
    return-void
.end method

.method private blacklist isEmpty()Z
    .locals 4

    .line 6568
    invoke-virtual {p0}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v0

    .line 6569
    .local v0, "opCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 6570
    iget-object v2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$HistoricalOp;

    .line 6571
    .local v2, "op":Landroid/app/AppOpsManager$HistoricalOp;
    invoke-static {v2}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$misEmpty(Landroid/app/AppOpsManager$HistoricalOp;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6572
    const/4 v3, 0x0

    return v3

    .line 6569
    .end local v2    # "op":Landroid/app/AppOpsManager$HistoricalOp;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6575
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist merge(Landroid/app/AppOpsManager$AttributedHistoricalOps;)V
    .locals 6
    .param p1, "other"    # Landroid/app/AppOpsManager$AttributedHistoricalOps;

    .line 6537
    invoke-virtual {p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v0

    .line 6538
    .local v0, "opCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 6539
    invoke-virtual {p1, v1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v2

    .line 6540
    .local v2, "otherOp":Landroid/app/AppOpsManager$HistoricalOp;
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOp;->getOpName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOp(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v3

    .line 6541
    .local v3, "thisOp":Landroid/app/AppOpsManager$HistoricalOp;
    if-eqz v3, :cond_0

    .line 6542
    invoke-static {v3, v2}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$mmerge(Landroid/app/AppOpsManager$HistoricalOp;Landroid/app/AppOpsManager$HistoricalOp;)V

    goto :goto_1

    .line 6544
    :cond_0
    iget-object v4, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_1

    .line 6545
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    .line 6547
    :cond_1
    iget-object v4, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOp;->getOpName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6538
    .end local v2    # "otherOp":Landroid/app/AppOpsManager$HistoricalOp;
    .end local v3    # "thisOp":Landroid/app/AppOpsManager$HistoricalOp;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6550
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private blacklist splice(D)Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .locals 8
    .param p1, "fractionToRemove"    # D

    .line 6518
    const/4 v0, 0x0

    .line 6519
    .local v0, "splice":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    invoke-virtual {p0}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v1

    .line 6520
    .local v1, "opCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 6521
    invoke-virtual {p0, v2}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v3

    .line 6522
    .local v3, "origOps":Landroid/app/AppOpsManager$HistoricalOp;
    invoke-static {v3, p1, p2}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$msplice(Landroid/app/AppOpsManager$HistoricalOp;D)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v4

    .line 6523
    .local v4, "spliceOps":Landroid/app/AppOpsManager$HistoricalOp;
    if-eqz v4, :cond_2

    .line 6524
    if-nez v0, :cond_0

    .line 6525
    new-instance v5, Landroid/app/AppOpsManager$AttributedHistoricalOps;

    iget-object v6, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/app/AppOpsManager$AttributedHistoricalOps;-><init>(Ljava/lang/String;Landroid/util/ArrayMap;)V

    move-object v0, v5

    .line 6527
    :cond_0
    iget-object v5, v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-nez v5, :cond_1

    .line 6528
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    .line 6530
    :cond_1
    iget-object v5, v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/app/AppOpsManager$HistoricalOp;->getOpName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6520
    .end local v3    # "origOps":Landroid/app/AppOpsManager$HistoricalOp;
    .end local v4    # "spliceOps":Landroid/app/AppOpsManager$HistoricalOp;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6533
    .end local v2    # "i":I
    :cond_3
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 6753
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 6715
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 6716
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 6718
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/AppOpsManager$AttributedHistoricalOps;

    .line 6720
    .local v2, "that":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    iget-object v3, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    .line 6721
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    .line 6722
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 6720
    :goto_0
    return v0

    .line 6716
    .end local v2    # "that":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getOp(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOp;
    .locals 1
    .param p1, "opName"    # Ljava/lang/String;

    .line 6634
    iget-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 6635
    const/4 v0, 0x0

    return-object v0

    .line 6637
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalOp;

    return-object v0
.end method

.method public whitelist getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;
    .locals 1
    .param p1, "index"    # I

    .line 6621
    iget-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    .line 6624
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalOp;

    return-object v0

    .line 6622
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist getOpCount()I
    .locals 1

    .line 6607
    iget-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 6608
    const/4 v0, 0x0

    return v0

    .line 6610
    :cond_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getTag()Ljava/lang/String;
    .locals 1

    .line 6705
    iget-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 6731
    const/4 v0, 0x1

    .line 6732
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 6733
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6734
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 6743
    const/4 v0, 0x0

    .line 6744
    .local v0, "flg":B
    iget-object v1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 6745
    :cond_0
    iget-object v1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-eqz v1, :cond_1

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 6746
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 6747
    iget-object v1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6748
    :cond_2
    iget-object v1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-eqz v1, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 6749
    :cond_3
    return-void
.end method
