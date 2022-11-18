.class public Landroid/hardware/camera2/impl/FrameNumberTracker;
.super Ljava/lang/Object;
.source "FrameNumberTracker.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FrameNumberTracker"


# instance fields
.field private blacklist mCompletedFrameNumber:[J

.field private final blacklist mFutureErrorMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPartialResults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mPendingFrameNumbers:[Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 5

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x3

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    .line 44
    new-array v1, v0, [Ljava/util/LinkedList;

    iput-object v1, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    .line 49
    new-array v1, v0, [Ljava/util/LinkedList;

    iput-object v1, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    .line 53
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mFutureErrorMap:Ljava/util/TreeMap;

    .line 55
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPartialResults:Ljava/util/HashMap;

    .line 58
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 59
    iget-object v2, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    const-wide/16 v3, -0x1

    aput-wide v3, v2, v1

    .line 60
    iget-object v2, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    aput-object v3, v2, v1

    .line 61
    iget-object v2, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    aput-object v3, v2, v1

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist update()V
    .locals 11

    .line 66
    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mFutureErrorMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 67
    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 69
    .local v1, "pair":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 70
    .local v2, "errorFrameNumber":Ljava/lang/Long;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 71
    .local v3, "requestType":I
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 72
    .local v4, "removeError":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    aget-wide v7, v7, v3

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    cmp-long v5, v5, v7

    const/4 v6, 0x1

    if-nez v5, :cond_0

    .line 73
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 77
    :cond_0
    iget-object v5, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 78
    iget-object v5, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    move-result-object v5

    if-ne v2, v5, :cond_3

    .line 79
    iget-object v5, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 80
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_2

    .line 83
    :cond_1
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_1
    const/4 v7, 0x3

    if-ge v5, v7, :cond_3

    .line 84
    add-int v8, v3, v5

    rem-int/2addr v8, v7

    .line 85
    .local v8, "otherType":I
    iget-object v7, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v7, v7, v8

    .line 86
    invoke-virtual {v7}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    move-result-object v7

    if-ne v2, v7, :cond_2

    .line 87
    iget-object v7, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 88
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 89
    goto :goto_2

    .line 83
    .end local v8    # "otherType":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 93
    .end local v5    # "i":I
    :cond_3
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 94
    iget-object v5, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v5, v3

    .line 95
    iget-object v5, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPartialResults:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 98
    .end local v1    # "pair":Ljava/util/Map$Entry;
    .end local v2    # "errorFrameNumber":Ljava/lang/Long;
    .end local v3    # "requestType":I
    .end local v4    # "removeError":Ljava/lang/Boolean;
    :cond_4
    goto/16 :goto_0

    .line 99
    :cond_5
    return-void
.end method

.method private blacklist updateCompletedFrameNumber(JI)V
    .locals 16
    .param p1, "frameNumber"    # J
    .param p3, "requestType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 194
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    aget-wide v4, v3, p3

    cmp-long v4, v1, v4

    const-string v5, " is a repeat"

    const-string v6, "frame number "

    if-lez v4, :cond_a

    .line 199
    add-int/lit8 v4, p3, 0x1

    rem-int/lit8 v4, v4, 0x3

    .line 200
    .local v4, "otherType1":I
    add-int/lit8 v7, p3, 0x2

    rem-int/lit8 v7, v7, 0x3

    .line 201
    .local v7, "otherType2":I
    aget-wide v8, v3, v4

    aget-wide v10, v3, v7

    .line 202
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 203
    .local v8, "maxOtherFrameNumberSeen":J
    cmp-long v3, v1, v8

    if-gez v3, :cond_8

    .line 208
    iget-object v3, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    aget-object v3, v3, p3

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 211
    iget-object v3, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    aget-object v3, v3, p3

    invoke-virtual {v3}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 212
    .local v3, "pendingFrameNumberSameType":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v10, v1, v10

    if-nez v10, :cond_0

    .line 216
    iget-object v5, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    aget-object v5, v5, p3

    invoke-virtual {v5}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 225
    .end local v3    # "pendingFrameNumberSameType":Ljava/lang/Long;
    goto/16 :goto_4

    .line 217
    .restart local v3    # "pendingFrameNumberSameType":Ljava/lang/Long;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v10, v1, v10

    if-gez v10, :cond_1

    .line 218
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 221
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " comes out of order. Expecting "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 227
    .end local v3    # "pendingFrameNumberSameType":Ljava/lang/Long;
    :cond_2
    iget-object v3, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v3, v3, v4

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 228
    .local v3, "index1":I
    iget-object v5, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v5, v5, v7

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 229
    .local v5, "index2":I
    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x1

    if-eq v3, v11, :cond_3

    move v13, v12

    goto :goto_0

    :cond_3
    move v13, v10

    .line 230
    .local v13, "inSkippedOther1":Z
    :goto_0
    if-eq v5, v11, :cond_4

    move v10, v12

    .line 231
    .local v10, "inSkippedOther2":Z
    :cond_4
    xor-int v11, v13, v10

    if-eqz v11, :cond_7

    .line 246
    if-eqz v13, :cond_5

    .line 247
    iget-object v6, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v6, v6, v4

    .line 248
    .local v6, "srcList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    iget-object v11, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    aget-object v11, v11, v7

    .line 249
    .local v11, "dstList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    move v12, v3

    .local v12, "index":I
    goto :goto_1

    .line 251
    .end local v6    # "srcList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    .end local v11    # "dstList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    .end local v12    # "index":I
    :cond_5
    iget-object v6, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v6, v6, v7

    .line 252
    .restart local v6    # "srcList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    iget-object v11, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    aget-object v11, v11, v4

    .line 253
    .restart local v11    # "dstList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    move v12, v5

    .line 255
    .restart local v12    # "index":I
    :goto_1
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    if-ge v14, v12, :cond_6

    .line 256
    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v11, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 255
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 260
    .end local v14    # "i":I
    :cond_6
    invoke-virtual {v6}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 261
    .end local v3    # "index1":I
    .end local v5    # "index2":I
    .end local v6    # "srcList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    .end local v10    # "inSkippedOther2":Z
    .end local v11    # "dstList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    .end local v12    # "index":I
    .end local v13    # "inSkippedOther1":Z
    goto :goto_4

    .line 232
    .restart local v3    # "index1":I
    .restart local v5    # "index2":I
    .restart local v10    # "inSkippedOther2":Z
    .restart local v13    # "inSkippedOther1":Z
    :cond_7
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " is a repeat or invalid"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v11, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 265
    .end local v3    # "index1":I
    .end local v5    # "index2":I
    .end local v10    # "inSkippedOther2":Z
    .end local v13    # "inSkippedOther1":Z
    :cond_8
    iget-object v3, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    aget-wide v5, v3, p3

    .line 266
    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    const-wide/16 v10, 0x1

    add-long/2addr v5, v10

    .line 267
    .local v5, "i":J
    :goto_3
    cmp-long v3, v5, v1

    if-gez v3, :cond_9

    .line 268
    iget-object v3, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v3, v3, p3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 267
    add-long/2addr v5, v10

    goto :goto_3

    .line 272
    .end local v5    # "i":J
    :cond_9
    :goto_4
    iget-object v3, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    aput-wide v1, v3, p3

    .line 273
    return-void

    .line 195
    .end local v4    # "otherType1":I
    .end local v7    # "otherType2":I
    .end local v8    # "maxOtherFrameNumberSeen":J
    :cond_a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public blacklist close()V
    .locals 5

    .line 277
    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 278
    .local v4, "linkedList":Ljava/util/LinkedList;
    if-eqz v4, :cond_0

    .line 279
    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 277
    .end local v4    # "linkedList":Ljava/util/LinkedList;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 283
    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 284
    .local v3, "linkedList":Ljava/util/LinkedList;
    if-eqz v3, :cond_2

    .line 285
    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 283
    .end local v3    # "linkedList":Ljava/util/LinkedList;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 289
    :cond_3
    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPartialResults:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    .line 290
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 292
    :cond_4
    return-void
.end method

.method public blacklist getCompletedFrameNumber()J
    .locals 2

    .line 171
    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public blacklist getCompletedReprocessFrameNumber()J
    .locals 2

    .line 175
    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public blacklist getCompletedZslStillFrameNumber()J
    .locals 2

    .line 179
    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public blacklist popPartialResults(J)Ljava/util/List;
    .locals 2
    .param p1, "frameNumber"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPartialResults:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public blacklist updateTracker(JLandroid/hardware/camera2/CaptureResult;ZI)V
    .locals 3
    .param p1, "frameNumber"    # J
    .param p3, "result"    # Landroid/hardware/camera2/CaptureResult;
    .param p4, "partial"    # Z
    .param p5, "requestType"    # I

    .line 133
    if-nez p4, :cond_0

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p5}, Landroid/hardware/camera2/impl/FrameNumberTracker;->updateTracker(JZI)V

    .line 137
    return-void

    .line 140
    :cond_0
    if-nez p3, :cond_1

    .line 143
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPartialResults:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 148
    .local v0, "partials":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    if-nez v0, :cond_2

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 150
    iget-object v1, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPartialResults:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_2
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

.method public blacklist updateTracker(JZI)V
    .locals 3
    .param p1, "frameNumber"    # J
    .param p3, "isError"    # Z
    .param p4, "requestType"    # I

    .line 108
    if-eqz p3, :cond_0

    .line 109
    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mFutureErrorMap:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 112
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Landroid/hardware/camera2/impl/FrameNumberTracker;->updateCompletedFrameNumber(JI)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FrameNumberTracker"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/FrameNumberTracker;->update()V

    .line 118
    return-void
.end method
