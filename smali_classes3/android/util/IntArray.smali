.class public Landroid/util/IntArray;
.super Ljava/lang/Object;
.source "IntArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final greylist-max-o MIN_CAPACITY_INCREMENT:I = 0xc


# instance fields
.field private greylist-max-o mSize:I

.field private greylist-max-o mValues:[I


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 46
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/IntArray;-><init>(I)V

    .line 47
    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-nez p1, :cond_0

    .line 54
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/util/IntArray;->mValues:[I

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/util/IntArray;->mValues:[I

    .line 58
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/IntArray;->mSize:I

    .line 59
    return-void
.end method

.method private constructor greylist-max-o <init>([II)V
    .locals 3
    .param p1, "array"    # [I
    .param p2, "size"    # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroid/util/IntArray;->mValues:[I

    .line 39
    array-length v0, p1

    const/4 v1, 0x0

    const-string/jumbo v2, "size"

    invoke-static {p2, v1, v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/util/IntArray;->mSize:I

    .line 40
    return-void
.end method

.method private greylist-max-o ensureCapacity(I)V
    .locals 7
    .param p1, "count"    # I

    .line 161
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    .line 162
    .local v0, "currentSize":I
    add-int v1, v0, p1

    .line 163
    .local v1, "minCapacity":I
    iget-object v2, p0, Landroid/util/IntArray;->mValues:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 164
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 165
    const/16 v2, 0xc

    goto :goto_0

    :cond_0
    shr-int/lit8 v2, v0, 0x1

    :goto_0
    add-int/2addr v2, v0

    .line 166
    .local v2, "targetCap":I
    if-le v2, v1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 167
    .local v3, "newCapacity":I
    :goto_1
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v4

    .line 168
    .local v4, "newValues":[I
    iget-object v5, p0, Landroid/util/IntArray;->mValues:[I

    const/4 v6, 0x0

    invoke-static {v5, v6, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iput-object v4, p0, Landroid/util/IntArray;->mValues:[I

    .line 171
    .end local v2    # "targetCap":I
    .end local v3    # "newCapacity":I
    .end local v4    # "newValues":[I
    :cond_2
    return-void
.end method

.method public static greylist-max-o fromArray([II)Landroid/util/IntArray;
    .locals 1
    .param p0, "array"    # [I
    .param p1, "size"    # I

    .line 72
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    invoke-static {v0}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o wrap([I)Landroid/util/IntArray;
    .locals 2
    .param p0, "array"    # [I

    .line 65
    new-instance v0, Landroid/util/IntArray;

    array-length v1, p0

    invoke-direct {v0, p0, v1}, Landroid/util/IntArray;-><init>([II)V

    return-object v0
.end method


# virtual methods
.method public greylist-max-o add(I)V
    .locals 1
    .param p1, "value"    # I

    .line 94
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    invoke-virtual {p0, v0, p1}, Landroid/util/IntArray;->add(II)V

    .line 95
    return-void
.end method

.method public greylist-max-o add(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 104
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/IntArray;->ensureCapacity(I)V

    .line 105
    iget v1, p0, Landroid/util/IntArray;->mSize:I

    sub-int v2, v1, p1

    .line 106
    .local v2, "rightSegment":I
    add-int/2addr v1, v0

    iput v1, p0, Landroid/util/IntArray;->mSize:I

    .line 107
    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->checkBounds(II)V

    .line 109
    if-eqz v2, :cond_0

    .line 111
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    :cond_0
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    aput p2, v0, p1

    .line 115
    return-void
.end method

.method public greylist-max-o addAll(Landroid/util/IntArray;)V
    .locals 5
    .param p1, "values"    # Landroid/util/IntArray;

    .line 139
    iget v0, p1, Landroid/util/IntArray;->mSize:I

    .line 140
    .local v0, "count":I
    invoke-direct {p0, v0}, Landroid/util/IntArray;->ensureCapacity(I)V

    .line 142
    iget-object v1, p1, Landroid/util/IntArray;->mValues:[I

    iget-object v2, p0, Landroid/util/IntArray;->mValues:[I

    iget v3, p0, Landroid/util/IntArray;->mSize:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    iget v1, p0, Landroid/util/IntArray;->mSize:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/util/IntArray;->mSize:I

    .line 144
    return-void
.end method

.method public blacklist addAll([I)V
    .locals 4
    .param p1, "values"    # [I

    .line 150
    array-length v0, p1

    .line 151
    .local v0, "count":I
    invoke-direct {p0, v0}, Landroid/util/IntArray;->ensureCapacity(I)V

    .line 153
    iget-object v1, p0, Landroid/util/IntArray;->mValues:[I

    iget v2, p0, Landroid/util/IntArray;->mSize:I

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    iget v1, p0, Landroid/util/IntArray;->mSize:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/util/IntArray;->mSize:I

    .line 155
    return-void
.end method

.method public greylist-max-o binarySearch(I)I
    .locals 2
    .param p1, "value"    # I

    .line 132
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    iget v1, p0, Landroid/util/IntArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    return v0
.end method

.method public greylist-max-o clear()V
    .locals 1

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/IntArray;->mSize:I

    .line 178
    return-void
.end method

.method public blacklist clone()Landroid/util/IntArray;
    .locals 3

    .line 182
    new-instance v0, Landroid/util/IntArray;

    iget-object v1, p0, Landroid/util/IntArray;->mValues:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iget v2, p0, Landroid/util/IntArray;->mSize:I

    invoke-direct {v0, v1, v2}, Landroid/util/IntArray;-><init>([II)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Landroid/util/IntArray;->clone()Landroid/util/IntArray;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o get(I)I
    .locals 1
    .param p1, "index"    # I

    .line 189
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->checkBounds(II)V

    .line 190
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    aget v0, v0, p1

    return v0
.end method

.method public greylist-max-o indexOf(I)I
    .locals 3
    .param p1, "value"    # I

    .line 206
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    .line 207
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 208
    iget-object v2, p0, Landroid/util/IntArray;->mValues:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 209
    return v1

    .line 207
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public greylist-max-o remove(I)V
    .locals 3
    .param p1, "index"    # I

    .line 219
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->checkBounds(II)V

    .line 220
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Landroid/util/IntArray;->mSize:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/IntArray;->mSize:I

    .line 222
    return-void
.end method

.method public greylist-max-o resize(I)V
    .locals 3
    .param p1, "newSize"    # I

    .line 81
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 82
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    array-length v1, v0

    if-gt p1, v1, :cond_0

    .line 83
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_0

    .line 85
    :cond_0
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Landroid/util/IntArray;->ensureCapacity(I)V

    .line 87
    :goto_0
    iput p1, p0, Landroid/util/IntArray;->mSize:I

    .line 88
    return-void
.end method

.method public greylist-max-o set(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 197
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->checkBounds(II)V

    .line 198
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    aput p2, v0, p1

    .line 199
    return-void
.end method

.method public greylist-max-o size()I
    .locals 1

    .line 228
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    return v0
.end method

.method public greylist-max-o toArray()[I
    .locals 2

    .line 235
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    iget v1, p0, Landroid/util/IntArray;->mSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method
