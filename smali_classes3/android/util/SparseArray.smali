.class public Landroid/util/SparseArray;
.super Ljava/lang/Object;
.source "SparseArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final greylist-max-o DELETED:Ljava/lang/Object;


# instance fields
.field private greylist-max-o mGarbage:Z

.field private greylist-max-p mKeys:[I

.field private greylist-max-p mSize:I

.field private greylist-max-p mValues:[Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 74
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 75
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .line 84
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 85
    if-nez p1, :cond_0

    .line 86
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    iput-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    .line 87
    sget-object v1, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    goto :goto_0

    .line 89
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 90
    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    .line 92
    :goto_0
    iput v0, p0, Landroid/util/SparseArray;->mSize:I

    .line 93
    return-void
.end method

.method private greylist-max-o gc()V
    .locals 7

    .line 221
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    .line 222
    .local v0, "n":I
    const/4 v1, 0x0

    .line 223
    .local v1, "o":I
    iget-object v2, p0, Landroid/util/SparseArray;->mKeys:[I

    .line 224
    .local v2, "keys":[I
    iget-object v3, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 226
    .local v3, "values":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 227
    aget-object v5, v3, v4

    .line 229
    .local v5, "val":Ljava/lang/Object;
    sget-object v6, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v5, v6, :cond_1

    .line 230
    if-eq v4, v1, :cond_0

    .line 231
    aget v6, v2, v4

    aput v6, v2, v1

    .line 232
    aput-object v5, v3, v1

    .line 233
    const/4 v6, 0x0

    aput-object v6, v3, v4

    .line 236
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 226
    .end local v5    # "val":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 240
    .end local v4    # "i":I
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 241
    iput v1, p0, Landroid/util/SparseArray;->mSize:I

    .line 244
    return-void
.end method


# virtual methods
.method public whitelist append(ILjava/lang/Object;)V
    .locals 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 473
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    if-gt p1, v1, :cond_0

    .line 474
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 475
    return-void

    .line 478
    :cond_0
    iget-boolean v1, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 479
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 482
    :cond_1
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    .line 483
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 484
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/SparseArray;->mSize:I

    .line 485
    return-void
.end method

.method public whitelist clear()V
    .locals 4

    .line 457
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    .line 458
    .local v0, "n":I
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 460
    .local v1, "values":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 461
    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 460
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 464
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Landroid/util/SparseArray;->mSize:I

    .line 465
    iput-boolean v2, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 466
    return-void
.end method

.method public whitelist clone()Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "TE;>;"
        }
    .end annotation

    .line 98
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    const/4 v0, 0x0

    .line 100
    .local v0, "clone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    move-object v0, v1

    .line 101
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Landroid/util/SparseArray;->mKeys:[I

    .line 102
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    goto :goto_0

    .line 103
    :catch_0
    move-exception v1

    .line 106
    :goto_0
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 59
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public whitelist contains(I)Z
    .locals 1
    .param p1, "key"    # I

    .line 117
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist contentEquals(Landroid/util/SparseArray;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "*>;)Z"
        }
    .end annotation

    .line 527
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p1, "other":Landroid/util/SparseArray;, "Landroid/util/SparseArray<*>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 528
    return v0

    .line 531
    :cond_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 532
    .local v1, "size":I
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 533
    return v0

    .line 536
    :cond_1
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 537
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 538
    .local v3, "key":I
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 539
    return v0

    .line 536
    .end local v3    # "key":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 543
    .end local v2    # "index":I
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist contentHashCode()I
    .locals 7

    .line 554
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    const/4 v0, 0x0

    .line 555
    .local v0, "hash":I
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 556
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 557
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 558
    .local v3, "key":I
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 559
    .local v4, "value":Ljava/lang/Object;, "TE;"
    mul-int/lit8 v5, v0, 0x1f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v5, v6

    .line 560
    .end local v0    # "hash":I
    .local v5, "hash":I
    mul-int/lit8 v0, v5, 0x1f

    invoke-static {v4}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v0, v6

    .line 556
    .end local v3    # "key":I
    .end local v4    # "value":Ljava/lang/Object;, "TE;"
    .end local v5    # "hash":I
    .restart local v0    # "hash":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 562
    .end local v2    # "index":I
    :cond_0
    return v0
.end method

.method public whitelist delete(I)V
    .locals 4
    .param p1, "key"    # I

    .line 147
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 149
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 150
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v2, v1, v0

    sget-object v3, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    .line 151
    aput-object v3, v1, v0

    .line 152
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 155
    :cond_0
    return-void
.end method

.method public whitelist get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 125
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 134
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p2, "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 136
    .local v0, "i":I
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    return-object v1

    .line 137
    :cond_1
    :goto_0
    return-object p2
.end method

.method public whitelist indexOfKey(I)I
    .locals 2
    .param p1, "key"    # I

    .line 393
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 394
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 397
    :cond_0
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    return v0
.end method

.method public whitelist indexOfValue(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 411
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 412
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 415
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    if-ge v0, v1, :cond_2

    .line 416
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 417
    return v0

    .line 415
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 421
    .end local v0    # "i":I
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public greylist-max-o indexOfValueByValue(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 435
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 436
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 439
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    if-ge v0, v1, :cond_3

    .line 440
    if-nez p1, :cond_1

    .line 441
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 442
    return v0

    .line 445
    :cond_1
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 446
    return v0

    .line 439
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 450
    .end local v0    # "i":I
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist keyAt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 314
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    if-lt p1, v0, :cond_1

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 317
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 319
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_2

    .line 320
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 323
    :cond_2
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public whitelist put(ILjava/lang/Object;)V
    .locals 5
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 260
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 262
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 263
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v1, v0

    goto :goto_0

    .line 265
    :cond_0
    not-int v0, v0

    .line 267
    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    if-ge v0, v1, :cond_1

    iget-object v2, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v3, v2, v0

    sget-object v4, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-ne v3, v4, :cond_1

    .line 268
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    aput p1, v1, v0

    .line 269
    aput-object p2, v2, v0

    .line 270
    return-void

    .line 273
    :cond_1
    iget-boolean v2, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/util/SparseArray;->mKeys:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 274
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 277
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v1

    not-int v0, v1

    .line 280
    :cond_2
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v1, v2, v0, p1}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object v1

    iput-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    .line 281
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v1, v2, v0, p2}, Lcom/android/internal/util/GrowingArrayUtils;->insert([Ljava/lang/Object;IILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 282
    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/SparseArray;->mSize:I

    .line 284
    :goto_0
    return-void
.end method

.method public whitelist remove(I)V
    .locals 0
    .param p1, "key"    # I

    .line 179
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 180
    return-void
.end method

.method public whitelist removeAt(I)V
    .locals 3
    .param p1, "index"    # I

    .line 191
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    if-lt p1, v0, :cond_1

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 196
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v0, p1

    sget-object v2, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_2

    .line 197
    aput-object v2, v0, p1

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 200
    :cond_2
    return-void
.end method

.method public whitelist removeAtRange(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "size"    # I

    .line 212
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    add-int v1, p1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 213
    .local v0, "end":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 214
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public greylist-max-o removeReturnOld(I)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 162
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 164
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 165
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v2, v1, v0

    sget-object v3, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    .line 166
    aget-object v2, v1, v0

    .line 167
    .local v2, "old":Ljava/lang/Object;, "TE;"
    aput-object v3, v1, v0

    .line 168
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 169
    return-object v2

    .line 172
    .end local v2    # "old":Ljava/lang/Object;, "TE;"
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist set(ILjava/lang/Object;)V
    .locals 0
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 251
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 252
    return-void
.end method

.method public whitelist setValueAt(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 375
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    if-lt p1, v0, :cond_1

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 378
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 380
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_2

    .line 381
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 384
    :cond_2
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 385
    return-void
.end method

.method public whitelist size()I
    .locals 1

    .line 291
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 292
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 295
    :cond_0
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    .line 496
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 497
    const-string/jumbo v0, "{}"

    return-object v0

    .line 500
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 501
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 502
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    if-ge v1, v2, :cond_3

    .line 503
    if-lez v1, :cond_1

    .line 504
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 507
    .local v2, "key":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 508
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 510
    .local v3, "value":Ljava/lang/Object;
    if-eq v3, p0, :cond_2

    .line 511
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 513
    :cond_2
    const-string v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .end local v2    # "key":I
    .end local v3    # "value":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 516
    .end local v1    # "i":I
    :cond_3
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist valueAt(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 344
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    if-lt p1, v0, :cond_1

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 347
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 349
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_2

    .line 350
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 357
    :cond_2
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-ne v0, v1, :cond_3

    .line 358
    const/4 v0, 0x0

    return-object v0

    .line 361
    :cond_3
    return-object v0
.end method
