.class public final Landroid/app/AppOpsManager$HistoricalOp;
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
    name = "HistoricalOp"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$HistoricalOp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAccessCount:Landroid/util/LongSparseLongArray;

.field private blacklist mAccessDuration:Landroid/util/LongSparseLongArray;

.field private blacklist mDiscreteAccesses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOp:I

.field private blacklist mRejectCount:Landroid/util/LongSparseLongArray;


# direct methods
.method public static synthetic blacklist $r8$lambda$OUA9xAFEAUOmX0xqYdgRAgXt2mQ(Landroid/app/AppOpsManager$HistoricalOp;)Landroid/util/LongSparseLongArray;
    .locals 0

    invoke-direct {p0}, Landroid/app/AppOpsManager$HistoricalOp;->getOrCreateAccessCount()Landroid/util/LongSparseLongArray;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$QifjQFAnZOz-6XnQfyLNXH5dbFI(Landroid/app/AppOpsManager$HistoricalOp;)Landroid/util/LongSparseLongArray;
    .locals 0

    invoke-direct {p0}, Landroid/app/AppOpsManager$HistoricalOp;->getOrCreateAccessDuration()Landroid/util/LongSparseLongArray;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$X3SR0gwvndg4V3R8EETJBbVxjAo(Landroid/app/AppOpsManager$HistoricalOp;)Landroid/util/LongSparseLongArray;
    .locals 0

    invoke-direct {p0}, Landroid/app/AppOpsManager$HistoricalOp;->getOrCreateRejectCount()Landroid/util/LongSparseLongArray;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$maccept(Landroid/app/AppOpsManager$HistoricalOp;Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalOp;->accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddDiscreteAccess(Landroid/app/AppOpsManager$HistoricalOp;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroid/app/AppOpsManager$HistoricalOp;->addDiscreteAccess(IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfilter(Landroid/app/AppOpsManager$HistoricalOp;IDJJ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroid/app/AppOpsManager$HistoricalOp;->filter(IDJJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mincreaseAccessCount(Landroid/app/AppOpsManager$HistoricalOp;IIJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/AppOpsManager$HistoricalOp;->increaseAccessCount(IIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mincreaseAccessDuration(Landroid/app/AppOpsManager$HistoricalOp;IIJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/AppOpsManager$HistoricalOp;->increaseAccessDuration(IIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mincreaseRejectCount(Landroid/app/AppOpsManager$HistoricalOp;IIJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/AppOpsManager$HistoricalOp;->increaseRejectCount(IIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misEmpty(Landroid/app/AppOpsManager$HistoricalOp;)Z
    .locals 0

    invoke-direct {p0}, Landroid/app/AppOpsManager$HistoricalOp;->isEmpty()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmerge(Landroid/app/AppOpsManager$HistoricalOp;Landroid/app/AppOpsManager$HistoricalOp;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalOp;->merge(Landroid/app/AppOpsManager$HistoricalOp;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msplice(Landroid/app/AppOpsManager$HistoricalOp;D)Landroid/app/AppOpsManager$HistoricalOp;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/AppOpsManager$HistoricalOp;->splice(D)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 7414
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOp$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$HistoricalOp$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$HistoricalOp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 0
    .param p1, "op"    # I

    .line 6821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6822
    iput p1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    .line 6823
    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/AppOpsManager$HistoricalOp;)V
    .locals 5
    .param p1, "other"    # Landroid/app/AppOpsManager$HistoricalOp;

    .line 6825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6826
    iget v0, p1, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    iput v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    .line 6827
    iget-object v0, p1, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    if-eqz v0, :cond_0

    .line 6828
    invoke-virtual {v0}, Landroid/util/LongSparseLongArray;->clone()Landroid/util/LongSparseLongArray;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    .line 6830
    :cond_0
    iget-object v0, p1, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    if-eqz v0, :cond_1

    .line 6831
    invoke-virtual {v0}, Landroid/util/LongSparseLongArray;->clone()Landroid/util/LongSparseLongArray;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    .line 6833
    :cond_1
    iget-object v0, p1, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    if-eqz v0, :cond_2

    .line 6834
    invoke-virtual {v0}, Landroid/util/LongSparseLongArray;->clone()Landroid/util/LongSparseLongArray;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    .line 6836
    :cond_2
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOp;->getDiscreteAccessCount()I

    move-result v0

    .line 6837
    .local v0, "historicalOpCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 6838
    invoke-virtual {p1, v1}, Landroid/app/AppOpsManager$HistoricalOp;->getDiscreteAccessAt(I)Landroid/app/AppOpsManager$AttributedOpEntry;

    move-result-object v2

    .line 6839
    .local v2, "origOp":Landroid/app/AppOpsManager$AttributedOpEntry;
    new-instance v3, Landroid/app/AppOpsManager$AttributedOpEntry;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/app/AppOpsManager$AttributedOpEntry;-><init>(Landroid/app/AppOpsManager$AttributedOpEntry;Landroid/app/AppOpsManager$AttributedOpEntry-IA;)V

    .line 6840
    .local v3, "cloneOp":Landroid/app/AppOpsManager$AttributedOpEntry;
    invoke-direct {p0}, Landroid/app/AppOpsManager$HistoricalOp;->getOrCreateDiscreteAccesses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6837
    .end local v2    # "origOp":Landroid/app/AppOpsManager$AttributedOpEntry;
    .end local v3    # "cloneOp":Landroid/app/AppOpsManager$AttributedOpEntry;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6842
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/AppOpsManager$HistoricalOp;Landroid/app/AppOpsManager$HistoricalOp-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalOp;-><init>(Landroid/app/AppOpsManager$HistoricalOp;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 6844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6845
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    .line 6846
    invoke-static {p1}, Landroid/app/AppOpsManager;->-$$Nest$smreadLongSparseLongArrayFromParcel(Landroid/os/Parcel;)Landroid/util/LongSparseLongArray;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    .line 6847
    invoke-static {p1}, Landroid/app/AppOpsManager;->-$$Nest$smreadLongSparseLongArrayFromParcel(Landroid/os/Parcel;)Landroid/util/LongSparseLongArray;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    .line 6848
    invoke-static {p1}, Landroid/app/AppOpsManager;->-$$Nest$smreadLongSparseLongArrayFromParcel(Landroid/os/Parcel;)Landroid/util/LongSparseLongArray;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    .line 6849
    invoke-static {p1}, Landroid/app/AppOpsManager;->-$$Nest$smreadDiscreteAccessArrayFromParcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    .line 6850
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/AppOpsManager$HistoricalOp-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalOp;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V
    .locals 0
    .param p1, "visitor"    # Landroid/app/AppOpsManager$HistoricalOpsVisitor;

    .line 7338
    invoke-interface {p1, p0}, Landroid/app/AppOpsManager$HistoricalOpsVisitor;->visitHistoricalOp(Landroid/app/AppOpsManager$HistoricalOp;)V

    .line 7339
    return-void
.end method

.method private blacklist addDiscreteAccess(IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V
    .locals 13
    .param p1, "uidState"    # I
    .param p2, "flag"    # I
    .param p3, "discreteAccessTime"    # J
    .param p5, "discreteAccessDuration"    # J
    .param p7, "proxy"    # Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 6975
    invoke-direct {p0}, Landroid/app/AppOpsManager$HistoricalOp;->getOrCreateDiscreteAccesses()Ljava/util/List;

    move-result-object v6

    .line 6976
    .local v6, "discreteAccesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$AttributedOpEntry;>;"
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    move-object v7, v0

    .line 6977
    .local v7, "accessEvents":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/app/AppOpsManager$NoteOpEvent;>;"
    invoke-static {p1, p2}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v8

    .line 6978
    .local v8, "key":J
    new-instance v10, Landroid/app/AppOpsManager$NoteOpEvent;

    move-object v0, v10

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 6979
    .local v0, "note":Landroid/app/AppOpsManager$NoteOpEvent;
    invoke-virtual {v7, v8, v9, v0}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 6980
    new-instance v1, Landroid/app/AppOpsManager$AttributedOpEntry;

    move-object v2, p0

    iget v3, v2, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v7, v5}, Landroid/app/AppOpsManager$AttributedOpEntry;-><init>(IZLandroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V

    .line 6981
    .local v1, "access":Landroid/app/AppOpsManager$AttributedOpEntry;
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    .line 6982
    .local v3, "insertionPoint":I
    :goto_0
    const/16 v10, 0x1f

    if-ltz v3, :cond_1

    .line 6983
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-virtual {v11, v10}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v11

    cmp-long v11, v11, p3

    if-gez v11, :cond_0

    .line 6985
    goto :goto_1

    .line 6982
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 6988
    :cond_1
    :goto_1
    add-int/2addr v3, v5

    .line 6989
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_2

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 6990
    invoke-virtual {v11, v10}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v10

    cmp-long v10, v10, p3

    if-nez v10, :cond_2

    .line 6991
    const/4 v10, 0x2

    new-array v10, v10, [Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 6992
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$AttributedOpEntry;

    aput-object v11, v10, v4

    aput-object v1, v10, v5

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 6991
    invoke-static {v4}, Landroid/app/AppOpsManager;->-$$Nest$smmergeAttributedOpEntries(Ljava/util/List;)Landroid/app/AppOpsManager$AttributedOpEntry;

    move-result-object v4

    invoke-interface {v6, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 6994
    :cond_2
    invoke-interface {v6, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6996
    :goto_2
    return-void
.end method

.method private blacklist filter(IDJJ)V
    .locals 8
    .param p1, "historyFlag"    # I
    .param p2, "scaleFactor"    # D
    .param p4, "beginTimeMillis"    # J
    .param p6, "endTimeMillis"    # J

    .line 6854
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 6855
    iput-object v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    .line 6856
    iput-object v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    .line 6857
    iput-object v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    goto :goto_0

    .line 6859
    :cond_0
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    invoke-static {v0, p2, p3}, Landroid/app/AppOpsManager$HistoricalOp;->scale(Landroid/util/LongSparseLongArray;D)V

    .line 6860
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    invoke-static {v0, p2, p3}, Landroid/app/AppOpsManager$HistoricalOp;->scale(Landroid/util/LongSparseLongArray;D)V

    .line 6861
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    invoke-static {v0, p2, p3}, Landroid/app/AppOpsManager$HistoricalOp;->scale(Landroid/util/LongSparseLongArray;D)V

    .line 6863
    :goto_0
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    .line 6864
    iput-object v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    .line 6865
    return-void

    .line 6867
    :cond_1
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalOp;->getDiscreteAccessCount()I

    move-result v0

    .line 6868
    .local v0, "discreteOpCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 6869
    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 6870
    .local v2, "op":Landroid/app/AppOpsManager$AttributedOpEntry;
    const/16 v3, 0x1f

    invoke-virtual {v2, v3}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v4

    .line 6871
    .local v4, "opBeginTime":J
    invoke-virtual {v2, v3}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(I)J

    move-result-wide v6

    add-long/2addr v6, v4

    .line 6872
    .local v6, "opEndTime":J
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v6

    .line 6873
    cmp-long v3, v6, p4

    if-ltz v3, :cond_2

    cmp-long v3, v4, p6

    if-lez v3, :cond_3

    .line 6874
    :cond_2
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6868
    .end local v2    # "op":Landroid/app/AppOpsManager$AttributedOpEntry;
    .end local v4    # "opBeginTime":J
    .end local v6    # "opEndTime":J
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 6877
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method private blacklist getOrCreateAccessCount()Landroid/util/LongSparseLongArray;
    .locals 1

    .line 7342
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    if-nez v0, :cond_0

    .line 7343
    new-instance v0, Landroid/util/LongSparseLongArray;

    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    .line 7345
    :cond_0
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    return-object v0
.end method

.method private blacklist getOrCreateAccessDuration()Landroid/util/LongSparseLongArray;
    .locals 1

    .line 7356
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    if-nez v0, :cond_0

    .line 7357
    new-instance v0, Landroid/util/LongSparseLongArray;

    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    .line 7359
    :cond_0
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    return-object v0
.end method

.method private blacklist getOrCreateDiscreteAccesses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation

    .line 7363
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    if-nez v0, :cond_0

    .line 7364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    .line 7366
    :cond_0
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    return-object v0
.end method

.method private blacklist getOrCreateRejectCount()Landroid/util/LongSparseLongArray;
    .locals 1

    .line 7349
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    if-nez v0, :cond_0

    .line 7350
    new-instance v0, Landroid/util/LongSparseLongArray;

    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    .line 7352
    :cond_0
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    return-object v0
.end method

.method private blacklist hasData(Landroid/util/LongSparseLongArray;)Z
    .locals 1
    .param p1, "array"    # Landroid/util/LongSparseLongArray;

    .line 6887
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/LongSparseLongArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist increaseAccessCount(IIJ)V
    .locals 6
    .param p1, "uidState"    # I
    .param p2, "flags"    # I
    .param p3, "increment"    # J

    .line 6949
    invoke-direct {p0}, Landroid/app/AppOpsManager$HistoricalOp;->getOrCreateAccessCount()Landroid/util/LongSparseLongArray;

    move-result-object v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager$HistoricalOp;->increaseCount(Landroid/util/LongSparseLongArray;IIJ)V

    .line 6950
    return-void
.end method

.method private blacklist increaseAccessDuration(IIJ)V
    .locals 6
    .param p1, "uidState"    # I
    .param p2, "flags"    # I
    .param p3, "increment"    # J

    .line 6959
    invoke-direct {p0}, Landroid/app/AppOpsManager$HistoricalOp;->getOrCreateAccessDuration()Landroid/util/LongSparseLongArray;

    move-result-object v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager$HistoricalOp;->increaseCount(Landroid/util/LongSparseLongArray;IIJ)V

    .line 6960
    return-void
.end method

.method private blacklist increaseCount(Landroid/util/LongSparseLongArray;IIJ)V
    .locals 5
    .param p1, "counts"    # Landroid/util/LongSparseLongArray;
    .param p2, "uidState"    # I
    .param p3, "flags"    # I
    .param p4, "increment"    # J

    .line 6964
    :goto_0
    if-eqz p3, :cond_0

    .line 6965
    const/4 v0, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    shl-int/2addr v0, v1

    .line 6966
    .local v0, "flag":I
    not-int v1, v0

    and-int/2addr p3, v1

    .line 6967
    invoke-static {p2, v0}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v1

    .line 6968
    .local v1, "key":J
    invoke-virtual {p1, v1, v2}, Landroid/util/LongSparseLongArray;->get(J)J

    move-result-wide v3

    add-long/2addr v3, p4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 6969
    .end local v0    # "flag":I
    .end local v1    # "key":J
    goto :goto_0

    .line 6970
    :cond_0
    return-void
.end method

.method private blacklist increaseRejectCount(IIJ)V
    .locals 6
    .param p1, "uidState"    # I
    .param p2, "flags"    # I
    .param p3, "increment"    # J

    .line 6954
    invoke-direct {p0}, Landroid/app/AppOpsManager$HistoricalOp;->getOrCreateRejectCount()Landroid/util/LongSparseLongArray;

    move-result-object v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager$HistoricalOp;->increaseCount(Landroid/util/LongSparseLongArray;IIJ)V

    .line 6955
    return-void
.end method

.method private blacklist isEmpty()Z
    .locals 1

    .line 6880
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    invoke-direct {p0, v0}, Landroid/app/AppOpsManager$HistoricalOp;->hasData(Landroid/util/LongSparseLongArray;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    .line 6881
    invoke-direct {p0, v0}, Landroid/app/AppOpsManager$HistoricalOp;->hasData(Landroid/util/LongSparseLongArray;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    .line 6882
    invoke-direct {p0, v0}, Landroid/app/AppOpsManager$HistoricalOp;->hasData(Landroid/util/LongSparseLongArray;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6880
    :goto_0
    return v0
.end method

.method private blacklist merge(Landroid/app/AppOpsManager$HistoricalOp;)V
    .locals 9
    .param p1, "other"    # Landroid/app/AppOpsManager$HistoricalOp;

    .line 6916
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda0;-><init>(Landroid/app/AppOpsManager$HistoricalOp;)V

    iget-object v1, p1, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    invoke-static {v0, v1}, Landroid/app/AppOpsManager$HistoricalOp;->merge(Ljava/util/function/Supplier;Landroid/util/LongSparseLongArray;)V

    .line 6917
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda1;-><init>(Landroid/app/AppOpsManager$HistoricalOp;)V

    iget-object v1, p1, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    invoke-static {v0, v1}, Landroid/app/AppOpsManager$HistoricalOp;->merge(Ljava/util/function/Supplier;Landroid/util/LongSparseLongArray;)V

    .line 6918
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda2;-><init>(Landroid/app/AppOpsManager$HistoricalOp;)V

    iget-object v1, p1, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    invoke-static {v0, v1}, Landroid/app/AppOpsManager$HistoricalOp;->merge(Ljava/util/function/Supplier;Landroid/util/LongSparseLongArray;)V

    .line 6920
    iget-object v0, p1, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    if-nez v0, :cond_0

    .line 6921
    return-void

    .line 6923
    :cond_0
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    if-nez v0, :cond_1

    .line 6924
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    .line 6925
    return-void

    .line 6927
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6928
    .local v0, "historicalDiscreteAccesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$AttributedOpEntry;>;"
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOp;->getDiscreteAccessCount()I

    move-result v1

    .line 6929
    .local v1, "otherHistoricalOpCount":I
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalOp;->getDiscreteAccessCount()I

    move-result v2

    .line 6930
    .local v2, "historicalOpCount":I
    const/4 v3, 0x0

    .line 6931
    .local v3, "i":I
    const/4 v4, 0x0

    .line 6932
    .local v4, "j":I
    :goto_0
    if-lt v3, v1, :cond_3

    if-ge v4, v2, :cond_2

    goto :goto_1

    .line 6944
    :cond_2
    invoke-static {v0}, Landroid/app/AppOpsManager;->-$$Nest$smdeduplicateDiscreteEvents(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    .line 6945
    return-void

    .line 6933
    :cond_3
    :goto_1
    if-ne v3, v1, :cond_4

    .line 6934
    iget-object v5, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    add-int/lit8 v6, v4, 0x1

    .end local v4    # "j":I
    .local v6, "j":I
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v6

    goto :goto_0

    .line 6935
    .end local v6    # "j":I
    .restart local v4    # "j":I
    :cond_4
    if-ne v4, v2, :cond_5

    .line 6936
    iget-object v5, p1, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "i":I
    .local v6, "i":I
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v6

    goto :goto_0

    .line 6937
    .end local v6    # "i":I
    .restart local v3    # "i":I
    :cond_5
    iget-object v5, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$AttributedOpEntry;

    const/16 v6, 0x1f

    invoke-virtual {v5, v6}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v7

    iget-object v5, p1, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    .line 6938
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-virtual {v5, v6}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v5

    cmp-long v5, v7, v5

    if-gez v5, :cond_6

    .line 6939
    iget-object v5, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    add-int/lit8 v6, v4, 0x1

    .end local v4    # "j":I
    .local v6, "j":I
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v6

    goto :goto_0

    .line 6941
    .end local v6    # "j":I
    .restart local v4    # "j":I
    :cond_6
    iget-object v5, p1, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "i":I
    .local v6, "i":I
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v6

    goto :goto_0
.end method

.method private static blacklist merge(Ljava/util/function/Supplier;Landroid/util/LongSparseLongArray;)V
    .locals 9
    .param p1, "other"    # Landroid/util/LongSparseLongArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/util/LongSparseLongArray;",
            ">;",
            "Landroid/util/LongSparseLongArray;",
            ")V"
        }
    .end annotation

    .line 7394
    .local p0, "thisSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/util/LongSparseLongArray;>;"
    if-eqz p1, :cond_0

    .line 7395
    invoke-virtual {p1}, Landroid/util/LongSparseLongArray;->size()I

    move-result v0

    .line 7396
    .local v0, "otherSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7397
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseLongArray;

    .line 7398
    .local v2, "that":Landroid/util/LongSparseLongArray;
    invoke-virtual {p1, v1}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v3

    .line 7399
    .local v3, "otherKey":J
    invoke-virtual {p1, v1}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v5

    .line 7400
    .local v5, "otherValue":J
    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseLongArray;->get(J)J

    move-result-wide v7

    add-long/2addr v7, v5

    invoke-virtual {v2, v3, v4, v7, v8}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 7396
    .end local v2    # "that":Landroid/util/LongSparseLongArray;
    .end local v3    # "otherKey":J
    .end local v5    # "otherValue":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7403
    .end local v0    # "otherSize":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private static blacklist scale(Landroid/util/LongSparseLongArray;D)V
    .locals 6
    .param p0, "data"    # Landroid/util/LongSparseLongArray;
    .param p1, "scaleFactor"    # D

    .line 7377
    if-eqz p0, :cond_0

    .line 7378
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v0

    .line 7379
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7380
    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v2

    .line 7381
    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v4

    long-to-double v4, v4

    mul-double/2addr v4, p1

    .line 7380
    invoke-static {v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;->round(D)D

    move-result-wide v4

    double-to-long v4, v4

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 7379
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7384
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist splice(D)Landroid/app/AppOpsManager$HistoricalOp;
    .locals 3
    .param p1, "fractionToRemove"    # D

    .line 6891
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOp;

    iget v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    invoke-direct {v0, v1}, Landroid/app/AppOpsManager$HistoricalOp;-><init>(I)V

    .line 6892
    .local v0, "splice":Landroid/app/AppOpsManager$HistoricalOp;
    iget-object v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda0;-><init>(Landroid/app/AppOpsManager$HistoricalOp;)V

    invoke-static {v1, v2, p1, p2}, Landroid/app/AppOpsManager$HistoricalOp;->splice(Landroid/util/LongSparseLongArray;Ljava/util/function/Supplier;D)V

    .line 6893
    iget-object v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda1;-><init>(Landroid/app/AppOpsManager$HistoricalOp;)V

    invoke-static {v1, v2, p1, p2}, Landroid/app/AppOpsManager$HistoricalOp;->splice(Landroid/util/LongSparseLongArray;Ljava/util/function/Supplier;D)V

    .line 6894
    iget-object v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda2;-><init>(Landroid/app/AppOpsManager$HistoricalOp;)V

    invoke-static {v1, v2, p1, p2}, Landroid/app/AppOpsManager$HistoricalOp;->splice(Landroid/util/LongSparseLongArray;Ljava/util/function/Supplier;D)V

    .line 6895
    return-object v0
.end method

.method private static blacklist splice(Landroid/util/LongSparseLongArray;Ljava/util/function/Supplier;D)V
    .locals 10
    .param p0, "sourceContainer"    # Landroid/util/LongSparseLongArray;
    .param p2, "fractionToRemove"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseLongArray;",
            "Ljava/util/function/Supplier<",
            "Landroid/util/LongSparseLongArray;",
            ">;D)V"
        }
    .end annotation

    .line 6901
    .local p1, "destContainerProvider":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/util/LongSparseLongArray;>;"
    if-eqz p0, :cond_1

    .line 6902
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v0

    .line 6903
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6904
    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v2

    .line 6905
    .local v2, "key":J
    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v4

    .line 6906
    .local v4, "value":J
    long-to-double v6, v4

    mul-double/2addr v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    .line 6907
    .local v6, "removedFraction":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_0

    .line 6908
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/LongSparseLongArray;

    invoke-virtual {v8, v2, v3, v6, v7}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 6909
    sub-long v8, v4, v6

    invoke-virtual {p0, v2, v3, v8, v9}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 6903
    .end local v2    # "key":J
    .end local v4    # "value":J
    .end local v6    # "removedFraction":J
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6913
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist collectKeys()Landroid/util/LongSparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 7407
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/AppOpsManager;->-$$Nest$smcollectKeys(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v0

    .line 7409
    .local v0, "result":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Object;>;"
    iget-object v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    invoke-static {v1, v0}, Landroid/app/AppOpsManager;->-$$Nest$smcollectKeys(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v0

    .line 7410
    iget-object v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    invoke-static {v1, v0}, Landroid/app/AppOpsManager;->-$$Nest$smcollectKeys(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v0

    .line 7411
    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 7290
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 7304
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 7305
    return v0

    .line 7307
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 7310
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/AppOpsManager$HistoricalOp;

    .line 7311
    .local v2, "other":Landroid/app/AppOpsManager$HistoricalOp;
    iget v3, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    iget v4, v2, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    if-eq v3, v4, :cond_2

    .line 7312
    return v1

    .line 7314
    :cond_2
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    iget-object v4, v2, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    invoke-static {v3, v4}, Landroid/app/AppOpsManager;->-$$Nest$smequalsLongSparseLongArray(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 7315
    return v1

    .line 7317
    :cond_3
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    iget-object v4, v2, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    invoke-static {v3, v4}, Landroid/app/AppOpsManager;->-$$Nest$smequalsLongSparseLongArray(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 7318
    return v1

    .line 7320
    :cond_4
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    iget-object v4, v2, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    invoke-static {v3, v4}, Landroid/app/AppOpsManager;->-$$Nest$smequalsLongSparseLongArray(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 7321
    return v1

    .line 7323
    :cond_5
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    if-nez v3, :cond_7

    iget-object v3, v2, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    if-nez v3, :cond_6

    goto :goto_0

    .line 7324
    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v0, v2, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 7323
    :goto_0
    return v0

    .line 7308
    .end local v2    # "other":Landroid/app/AppOpsManager$HistoricalOp;
    :cond_8
    :goto_1
    return v1
.end method

.method public whitelist getAccessCount(III)J
    .locals 2
    .param p1, "fromUidState"    # I
    .param p2, "toUidState"    # I
    .param p3, "flags"    # I

    .line 7142
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    invoke-static {v0, p1, p2, p3}, Landroid/app/AppOpsManager;->-$$Nest$smsumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getAccessDuration(III)J
    .locals 2
    .param p1, "fromUidState"    # I
    .param p2, "toUidState"    # I
    .param p3, "flags"    # I

    .line 7285
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    invoke-static {v0, p1, p2, p3}, Landroid/app/AppOpsManager;->-$$Nest$smsumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getBackgroundAccessCount(I)J
    .locals 3
    .param p1, "flags"    # I

    .line 7097
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    iget v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v1

    const/16 v2, 0x2bc

    invoke-static {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->-$$Nest$smsumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getBackgroundAccessDuration(I)J
    .locals 3
    .param p1, "flags"    # I

    .line 7259
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    iget v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v1

    const/16 v2, 0x2bc

    invoke-static {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->-$$Nest$smsumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getBackgroundDiscreteAccesses(I)Ljava/util/List;
    .locals 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation

    .line 7116
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    iget v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v1

    const/16 v2, 0x2bc

    invoke-static {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->-$$Nest$smlistForFlagsInStates(Ljava/util/List;III)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBackgroundRejectCount(I)J
    .locals 3
    .param p1, "flags"    # I

    .line 7197
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    iget v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v1

    const/16 v2, 0x2bc

    invoke-static {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->-$$Nest$smsumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getDiscreteAccessAt(I)Landroid/app/AppOpsManager$AttributedOpEntry;
    .locals 1
    .param p1, "index"    # I

    .line 7040
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 7043
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$AttributedOpEntry;

    return-object v0

    .line 7041
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist getDiscreteAccessCount()I
    .locals 1

    .line 7026
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    if-nez v0, :cond_0

    .line 7027
    const/4 v0, 0x0

    return v0

    .line 7029
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getDiscreteAccesses(III)Ljava/util/List;
    .locals 1
    .param p1, "fromUidState"    # I
    .param p2, "toUidState"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation

    .line 7162
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    invoke-static {v0, p1, p2, p3}, Landroid/app/AppOpsManager;->-$$Nest$smlistForFlagsInStates(Ljava/util/List;III)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getForegroundAccessCount(I)J
    .locals 3
    .param p1, "flags"    # I

    .line 7060
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    iget v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    .line 7061
    invoke-static {v1}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v1

    .line 7060
    const/16 v2, 0x64

    invoke-static {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->-$$Nest$smsumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getForegroundAccessDuration(I)J
    .locals 3
    .param p1, "flags"    # I

    .line 7240
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    iget v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    .line 7241
    invoke-static {v1}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v1

    .line 7240
    const/16 v2, 0x64

    invoke-static {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->-$$Nest$smsumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getForegroundDiscreteAccesses(I)Ljava/util/List;
    .locals 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation

    .line 7079
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    iget v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    .line 7080
    invoke-static {v1}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v1

    .line 7079
    const/16 v2, 0x64

    invoke-static {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->-$$Nest$smlistForFlagsInStates(Ljava/util/List;III)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getForegroundRejectCount(I)J
    .locals 3
    .param p1, "flags"    # I

    .line 7179
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    iget v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    .line 7180
    invoke-static {v1}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v1

    .line 7179
    const/16 v2, 0x64

    invoke-static {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->-$$Nest$smsumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getOpCode()I
    .locals 1

    .line 7016
    iget v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    return v0
.end method

.method public whitelist getOpName()Ljava/lang/String;
    .locals 2

    .line 7008
    iget v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    const/16 v1, 0x2710

    if-le v0, v1, :cond_0

    const/16 v1, 0x2712

    if-ge v0, v1, :cond_0

    .line 7009
    add-int/lit16 v0, v0, -0x2710

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, 0x79

    goto :goto_0

    :cond_0
    nop

    .line 7010
    .local v0, "op":I
    :goto_0
    invoke-static {}, Landroid/app/AppOpsManager;->getOpStrs()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    return-object v1
.end method

.method public whitelist getRejectCount(III)J
    .locals 2
    .param p1, "fromUidState"    # I
    .param p2, "toUidState"    # I
    .param p3, "flags"    # I

    .line 7222
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    invoke-static {v0, p1, p2, p3}, Landroid/app/AppOpsManager;->-$$Nest$smsumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 7329
    iget v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    .line 7330
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 7331
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7332
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 7333
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7334
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 7295
    iget v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7296
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    invoke-static {v0, p1}, Landroid/app/AppOpsManager;->-$$Nest$smwriteLongSparseLongArrayToParcel(Landroid/util/LongSparseLongArray;Landroid/os/Parcel;)V

    .line 7297
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    invoke-static {v0, p1}, Landroid/app/AppOpsManager;->-$$Nest$smwriteLongSparseLongArrayToParcel(Landroid/util/LongSparseLongArray;Landroid/os/Parcel;)V

    .line 7298
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    invoke-static {v0, p1}, Landroid/app/AppOpsManager;->-$$Nest$smwriteLongSparseLongArrayToParcel(Landroid/util/LongSparseLongArray;Landroid/os/Parcel;)V

    .line 7299
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    invoke-static {v0, p1, p2}, Landroid/app/AppOpsManager;->-$$Nest$smwriteDiscreteAccessArrayToParcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 7300
    return-void
.end method
