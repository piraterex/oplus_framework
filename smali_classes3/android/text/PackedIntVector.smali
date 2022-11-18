.class public Landroid/text/PackedIntVector;
.super Ljava/lang/Object;
.source "PackedIntVector.java"


# instance fields
.field private final greylist-max-o mColumns:I

.field private greylist-max-o mRowGapLength:I

.field private greylist-max-o mRowGapStart:I

.field private greylist-max-o mRows:I

.field private greylist-max-o mValueGap:[I

.field private greylist-max-o mValues:[I


# direct methods
.method public constructor greylist-max-o <init>(I)V
    .locals 1
    .param p1, "columns"    # I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/PackedIntVector;->mRows:I

    .line 52
    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 53
    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 56
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 57
    return-void
.end method

.method private final greylist-max-o growBuffer()V
    .locals 10

    .line 259
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 260
    .local v0, "columns":I
    nop

    .line 261
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    mul-int/2addr v1, v0

    .line 260
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v1

    .line 262
    .local v1, "newvalues":[I
    array-length v2, v1

    div-int/2addr v2, v0

    .line 264
    .local v2, "newsize":I
    iget-object v3, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 265
    .local v3, "valuegap":[I
    iget v4, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 267
    .local v4, "rowgapstart":I
    iget v5, p0, Landroid/text/PackedIntVector;->mRows:I

    iget v6, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr v6, v4

    sub-int/2addr v5, v6

    .line 269
    .local v5, "after":I
    iget-object v6, p0, Landroid/text/PackedIntVector;->mValues:[I

    if-eqz v6, :cond_0

    .line 270
    mul-int v7, v0, v4

    const/4 v8, 0x0

    invoke-static {v6, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    iget-object v6, p0, Landroid/text/PackedIntVector;->mValues:[I

    iget v7, p0, Landroid/text/PackedIntVector;->mRows:I

    sub-int/2addr v7, v5

    mul-int/2addr v7, v0

    sub-int v8, v2, v5

    mul-int/2addr v8, v0

    mul-int v9, v5, v0

    invoke-static {v6, v7, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    :cond_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_2

    .line 277
    aget v7, v3, v6

    if-lt v7, v4, :cond_1

    .line 278
    aget v7, v3, v6

    iget v8, p0, Landroid/text/PackedIntVector;->mRows:I

    sub-int v8, v2, v8

    add-int/2addr v7, v8

    aput v7, v3, v6

    .line 280
    aget v7, v3, v6

    if-ge v7, v4, :cond_1

    .line 281
    aput v4, v3, v6

    .line 276
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 286
    .end local v6    # "i":I
    :cond_2
    iget v6, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    iget v7, p0, Landroid/text/PackedIntVector;->mRows:I

    sub-int v7, v2, v7

    add-int/2addr v6, v7

    iput v6, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 287
    iput v2, p0, Landroid/text/PackedIntVector;->mRows:I

    .line 288
    iput-object v1, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 289
    return-void
.end method

.method private final greylist-max-o moveRowGapTo(I)V
    .locals 10
    .param p1, "where"    # I

    .line 319
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-ne p1, v0, :cond_0

    .line 320
    return-void

    .line 321
    :cond_0
    if-le p1, v0, :cond_5

    .line 322
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int v2, p1, v1

    add-int v3, v0, v1

    sub-int/2addr v2, v3

    .line 323
    .local v2, "moving":I
    iget v3, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 324
    .local v3, "columns":I
    iget-object v4, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 325
    .local v4, "valuegap":[I
    iget-object v5, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 326
    .local v5, "values":[I
    add-int/2addr v0, v1

    .line 328
    .local v0, "gapend":I
    move v1, v0

    .local v1, "i":I
    :goto_0
    add-int v6, v0, v2

    if-ge v1, v6, :cond_4

    .line 329
    sub-int v6, v1, v0

    iget v7, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    add-int/2addr v6, v7

    .line 331
    .local v6, "destrow":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v3, :cond_3

    .line 332
    mul-int v8, v1, v3

    add-int/2addr v8, v7

    aget v8, v5, v8

    .line 334
    .local v8, "val":I
    aget v9, v4, v7

    if-lt v1, v9, :cond_1

    .line 335
    add-int v9, v7, v3

    aget v9, v4, v9

    add-int/2addr v8, v9

    .line 338
    :cond_1
    aget v9, v4, v7

    if-lt v6, v9, :cond_2

    .line 339
    add-int v9, v7, v3

    aget v9, v4, v9

    sub-int/2addr v8, v9

    .line 342
    :cond_2
    mul-int v9, v6, v3

    add-int/2addr v9, v7

    aput v8, v5, v9

    .line 331
    .end local v8    # "val":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 328
    .end local v6    # "destrow":I
    .end local v7    # "j":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    .end local v0    # "gapend":I
    .end local v1    # "i":I
    .end local v2    # "moving":I
    .end local v3    # "columns":I
    .end local v4    # "valuegap":[I
    .end local v5    # "values":[I
    :cond_4
    goto :goto_4

    .line 346
    :cond_5
    sub-int v1, v0, p1

    .line 347
    .local v1, "moving":I
    iget v2, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 348
    .local v2, "columns":I
    iget-object v3, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 349
    .local v3, "valuegap":[I
    iget-object v4, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 350
    .local v4, "values":[I
    iget v5, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr v0, v5

    .line 352
    .restart local v0    # "gapend":I
    add-int v5, p1, v1

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_2
    if-lt v5, p1, :cond_9

    .line 353
    sub-int v6, v5, p1

    add-int/2addr v6, v0

    sub-int/2addr v6, v1

    .line 355
    .restart local v6    # "destrow":I
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_3
    if-ge v7, v2, :cond_8

    .line 356
    mul-int v8, v5, v2

    add-int/2addr v8, v7

    aget v8, v4, v8

    .line 358
    .restart local v8    # "val":I
    aget v9, v3, v7

    if-lt v5, v9, :cond_6

    .line 359
    add-int v9, v7, v2

    aget v9, v3, v9

    add-int/2addr v8, v9

    .line 362
    :cond_6
    aget v9, v3, v7

    if-lt v6, v9, :cond_7

    .line 363
    add-int v9, v7, v2

    aget v9, v3, v9

    sub-int/2addr v8, v9

    .line 366
    :cond_7
    mul-int v9, v6, v2

    add-int/2addr v9, v7

    aput v8, v4, v9

    .line 355
    .end local v8    # "val":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 352
    .end local v6    # "destrow":I
    .end local v7    # "j":I
    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 371
    .end local v0    # "gapend":I
    .end local v1    # "moving":I
    .end local v2    # "columns":I
    .end local v3    # "valuegap":[I
    .end local v4    # "values":[I
    .end local v5    # "i":I
    :cond_9
    :goto_4
    iput p1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 372
    return-void
.end method

.method private final greylist-max-o moveValueGapTo(II)V
    .locals 7
    .param p1, "column"    # I
    .param p2, "where"    # I

    .line 296
    iget-object v0, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 297
    .local v0, "valuegap":[I
    iget-object v1, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 298
    .local v1, "values":[I
    iget v2, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 300
    .local v2, "columns":I
    aget v3, v0, p1

    if-ne p2, v3, :cond_0

    .line 301
    return-void

    .line 302
    :cond_0
    aget v3, v0, p1

    if-le p2, v3, :cond_2

    .line 303
    aget v3, v0, p1

    .local v3, "i":I
    :goto_0
    if-ge v3, p2, :cond_1

    .line 304
    mul-int v4, v3, v2

    add-int/2addr v4, p1

    aget v5, v1, v4

    add-int v6, p1, v2

    aget v6, v0, v6

    add-int/2addr v5, v6

    aput v5, v1, v4

    .line 303
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "i":I
    :cond_1
    goto :goto_2

    .line 307
    :cond_2
    move v3, p2

    .restart local v3    # "i":I
    :goto_1
    aget v4, v0, p1

    if-ge v3, v4, :cond_3

    .line 308
    mul-int v4, v3, v2

    add-int/2addr v4, p1

    aget v5, v1, v4

    add-int v6, p1, v2

    aget v6, v0, v6

    sub-int/2addr v5, v6

    aput v5, v1, v4

    .line 307
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 312
    .end local v3    # "i":I
    :cond_3
    :goto_2
    aput p2, v0, p1

    .line 313
    return-void
.end method

.method private greylist-max-o setValueInternal(III)V
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "value"    # I

    .line 128
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-lt p1, v0, :cond_0

    .line 129
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr p1, v0

    .line 132
    :cond_0
    iget-object v0, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 133
    .local v0, "valuegap":[I
    aget v1, v0, p2

    if-lt p1, v1, :cond_1

    .line 134
    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    add-int/2addr v1, p2

    aget v1, v0, v1

    sub-int/2addr p3, v1

    .line 137
    :cond_1
    iget-object v1, p0, Landroid/text/PackedIntVector;->mValues:[I

    iget v2, p0, Landroid/text/PackedIntVector;->mColumns:I

    mul-int/2addr v2, p1

    add-int/2addr v2, p2

    aput p3, v1, v2

    .line 138
    return-void
.end method


# virtual methods
.method public greylist-max-o adjustValuesBelow(III)V
    .locals 3
    .param p1, "startRow"    # I
    .param p2, "column"    # I
    .param p3, "delta"    # I

    .line 154
    or-int v0, p1, p2

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 155
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->width()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 159
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-lt p1, v0, :cond_0

    .line 160
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr p1, v0

    .line 163
    :cond_0
    invoke-direct {p0, p2, p1}, Landroid/text/PackedIntVector;->moveValueGapTo(II)V

    .line 164
    iget-object v0, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    add-int/2addr v1, p2

    aget v2, v0, v1

    add-int/2addr v2, p3

    aput v2, v0, v1

    .line 165
    return-void

    .line 156
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o deleteAt(II)V
    .locals 3
    .param p1, "row"    # I
    .param p2, "count"    # I

    .line 221
    or-int v0, p1, p2

    if-ltz v0, :cond_0

    add-int v0, p1, p2

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 225
    add-int v0, p1, p2

    invoke-direct {p0, v0}, Landroid/text/PackedIntVector;->moveRowGapTo(I)V

    .line 227
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    sub-int/2addr v0, p2

    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 228
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 232
    return-void

    .line 222
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getValue(II)I
    .locals 4
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 72
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 74
    .local v0, "columns":I
    or-int v1, p1, p2

    if-ltz v1, :cond_2

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    if-ge p2, v0, :cond_2

    .line 78
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-lt p1, v1, :cond_0

    .line 79
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr p1, v1

    .line 82
    :cond_0
    iget-object v1, p0, Landroid/text/PackedIntVector;->mValues:[I

    mul-int v2, p1, v0

    add-int/2addr v2, p2

    aget v1, v1, v2

    .line 84
    .local v1, "value":I
    iget-object v2, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 85
    .local v2, "valuegap":[I
    aget v3, v2, p2

    if-lt p1, v3, :cond_1

    .line 86
    add-int v3, p2, v0

    aget v3, v2, v3

    add-int/2addr v1, v3

    .line 89
    :cond_1
    return v1

    .line 75
    .end local v1    # "value":I
    .end local v2    # "valuegap":[I
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o insertAt(I[I)V
    .locals 3
    .param p1, "row"    # I
    .param p2, "values"    # [I

    .line 181
    if-ltz p1, :cond_6

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    if-gt p1, v0, :cond_6

    .line 185
    if-eqz p2, :cond_1

    array-length v0, p2

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->width()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "value count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroid/text/PackedIntVector;->moveRowGapTo(I)V

    .line 191
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    if-nez v0, :cond_2

    .line 192
    invoke-direct {p0}, Landroid/text/PackedIntVector;->growBuffer()V

    .line 195
    :cond_2
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 196
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 198
    if-nez p2, :cond_4

    .line 199
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 200
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/text/PackedIntVector;->setValueInternal(III)V

    .line 199
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_3
    goto :goto_3

    .line 203
    :cond_4
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_5

    .line 204
    aget v1, p2, v0

    invoke-direct {p0, p1, v0, v1}, Landroid/text/PackedIntVector;->setValueInternal(III)V

    .line 203
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 207
    .end local v0    # "i":I
    :cond_5
    :goto_3
    return-void

    .line 182
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "row "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setValue(III)V
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "value"    # I

    .line 103
    or-int v0, p1, p2

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    if-ge p2, v0, :cond_2

    .line 107
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-lt p1, v1, :cond_0

    .line 108
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr p1, v1

    .line 111
    :cond_0
    iget-object v1, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 112
    .local v1, "valuegap":[I
    aget v2, v1, p2

    if-lt p1, v2, :cond_1

    .line 113
    add-int v2, p2, v0

    aget v2, v1, v2

    sub-int/2addr p3, v2

    .line 116
    :cond_1
    iget-object v2, p0, Landroid/text/PackedIntVector;->mValues:[I

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    aput p3, v2, v0

    .line 117
    return-void

    .line 104
    .end local v1    # "valuegap":[I
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o size()I
    .locals 2

    .line 241
    iget v0, p0, Landroid/text/PackedIntVector;->mRows:I

    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o width()I
    .locals 1

    .line 251
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    return v0
.end method
