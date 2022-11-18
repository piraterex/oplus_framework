.class public Landroid/util/SparseIntArray;
.super Ljava/lang/Object;
.source "SparseIntArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private greylist-max-p mKeys:[I

.field private greylist-max-p mSize:I

.field private greylist-max-p mValues:[I


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 61
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 62
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    if-nez p1, :cond_0

    .line 73
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    .line 74
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    .line 77
    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    .line 79
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/SparseIntArray;->mSize:I

    .line 80
    return-void
.end method


# virtual methods
.method public whitelist append(II)V
    .locals 3
    .param p1, "key"    # I
    .param p2, "value"    # I

    .line 267
    iget v0, p0, Landroid/util/SparseIntArray;->mSize:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/util/SparseIntArray;->mKeys:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    if-gt p1, v1, :cond_0

    .line 268
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 269
    return-void

    .line 272
    :cond_0
    iget-object v1, p0, Landroid/util/SparseIntArray;->mKeys:[I

    invoke-static {v1, v0, p1}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    .line 273
    iget-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    .line 274
    iget v0, p0, Landroid/util/SparseIntArray;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/SparseIntArray;->mSize:I

    .line 275
    return-void
.end method

.method public whitelist clear()V
    .locals 1

    .line 259
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/SparseIntArray;->mSize:I

    .line 260
    return-void
.end method

.method public whitelist clone()Landroid/util/SparseIntArray;
    .locals 2

    .line 84
    const/4 v0, 0x0

    .line 86
    .local v0, "clone":Landroid/util/SparseIntArray;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseIntArray;

    move-object v0, v1

    .line 87
    iget-object v1, p0, Landroid/util/SparseIntArray;->mKeys:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Landroid/util/SparseIntArray;->mKeys:[I

    .line 88
    iget-object v1, p0, Landroid/util/SparseIntArray;->mValues:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Landroid/util/SparseIntArray;->mValues:[I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_0

    .line 89
    :catch_0
    move-exception v1

    .line 92
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

    .line 49
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o copyKeys()[I
    .locals 2

    .line 283
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 284
    const/4 v0, 0x0

    return-object v0

    .line 286
    :cond_0
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist delete(I)V
    .locals 2
    .param p1, "key"    # I

    .line 121
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 123
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 124
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 126
    :cond_0
    return-void
.end method

.method public whitelist get(I)I
    .locals 1
    .param p1, "key"    # I

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public whitelist get(II)I
    .locals 2
    .param p1, "key"    # I
    .param p2, "valueIfKeyNotFound"    # I

    .line 108
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 110
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 111
    return p2

    .line 113
    :cond_0
    iget-object v1, p0, Landroid/util/SparseIntArray;->mValues:[I

    aget v1, v1, v0

    return v1
.end method

.method public whitelist indexOfKey(I)I
    .locals 2
    .param p1, "key"    # I

    .line 236
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    return v0
.end method

.method public whitelist indexOfValue(I)I
    .locals 2
    .param p1, "value"    # I

    .line 248
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    if-ge v0, v1, :cond_1

    .line 249
    iget-object v1, p0, Landroid/util/SparseIntArray;->mValues:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 250
    return v0

    .line 248
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist keyAt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 180
    iget v0, p0, Landroid/util/SparseIntArray;->mSize:I

    if-lt p1, v0, :cond_1

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 185
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public whitelist put(II)V
    .locals 3
    .param p1, "key"    # I
    .param p2, "value"    # I

    .line 143
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 145
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 146
    iget-object v1, p0, Landroid/util/SparseIntArray;->mValues:[I

    aput p2, v1, v0

    goto :goto_0

    .line 148
    :cond_0
    not-int v0, v0

    .line 150
    iget-object v1, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v1, v2, v0, p1}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object v1

    iput-object v1, p0, Landroid/util/SparseIntArray;->mKeys:[I

    .line 151
    iget-object v1, p0, Landroid/util/SparseIntArray;->mValues:[I

    iget v2, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v1, v2, v0, p2}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object v1

    iput-object v1, p0, Landroid/util/SparseIntArray;->mValues:[I

    .line 152
    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/SparseIntArray;->mSize:I

    .line 154
    :goto_0
    return-void
.end method

.method public whitelist removeAt(I)V
    .locals 4
    .param p1, "index"    # I

    .line 132
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Landroid/util/SparseIntArray;->mSize:I

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    iget-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Landroid/util/SparseIntArray;->mSize:I

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    iget v0, p0, Landroid/util/SparseIntArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/SparseIntArray;->mSize:I

    .line 135
    return-void
.end method

.method public whitelist setValueAt(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 222
    iget v0, p0, Landroid/util/SparseIntArray;->mSize:I

    if-lt p1, v0, :cond_1

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 227
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    aput p2, v0, p1

    .line 228
    return-void
.end method

.method public whitelist size()I
    .locals 1

    .line 161
    iget v0, p0, Landroid/util/SparseIntArray;->mSize:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 296
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 297
    const-string/jumbo v0, "{}"

    return-object v0

    .line 300
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 301
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/util/SparseIntArray;->mSize:I

    if-ge v1, v2, :cond_2

    .line 303
    if-lez v1, :cond_1

    .line 304
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 307
    .local v2, "key":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 308
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 310
    .local v3, "value":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 302
    .end local v2    # "key":I
    .end local v3    # "value":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 312
    .end local v1    # "i":I
    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist valueAt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 205
    iget v0, p0, Landroid/util/SparseIntArray;->mSize:I

    if-lt p1, v0, :cond_1

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 210
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    aget v0, v0, p1

    return v0
.end method
