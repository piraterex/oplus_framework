.class public Landroid/util/SparseLongArray;
.super Ljava/lang/Object;
.source "SparseLongArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private greylist-max-o mKeys:[I

.field private greylist-max-o mSize:I

.field private greylist-max-o mValues:[J


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 54
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/SparseLongArray;-><init>(I)V

    .line 55
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    if-nez p1, :cond_0

    .line 66
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    .line 67
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    goto :goto_0

    .line 69
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object v0

    iput-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    .line 70
    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    .line 72
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/SparseLongArray;->mSize:I

    .line 73
    return-void
.end method


# virtual methods
.method public whitelist append(IJ)V
    .locals 3
    .param p1, "key"    # I
    .param p2, "value"    # J

    .line 306
    iget v0, p0, Landroid/util/SparseLongArray;->mSize:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    if-gt p1, v1, :cond_0

    .line 307
    invoke-virtual {p0, p1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 308
    return-void

    .line 311
    :cond_0
    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    invoke-static {v1, v0, p1}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    .line 312
    iget-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    invoke-static {v0, v1, p2, p3}, Lcom/android/internal/util/GrowingArrayUtils;->append([JIJ)[J

    move-result-object v0

    iput-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    .line 313
    iget v0, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/SparseLongArray;->mSize:I

    .line 314
    return-void
.end method

.method public whitelist clear()V
    .locals 1

    .line 298
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/SparseLongArray;->mSize:I

    .line 299
    return-void
.end method

.method public whitelist clone()Landroid/util/SparseLongArray;
    .locals 2

    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, "clone":Landroid/util/SparseLongArray;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseLongArray;

    move-object v0, v1

    .line 80
    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Landroid/util/SparseLongArray;->mKeys:[I

    .line 81
    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Landroid/util/SparseLongArray;->mValues:[J
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_0

    .line 82
    :catch_0
    move-exception v1

    .line 85
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

    .line 45
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->clone()Landroid/util/SparseLongArray;

    move-result-object v0

    return-object v0
.end method

.method public whitelist delete(I)V
    .locals 2
    .param p1, "key"    # I

    .line 114
    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 116
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 117
    invoke-virtual {p0, v0}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 119
    :cond_0
    return-void
.end method

.method public whitelist get(I)J
    .locals 2
    .param p1, "key"    # I

    .line 93
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist get(IJ)J
    .locals 3
    .param p1, "key"    # I
    .param p2, "valueIfKeyNotFound"    # J

    .line 101
    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 103
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 104
    return-wide p2

    .line 106
    :cond_0
    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    aget-wide v1, v1, v0

    return-wide v1
.end method

.method public blacklist incrementValue(IJ)V
    .locals 4
    .param p1, "key"    # I
    .param p2, "summand"    # J

    .line 177
    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 179
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 180
    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    aget-wide v2, v1, v0

    add-long/2addr v2, p2

    aput-wide v2, v1, v0

    goto :goto_0

    .line 182
    :cond_0
    not-int v0, v0

    .line 184
    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseLongArray;->mSize:I

    invoke-static {v1, v2, v0, p1}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object v1

    iput-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    .line 185
    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    iget v2, p0, Landroid/util/SparseLongArray;->mSize:I

    invoke-static {v1, v2, v0, p2, p3}, Lcom/android/internal/util/GrowingArrayUtils;->insert([JIIJ)[J

    move-result-object v1

    iput-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    .line 186
    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/SparseLongArray;->mSize:I

    .line 188
    :goto_0
    return-void
.end method

.method public whitelist indexOfKey(I)I
    .locals 2
    .param p1, "key"    # I

    .line 275
    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    return v0
.end method

.method public whitelist indexOfValue(J)I
    .locals 3
    .param p1, "value"    # J

    .line 287
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    if-ge v0, v1, :cond_1

    .line 288
    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 289
    return v0

    .line 287
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist keyAt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 214
    iget v0, p0, Landroid/util/SparseLongArray;->mSize:I

    if-lt p1, v0, :cond_1

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 219
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public whitelist put(IJ)V
    .locals 3
    .param p1, "key"    # I
    .param p2, "value"    # J

    .line 153
    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 155
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 156
    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    aput-wide p2, v1, v0

    goto :goto_0

    .line 158
    :cond_0
    not-int v0, v0

    .line 160
    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseLongArray;->mSize:I

    invoke-static {v1, v2, v0, p1}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object v1

    iput-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    .line 161
    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    iget v2, p0, Landroid/util/SparseLongArray;->mSize:I

    invoke-static {v1, v2, v0, p2, p3}, Lcom/android/internal/util/GrowingArrayUtils;->insert([JIIJ)[J

    move-result-object v1

    iput-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    .line 162
    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/SparseLongArray;->mSize:I

    .line 164
    :goto_0
    return-void
.end method

.method public whitelist removeAt(I)V
    .locals 4
    .param p1, "index"    # I

    .line 142
    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    iget-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    iget v0, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/SparseLongArray;->mSize:I

    .line 145
    return-void
.end method

.method public greylist-max-o removeAtRange(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "size"    # I

    .line 132
    iget v0, p0, Landroid/util/SparseLongArray;->mSize:I

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 133
    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    add-int v1, p1, p2

    iget v2, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int v3, p1, p2

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    iget-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    add-int v1, p1, p2

    iget v2, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int v3, p1, p2

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    iget v0, p0, Landroid/util/SparseLongArray;->mSize:I

    sub-int/2addr v0, p2

    iput v0, p0, Landroid/util/SparseLongArray;->mSize:I

    .line 136
    return-void
.end method

.method public blacklist setValueAt(IJ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 260
    iget v0, p0, Landroid/util/SparseLongArray;->mSize:I

    if-lt p1, v0, :cond_1

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 266
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    aput-wide p2, v0, p1

    .line 267
    return-void
.end method

.method public whitelist size()I
    .locals 1

    .line 195
    iget v0, p0, Landroid/util/SparseLongArray;->mSize:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    .line 323
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 324
    const-string/jumbo v0, "{}"

    return-object v0

    .line 327
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 328
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/util/SparseLongArray;->mSize:I

    if-ge v1, v2, :cond_2

    .line 330
    if-lez v1, :cond_1

    .line 331
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v2

    .line 334
    .local v2, "key":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 335
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {p0, v1}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v3

    .line 337
    .local v3, "value":J
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 329
    .end local v2    # "key":I
    .end local v3    # "value":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 339
    .end local v1    # "i":I
    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist valueAt(I)J
    .locals 2
    .param p1, "index"    # I

    .line 239
    iget v0, p0, Landroid/util/SparseLongArray;->mSize:I

    if-lt p1, v0, :cond_1

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 244
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method
