.class public abstract Landroid/security/keystore/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o cloneIfNotEmpty([B)[B
    .locals 1
    .param p0, "array"    # [B

    .line 46
    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static blacklist cloneIfNotEmpty([I)[I
    .locals 1
    .param p0, "array"    # [I

    .line 42
    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static greylist-max-o cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "array"    # [Ljava/lang/String;

    .line 34
    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static greylist-max-o concat([BII[BII)[B
    .locals 2
    .param p0, "arr1"    # [B
    .param p1, "offset1"    # I
    .param p2, "len1"    # I
    .param p3, "arr2"    # [B
    .param p4, "offset2"    # I
    .param p5, "len2"    # I

    .line 56
    if-nez p2, :cond_0

    .line 57
    invoke-static {p3, p4, p5}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    move-result-object v0

    return-object v0

    .line 58
    :cond_0
    if-nez p5, :cond_1

    .line 59
    invoke-static {p0, p1, p2}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    move-result-object v0

    return-object v0

    .line 61
    :cond_1
    add-int v0, p2, p5

    new-array v0, v0, [B

    .line 62
    .local v0, "result":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    invoke-static {p3, p4, v0, p2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    return-object v0
.end method

.method public static greylist-max-o concat([B[B)[B
    .locals 8
    .param p0, "arr1"    # [B
    .param p1, "arr2"    # [B

    .line 50
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    const/4 v6, 0x0

    .line 51
    if-eqz p1, :cond_1

    array-length v0, p1

    :cond_1
    move v7, v0

    .line 50
    const/4 v3, 0x0

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v2 .. v7}, Landroid/security/keystore/ArrayUtils;->concat([BII[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o concat([I[I)[I
    .locals 4
    .param p0, "arr1"    # [I
    .param p1, "arr2"    # [I

    .line 109
    if-eqz p0, :cond_3

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 111
    :cond_0
    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_0

    .line 114
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 115
    .local v0, "result":[I
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    return-object v0

    .line 112
    .end local v0    # "result":[I
    :cond_2
    :goto_0
    return-object p0

    .line 110
    :cond_3
    :goto_1
    return-object p1
.end method

.method public static blacklist copy([BI[BII)I
    .locals 2
    .param p0, "src"    # [B
    .param p1, "srcOffset"    # I
    .param p2, "dst"    # [B
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .line 80
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    if-nez p0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    array-length v1, p2

    sub-int/2addr v1, p3

    if-le p4, v1, :cond_1

    .line 84
    array-length v1, p2

    sub-int p4, v1, p3

    .line 86
    :cond_1
    array-length v1, p0

    sub-int/2addr v1, p1

    if-le p4, v1, :cond_2

    .line 87
    array-length v1, p0

    sub-int p4, v1, p1

    .line 89
    :cond_2
    if-gtz p4, :cond_3

    .line 90
    return v0

    .line 92
    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    return p4

    .line 81
    :cond_4
    :goto_0
    return v0
.end method

.method public static blacklist forEach([ILjava/util/function/Consumer;)V
    .locals 4
    .param p0, "array"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 128
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    .line 129
    .local v2, "i":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 128
    .end local v2    # "i":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method

.method public static greylist-max-o nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "array"    # [Ljava/lang/String;

    .line 30
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static greylist-max-o subarray([BII)[B
    .locals 2
    .param p0, "arr"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .line 97
    if-nez p2, :cond_0

    .line 98
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    return-object v0

    .line 100
    :cond_0
    if-nez p1, :cond_1

    array-length v0, p0

    if-ne p2, v0, :cond_1

    .line 101
    return-object p0

    .line 103
    :cond_1
    new-array v0, p2, [B

    .line 104
    .local v0, "result":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    return-object v0
.end method
