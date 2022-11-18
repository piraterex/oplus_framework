.class public Lcom/android/internal/app/procstats/SparseMappingTable$Table;
.super Ljava/lang/Object;
.source "SparseMappingTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/SparseMappingTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Table"
.end annotation


# instance fields
.field private blacklist mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

.field private blacklist mSequence:I

.field private blacklist mSize:I

.field private blacklist mTable:[I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V
    .locals 1
    .param p1, "parent"    # Lcom/android/internal/app/procstats/SparseMappingTable;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSequence:I

    .line 78
    iput-object p1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    .line 79
    invoke-static {p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$fgetmSequence(Lcom/android/internal/app/procstats/SparseMappingTable;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSequence:I

    .line 80
    return-void
.end method

.method private blacklist assertConsistency()V
    .locals 0

    .line 397
    return-void
.end method

.method private blacklist binarySearch(B)I
    .locals 4
    .param p1, "id"    # B

    .line 407
    const/4 v0, 0x0

    .line 408
    .local v0, "lo":I
    iget v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    add-int/lit8 v1, v1, -0x1

    .line 410
    .local v1, "hi":I
    :goto_0
    if-gt v0, v1, :cond_2

    .line 411
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 412
    .local v2, "mid":I
    iget-object v3, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    aget v3, v3, v2

    shr-int/lit8 v3, v3, 0x0

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 414
    .local v3, "midId":B
    if-ge v3, p1, :cond_0

    .line 415
    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 416
    :cond_0
    if-le v3, p1, :cond_1

    .line 417
    add-int/lit8 v1, v2, -0x1

    .line 421
    .end local v2    # "mid":I
    .end local v3    # "midId":B
    :goto_1
    goto :goto_0

    .line 419
    .restart local v2    # "mid":I
    .restart local v3    # "midId":B
    :cond_1
    return v2

    .line 422
    .end local v2    # "mid":I
    .end local v3    # "midId":B
    :cond_2
    not-int v2, v0

    return v2
.end method

.method private blacklist validateKeys(Z)Z
    .locals 9
    .param p1, "log"    # Z

    .line 431
    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$fgetmLongs(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 432
    .local v0, "longs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[J>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 434
    .local v1, "longsSize":I
    iget v2, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    .line 435
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 436
    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    aget v4, v4, v3

    .line 437
    .local v4, "key":I
    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->getArrayFromKey(I)I

    move-result v5

    .line 438
    .local v5, "arrayIndex":I
    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v6

    .line 439
    .local v6, "index":I
    if-ge v5, v1, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [J

    array-length v7, v7

    if-lt v6, v7, :cond_0

    goto :goto_1

    .line 435
    .end local v4    # "key":I
    .end local v5    # "arrayIndex":I
    .end local v6    # "index":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 440
    .restart local v4    # "key":I
    .restart local v5    # "arrayIndex":I
    .restart local v6    # "index":I
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 441
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid stats at index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->dumpInternalState()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SparseMappingTable"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_2
    const/4 v7, 0x0

    return v7

    .line 447
    .end local v3    # "i":I
    .end local v4    # "key":I
    .end local v5    # "arrayIndex":I
    .end local v6    # "index":I
    :cond_3
    const/4 v3, 0x1

    return v3
.end method


# virtual methods
.method public blacklist copyFrom(Lcom/android/internal/app/procstats/SparseMappingTable$Table;I)V
    .locals 9
    .param p1, "copyFrom"    # Lcom/android/internal/app/procstats/SparseMappingTable$Table;
    .param p2, "valueCount"    # I

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    .line 92
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getKeyCount()I

    move-result v0

    .line 93
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 94
    invoke-virtual {p1, v1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getKeyAt(I)I

    move-result v2

    .line 95
    .local v2, "theirKey":I
    iget-object v3, p1, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$fgetmLongs(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getArrayFromKey(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    .line 97
    .local v3, "theirLongs":[J
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v4

    .line 99
    .local v4, "id":B
    invoke-virtual {p0, v4, p2}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getOrAddKey(BI)I

    move-result v5

    .line 100
    .local v5, "myKey":I
    iget-object v6, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v6}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$fgetmLongs(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v5}, Lcom/android/internal/app/procstats/SparseMappingTable;->getArrayFromKey(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [J

    .line 102
    .local v6, "myLongs":[J
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v7

    .line 103
    invoke-static {v5}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v8

    .line 102
    invoke-static {v3, v7, v6, v8, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    .end local v2    # "theirKey":I
    .end local v3    # "theirLongs":[J
    .end local v4    # "id":B
    .end local v5    # "myKey":I
    .end local v6    # "myLongs":[J
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public blacklist dumpInternalState()Ljava/lang/String;
    .locals 6

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 452
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "SparseMappingTable.Table{mSequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    iget v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSequence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 454
    const-string v1, " mParent.mSequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    iget-object v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v1}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$fgetmSequence(Lcom/android/internal/app/procstats/SparseMappingTable;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 456
    const-string v1, " mParent.mLongs.size()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    iget-object v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v1}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$fgetmLongs(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 458
    const-string v1, " mSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    iget v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 460
    const-string v1, " mTable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    iget-object v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    if-nez v1, :cond_0

    .line 462
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 464
    :cond_0
    array-length v1, v1

    .line 465
    .local v1, "N":I
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 466
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 467
    iget-object v3, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    aget v3, v3, v2

    .line 468
    .local v3, "key":I
    const-string v4, "0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    shr-int/lit8 v4, v3, 0x0

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    const-string v4, "/0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    shr-int/lit8 v4, v3, 0x10

    const v5, 0xffff

    and-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    add-int/lit8 v4, v1, -0x1

    if-eq v2, v4, :cond_1

    .line 475
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .end local v3    # "key":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 478
    .end local v2    # "i":I
    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 480
    .end local v1    # "N":I
    :goto_1
    const-string v1, " clazz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getArrayForKey(I)[J
    .locals 4
    .param p1, "key"    # I

    .line 247
    invoke-direct {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->assertConsistency()V

    .line 251
    invoke-static {p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getArrayFromKey(I)I

    move-result v0

    .line 252
    .local v0, "arrayIndex":I
    iget-object v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v1}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$fgetmLongs(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 253
    .local v1, "N":I
    if-lt v0, v1, :cond_0

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid key at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->dumpInternalState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SparseMappingTable"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v2, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$fgetmLongs(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    return-object v2

    .line 258
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$fgetmLongs(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getArrayFromKey(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    return-object v2
.end method

.method public blacklist getKey(B)I
    .locals 2
    .param p1, "id"    # B

    .line 164
    invoke-direct {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->assertConsistency()V

    .line 166
    invoke-direct {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->binarySearch(B)I

    move-result v0

    .line 167
    .local v0, "idx":I
    if-ltz v0, :cond_0

    .line 168
    iget-object v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    aget v1, v1, v0

    return v1

    .line 170
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public blacklist getKeyAt(I)I
    .locals 1
    .param p1, "i"    # I

    .line 367
    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    aget v0, v0, p1

    return v0
.end method

.method public blacklist getKeyCount()I
    .locals 1

    .line 360
    iget v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    return v0
.end method

.method public blacklist getOrAddKey(BI)I
    .locals 8
    .param p1, "id"    # B
    .param p2, "count"    # I

    .line 120
    invoke-direct {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->assertConsistency()V

    .line 122
    invoke-direct {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->binarySearch(B)I

    move-result v0

    .line 123
    .local v0, "idx":I
    if-ltz v0, :cond_0

    .line 125
    iget-object v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    aget v1, v1, v0

    return v1

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v1}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$fgetmLongs(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    move-result-object v1

    .line 131
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[J>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 132
    .local v2, "whichArray":I
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    .line 133
    .local v3, "array":[J
    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$fgetmNextIndex(Lcom/android/internal/app/procstats/SparseMappingTable;)I

    move-result v4

    add-int/2addr v4, p2

    array-length v5, v3

    if-le v4, v5, :cond_1

    .line 135
    const/16 v4, 0x1000

    new-array v3, v4, [J

    .line 136
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v2, v2, 0x1

    .line 138
    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$fputmNextIndex(Lcom/android/internal/app/procstats/SparseMappingTable;I)V

    .line 143
    :cond_1
    shl-int/lit8 v4, v2, 0x8

    iget-object v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v5}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$fgetmNextIndex(Lcom/android/internal/app/procstats/SparseMappingTable;)I

    move-result v5

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, p1, 0x0

    or-int/2addr v4, v5

    .line 147
    .local v4, "key":I
    iget-object v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v5}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$fgetmNextIndex(Lcom/android/internal/app/procstats/SparseMappingTable;)I

    move-result v6

    add-int/2addr v6, p2

    invoke-static {v5, v6}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$fputmNextIndex(Lcom/android/internal/app/procstats/SparseMappingTable;I)V

    .line 150
    iget-object v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    sget-object v5, Llibcore/util/EmptyArray;->INT:[I

    :goto_0
    iget v6, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    not-int v7, v0

    invoke-static {v5, v6, v7, v4}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    .line 152
    iget v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    .line 154
    return v4
.end method

.method public blacklist getValue(I)J
    .locals 2
    .param p1, "key"    # I

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValue(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getValue(II)J
    .locals 3
    .param p1, "key"    # I
    .param p2, "index"    # I

    .line 193
    invoke-direct {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->assertConsistency()V

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$fgetmLongs(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getArrayFromKey(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 197
    .local v0, "array":[J
    invoke-static {p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v1

    add-int/2addr v1, p2

    aget-wide v1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 198
    .end local v0    # "array":[J
    :catch_0
    move-exception v0

    .line 199
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "key=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 200
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->dumpInternalState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-static {v1, v0}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$smlogOrThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public blacklist getValueForId(B)J
    .locals 2
    .param p1, "id"    # B

    .line 212
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getValueForId(BI)J
    .locals 7
    .param p1, "id"    # B
    .param p2, "index"    # I

    .line 224
    invoke-direct {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->assertConsistency()V

    .line 226
    invoke-direct {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->binarySearch(B)I

    move-result v0

    .line 227
    .local v0, "idx":I
    const-wide/16 v1, 0x0

    if-ltz v0, :cond_0

    .line 228
    iget-object v3, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    aget v3, v3, v0

    .line 230
    .local v3, "key":I
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$fgetmLongs(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->getArrayFromKey(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    .line 231
    .local v4, "array":[J
    invoke-static {v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v5

    add-int/2addr v5, p2

    aget-wide v1, v4, v5
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 232
    .end local v4    # "array":[J
    :catch_0
    move-exception v4

    .line 233
    .local v4, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " idx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " key=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 234
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 235
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->dumpInternalState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 233
    invoke-static {v5, v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$smlogOrThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    return-wide v1

    .line 239
    .end local v3    # "key":I
    .end local v4    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    return-wide v1
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSequence:I

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    .line 336
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 337
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    .line 338
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    if-ge v0, v2, :cond_0

    .line 339
    iget-object v2, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    goto :goto_1

    .line 342
    :cond_1
    iput-object v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    .line 346
    :goto_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->validateKeys(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 347
    return v0

    .line 350
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    .line 351
    iput-object v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    .line 352
    return v0
.end method

.method public blacklist resetTable()V
    .locals 1

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    .line 308
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    .line 313
    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$fgetmSequence(Lcom/android/internal/app/procstats/SparseMappingTable;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSequence:I

    .line 314
    return-void
.end method

.method public blacklist setValue(IIJ)V
    .locals 6
    .param p1, "key"    # I
    .param p2, "index"    # I
    .param p3, "value"    # J

    .line 280
    invoke-direct {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->assertConsistency()V

    .line 282
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    const-string v1, " -- "

    const-string v2, " value="

    const-string v3, " index="

    if-gez v0, :cond_0

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t store negative values key=0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 284
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 286
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->dumpInternalState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-static {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$smlogOrThrow(Ljava/lang/String;)V

    .line 287
    return-void

    .line 291
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$fgetmLongs(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getArrayFromKey(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 292
    .local v0, "array":[J
    invoke-static {p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v4

    add-int/2addr v4, p2

    aput-wide p3, v0, v4
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .end local v0    # "array":[J
    nop

    .line 299
    return-void

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "key=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 296
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->dumpInternalState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-static {v1, v0}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$smlogOrThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    return-void
.end method

.method public blacklist setValue(IJ)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "value"    # J

    .line 268
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->setValue(IIJ)V

    .line 269
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;

    .line 321
    iget v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSequence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    if-ge v0, v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
