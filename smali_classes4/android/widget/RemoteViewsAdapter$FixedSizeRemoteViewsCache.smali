.class Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FixedSizeRemoteViewsCache"
.end annotation


# static fields
.field private static final greylist-max-o sMaxCountSlackPercent:F = 0.75f

.field private static final greylist-max-o sMaxMemoryLimitInBytes:I = 0x200000


# instance fields
.field private final blacklist mConfiguration:Landroid/content/res/Configuration;

.field private final greylist-max-o mIndexMetaData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mIndexRemoteViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mIndicesToLoad:Landroid/util/SparseBooleanArray;

.field private greylist-max-o mLastRequestedIndex:I

.field private final greylist-max-o mMaxCount:I

.field private final greylist-max-o mMaxCountSlack:I

.field private final greylist-max-o mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

.field private greylist-max-o mPreloadLowerBound:I

.field private greylist-max-o mPreloadUpperBound:I

.field private final greylist-max-o mTemporaryMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConfiguration(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/content/res/Configuration;
    .locals 0

    iget-object p0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIndexRemoteViews(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMetaData(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .locals 0

    iget-object p0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    return-object p0
.end method

.method constructor blacklist <init>(ILandroid/content/res/Configuration;)V
    .locals 2
    .param p1, "maxCacheSize"    # I
    .param p2, "configuration"    # Landroid/content/res/Configuration;

    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    new-instance v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    invoke-direct {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    .line 577
    new-instance v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    invoke-direct {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mTemporaryMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    .line 586
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Landroid/util/SparseArray;

    .line 590
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    .line 594
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    .line 618
    iput p1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCount:I

    .line 619
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCountSlack:I

    .line 620
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    .line 621
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    .line 622
    iput v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLastRequestedIndex:I

    .line 624
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mConfiguration:Landroid/content/res/Configuration;

    .line 625
    return-void
.end method

.method private greylist-max-o getFarthestPositionFrom(I[I)I
    .locals 8
    .param p1, "pos"    # I
    .param p2, "visibleWindow"    # [I

    .line 697
    const/4 v0, 0x0

    .line 698
    .local v0, "maxDist":I
    const/4 v1, -0x1

    .line 699
    .local v1, "maxDistIndex":I
    const/4 v2, 0x0

    .line 700
    .local v2, "maxDistNotVisible":I
    const/4 v3, -0x1

    .line 701
    .local v3, "maxDistIndexNotVisible":I
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 702
    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 703
    .local v5, "index":I
    sub-int v6, v5, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 704
    .local v6, "dist":I
    if-le v6, v2, :cond_0

    invoke-static {p2, v5}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v7

    if-gez v7, :cond_0

    .line 707
    move v3, v5

    .line 708
    move v2, v6

    .line 710
    :cond_0
    if-lt v6, v0, :cond_1

    .line 713
    move v1, v5

    .line 714
    move v0, v6

    .line 701
    .end local v5    # "index":I
    .end local v6    # "dist":I
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 717
    .end local v4    # "i":I
    :cond_2
    const/4 v4, -0x1

    if-le v3, v4, :cond_3

    .line 718
    return v3

    .line 720
    :cond_3
    return v1
.end method

.method private greylist-max-o getRemoteViewsBitmapMemoryUsage()I
    .locals 4

    .line 685
    const/4 v0, 0x0

    .line 686
    .local v0, "mem":I
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 687
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 688
    .local v2, "v":Landroid/widget/RemoteViews;
    if-eqz v2, :cond_0

    .line 689
    invoke-virtual {v2}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v3

    add-int/2addr v0, v3

    .line 686
    .end local v2    # "v":Landroid/widget/RemoteViews;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 692
    .end local v1    # "i":I
    :cond_1
    return v0
.end method


# virtual methods
.method public greylist-max-o commitTemporaryMetaData()V
    .locals 4

    .line 676
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mTemporaryMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    monitor-enter v0

    .line 677
    :try_start_0
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 678
    :try_start_1
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mTemporaryMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->set(Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;)V

    .line 679
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 680
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 681
    return-void

    .line 679
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
    :try_start_4
    throw v2

    .line 680
    .restart local p0    # "this":Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public greylist-max-o containsMetaDataAt(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 790
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o containsRemoteViewAt(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 787
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .locals 1

    .line 663
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    return-object v0
.end method

.method public greylist-max-o getMetaDataAt(I)Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .locals 1
    .param p1, "position"    # I

    .line 672
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    return-object v0
.end method

.method public greylist-max-o getNextIndexToLoad()I
    .locals 4

    .line 769
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 771
    :try_start_0
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    move-result v1

    .line 772
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 774
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    move-result v2

    move v1, v2

    .line 776
    :cond_0
    if-gez v1, :cond_1

    .line 777
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 779
    :cond_1
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 780
    .local v2, "key":I
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 781
    monitor-exit v0

    return v2

    .line 783
    .end local v1    # "index":I
    .end local v2    # "key":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o getRemoteViewsAt(I)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "position"    # I

    .line 669
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public greylist-max-o getTemporaryMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .locals 1

    .line 666
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mTemporaryMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    return-object v0
.end method

.method public greylist-max-o insert(ILandroid/widget/RemoteViews;J[I)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/widget/RemoteViews;
    .param p3, "itemId"    # J
    .param p5, "visibleWindow"    # [I

    .line 629
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    iget v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCount:I

    if-lt v0, v1, :cond_0

    .line 630
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    invoke-direct {p0, p1, p5}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getFarthestPositionFrom(I[I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 634
    :cond_0
    iget v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLastRequestedIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    .line 635
    .local v0, "pruneFromPosition":I
    :goto_0
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getRemoteViewsBitmapMemoryUsage()I

    move-result v1

    const/high16 v2, 0x200000

    if-lt v1, v2, :cond_3

    .line 641
    invoke-direct {p0, v0, p5}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getFarthestPositionFrom(I[I)I

    move-result v1

    .line 645
    .local v1, "trimIndex":I
    if-gez v1, :cond_2

    .line 646
    goto :goto_1

    .line 649
    :cond_2
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 650
    .end local v1    # "trimIndex":I
    goto :goto_0

    .line 653
    :cond_3
    :goto_1
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    .line 654
    .local v1, "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    if-eqz v1, :cond_4

    .line 655
    invoke-virtual {v1, p2, p3, p4}, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->set(Landroid/widget/RemoteViews;J)V

    goto :goto_2

    .line 657
    :cond_4
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Landroid/util/SparseArray;

    new-instance v3, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    invoke-direct {v3, p2, p3, p4}, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;-><init>(Landroid/widget/RemoteViews;J)V

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 659
    :goto_2
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 660
    return-void
.end method

.method public greylist-max-o queuePositionsToBePreloadedFromRequestedPosition(I)Z
    .locals 9
    .param p1, "position"    # I

    .line 731
    iget v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    const/4 v1, 0x0

    if-gt v0, p1, :cond_0

    iget v2, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    if-gt p1, v2, :cond_0

    .line 732
    add-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 733
    .local v2, "center":I
    sub-int v0, p1, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCountSlack:I

    if-ge v0, v3, :cond_0

    .line 734
    return v1

    .line 739
    .end local v2    # "center":I
    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    monitor-enter v0

    .line 740
    :try_start_0
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    iget v2, v2, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    .line 741
    .local v2, "count":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 742
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    monitor-enter v3

    .line 744
    :try_start_1
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 745
    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 746
    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 744
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 751
    .end local v0    # "i":I
    :cond_2
    iget v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMaxCount:I

    div-int/lit8 v0, v0, 0x2

    .line 752
    .local v0, "halfMaxCount":I
    sub-int v5, p1, v0

    iput v5, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    .line 753
    add-int v6, p1, v0

    iput v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    .line 754
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 755
    .local v5, "effectiveLowerBound":I
    iget v6, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    add-int/lit8 v7, v2, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 756
    .local v6, "effectiveUpperBound":I
    move v7, v5

    .local v7, "i":I
    :goto_1
    if-gt v7, v6, :cond_4

    .line 757
    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v8

    if-gez v8, :cond_3

    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-nez v8, :cond_3

    .line 759
    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v7, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 756
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 762
    .end local v0    # "halfMaxCount":I
    .end local v5    # "effectiveLowerBound":I
    .end local v6    # "effectiveUpperBound":I
    .end local v7    # "i":I
    :cond_4
    monitor-exit v3

    .line 763
    return v4

    .line 762
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 741
    .end local v2    # "count":I
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public greylist-max-o queueRequestedPositionToLoad(I)V
    .locals 3
    .param p1, "position"    # I

    .line 724
    iput p1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLastRequestedIndex:I

    .line 725
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 726
    :try_start_0
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 727
    monitor-exit v0

    .line 728
    return-void

    .line 727
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o reset()V
    .locals 2

    .line 798
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadLowerBound:I

    .line 799
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mPreloadUpperBound:I

    .line 800
    iput v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mLastRequestedIndex:I

    .line 801
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 802
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexMetaData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 803
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 804
    :try_start_0
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndicesToLoad:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 805
    monitor-exit v0

    .line 806
    return-void

    .line 805
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
