.class public Lcom/android/net/module/util/PerUidCounter;
.super Ljava/lang/Object;
.source "PerUidCounter.java"


# instance fields
.field private final blacklist mMaxCountPerUid:I

.field final blacklist mUidToCount:Landroid/util/SparseIntArray;


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 2
    .param p1, "maxCountPerUid"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/net/module/util/PerUidCounter;->mUidToCount:Landroid/util/SparseIntArray;

    .line 44
    if-lez p1, :cond_0

    .line 47
    iput p1, p0, Lcom/android/net/module/util/PerUidCounter;->mMaxCountPerUid:I

    .line 48
    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum counter value must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist decrementCountOrThrow(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/net/module/util/PerUidCounter;->decrementCountOrThrow(II)V

    .line 88
    return-void
.end method

.method public declared-synchronized blacklist decrementCountOrThrow(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "numToDecrement"    # I

    monitor-enter p0

    .line 91
    if-lez p2, :cond_2

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/android/net/module/util/PerUidCounter;->mUidToCount:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    sub-int/2addr v0, p2

    .line 95
    .local v0, "newCount":I
    if-ltz v0, :cond_1

    .line 97
    if-nez v0, :cond_0

    .line 98
    iget-object v1, p0, Lcom/android/net/module/util/PerUidCounter;->mUidToCount:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_0

    .line 100
    .end local p0    # "this":Lcom/android/net/module/util/PerUidCounter;
    :cond_0
    iget-object v1, p0, Lcom/android/net/module/util/PerUidCounter;->mUidToCount:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :goto_0
    monitor-exit p0

    return-void

    .line 96
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BUG: too small count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    .end local v0    # "newCount":I
    .end local p1    # "uid":I
    .end local p2    # "numToDecrement":I
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 92
    .restart local p1    # "uid":I
    .restart local p2    # "numToDecrement":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Decrement count must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .end local p1    # "uid":I
    .end local p2    # "numToDecrement":I
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public blacklist incrementCountOrThrow(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/net/module/util/PerUidCounter;->incrementCountOrThrow(II)V

    .line 62
    return-void
.end method

.method public declared-synchronized blacklist incrementCountOrThrow(II)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "numToIncrement"    # I

    monitor-enter p0

    .line 65
    if-lez p2, :cond_1

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/android/net/module/util/PerUidCounter;->mUidToCount:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    int-to-long v0, v0

    int-to-long v2, p2

    add-long/2addr v0, v2

    .line 69
    .local v0, "newCount":J
    iget v2, p0, Lcom/android/net/module/util/PerUidCounter;->mMaxCountPerUid:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/android/net/module/util/PerUidCounter;->mUidToCount:Landroid/util/SparseIntArray;

    long-to-int v3, v0

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 70
    .end local p0    # "this":Lcom/android/net/module/util/PerUidCounter;
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " exceeded its allowed limit"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    .end local v0    # "newCount":J
    .end local p1    # "uid":I
    .end local p2    # "numToIncrement":I
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 66
    .restart local p1    # "uid":I
    .restart local p2    # "numToIncrement":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Increment count must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .end local p1    # "uid":I
    .end local p2    # "numToIncrement":I
    :goto_0
    monitor-exit p0

    throw p1
.end method
