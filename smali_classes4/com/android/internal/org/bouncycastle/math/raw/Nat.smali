.class public abstract Lcom/android/internal/org/bouncycastle/math/raw/Nat;
.super Ljava/lang/Object;
.source "Nat.java"


# static fields
.field private static final blacklist M:J = 0xffffffffL


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist add(I[I[I[I)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    .line 17
    const-wide/16 v0, 0x0

    .line 18
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 20
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 21
    long-to-int v3, v0

    aput v3, p3, v2

    .line 22
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 18
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24
    .end local v2    # "i":I
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist add33At(II[II)I
    .locals 7
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zPos"    # I

    .line 30
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 31
    .local v0, "c":J
    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    .line 32
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 33
    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 34
    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 35
    ushr-long/2addr v0, v4

    .line 36
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p3, 0x2

    invoke-static {p0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static blacklist add33At(II[III)I
    .locals 7
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .param p4, "zPos"    # I

    .line 42
    add-int v0, p3, p4

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 43
    .local v0, "c":J
    add-int v4, p3, p4

    long-to-int v5, v0

    aput v5, p2, v4

    .line 44
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 45
    add-int v5, p3, p4

    add-int/lit8 v5, v5, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 46
    add-int v2, p3, p4

    add-int/lit8 v2, v2, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 47
    ushr-long/2addr v0, v4

    .line 48
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p4, 0x2

    invoke-static {p0, p2, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static blacklist add33To(II[I)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I

    .line 53
    const/4 v0, 0x0

    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    .line 54
    .local v1, "c":J
    long-to-int v5, v1

    aput v5, p2, v0

    .line 55
    const/16 v5, 0x20

    ushr-long/2addr v1, v5

    .line 56
    const/4 v6, 0x1

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v3, v7

    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    add-long/2addr v1, v3

    .line 57
    long-to-int v3, v1

    aput v3, p2, v6

    .line 58
    ushr-long/2addr v1, v5

    .line 59
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, p2, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static blacklist add33To(II[II)I
    .locals 7
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .line 64
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 65
    .local v0, "c":J
    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    .line 66
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 67
    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 68
    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 69
    ushr-long/2addr v0, v4

    .line 70
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    invoke-static {p0, p2, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static blacklist addBothTo(I[II[II[II)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .line 87
    const-wide/16 v0, 0x0

    .line 88
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 90
    add-int v3, p2, v2

    aget v3, p1, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v3, v7

    add-int v7, p6, v2

    aget v7, p5, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 91
    add-int v3, p6, v2

    long-to-int v4, v0

    aput v4, p5, v3

    .line 92
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    .end local v2    # "i":I
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addBothTo(I[I[I[I)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    .line 75
    const-wide/16 v0, 0x0

    .line 76
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 78
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v3, v7

    aget v7, p3, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 79
    long-to-int v3, v0

    aput v3, p3, v2

    .line 80
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v2    # "i":I
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addDWordAt(IJ[II)I
    .locals 7
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I
    .param p4, "zPos"    # I

    .line 100
    add-int/lit8 v0, p4, 0x0

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    add-long/2addr v0, v4

    .line 101
    .local v0, "c":J
    add-int/lit8 v4, p4, 0x0

    long-to-int v5, v0

    aput v5, p3, v4

    .line 102
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 103
    add-int/lit8 v5, p4, 0x1

    aget v5, p3, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    ushr-long v5, p1, v4

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 104
    add-int/lit8 v2, p4, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    .line 105
    ushr-long/2addr v0, v4

    .line 106
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p4, 0x2

    invoke-static {p0, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static blacklist addDWordAt(IJ[III)I
    .locals 7
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I
    .param p5, "zPos"    # I

    .line 112
    add-int v0, p4, p5

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    add-long/2addr v0, v4

    .line 113
    .local v0, "c":J
    add-int v4, p4, p5

    long-to-int v5, v0

    aput v5, p3, v4

    .line 114
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 115
    add-int v5, p4, p5

    add-int/lit8 v5, v5, 0x1

    aget v5, p3, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    ushr-long v5, p1, v4

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 116
    add-int v2, p4, p5

    add-int/lit8 v2, v2, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    .line 117
    ushr-long/2addr v0, v4

    .line 118
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p5, 0x2

    invoke-static {p0, p3, p4, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static blacklist addDWordTo(IJ[I)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I

    .line 123
    const/4 v0, 0x0

    aget v1, p3, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    and-long v5, p1, v3

    add-long/2addr v1, v5

    .line 124
    .local v1, "c":J
    long-to-int v5, v1

    aput v5, p3, v0

    .line 125
    const/16 v5, 0x20

    ushr-long/2addr v1, v5

    .line 126
    const/4 v6, 0x1

    aget v7, p3, v6

    int-to-long v7, v7

    and-long/2addr v3, v7

    ushr-long v7, p1, v5

    add-long/2addr v3, v7

    add-long/2addr v1, v3

    .line 127
    long-to-int v3, v1

    aput v3, p3, v6

    .line 128
    ushr-long/2addr v1, v5

    .line 129
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, p3, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static blacklist addDWordTo(IJ[II)I
    .locals 7
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .line 134
    add-int/lit8 v0, p4, 0x0

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    add-long/2addr v0, v4

    .line 135
    .local v0, "c":J
    add-int/lit8 v4, p4, 0x0

    long-to-int v5, v0

    aput v5, p3, v4

    .line 136
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 137
    add-int/lit8 v5, p4, 0x1

    aget v5, p3, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    ushr-long v5, p1, v4

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 138
    add-int/lit8 v2, p4, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    .line 139
    ushr-long/2addr v0, v4

    .line 140
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    invoke-static {p0, p3, p4, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static blacklist addTo(I[II[II)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .line 157
    const-wide/16 v0, 0x0

    .line 158
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 160
    add-int v3, p2, v2

    aget v3, p1, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 161
    add-int v3, p4, v2

    long-to-int v4, v0

    aput v4, p3, v3

    .line 162
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    .end local v2    # "i":I
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addTo(I[II[III)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "z"    # [I
    .param p4, "zOff"    # I
    .param p5, "cIn"    # I

    .line 169
    int-to-long v0, p5

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 170
    .local v0, "c":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p0, :cond_0

    .line 172
    add-int v5, p2, v4

    aget v5, p1, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int v7, p4, v4

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 173
    add-int v5, p4, v4

    long-to-int v6, v0

    aput v6, p3, v5

    .line 174
    const/16 v5, 0x20

    ushr-long/2addr v0, v5

    .line 170
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 176
    .end local v4    # "i":I
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addTo(I[I[I)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    .line 145
    const-wide/16 v0, 0x0

    .line 146
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 148
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 149
    long-to-int v3, v0

    aput v3, p2, v2

    .line 150
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    .end local v2    # "i":I
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addToEachOther(I[II[II)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "u"    # [I
    .param p2, "uOff"    # I
    .param p3, "v"    # [I
    .param p4, "vOff"    # I

    .line 181
    const-wide/16 v0, 0x0

    .line 182
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 184
    add-int v3, p2, v2

    aget v3, p1, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 185
    add-int v3, p2, v2

    long-to-int v4, v0

    aput v4, p1, v3

    .line 186
    add-int v3, p4, v2

    long-to-int v4, v0

    aput v4, p3, v3

    .line 187
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    .end local v2    # "i":I
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addWordAt(II[II)I
    .locals 6
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zPos"    # I

    .line 195
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 196
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p2, p3

    .line 197
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 198
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static blacklist addWordAt(II[III)I
    .locals 6
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .param p4, "zPos"    # I

    .line 204
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int v4, p3, p4

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 205
    .local v0, "c":J
    add-int v2, p3, p4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 206
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 207
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p4, 0x1

    invoke-static {p0, p2, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static blacklist addWordTo(II[I)I
    .locals 7
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I

    .line 212
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v4, 0x0

    aget v5, p2, v4

    int-to-long v5, v5

    and-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 213
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p2, v4

    .line 214
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 215
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-static {p0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v4

    :goto_0
    return v4
.end method

.method public static blacklist addWordTo(II[II)I
    .locals 6
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .line 220
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 221
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p2, p3

    .line 222
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 223
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-static {p0, p2, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static blacklist cadd(II[I[I[I)I
    .locals 11
    .param p0, "len"    # I
    .param p1, "mask"    # I
    .param p2, "x"    # [I
    .param p3, "y"    # [I
    .param p4, "z"    # [I

    .line 228
    and-int/lit8 v0, p1, 0x1

    neg-int v0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 229
    .local v0, "MASK":J
    const-wide/16 v4, 0x0

    .line 230
    .local v4, "c":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, p0, :cond_0

    .line 232
    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    aget v9, p3, v6

    int-to-long v9, v9

    and-long/2addr v9, v0

    add-long/2addr v7, v9

    add-long/2addr v4, v7

    .line 233
    long-to-int v7, v4

    aput v7, p4, v6

    .line 234
    const/16 v7, 0x20

    ushr-long/2addr v4, v7

    .line 230
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 236
    .end local v6    # "i":I
    :cond_0
    long-to-int v2, v4

    return v2
.end method

.method public static blacklist cmov(II[II[II)V
    .locals 4
    .param p0, "len"    # I
    .param p1, "mask"    # I
    .param p2, "x"    # [I
    .param p3, "xOff"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    .line 241
    and-int/lit8 v0, p1, 0x1

    neg-int p1, v0

    .line 243
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 245
    add-int v1, p5, v0

    aget v1, p4, v1

    .local v1, "z_i":I
    add-int v2, p3, v0

    aget v2, p2, v2

    xor-int/2addr v2, v1

    .line 246
    .local v2, "diff":I
    and-int v3, v2, p1

    xor-int/2addr v1, v3

    .line 247
    add-int v3, p5, v0

    aput v1, p4, v3

    .line 243
    .end local v1    # "z_i":I
    .end local v2    # "diff":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist compare(I[II[II)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I

    .line 277
    add-int/lit8 v0, p0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 279
    add-int v1, p2, v0

    aget v1, p1, v1

    const/high16 v2, -0x80000000

    xor-int/2addr v1, v2

    .line 280
    .local v1, "x_i":I
    add-int v3, p4, v0

    aget v3, p3, v3

    xor-int/2addr v2, v3

    .line 281
    .local v2, "y_i":I
    if-ge v1, v2, :cond_0

    .line 282
    const/4 v3, -0x1

    return v3

    .line 283
    :cond_0
    if-le v1, v2, :cond_1

    .line 284
    const/4 v3, 0x1

    return v3

    .line 277
    .end local v1    # "x_i":I
    .end local v2    # "y_i":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 286
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist compare(I[I[I)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I

    .line 263
    add-int/lit8 v0, p0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 265
    aget v1, p1, v0

    const/high16 v2, -0x80000000

    xor-int/2addr v1, v2

    .line 266
    .local v1, "x_i":I
    aget v3, p2, v0

    xor-int/2addr v2, v3

    .line 267
    .local v2, "y_i":I
    if-ge v1, v2, :cond_0

    .line 268
    const/4 v3, -0x1

    return v3

    .line 269
    :cond_0
    if-le v1, v2, :cond_1

    .line 270
    const/4 v3, 0x1

    return v3

    .line 263
    .end local v1    # "x_i":I
    .end local v2    # "y_i":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 272
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist copy(I[II[II)V
    .locals 0
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .line 303
    invoke-static {p1, p2, p3, p4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    return-void
.end method

.method public static blacklist copy(I[I[I)V
    .locals 1
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    .line 298
    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    return-void
.end method

.method public static blacklist copy(I[I)[I
    .locals 2
    .param p0, "len"    # I
    .param p1, "x"    # [I

    .line 291
    new-array v0, p0, [I

    .line 292
    .local v0, "z":[I
    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    return-object v0
.end method

.method public static blacklist copy64(I[JI[JI)V
    .locals 0
    .param p0, "len"    # I
    .param p1, "x"    # [J
    .param p2, "xOff"    # I
    .param p3, "z"    # [J
    .param p4, "zOff"    # I

    .line 320
    invoke-static {p1, p2, p3, p4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 321
    return-void
.end method

.method public static blacklist copy64(I[J[J)V
    .locals 1
    .param p0, "len"    # I
    .param p1, "x"    # [J
    .param p2, "z"    # [J

    .line 315
    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    return-void
.end method

.method public static blacklist copy64(I[J)[J
    .locals 2
    .param p0, "len"    # I
    .param p1, "x"    # [J

    .line 308
    new-array v0, p0, [J

    .line 309
    .local v0, "z":[J
    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    return-object v0
.end method

.method public static blacklist create(I)[I
    .locals 1
    .param p0, "len"    # I

    .line 325
    new-array v0, p0, [I

    return-object v0
.end method

.method public static blacklist create64(I)[J
    .locals 1
    .param p0, "len"    # I

    .line 330
    new-array v0, p0, [J

    return-object v0
.end method

.method public static blacklist csub(II[II[II[II)I
    .locals 12
    .param p0, "len"    # I
    .param p1, "mask"    # I
    .param p2, "x"    # [I
    .param p3, "xOff"    # I
    .param p4, "y"    # [I
    .param p5, "yOff"    # I
    .param p6, "z"    # [I
    .param p7, "zOff"    # I

    .line 348
    and-int/lit8 v0, p1, 0x1

    neg-int v0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 349
    .local v0, "MASK":J
    const-wide/16 v4, 0x0

    .line 350
    .local v4, "c":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move v7, p0

    if-ge v6, v7, :cond_0

    .line 352
    add-int v8, p3, v6

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-int v10, p5, v6

    aget v10, p4, v10

    int-to-long v10, v10

    and-long/2addr v10, v0

    sub-long/2addr v8, v10

    add-long/2addr v4, v8

    .line 353
    add-int v8, p7, v6

    long-to-int v9, v4

    aput v9, p6, v8

    .line 354
    const/16 v8, 0x20

    shr-long/2addr v4, v8

    .line 350
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 356
    .end local v6    # "i":I
    :cond_0
    long-to-int v2, v4

    return v2
.end method

.method public static blacklist csub(II[I[I[I)I
    .locals 11
    .param p0, "len"    # I
    .param p1, "mask"    # I
    .param p2, "x"    # [I
    .param p3, "y"    # [I
    .param p4, "z"    # [I

    .line 335
    and-int/lit8 v0, p1, 0x1

    neg-int v0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 336
    .local v0, "MASK":J
    const-wide/16 v4, 0x0

    .line 337
    .local v4, "c":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, p0, :cond_0

    .line 339
    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    aget v9, p3, v6

    int-to-long v9, v9

    and-long/2addr v9, v0

    sub-long/2addr v7, v9

    add-long/2addr v4, v7

    .line 340
    long-to-int v7, v4

    aput v7, p4, v6

    .line 341
    const/16 v7, 0x20

    shr-long/2addr v4, v7

    .line 337
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 343
    .end local v6    # "i":I
    :cond_0
    long-to-int v2, v4

    return v2
.end method

.method public static blacklist dec(I[I)I
    .locals 3
    .param p0, "len"    # I
    .param p1, "z"    # [I

    .line 361
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, -0x1

    if-ge v0, p0, :cond_1

    .line 363
    aget v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, p1, v0

    if-eq v2, v1, :cond_0

    .line 365
    const/4 v1, 0x0

    return v1

    .line 361
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method public static blacklist dec(I[I[I)I
    .locals 3
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    .line 373
    const/4 v0, 0x0

    .line 374
    .local v0, "i":I
    :goto_0
    const/4 v1, -0x1

    if-ge v0, p0, :cond_2

    .line 376
    aget v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    .line 377
    .local v2, "c":I
    aput v2, p2, v0

    .line 378
    add-int/lit8 v0, v0, 0x1

    .line 379
    if-eq v2, v1, :cond_1

    .line 381
    :goto_1
    if-ge v0, p0, :cond_0

    .line 383
    aget v1, p1, v0

    aput v1, p2, v0

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 386
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 388
    .end local v2    # "c":I
    :cond_1
    goto :goto_0

    .line 389
    :cond_2
    return v1
.end method

.method public static blacklist decAt(I[II)I
    .locals 3
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zPos"    # I

    .line 395
    move v0, p2

    .local v0, "i":I
    :goto_0
    const/4 v1, -0x1

    if-ge v0, p0, :cond_1

    .line 397
    aget v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, p1, v0

    if-eq v2, v1, :cond_0

    .line 399
    const/4 v1, 0x0

    return v1

    .line 395
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method public static blacklist decAt(I[III)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .param p3, "zPos"    # I

    .line 408
    move v0, p3

    .local v0, "i":I
    :goto_0
    const/4 v1, -0x1

    if-ge v0, p0, :cond_1

    .line 410
    add-int v2, p2, v0

    aget v3, p1, v2

    add-int/lit8 v3, v3, -0x1

    aput v3, p1, v2

    if-eq v3, v1, :cond_0

    .line 412
    const/4 v1, 0x0

    return v1

    .line 408
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 415
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method public static blacklist diff(I[II[II[II)Z
    .locals 8
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .line 420
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[II[II)Z

    move-result v0

    .line 421
    .local v0, "pos":Z
    if-eqz v0, :cond_0

    .line 423
    invoke-static/range {p0 .. p6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[II[II[II)I

    goto :goto_0

    .line 427
    :cond_0
    move v1, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p1

    move v5, p2

    move-object v6, p5

    move v7, p6

    invoke-static/range {v1 .. v7}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[II[II[II)I

    .line 429
    :goto_0
    return v0
.end method

.method public static blacklist eq(I[I[I)Z
    .locals 3
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I

    .line 434
    add-int/lit8 v0, p0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 436
    aget v1, p1, v0

    aget v2, p2, v0

    if-eq v1, v2, :cond_0

    .line 438
    const/4 v1, 0x0

    return v1

    .line 434
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 441
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist equalTo(I[II)I
    .locals 3
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # I

    .line 446
    const/4 v0, 0x0

    aget v0, p1, v0

    xor-int/2addr v0, p2

    .line 447
    .local v0, "d":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 449
    aget v2, p1, v1

    or-int/2addr v0, v2

    .line 447
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 451
    .end local v1    # "i":I
    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 452
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static blacklist equalTo(I[III)I
    .locals 3
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # I

    .line 457
    aget v0, p1, p2

    xor-int/2addr v0, p3

    .line 458
    .local v0, "d":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 460
    add-int v2, p2, v1

    aget v2, p1, v2

    or-int/2addr v0, v2

    .line 458
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 462
    .end local v1    # "i":I
    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 463
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static blacklist equalTo(I[II[II)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I

    .line 479
    const/4 v0, 0x0

    .line 480
    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 482
    add-int v2, p2, v1

    aget v2, p1, v2

    add-int v3, p4, v1

    aget v3, p3, v3

    xor-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 480
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 484
    .end local v1    # "i":I
    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 485
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static blacklist equalTo(I[I[I)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I

    .line 468
    const/4 v0, 0x0

    .line 469
    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 471
    aget v2, p1, v1

    aget v3, p2, v1

    xor-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 469
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 473
    .end local v1    # "i":I
    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 474
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static blacklist equalToZero(I[I)I
    .locals 3
    .param p0, "len"    # I
    .param p1, "x"    # [I

    .line 490
    const/4 v0, 0x0

    .line 491
    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 493
    aget v2, p1, v1

    or-int/2addr v0, v2

    .line 491
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 495
    .end local v1    # "i":I
    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 496
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static blacklist equalToZero(I[II)I
    .locals 3
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I

    .line 501
    const/4 v0, 0x0

    .line 502
    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 504
    add-int v2, p2, v1

    aget v2, p1, v2

    or-int/2addr v0, v2

    .line 502
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 506
    .end local v1    # "i":I
    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 507
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static blacklist fromBigInteger(ILjava/math/BigInteger;)[I
    .locals 4
    .param p0, "bits"    # I
    .param p1, "x"    # Ljava/math/BigInteger;

    .line 512
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-gt v0, p0, :cond_1

    .line 517
    add-int/lit8 v0, p0, 0x1f

    shr-int/lit8 v0, v0, 0x5

    .line 518
    .local v0, "len":I
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v1

    .line 521
    .local v1, "z":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 523
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 524
    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 521
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 526
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 514
    .end local v0    # "len":I
    .end local v1    # "z":[I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static blacklist fromBigInteger64(ILjava/math/BigInteger;)[J
    .locals 5
    .param p0, "bits"    # I
    .param p1, "x"    # Ljava/math/BigInteger;

    .line 531
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-gt v0, p0, :cond_1

    .line 536
    add-int/lit8 v0, p0, 0x3f

    shr-int/lit8 v0, v0, 0x6

    .line 537
    .local v0, "len":I
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v1

    .line 540
    .local v1, "z":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 542
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 543
    const/16 v3, 0x40

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 540
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 545
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 533
    .end local v0    # "len":I
    .end local v1    # "z":[J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static blacklist getBit([II)I
    .locals 3
    .param p0, "x"    # [I
    .param p1, "bit"    # I

    .line 550
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 552
    aget v0, p0, v0

    and-int/lit8 v0, v0, 0x1

    return v0

    .line 554
    :cond_0
    shr-int/lit8 v1, p1, 0x5

    .line 555
    .local v1, "w":I
    if-ltz v1, :cond_2

    array-length v2, p0

    if-lt v1, v2, :cond_1

    goto :goto_0

    .line 559
    :cond_1
    and-int/lit8 v0, p1, 0x1f

    .line 560
    .local v0, "b":I
    aget v2, p0, v1

    ushr-int/2addr v2, v0

    and-int/lit8 v2, v2, 0x1

    return v2

    .line 557
    .end local v0    # "b":I
    :cond_2
    :goto_0
    return v0
.end method

.method public static blacklist gte(I[II[II)Z
    .locals 5
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I

    .line 579
    add-int/lit8 v0, p0, -0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    .line 581
    add-int v2, p2, v0

    aget v2, p1, v2

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 582
    .local v2, "x_i":I
    add-int v4, p4, v0

    aget v4, p3, v4

    xor-int/2addr v3, v4

    .line 583
    .local v3, "y_i":I
    if-ge v2, v3, :cond_0

    .line 584
    const/4 v1, 0x0

    return v1

    .line 585
    :cond_0
    if-le v2, v3, :cond_1

    .line 586
    return v1

    .line 579
    .end local v2    # "x_i":I
    .end local v3    # "y_i":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 588
    .end local v0    # "i":I
    :cond_2
    return v1
.end method

.method public static blacklist gte(I[I[I)Z
    .locals 5
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I

    .line 565
    add-int/lit8 v0, p0, -0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    .line 567
    aget v2, p1, v0

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 568
    .local v2, "x_i":I
    aget v4, p2, v0

    xor-int/2addr v3, v4

    .line 569
    .local v3, "y_i":I
    if-ge v2, v3, :cond_0

    .line 570
    const/4 v1, 0x0

    return v1

    .line 571
    :cond_0
    if-le v2, v3, :cond_1

    .line 572
    return v1

    .line 565
    .end local v2    # "x_i":I
    .end local v3    # "y_i":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 574
    .end local v0    # "i":I
    :cond_2
    return v1
.end method

.method public static blacklist inc(I[I)I
    .locals 3
    .param p0, "len"    # I
    .param p1, "z"    # [I

    .line 593
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-ge v0, p0, :cond_1

    .line 595
    aget v2, p1, v0

    add-int/2addr v2, v1

    aput v2, p1, v0

    if-eqz v2, :cond_0

    .line 597
    const/4 v1, 0x0

    return v1

    .line 593
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 600
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method public static blacklist inc(I[I[I)I
    .locals 3
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    .line 605
    const/4 v0, 0x0

    .line 606
    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-ge v0, p0, :cond_2

    .line 608
    aget v2, p1, v0

    add-int/2addr v2, v1

    .line 609
    .local v2, "c":I
    aput v2, p2, v0

    .line 610
    add-int/lit8 v0, v0, 0x1

    .line 611
    if-eqz v2, :cond_1

    .line 613
    :goto_1
    if-ge v0, p0, :cond_0

    .line 615
    aget v1, p1, v0

    aput v1, p2, v0

    .line 616
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 618
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 620
    .end local v2    # "c":I
    :cond_1
    goto :goto_0

    .line 621
    :cond_2
    return v1
.end method

.method public static blacklist incAt(I[II)I
    .locals 3
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zPos"    # I

    .line 627
    move v0, p2

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-ge v0, p0, :cond_1

    .line 629
    aget v2, p1, v0

    add-int/2addr v2, v1

    aput v2, p1, v0

    if-eqz v2, :cond_0

    .line 631
    const/4 v1, 0x0

    return v1

    .line 627
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 634
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method public static blacklist incAt(I[III)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .param p3, "zPos"    # I

    .line 640
    move v0, p3

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-ge v0, p0, :cond_1

    .line 642
    add-int v2, p2, v0

    aget v3, p1, v2

    add-int/2addr v3, v1

    aput v3, p1, v2

    if-eqz v3, :cond_0

    .line 644
    const/4 v1, 0x0

    return v1

    .line 640
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 647
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method public static blacklist isOne(I[I)Z
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I

    .line 652
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 654
    return v0

    .line 656
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_2

    .line 658
    aget v3, p1, v1

    if-eqz v3, :cond_1

    .line 660
    return v0

    .line 656
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 663
    .end local v1    # "i":I
    :cond_2
    return v2
.end method

.method public static blacklist isZero(I[I)Z
    .locals 2
    .param p0, "len"    # I
    .param p1, "x"    # [I

    .line 668
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    .line 670
    aget v1, p1, v0

    if-eqz v1, :cond_0

    .line 672
    const/4 v1, 0x0

    return v1

    .line 668
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 675
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist lessThan(I[II[II)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I

    .line 692
    const-wide/16 v0, 0x0

    .line 693
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 695
    add-int v3, p2, v2

    aget v3, p1, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 696
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 693
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 699
    .end local v2    # "i":I
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist lessThan(I[I[I)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I

    .line 680
    const-wide/16 v0, 0x0

    .line 681
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 683
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 684
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 681
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 687
    .end local v2    # "i":I
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist mul(I[II[II[II)V
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "zz"    # [I
    .param p6, "zzOff"    # I

    .line 714
    add-int v0, p6, p0

    aget v2, p1, p2

    move v1, p0

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWord(II[II[II)I

    move-result v1

    aput v1, p5, v0

    .line 716
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 718
    add-int v1, p6, v0

    add-int/2addr v1, p0

    add-int v2, p2, v0

    aget v4, p1, v2

    add-int v8, p6, v0

    move v3, p0

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-static/range {v3 .. v8}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result v2

    aput v2, p5, v1

    .line 716
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 720
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist mul(I[I[I[I)V
    .locals 8
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "zz"    # [I

    .line 704
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {p0, v0, p2, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWord(II[I[I)I

    move-result v0

    aput v0, p3, p0

    .line 706
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 708
    add-int v7, v0, p0

    aget v2, p1, v0

    const/4 v4, 0x0

    move v1, p0

    move-object v3, p2

    move-object v5, p3

    move v6, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result v1

    aput v1, p3, v7

    .line 706
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 710
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist mul([III[III[II)V
    .locals 9
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "xLen"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "yLen"    # I
    .param p6, "zz"    # [I
    .param p7, "zzOff"    # I

    .line 724
    add-int v6, p7, p5

    aget v1, p0, p1

    move v0, p5

    move-object v2, p3

    move v3, p4

    move-object v4, p6

    move/from16 v5, p7

    invoke-static/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWord(II[II[II)I

    move-result v0

    aput v0, p6, v6

    .line 726
    const/4 v0, 0x1

    move v6, v0

    .local v6, "i":I
    :goto_0
    move v7, p2

    if-ge v6, v7, :cond_0

    .line 728
    add-int v0, p7, v6

    add-int v8, v0, p5

    add-int v0, p1, v6

    aget v1, p0, v0

    add-int v5, p7, v6

    move v0, p5

    move-object v2, p3

    move v3, p4

    move-object v4, p6

    invoke-static/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result v0

    aput v0, p6, v8

    .line 726
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 730
    .end local v6    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist mul31BothAdd(II[II[I[II)I
    .locals 15
    .param p0, "len"    # I
    .param p1, "a"    # I
    .param p2, "x"    # [I
    .param p3, "b"    # I
    .param p4, "y"    # [I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .line 761
    const-wide/16 v0, 0x0

    move/from16 v2, p1

    .local v0, "c":J
    int-to-long v3, v2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    move/from16 v7, p3

    .local v3, "aVal":J
    int-to-long v8, v7

    and-long/2addr v8, v5

    .line 762
    .local v8, "bVal":J
    const/4 v10, 0x0

    .line 765
    .local v10, "i":I
    :goto_0
    aget v11, p2, v10

    int-to-long v11, v11

    and-long/2addr v11, v5

    mul-long/2addr v11, v3

    aget v13, p4, v10

    int-to-long v13, v13

    and-long/2addr v13, v5

    mul-long/2addr v13, v8

    add-long/2addr v11, v13

    add-int v13, p6, v10

    aget v13, p5, v13

    int-to-long v13, v13

    and-long/2addr v13, v5

    add-long/2addr v11, v13

    add-long/2addr v0, v11

    .line 766
    add-int v11, p6, v10

    long-to-int v12, v0

    aput v12, p5, v11

    .line 767
    const/16 v11, 0x20

    ushr-long/2addr v0, v11

    .line 769
    add-int/lit8 v10, v10, 0x1

    move v11, p0

    if-lt v10, v11, :cond_0

    .line 770
    long-to-int v5, v0

    return v5

    .line 769
    :cond_0
    goto :goto_0
.end method

.method public static blacklist mulAddTo(I[II[II[II)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "zz"    # [I
    .param p6, "zzOff"    # I

    .line 747
    const-wide/16 v0, 0x0

    .line 748
    .local v0, "zc":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 750
    add-int v3, p2, v2

    aget v4, p1, v3

    move v3, p0

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move v8, p6

    invoke-static/range {v3 .. v8}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 751
    add-int v3, p6, p0

    aget v3, p5, v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 752
    add-int v3, p6, p0

    long-to-int v4, v0

    aput v4, p5, v3

    .line 753
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 754
    add-int/lit8 p6, p6, 0x1

    .line 748
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 756
    .end local v2    # "i":I
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist mulAddTo(I[I[I[I)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "zz"    # [I

    .line 734
    const-wide/16 v0, 0x0

    .line 735
    .local v0, "zc":J
    const/4 v2, 0x0

    move v8, v2

    .local v8, "i":I
    :goto_0
    if-ge v8, p0, :cond_0

    .line 737
    aget v3, p1, v8

    const/4 v5, 0x0

    move v2, p0

    move-object v4, p2

    move-object v6, p3

    move v7, v8

    invoke-static/range {v2 .. v7}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 738
    add-int v2, v8, p0

    aget v2, p3, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 739
    add-int v2, v8, p0

    long-to-int v3, v0

    aput v3, p3, v2

    .line 740
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 735
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 742
    .end local v8    # "i":I
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist mulWord(II[II[II)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    .line 789
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 790
    .local v2, "xVal":J
    const/4 v6, 0x0

    .line 793
    .local v6, "i":I
    :goto_0
    add-int v7, p3, v6

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-long/2addr v0, v7

    .line 794
    add-int v7, p5, v6

    long-to-int v8, v0

    aput v8, p4, v7

    .line 795
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 797
    add-int/lit8 v6, v6, 0x1

    if-lt v6, p0, :cond_0

    .line 798
    long-to-int v4, v0

    return v4

    .line 797
    :cond_0
    goto :goto_0
.end method

.method public static blacklist mulWord(II[I[I)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    .line 775
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 776
    .local v2, "xVal":J
    const/4 v6, 0x0

    .line 779
    .local v6, "i":I
    :goto_0
    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-long/2addr v0, v7

    .line 780
    long-to-int v7, v0

    aput v7, p3, v6

    .line 781
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 783
    add-int/lit8 v6, v6, 0x1

    if-lt v6, p0, :cond_0

    .line 784
    long-to-int v4, v0

    return v4

    .line 783
    :cond_0
    goto :goto_0
.end method

.method public static blacklist mulWordAddTo(II[II[II)I
    .locals 12
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    .line 803
    const-wide/16 v0, 0x0

    move v2, p1

    .local v0, "c":J
    int-to-long v3, v2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    .line 804
    .local v3, "xVal":J
    const/4 v7, 0x0

    .line 807
    .local v7, "i":I
    :goto_0
    add-int v8, p3, v7

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v5

    mul-long/2addr v8, v3

    add-int v10, p5, v7

    aget v10, p4, v10

    int-to-long v10, v10

    and-long/2addr v10, v5

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 808
    add-int v8, p5, v7

    long-to-int v9, v0

    aput v9, p4, v8

    .line 809
    const/16 v8, 0x20

    ushr-long/2addr v0, v8

    .line 811
    add-int/lit8 v7, v7, 0x1

    move v8, p0

    if-lt v7, v8, :cond_0

    .line 812
    long-to-int v5, v0

    return v5

    .line 811
    :cond_0
    goto :goto_0
.end method

.method public static blacklist mulWordDwordAddAt(IIJ[II)I
    .locals 13
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "y"    # J
    .param p4, "z"    # [I
    .param p5, "zPos"    # I

    .line 818
    move-object/from16 v0, p4

    const-wide/16 v1, 0x0

    move v3, p1

    .local v1, "c":J
    int-to-long v4, v3

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    .line 819
    .local v4, "xVal":J
    and-long v8, p2, v6

    mul-long/2addr v8, v4

    add-int/lit8 v10, p5, 0x0

    aget v10, v0, v10

    int-to-long v10, v10

    and-long/2addr v10, v6

    add-long/2addr v8, v10

    add-long/2addr v1, v8

    .line 820
    add-int/lit8 v8, p5, 0x0

    long-to-int v9, v1

    aput v9, v0, v8

    .line 821
    const/16 v8, 0x20

    ushr-long/2addr v1, v8

    .line 822
    ushr-long v9, p2, v8

    mul-long/2addr v9, v4

    add-int/lit8 v11, p5, 0x1

    aget v11, v0, v11

    int-to-long v11, v11

    and-long/2addr v11, v6

    add-long/2addr v9, v11

    add-long/2addr v1, v9

    .line 823
    add-int/lit8 v9, p5, 0x1

    long-to-int v10, v1

    aput v10, v0, v9

    .line 824
    ushr-long/2addr v1, v8

    .line 825
    add-int/lit8 v9, p5, 0x2

    aget v9, v0, v9

    int-to-long v9, v9

    and-long/2addr v6, v9

    add-long/2addr v1, v6

    .line 826
    add-int/lit8 v6, p5, 0x2

    long-to-int v7, v1

    aput v7, v0, v6

    .line 827
    ushr-long/2addr v1, v8

    .line 828
    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move v7, p0

    goto :goto_0

    :cond_0
    add-int/lit8 v6, p5, 0x3

    move v7, p0

    invoke-static {p0, v0, v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v6

    :goto_0
    return v6
.end method

.method public static blacklist shiftDownBit(I[II)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "c"    # I

    .line 833
    move v0, p0

    .line 834
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 836
    aget v1, p1, v0

    .line 837
    .local v1, "next":I
    ushr-int/lit8 v2, v1, 0x1

    shl-int/lit8 v3, p2, 0x1f

    or-int/2addr v2, v3

    aput v2, p1, v0

    .line 838
    move p2, v1

    .line 839
    .end local v1    # "next":I
    goto :goto_0

    .line 840
    :cond_0
    shl-int/lit8 v1, p2, 0x1f

    return v1
.end method

.method public static blacklist shiftDownBit(I[III)I
    .locals 5
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .param p3, "c"    # I

    .line 845
    move v0, p0

    .line 846
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 848
    add-int v1, p2, v0

    aget v1, p1, v1

    .line 849
    .local v1, "next":I
    add-int v2, p2, v0

    ushr-int/lit8 v3, v1, 0x1

    shl-int/lit8 v4, p3, 0x1f

    or-int/2addr v3, v4

    aput v3, p1, v2

    .line 850
    move p3, v1

    .line 851
    .end local v1    # "next":I
    goto :goto_0

    .line 852
    :cond_0
    shl-int/lit8 v1, p3, 0x1f

    return v1
.end method

.method public static blacklist shiftDownBit(I[III[II)I
    .locals 5
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "c"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    .line 869
    move v0, p0

    .line 870
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 872
    add-int v1, p2, v0

    aget v1, p1, v1

    .line 873
    .local v1, "next":I
    add-int v2, p5, v0

    ushr-int/lit8 v3, v1, 0x1

    shl-int/lit8 v4, p3, 0x1f

    or-int/2addr v3, v4

    aput v3, p4, v2

    .line 874
    move p3, v1

    .line 875
    .end local v1    # "next":I
    goto :goto_0

    .line 876
    :cond_0
    shl-int/lit8 v1, p3, 0x1f

    return v1
.end method

.method public static blacklist shiftDownBit(I[II[I)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "c"    # I
    .param p3, "z"    # [I

    .line 857
    move v0, p0

    .line 858
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 860
    aget v1, p1, v0

    .line 861
    .local v1, "next":I
    ushr-int/lit8 v2, v1, 0x1

    shl-int/lit8 v3, p2, 0x1f

    or-int/2addr v2, v3

    aput v2, p3, v0

    .line 862
    move p2, v1

    .line 863
    .end local v1    # "next":I
    goto :goto_0

    .line 864
    :cond_0
    shl-int/lit8 v1, p2, 0x1f

    return v1
.end method

.method public static blacklist shiftDownBits(I[III)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "bits"    # I
    .param p3, "c"    # I

    .line 882
    move v0, p0

    .line 883
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 885
    aget v1, p1, v0

    .line 886
    .local v1, "next":I
    ushr-int v2, v1, p2

    neg-int v3, p2

    shl-int v3, p3, v3

    or-int/2addr v2, v3

    aput v2, p1, v0

    .line 887
    move p3, v1

    .line 888
    .end local v1    # "next":I
    goto :goto_0

    .line 889
    :cond_0
    neg-int v1, p2

    shl-int v1, p3, v1

    return v1
.end method

.method public static blacklist shiftDownBits(I[IIII)I
    .locals 5
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .param p3, "bits"    # I
    .param p4, "c"    # I

    .line 895
    move v0, p0

    .line 896
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 898
    add-int v1, p2, v0

    aget v1, p1, v1

    .line 899
    .local v1, "next":I
    add-int v2, p2, v0

    ushr-int v3, v1, p3

    neg-int v4, p3

    shl-int v4, p4, v4

    or-int/2addr v3, v4

    aput v3, p1, v2

    .line 900
    move p4, v1

    .line 901
    .end local v1    # "next":I
    goto :goto_0

    .line 902
    :cond_0
    neg-int v1, p3

    shl-int v1, p4, v1

    return v1
.end method

.method public static blacklist shiftDownBits(I[IIII[II)I
    .locals 5
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "bits"    # I
    .param p4, "c"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .line 921
    move v0, p0

    .line 922
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 924
    add-int v1, p2, v0

    aget v1, p1, v1

    .line 925
    .local v1, "next":I
    add-int v2, p6, v0

    ushr-int v3, v1, p3

    neg-int v4, p3

    shl-int v4, p4, v4

    or-int/2addr v3, v4

    aput v3, p5, v2

    .line 926
    move p4, v1

    .line 927
    .end local v1    # "next":I
    goto :goto_0

    .line 928
    :cond_0
    neg-int v1, p3

    shl-int v1, p4, v1

    return v1
.end method

.method public static blacklist shiftDownBits(I[III[I)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "bits"    # I
    .param p3, "c"    # I
    .param p4, "z"    # [I

    .line 908
    move v0, p0

    .line 909
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 911
    aget v1, p1, v0

    .line 912
    .local v1, "next":I
    ushr-int v2, v1, p2

    neg-int v3, p2

    shl-int v3, p3, v3

    or-int/2addr v2, v3

    aput v2, p4, v0

    .line 913
    move p3, v1

    .line 914
    .end local v1    # "next":I
    goto :goto_0

    .line 915
    :cond_0
    neg-int v1, p2

    shl-int v1, p3, v1

    return v1
.end method

.method public static blacklist shiftDownWord(I[II)I
    .locals 2
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "c"    # I

    .line 933
    move v0, p0

    .line 934
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 936
    aget v1, p1, v0

    .line 937
    .local v1, "next":I
    aput p2, p1, v0

    .line 938
    move p2, v1

    .line 939
    .end local v1    # "next":I
    goto :goto_0

    .line 940
    :cond_0
    return p2
.end method

.method public static blacklist shiftUpBit(I[II)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "c"    # I

    .line 945
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 947
    aget v1, p1, v0

    .line 948
    .local v1, "next":I
    shl-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p2, 0x1f

    or-int/2addr v2, v3

    aput v2, p1, v0

    .line 949
    move p2, v1

    .line 945
    .end local v1    # "next":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 951
    .end local v0    # "i":I
    :cond_0
    ushr-int/lit8 v0, p2, 0x1f

    return v0
.end method

.method public static blacklist shiftUpBit(I[III)I
    .locals 5
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .param p3, "c"    # I

    .line 956
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 958
    add-int v1, p2, v0

    aget v1, p1, v1

    .line 959
    .local v1, "next":I
    add-int v2, p2, v0

    shl-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, p3, 0x1f

    or-int/2addr v3, v4

    aput v3, p1, v2

    .line 960
    move p3, v1

    .line 956
    .end local v1    # "next":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 962
    .end local v0    # "i":I
    :cond_0
    ushr-int/lit8 v0, p3, 0x1f

    return v0
.end method

.method public static blacklist shiftUpBit(I[III[II)I
    .locals 5
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "c"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    .line 978
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 980
    add-int v1, p2, v0

    aget v1, p1, v1

    .line 981
    .local v1, "next":I
    add-int v2, p5, v0

    shl-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, p3, 0x1f

    or-int/2addr v3, v4

    aput v3, p4, v2

    .line 982
    move p3, v1

    .line 978
    .end local v1    # "next":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 984
    .end local v0    # "i":I
    :cond_0
    ushr-int/lit8 v0, p3, 0x1f

    return v0
.end method

.method public static blacklist shiftUpBit(I[II[I)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "c"    # I
    .param p3, "z"    # [I

    .line 967
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 969
    aget v1, p1, v0

    .line 970
    .local v1, "next":I
    shl-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p2, 0x1f

    or-int/2addr v2, v3

    aput v2, p3, v0

    .line 971
    move p2, v1

    .line 967
    .end local v1    # "next":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 973
    .end local v0    # "i":I
    :cond_0
    ushr-int/lit8 v0, p2, 0x1f

    return v0
.end method

.method public static blacklist shiftUpBit64(I[JIJ[JI)J
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # [J
    .param p2, "xOff"    # I
    .param p3, "c"    # J
    .param p5, "z"    # [J
    .param p6, "zOff"    # I

    .line 989
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x3f

    if-ge v0, p0, :cond_0

    .line 991
    add-int v2, p2, v0

    aget-wide v2, p1, v2

    .line 992
    .local v2, "next":J
    add-int v4, p6, v0

    const/4 v5, 0x1

    shl-long v5, v2, v5

    ushr-long v7, p3, v1

    or-long/2addr v5, v7

    aput-wide v5, p5, v4

    .line 993
    move-wide p3, v2

    .line 989
    .end local v2    # "next":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 995
    .end local v0    # "i":I
    :cond_0
    ushr-long v0, p3, v1

    return-wide v0
.end method

.method public static blacklist shiftUpBits(I[III)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "bits"    # I
    .param p3, "c"    # I

    .line 1001
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 1003
    aget v1, p1, v0

    .line 1004
    .local v1, "next":I
    shl-int v2, v1, p2

    neg-int v3, p2

    ushr-int v3, p3, v3

    or-int/2addr v2, v3

    aput v2, p1, v0

    .line 1005
    move p3, v1

    .line 1001
    .end local v1    # "next":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1007
    .end local v0    # "i":I
    :cond_0
    neg-int v0, p2

    ushr-int v0, p3, v0

    return v0
.end method

.method public static blacklist shiftUpBits(I[IIII)I
    .locals 5
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .param p3, "bits"    # I
    .param p4, "c"    # I

    .line 1013
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 1015
    add-int v1, p2, v0

    aget v1, p1, v1

    .line 1016
    .local v1, "next":I
    add-int v2, p2, v0

    shl-int v3, v1, p3

    neg-int v4, p3

    ushr-int v4, p4, v4

    or-int/2addr v3, v4

    aput v3, p1, v2

    .line 1017
    move p4, v1

    .line 1013
    .end local v1    # "next":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1019
    .end local v0    # "i":I
    :cond_0
    neg-int v0, p3

    ushr-int v0, p4, v0

    return v0
.end method

.method public static blacklist shiftUpBits(I[IIII[II)I
    .locals 5
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "bits"    # I
    .param p4, "c"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .line 1049
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 1051
    add-int v1, p2, v0

    aget v1, p1, v1

    .line 1052
    .local v1, "next":I
    add-int v2, p6, v0

    shl-int v3, v1, p3

    neg-int v4, p3

    ushr-int v4, p4, v4

    or-int/2addr v3, v4

    aput v3, p5, v2

    .line 1053
    move p4, v1

    .line 1049
    .end local v1    # "next":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1055
    .end local v0    # "i":I
    :cond_0
    neg-int v0, p3

    ushr-int v0, p4, v0

    return v0
.end method

.method public static blacklist shiftUpBits(I[III[I)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "bits"    # I
    .param p3, "c"    # I
    .param p4, "z"    # [I

    .line 1037
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 1039
    aget v1, p1, v0

    .line 1040
    .local v1, "next":I
    shl-int v2, v1, p2

    neg-int v3, p2

    ushr-int v3, p3, v3

    or-int/2addr v2, v3

    aput v2, p4, v0

    .line 1041
    move p3, v1

    .line 1037
    .end local v1    # "next":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1043
    .end local v0    # "i":I
    :cond_0
    neg-int v0, p2

    ushr-int v0, p3, v0

    return v0
.end method

.method public static blacklist shiftUpBits64(I[JIIJ)J
    .locals 8
    .param p0, "len"    # I
    .param p1, "z"    # [J
    .param p2, "zOff"    # I
    .param p3, "bits"    # I
    .param p4, "c"    # J

    .line 1025
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 1027
    add-int v1, p2, v0

    aget-wide v1, p1, v1

    .line 1028
    .local v1, "next":J
    add-int v3, p2, v0

    shl-long v4, v1, p3

    neg-int v6, p3

    ushr-long v6, p4, v6

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    .line 1029
    move-wide p4, v1

    .line 1025
    .end local v1    # "next":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1031
    .end local v0    # "i":I
    :cond_0
    neg-int v0, p3

    ushr-long v0, p4, v0

    return-wide v0
.end method

.method public static blacklist shiftUpBits64(I[JIIJ[JI)J
    .locals 8
    .param p0, "len"    # I
    .param p1, "x"    # [J
    .param p2, "xOff"    # I
    .param p3, "bits"    # I
    .param p4, "c"    # J
    .param p6, "z"    # [J
    .param p7, "zOff"    # I

    .line 1061
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 1063
    add-int v1, p2, v0

    aget-wide v1, p1, v1

    .line 1064
    .local v1, "next":J
    add-int v3, p7, v0

    shl-long v4, v1, p3

    neg-int v6, p3

    ushr-long v6, p4, v6

    or-long/2addr v4, v6

    aput-wide v4, p6, v3

    .line 1065
    move-wide p4, v1

    .line 1061
    .end local v1    # "next":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1067
    .end local v0    # "i":I
    :cond_0
    neg-int v0, p3

    ushr-long v0, p4, v0

    return-wide v0
.end method

.method public static blacklist square(I[II[II)V
    .locals 18
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "zz"    # [I
    .param p4, "zzOff"    # I

    .line 1103
    move/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    shl-int/lit8 v5, v0, 0x1

    .line 1104
    .local v5, "extLen":I
    const/4 v6, 0x0

    .line 1105
    .local v6, "c":I
    move/from16 v7, p0

    .local v7, "j":I
    move v8, v5

    .line 1108
    .local v8, "k":I
    :goto_0
    add-int/lit8 v7, v7, -0x1

    add-int v9, v2, v7

    aget v9, v1, v9

    int-to-long v9, v9

    const-wide v11, 0xffffffffL

    and-long/2addr v9, v11

    .line 1109
    .local v9, "xVal":J
    mul-long v13, v9, v9

    .line 1110
    .local v13, "p":J
    add-int/lit8 v8, v8, -0x1

    add-int v15, v4, v8

    shl-int/lit8 v16, v6, 0x1f

    const/16 v17, 0x21

    ushr-long v11, v13, v17

    long-to-int v11, v11

    or-int v11, v16, v11

    aput v11, v3, v15

    .line 1111
    add-int/lit8 v8, v8, -0x1

    add-int v11, v4, v8

    const/4 v12, 0x1

    move-wide v15, v9

    move v10, v8

    .end local v8    # "k":I
    .end local v9    # "xVal":J
    .local v10, "k":I
    .local v15, "xVal":J
    ushr-long v8, v13, v12

    long-to-int v8, v8

    aput v8, v3, v11

    .line 1112
    long-to-int v6, v13

    .line 1114
    .end local v13    # "p":J
    .end local v15    # "xVal":J
    if-gtz v7, :cond_1

    .line 1116
    const-wide/16 v8, 0x0

    .line 1117
    .local v8, "d":J
    add-int/lit8 v11, v4, 0x2

    .line 1119
    .local v11, "zzPos":I
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_1
    if-ge v12, v0, :cond_0

    .line 1121
    invoke-static {v1, v2, v12, v3, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->squareWordAddTo([III[II)I

    move-result v13

    int-to-long v13, v13

    const-wide v15, 0xffffffffL

    and-long/2addr v13, v15

    add-long/2addr v8, v13

    .line 1122
    aget v13, v3, v11

    int-to-long v13, v13

    and-long/2addr v13, v15

    add-long/2addr v8, v13

    .line 1123
    add-int/lit8 v13, v11, 0x1

    .end local v11    # "zzPos":I
    .local v13, "zzPos":I
    long-to-int v14, v8

    aput v14, v3, v11

    const/16 v11, 0x20

    ushr-long/2addr v8, v11

    .line 1124
    aget v14, v3, v13

    int-to-long v14, v14

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    add-long/2addr v8, v14

    .line 1125
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "zzPos":I
    .local v14, "zzPos":I
    long-to-int v15, v8

    aput v15, v3, v13

    ushr-long/2addr v8, v11

    .line 1119
    add-int/lit8 v12, v12, 0x1

    move v11, v14

    goto :goto_1

    .line 1129
    .end local v12    # "i":I
    .end local v14    # "zzPos":I
    .restart local v11    # "zzPos":I
    :cond_0
    aget v12, v1, v2

    shl-int/lit8 v12, v12, 0x1f

    invoke-static {v5, v3, v4, v12}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[III)I

    .line 1130
    return-void

    .line 1114
    .end local v8    # "d":J
    .end local v11    # "zzPos":I
    :cond_1
    move v8, v10

    goto :goto_0
.end method

.method public static blacklist square(I[I[I)V
    .locals 13
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "zz"    # [I

    .line 1072
    shl-int/lit8 v0, p0, 0x1

    .line 1073
    .local v0, "extLen":I
    const/4 v1, 0x0

    .line 1074
    .local v1, "c":I
    move v2, p0

    .local v2, "j":I
    move v3, v0

    .line 1077
    .local v3, "k":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    aget v4, p1, v2

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    .line 1078
    .local v4, "xVal":J
    mul-long v8, v4, v4

    .line 1079
    .local v8, "p":J
    add-int/lit8 v3, v3, -0x1

    shl-int/lit8 v10, v1, 0x1f

    const/16 v11, 0x21

    ushr-long v11, v8, v11

    long-to-int v11, v11

    or-int/2addr v10, v11

    aput v10, p2, v3

    .line 1080
    add-int/lit8 v3, v3, -0x1

    const/4 v10, 0x1

    ushr-long v10, v8, v10

    long-to-int v10, v10

    aput v10, p2, v3

    .line 1081
    long-to-int v1, v8

    .line 1083
    .end local v4    # "xVal":J
    .end local v8    # "p":J
    if-gtz v2, :cond_1

    .line 1085
    const-wide/16 v4, 0x0

    .line 1086
    .local v4, "d":J
    const/4 v8, 0x2

    .line 1088
    .local v8, "zzPos":I
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_1
    if-ge v9, p0, :cond_0

    .line 1090
    invoke-static {p1, v9, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->squareWordAddTo([II[I)I

    move-result v10

    int-to-long v10, v10

    and-long/2addr v10, v6

    add-long/2addr v4, v10

    .line 1091
    aget v10, p2, v8

    int-to-long v10, v10

    and-long/2addr v10, v6

    add-long/2addr v4, v10

    .line 1092
    add-int/lit8 v10, v8, 0x1

    .end local v8    # "zzPos":I
    .local v10, "zzPos":I
    long-to-int v11, v4

    aput v11, p2, v8

    const/16 v8, 0x20

    ushr-long/2addr v4, v8

    .line 1093
    aget v11, p2, v10

    int-to-long v11, v11

    and-long/2addr v11, v6

    add-long/2addr v4, v11

    .line 1094
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "zzPos":I
    .local v11, "zzPos":I
    long-to-int v12, v4

    aput v12, p2, v10

    ushr-long/2addr v4, v8

    .line 1088
    add-int/lit8 v9, v9, 0x1

    move v8, v11

    goto :goto_1

    .line 1098
    .end local v9    # "i":I
    .end local v11    # "zzPos":I
    .restart local v8    # "zzPos":I
    :cond_0
    const/4 v6, 0x0

    aget v6, p1, v6

    shl-int/lit8 v6, v6, 0x1f

    invoke-static {v0, p2, v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II)I

    .line 1099
    return-void

    .line 1083
    .end local v4    # "d":J
    .end local v8    # "zzPos":I
    :cond_1
    goto :goto_0
.end method

.method public static blacklist squareWordAdd([III[II)I
    .locals 11
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "xPos"    # I
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .line 1154
    const-wide/16 v0, 0x0

    .local v0, "c":J
    add-int v2, p1, p2

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 1155
    .local v2, "xVal":J
    const/4 v6, 0x0

    .line 1158
    .local v6, "i":I
    :goto_0
    add-int v7, p1, v6

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int v9, p2, p4

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1159
    add-int v7, p2, p4

    long-to-int v8, v0

    aput v8, p3, v7

    .line 1160
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 1161
    add-int/lit8 p4, p4, 0x1

    .line 1163
    add-int/lit8 v6, v6, 0x1

    if-lt v6, p2, :cond_0

    .line 1164
    long-to-int v4, v0

    return v4

    .line 1163
    :cond_0
    goto :goto_0
.end method

.method public static blacklist squareWordAdd([II[I)I
    .locals 11
    .param p0, "x"    # [I
    .param p1, "xPos"    # I
    .param p2, "z"    # [I

    .line 1137
    const-wide/16 v0, 0x0

    .local v0, "c":J
    aget v2, p0, p1

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 1138
    .local v2, "xVal":J
    const/4 v6, 0x0

    .line 1141
    .local v6, "i":I
    :goto_0
    aget v7, p0, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int v9, p1, v6

    aget v9, p2, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1142
    add-int v7, p1, v6

    long-to-int v8, v0

    aput v8, p2, v7

    .line 1143
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 1145
    add-int/lit8 v6, v6, 0x1

    if-lt v6, p1, :cond_0

    .line 1146
    long-to-int v4, v0

    return v4

    .line 1145
    :cond_0
    goto :goto_0
.end method

.method public static blacklist squareWordAddTo([III[II)I
    .locals 11
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "xPos"    # I
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .line 1183
    const-wide/16 v0, 0x0

    .local v0, "c":J
    add-int v2, p1, p2

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 1184
    .local v2, "xVal":J
    const/4 v6, 0x0

    .line 1187
    .local v6, "i":I
    :goto_0
    add-int v7, p1, v6

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int v9, p2, p4

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1188
    add-int v7, p2, p4

    long-to-int v8, v0

    aput v8, p3, v7

    .line 1189
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 1190
    add-int/lit8 p4, p4, 0x1

    .line 1192
    add-int/lit8 v6, v6, 0x1

    if-lt v6, p2, :cond_0

    .line 1193
    long-to-int v4, v0

    return v4

    .line 1192
    :cond_0
    goto :goto_0
.end method

.method public static blacklist squareWordAddTo([II[I)I
    .locals 11
    .param p0, "x"    # [I
    .param p1, "xPos"    # I
    .param p2, "z"    # [I

    .line 1169
    const-wide/16 v0, 0x0

    .local v0, "c":J
    aget v2, p0, p1

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 1170
    .local v2, "xVal":J
    const/4 v6, 0x0

    .line 1173
    .local v6, "i":I
    :goto_0
    aget v7, p0, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int v9, p1, v6

    aget v9, p2, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1174
    add-int v7, p1, v6

    long-to-int v8, v0

    aput v8, p2, v7

    .line 1175
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 1177
    add-int/lit8 v6, v6, 0x1

    if-lt v6, p1, :cond_0

    .line 1178
    long-to-int v4, v0

    return v4

    .line 1177
    :cond_0
    goto :goto_0
.end method

.method public static blacklist sub(I[II[II[II)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .line 1210
    const-wide/16 v0, 0x0

    .line 1211
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 1213
    add-int v3, p2, v2

    aget v3, p1, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 1214
    add-int v3, p6, v2

    long-to-int v4, v0

    aput v4, p5, v3

    .line 1215
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 1211
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1217
    .end local v2    # "i":I
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist sub(I[I[I[I)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    .line 1198
    const-wide/16 v0, 0x0

    .line 1199
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 1201
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 1202
    long-to-int v3, v0

    aput v3, p3, v2

    .line 1203
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 1199
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1205
    .end local v2    # "i":I
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist sub33At(II[II)I
    .locals 7
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zPos"    # I

    .line 1223
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    sub-long/2addr v0, v4

    .line 1224
    .local v0, "c":J
    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    .line 1225
    const/16 v4, 0x20

    shr-long/2addr v0, v4

    .line 1226
    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 1227
    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1228
    shr-long/2addr v0, v4

    .line 1229
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p3, 0x2

    invoke-static {p0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static blacklist sub33At(II[III)I
    .locals 7
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .param p4, "zPos"    # I

    .line 1235
    add-int v0, p3, p4

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    sub-long/2addr v0, v4

    .line 1236
    .local v0, "c":J
    add-int v4, p3, p4

    long-to-int v5, v0

    aput v5, p2, v4

    .line 1237
    const/16 v4, 0x20

    shr-long/2addr v0, v4

    .line 1238
    add-int v5, p3, p4

    add-int/lit8 v5, v5, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 1239
    add-int v2, p3, p4

    add-int/lit8 v2, v2, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1240
    shr-long/2addr v0, v4

    .line 1241
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p4, 0x2

    invoke-static {p0, p2, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static blacklist sub33From(II[I)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I

    .line 1246
    const/4 v0, 0x0

    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    .line 1247
    .local v1, "c":J
    long-to-int v5, v1

    aput v5, p2, v0

    .line 1248
    const/16 v5, 0x20

    shr-long/2addr v1, v5

    .line 1249
    const/4 v6, 0x1

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v3, v7

    const-wide/16 v7, 0x1

    sub-long/2addr v3, v7

    add-long/2addr v1, v3

    .line 1250
    long-to-int v3, v1

    aput v3, p2, v6

    .line 1251
    shr-long/2addr v1, v5

    .line 1252
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, p2, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static blacklist sub33From(II[II)I
    .locals 7
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .line 1257
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    sub-long/2addr v0, v4

    .line 1258
    .local v0, "c":J
    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    .line 1259
    const/16 v4, 0x20

    shr-long/2addr v0, v4

    .line 1260
    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 1261
    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1262
    shr-long/2addr v0, v4

    .line 1263
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    invoke-static {p0, p2, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static blacklist subBothFrom(I[II[II[II)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .line 1280
    const-wide/16 v0, 0x0

    .line 1281
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 1283
    add-int v3, p6, v2

    aget v3, p5, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p2, v2

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    sub-long/2addr v3, v7

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 1284
    add-int v3, p6, v2

    long-to-int v4, v0

    aput v4, p5, v3

    .line 1285
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 1281
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1287
    .end local v2    # "i":I
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist subBothFrom(I[I[I[I)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    .line 1268
    const-wide/16 v0, 0x0

    .line 1269
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 1271
    aget v3, p3, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    sub-long/2addr v3, v7

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 1272
    long-to-int v3, v0

    aput v3, p3, v2

    .line 1273
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 1269
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1275
    .end local v2    # "i":I
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist subDWordAt(IJ[II)I
    .locals 7
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I
    .param p4, "zPos"    # I

    .line 1293
    add-int/lit8 v0, p4, 0x0

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    sub-long/2addr v0, v4

    .line 1294
    .local v0, "c":J
    add-int/lit8 v4, p4, 0x0

    long-to-int v5, v0

    aput v5, p3, v4

    .line 1295
    const/16 v4, 0x20

    shr-long/2addr v0, v4

    .line 1296
    add-int/lit8 v5, p4, 0x1

    aget v5, p3, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    ushr-long v5, p1, v4

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 1297
    add-int/lit8 v2, p4, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    .line 1298
    shr-long/2addr v0, v4

    .line 1299
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p4, 0x2

    invoke-static {p0, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static blacklist subDWordAt(IJ[III)I
    .locals 7
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I
    .param p5, "zPos"    # I

    .line 1305
    add-int v0, p4, p5

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    sub-long/2addr v0, v4

    .line 1306
    .local v0, "c":J
    add-int v4, p4, p5

    long-to-int v5, v0

    aput v5, p3, v4

    .line 1307
    const/16 v4, 0x20

    shr-long/2addr v0, v4

    .line 1308
    add-int v5, p4, p5

    add-int/lit8 v5, v5, 0x1

    aget v5, p3, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    ushr-long v5, p1, v4

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 1309
    add-int v2, p4, p5

    add-int/lit8 v2, v2, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    .line 1310
    shr-long/2addr v0, v4

    .line 1311
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p5, 0x2

    invoke-static {p0, p3, p4, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static blacklist subDWordFrom(IJ[I)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I

    .line 1316
    const/4 v0, 0x0

    aget v1, p3, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    and-long v5, p1, v3

    sub-long/2addr v1, v5

    .line 1317
    .local v1, "c":J
    long-to-int v5, v1

    aput v5, p3, v0

    .line 1318
    const/16 v5, 0x20

    shr-long/2addr v1, v5

    .line 1319
    const/4 v6, 0x1

    aget v7, p3, v6

    int-to-long v7, v7

    and-long/2addr v3, v7

    ushr-long v7, p1, v5

    sub-long/2addr v3, v7

    add-long/2addr v1, v3

    .line 1320
    long-to-int v3, v1

    aput v3, p3, v6

    .line 1321
    shr-long/2addr v1, v5

    .line 1322
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, p3, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static blacklist subDWordFrom(IJ[II)I
    .locals 7
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .line 1327
    add-int/lit8 v0, p4, 0x0

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    sub-long/2addr v0, v4

    .line 1328
    .local v0, "c":J
    add-int/lit8 v4, p4, 0x0

    long-to-int v5, v0

    aput v5, p3, v4

    .line 1329
    const/16 v4, 0x20

    shr-long/2addr v0, v4

    .line 1330
    add-int/lit8 v5, p4, 0x1

    aget v5, p3, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    ushr-long v5, p1, v4

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 1331
    add-int/lit8 v2, p4, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    .line 1332
    shr-long/2addr v0, v4

    .line 1333
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    invoke-static {p0, p3, p4, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static blacklist subFrom(I[II[II)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .line 1350
    const-wide/16 v0, 0x0

    .line 1351
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 1353
    add-int v3, p4, v2

    aget v3, p3, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p2, v2

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 1354
    add-int v3, p4, v2

    long-to-int v4, v0

    aput v4, p3, v3

    .line 1355
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 1351
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1357
    .end local v2    # "i":I
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist subFrom(I[I[I)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    .line 1338
    const-wide/16 v0, 0x0

    .line 1339
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 1341
    aget v3, p2, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 1342
    long-to-int v3, v0

    aput v3, p2, v2

    .line 1343
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 1339
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1345
    .end local v2    # "i":I
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist subWordAt(II[II)I
    .locals 6
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zPos"    # I

    .line 1363
    aget v0, p2, p3

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 1364
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p2, p3

    .line 1365
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1366
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static blacklist subWordAt(II[III)I
    .locals 6
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .param p4, "zPos"    # I

    .line 1372
    add-int v0, p3, p4

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 1373
    .local v0, "c":J
    add-int v2, p3, p4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1374
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1375
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p4, 0x1

    invoke-static {p0, p2, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static blacklist subWordFrom(II[I)I
    .locals 7
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I

    .line 1380
    const/4 v0, 0x0

    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v3, v5

    sub-long/2addr v1, v3

    .line 1381
    .local v1, "c":J
    long-to-int v3, v1

    aput v3, p2, v0

    .line 1382
    const/16 v3, 0x20

    shr-long/2addr v1, v3

    .line 1383
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static blacklist subWordFrom(II[II)I
    .locals 6
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .line 1388
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 1389
    .local v0, "c":J
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1390
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1391
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-static {p0, p2, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static blacklist toBigInteger(I[I)Ljava/math/BigInteger;
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I

    .line 1396
    shl-int/lit8 v0, p0, 0x2

    new-array v0, v0, [B

    .line 1397
    .local v0, "bs":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_1

    .line 1399
    aget v2, p1, v1

    .line 1400
    .local v2, "x_i":I
    if-eqz v2, :cond_0

    .line 1402
    add-int/lit8 v3, p0, -0x1

    sub-int/2addr v3, v1

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v2, v0, v3}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 1397
    .end local v2    # "x_i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1405
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public static blacklist zero(I[I)V
    .locals 2
    .param p0, "len"    # I
    .param p1, "z"    # [I

    .line 1410
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 1412
    const/4 v1, 0x0

    aput v1, p1, v0

    .line 1410
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1414
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist zero(I[II)V
    .locals 3
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I

    .line 1418
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 1420
    add-int v1, p2, v0

    const/4 v2, 0x0

    aput v2, p1, v1

    .line 1418
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1422
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist zero64(I[J)V
    .locals 3
    .param p0, "len"    # I
    .param p1, "z"    # [J

    .line 1426
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 1428
    const-wide/16 v1, 0x0

    aput-wide v1, p1, v0

    .line 1426
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1430
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
