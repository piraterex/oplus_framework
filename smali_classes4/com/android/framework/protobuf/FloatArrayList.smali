.class final Lcom/android/framework/protobuf/FloatArrayList;
.super Lcom/android/framework/protobuf/AbstractProtobufList;
.source "FloatArrayList.java"

# interfaces
.implements Lcom/android/framework/protobuf/Internal$FloatList;
.implements Ljava/util/RandomAccess;
.implements Lcom/android/framework/protobuf/PrimitiveNonBoxingCollection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/AbstractProtobufList<",
        "Ljava/lang/Float;",
        ">;",
        "Lcom/android/framework/protobuf/Internal$FloatList;",
        "Ljava/util/RandomAccess;",
        "Lcom/android/framework/protobuf/PrimitiveNonBoxingCollection;"
    }
.end annotation


# static fields
.field private static final blacklist EMPTY_LIST:Lcom/android/framework/protobuf/FloatArrayList;


# instance fields
.field private blacklist array:[F

.field private blacklist size:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 48
    new-instance v0, Lcom/android/framework/protobuf/FloatArrayList;

    const/4 v1, 0x0

    new-array v2, v1, [F

    invoke-direct {v0, v2, v1}, Lcom/android/framework/protobuf/FloatArrayList;-><init>([FI)V

    sput-object v0, Lcom/android/framework/protobuf/FloatArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/FloatArrayList;

    .line 51
    invoke-virtual {v0}, Lcom/android/framework/protobuf/FloatArrayList;->makeImmutable()V

    .line 52
    return-void
.end method

.method constructor blacklist <init>()V
    .locals 2

    .line 69
    const/16 v0, 0xa

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/framework/protobuf/FloatArrayList;-><init>([FI)V

    .line 70
    return-void
.end method

.method private constructor blacklist <init>([FI)V
    .locals 0
    .param p1, "other"    # [F
    .param p2, "size"    # I

    .line 75
    invoke-direct {p0}, Lcom/android/framework/protobuf/AbstractProtobufList;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    .line 77
    iput p2, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    .line 78
    return-void
.end method

.method private blacklist addFloat(IF)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "element"    # F

    .line 175
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FloatArrayList;->ensureIsMutable()V

    .line 176
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    if-gt p1, v0, :cond_1

    .line 180
    iget-object v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 182
    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 185
    :cond_0
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 186
    .local v0, "length":I
    new-array v2, v0, [F

    .line 189
    .local v2, "newArray":[F
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    iget-object v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    iput-object v2, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    .line 196
    .end local v0    # "length":I
    .end local v2    # "newArray":[F
    :goto_0
    iget-object v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    aput p2, v0, p1

    .line 197
    iget v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    .line 198
    iget v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->modCount:I

    .line 199
    return-void

    .line 177
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/FloatArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist emptyList()Lcom/android/framework/protobuf/FloatArrayList;
    .locals 1

    .line 55
    sget-object v0, Lcom/android/framework/protobuf/FloatArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/FloatArrayList;

    return-object v0
.end method

.method private blacklist ensureIndexInRange(I)V
    .locals 2
    .param p1, "index"    # I

    .line 268
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    if-ge p1, v0, :cond_0

    .line 271
    return-void

    .line 269
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/FloatArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist add(ILjava/lang/Float;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Float;

    .line 164
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/framework/protobuf/FloatArrayList;->addFloat(IF)V

    .line 165
    return-void
.end method

.method public bridge synthetic whitelist test-api add(ILjava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/FloatArrayList;->add(ILjava/lang/Float;)V

    return-void
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation

    .line 203
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Float;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FloatArrayList;->ensureIsMutable()V

    .line 205
    invoke-static {p1}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    instance-of v0, p1, Lcom/android/framework/protobuf/FloatArrayList;

    if-nez v0, :cond_0

    .line 209
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 212
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/FloatArrayList;

    .line 213
    .local v0, "list":Lcom/android/framework/protobuf/FloatArrayList;
    iget v1, v0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 214
    return v2

    .line 217
    :cond_1
    const v3, 0x7fffffff

    iget v4, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    sub-int/2addr v3, v4

    .line 218
    .local v3, "overflow":I
    if-lt v3, v1, :cond_3

    .line 223
    add-int/2addr v4, v1

    .line 224
    .local v4, "newSize":I
    iget-object v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    array-length v5, v1

    if-le v4, v5, :cond_2

    .line 225
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    .line 228
    :cond_2
    iget-object v1, v0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    iget-object v5, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    iget v6, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    iget v7, v0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    invoke-static {v1, v2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    iput v4, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    .line 230
    iget v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->modCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->modCount:I

    .line 231
    return v2

    .line 220
    .end local v4    # "newSize":I
    :cond_3
    new-instance v1, Ljava/lang/OutOfMemoryError;

    invoke-direct {v1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v1
.end method

.method public blacklist addFloat(F)V
    .locals 1
    .param p1, "element"    # F

    .line 170
    iget v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    invoke-direct {p0, v0, p1}, Lcom/android/framework/protobuf/FloatArrayList;->addFloat(IF)V

    .line 171
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 94
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 95
    return v0

    .line 97
    :cond_0
    instance-of v1, p1, Lcom/android/framework/protobuf/FloatArrayList;

    if-nez v1, :cond_1

    .line 98
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 100
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/framework/protobuf/FloatArrayList;

    .line 101
    .local v1, "other":Lcom/android/framework/protobuf/FloatArrayList;
    iget v2, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    iget v3, v1, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    .line 102
    return v4

    .line 105
    :cond_2
    iget-object v2, v1, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    .line 106
    .local v2, "arr":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v5, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    if-ge v3, v5, :cond_4

    .line 107
    iget-object v5, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    aget v5, v5, v3

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    aget v6, v2, v3

    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 108
    return v4

    .line 106
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 112
    .end local v3    # "i":I
    :cond_4
    return v0
.end method

.method public blacklist get(I)Ljava/lang/Float;
    .locals 1
    .param p1, "index"    # I

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/FloatArrayList;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api get(I)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/FloatArrayList;->get(I)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getFloat(I)F
    .locals 1
    .param p1, "index"    # I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/FloatArrayList;->ensureIndexInRange(I)V

    .line 140
    iget-object v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    aget v0, v0, p1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    .line 117
    const/4 v0, 0x1

    .line 118
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    if-ge v1, v2, :cond_0

    .line 119
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int v0, v2, v3

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public blacklist mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$FloatList;
    .locals 3
    .param p1, "capacity"    # I

    .line 126
    iget v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    if-lt p1, v0, :cond_0

    .line 129
    new-instance v0, Lcom/android/framework/protobuf/FloatArrayList;

    iget-object v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iget v2, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    invoke-direct {v0, v1, v2}, Lcom/android/framework/protobuf/FloatArrayList;-><init>([FI)V

    return-object v0

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public bridge synthetic blacklist mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$ProtobufList;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/FloatArrayList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$FloatList;

    move-result-object p1

    return-object p1
.end method

.method public blacklist remove(I)Ljava/lang/Float;
    .locals 4
    .param p1, "index"    # I

    .line 250
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FloatArrayList;->ensureIsMutable()V

    .line 251
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/FloatArrayList;->ensureIndexInRange(I)V

    .line 252
    iget-object v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    aget v1, v0, p1

    .line 253
    .local v1, "value":F
    iget v2, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    add-int/lit8 v3, v2, -0x1

    if-ge p1, v3, :cond_0

    .line 254
    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    :cond_0
    iget v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    .line 257
    iget v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->modCount:I

    .line 258
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api remove(I)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/FloatArrayList;->remove(I)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 236
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FloatArrayList;->ensureIsMutable()V

    .line 237
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    if-ge v0, v1, :cond_1

    .line 238
    iget-object v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    sub-int/2addr v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {v1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    iget v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    .line 241
    iget v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->modCount:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->modCount:I

    .line 242
    return v4

    .line 237
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist test-api removeRange(II)V
    .locals 2
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 82
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FloatArrayList;->ensureIsMutable()V

    .line 83
    if-lt p2, p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    iget v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    iget v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    .line 89
    iget v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->modCount:I

    .line 90
    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "toIndex < fromIndex"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist set(ILjava/lang/Float;)Ljava/lang/Float;
    .locals 1
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Float;

    .line 150
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/FloatArrayList;->setFloat(IF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/FloatArrayList;->set(ILjava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setFloat(IF)F
    .locals 2
    .param p1, "index"    # I
    .param p2, "element"    # F

    .line 155
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FloatArrayList;->ensureIsMutable()V

    .line 156
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/FloatArrayList;->ensureIndexInRange(I)V

    .line 157
    iget-object v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    aget v1, v0, p1

    .line 158
    .local v1, "previousValue":F
    aput p2, v0, p1

    .line 159
    return v1
.end method

.method public whitelist test-api size()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    return v0
.end method
