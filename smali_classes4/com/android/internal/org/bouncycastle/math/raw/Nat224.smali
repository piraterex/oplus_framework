.class public abstract Lcom/android/internal/org/bouncycastle/math/raw/Nat224;
.super Ljava/lang/Object;
.source "Nat224.java"


# static fields
.field private static final blacklist M:J = 0xffffffffL


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist add([II[II[II)I
    .locals 10
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    .line 44
    const-wide/16 v0, 0x0

    .line 45
    .local v0, "c":J
    add-int/lit8 v2, p1, 0x0

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-int/lit8 v6, p3, 0x0

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    add-long/2addr v2, v6

    add-long/2addr v0, v2

    .line 46
    add-int/lit8 v2, p5, 0x0

    long-to-int v3, v0

    aput v3, p4, v2

    .line 47
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 48
    add-int/lit8 v3, p1, 0x1

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x1

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 49
    add-int/lit8 v3, p5, 0x1

    long-to-int v6, v0

    aput v6, p4, v3

    .line 50
    ushr-long/2addr v0, v2

    .line 51
    add-int/lit8 v3, p1, 0x2

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x2

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 52
    add-int/lit8 v3, p5, 0x2

    long-to-int v6, v0

    aput v6, p4, v3

    .line 53
    ushr-long/2addr v0, v2

    .line 54
    add-int/lit8 v3, p1, 0x3

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x3

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 55
    add-int/lit8 v3, p5, 0x3

    long-to-int v6, v0

    aput v6, p4, v3

    .line 56
    ushr-long/2addr v0, v2

    .line 57
    add-int/lit8 v3, p1, 0x4

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x4

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 58
    add-int/lit8 v3, p5, 0x4

    long-to-int v6, v0

    aput v6, p4, v3

    .line 59
    ushr-long/2addr v0, v2

    .line 60
    add-int/lit8 v3, p1, 0x5

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x5

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 61
    add-int/lit8 v3, p5, 0x5

    long-to-int v6, v0

    aput v6, p4, v3

    .line 62
    ushr-long/2addr v0, v2

    .line 63
    add-int/lit8 v3, p1, 0x6

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x6

    aget v3, p2, v3

    int-to-long v8, v3

    and-long v3, v8, v4

    add-long/2addr v6, v3

    add-long/2addr v0, v6

    .line 64
    add-int/lit8 v3, p5, 0x6

    long-to-int v4, v0

    aput v4, p4, v3

    .line 65
    ushr-long/2addr v0, v2

    .line 66
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist add([I[I[I)I
    .locals 11
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 17
    const-wide/16 v0, 0x0

    .line 18
    .local v0, "c":J
    const/4 v2, 0x0

    aget v3, p0, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v3, v7

    add-long/2addr v0, v3

    .line 19
    long-to-int v3, v0

    aput v3, p2, v2

    .line 20
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 21
    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 22
    long-to-int v4, v0

    aput v4, p2, v3

    .line 23
    ushr-long/2addr v0, v2

    .line 24
    const/4 v3, 0x2

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 25
    long-to-int v4, v0

    aput v4, p2, v3

    .line 26
    ushr-long/2addr v0, v2

    .line 27
    const/4 v3, 0x3

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 28
    long-to-int v4, v0

    aput v4, p2, v3

    .line 29
    ushr-long/2addr v0, v2

    .line 30
    const/4 v3, 0x4

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 31
    long-to-int v4, v0

    aput v4, p2, v3

    .line 32
    ushr-long/2addr v0, v2

    .line 33
    const/4 v3, 0x5

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 34
    long-to-int v4, v0

    aput v4, p2, v3

    .line 35
    ushr-long/2addr v0, v2

    .line 36
    const/4 v3, 0x6

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long v4, v9, v5

    add-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 37
    long-to-int v4, v0

    aput v4, p2, v3

    .line 38
    ushr-long/2addr v0, v2

    .line 39
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addBothTo([II[II[II)I
    .locals 10
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    .line 98
    const-wide/16 v0, 0x0

    .line 99
    .local v0, "c":J
    add-int/lit8 v2, p1, 0x0

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-int/lit8 v6, p3, 0x0

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    add-long/2addr v2, v6

    add-int/lit8 v6, p5, 0x0

    aget v6, p4, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    add-long/2addr v2, v6

    add-long/2addr v0, v2

    .line 100
    add-int/lit8 v2, p5, 0x0

    long-to-int v3, v0

    aput v3, p4, v2

    .line 101
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 102
    add-int/lit8 v3, p1, 0x1

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x1

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-int/lit8 v3, p5, 0x1

    aget v3, p4, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 103
    add-int/lit8 v3, p5, 0x1

    long-to-int v6, v0

    aput v6, p4, v3

    .line 104
    ushr-long/2addr v0, v2

    .line 105
    add-int/lit8 v3, p1, 0x2

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x2

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-int/lit8 v3, p5, 0x2

    aget v3, p4, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 106
    add-int/lit8 v3, p5, 0x2

    long-to-int v6, v0

    aput v6, p4, v3

    .line 107
    ushr-long/2addr v0, v2

    .line 108
    add-int/lit8 v3, p1, 0x3

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x3

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-int/lit8 v3, p5, 0x3

    aget v3, p4, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 109
    add-int/lit8 v3, p5, 0x3

    long-to-int v6, v0

    aput v6, p4, v3

    .line 110
    ushr-long/2addr v0, v2

    .line 111
    add-int/lit8 v3, p1, 0x4

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x4

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-int/lit8 v3, p5, 0x4

    aget v3, p4, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 112
    add-int/lit8 v3, p5, 0x4

    long-to-int v6, v0

    aput v6, p4, v3

    .line 113
    ushr-long/2addr v0, v2

    .line 114
    add-int/lit8 v3, p1, 0x5

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x5

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-int/lit8 v3, p5, 0x5

    aget v3, p4, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 115
    add-int/lit8 v3, p5, 0x5

    long-to-int v6, v0

    aput v6, p4, v3

    .line 116
    ushr-long/2addr v0, v2

    .line 117
    add-int/lit8 v3, p1, 0x6

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x6

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-int/lit8 v3, p5, 0x6

    aget v3, p4, v3

    int-to-long v8, v3

    and-long v3, v8, v4

    add-long/2addr v6, v3

    add-long/2addr v0, v6

    .line 118
    add-int/lit8 v3, p5, 0x6

    long-to-int v4, v0

    aput v4, p4, v3

    .line 119
    ushr-long/2addr v0, v2

    .line 120
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addBothTo([I[I[I)I
    .locals 11
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 71
    const-wide/16 v0, 0x0

    .line 72
    .local v0, "c":J
    const/4 v2, 0x0

    aget v3, p0, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v3, v7

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v3, v7

    add-long/2addr v0, v3

    .line 73
    long-to-int v3, v0

    aput v3, p2, v2

    .line 74
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 75
    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    aget v4, p2, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 76
    long-to-int v4, v0

    aput v4, p2, v3

    .line 77
    ushr-long/2addr v0, v2

    .line 78
    const/4 v3, 0x2

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    aget v4, p2, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 79
    long-to-int v4, v0

    aput v4, p2, v3

    .line 80
    ushr-long/2addr v0, v2

    .line 81
    const/4 v3, 0x3

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    aget v4, p2, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 82
    long-to-int v4, v0

    aput v4, p2, v3

    .line 83
    ushr-long/2addr v0, v2

    .line 84
    const/4 v3, 0x4

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    aget v4, p2, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 85
    long-to-int v4, v0

    aput v4, p2, v3

    .line 86
    ushr-long/2addr v0, v2

    .line 87
    const/4 v3, 0x5

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    aget v4, p2, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 88
    long-to-int v4, v0

    aput v4, p2, v3

    .line 89
    ushr-long/2addr v0, v2

    .line 90
    const/4 v3, 0x6

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    aget v4, p2, v3

    int-to-long v9, v4

    and-long v4, v9, v5

    add-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 91
    long-to-int v4, v0

    aput v4, p2, v3

    .line 92
    ushr-long/2addr v0, v2

    .line 93
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addTo([II[III)I
    .locals 9
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .param p4, "cIn"    # I

    .line 152
    int-to-long v0, p4

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 153
    .local v0, "c":J
    add-int/lit8 v4, p1, 0x0

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x0

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 154
    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    .line 155
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 156
    add-int/lit8 v5, p1, 0x1

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x1

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 157
    add-int/lit8 v5, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v5

    .line 158
    ushr-long/2addr v0, v4

    .line 159
    add-int/lit8 v5, p1, 0x2

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x2

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 160
    add-int/lit8 v5, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v5

    .line 161
    ushr-long/2addr v0, v4

    .line 162
    add-int/lit8 v5, p1, 0x3

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x3

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 163
    add-int/lit8 v5, p3, 0x3

    long-to-int v6, v0

    aput v6, p2, v5

    .line 164
    ushr-long/2addr v0, v4

    .line 165
    add-int/lit8 v5, p1, 0x4

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x4

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 166
    add-int/lit8 v5, p3, 0x4

    long-to-int v6, v0

    aput v6, p2, v5

    .line 167
    ushr-long/2addr v0, v4

    .line 168
    add-int/lit8 v5, p1, 0x5

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x5

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 169
    add-int/lit8 v5, p3, 0x5

    long-to-int v6, v0

    aput v6, p2, v5

    .line 170
    ushr-long/2addr v0, v4

    .line 171
    add-int/lit8 v5, p1, 0x6

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x6

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v2, v7

    add-long/2addr v5, v2

    add-long/2addr v0, v5

    .line 172
    add-int/lit8 v2, p3, 0x6

    long-to-int v3, v0

    aput v3, p2, v2

    .line 173
    ushr-long/2addr v0, v4

    .line 174
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addTo([I[I)I
    .locals 11
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 125
    const-wide/16 v0, 0x0

    .line 126
    .local v0, "c":J
    const/4 v2, 0x0

    aget v3, p0, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v3, v7

    add-long/2addr v0, v3

    .line 127
    long-to-int v3, v0

    aput v3, p1, v2

    .line 128
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 129
    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 130
    long-to-int v4, v0

    aput v4, p1, v3

    .line 131
    ushr-long/2addr v0, v2

    .line 132
    const/4 v3, 0x2

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 133
    long-to-int v4, v0

    aput v4, p1, v3

    .line 134
    ushr-long/2addr v0, v2

    .line 135
    const/4 v3, 0x3

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 136
    long-to-int v4, v0

    aput v4, p1, v3

    .line 137
    ushr-long/2addr v0, v2

    .line 138
    const/4 v3, 0x4

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 139
    long-to-int v4, v0

    aput v4, p1, v3

    .line 140
    ushr-long/2addr v0, v2

    .line 141
    const/4 v3, 0x5

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 142
    long-to-int v4, v0

    aput v4, p1, v3

    .line 143
    ushr-long/2addr v0, v2

    .line 144
    const/4 v3, 0x6

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long v4, v9, v5

    add-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 145
    long-to-int v4, v0

    aput v4, p1, v3

    .line 146
    ushr-long/2addr v0, v2

    .line 147
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addToEachOther([II[II)I
    .locals 10
    .param p0, "u"    # [I
    .param p1, "uOff"    # I
    .param p2, "v"    # [I
    .param p3, "vOff"    # I

    .line 179
    const-wide/16 v0, 0x0

    .line 180
    .local v0, "c":J
    add-int/lit8 v2, p1, 0x0

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-int/lit8 v6, p3, 0x0

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    add-long/2addr v2, v6

    add-long/2addr v0, v2

    .line 181
    add-int/lit8 v2, p1, 0x0

    long-to-int v3, v0

    aput v3, p0, v2

    .line 182
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 183
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 184
    add-int/lit8 v3, p1, 0x1

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x1

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 185
    add-int/lit8 v3, p1, 0x1

    long-to-int v6, v0

    aput v6, p0, v3

    .line 186
    add-int/lit8 v3, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v3

    .line 187
    ushr-long/2addr v0, v2

    .line 188
    add-int/lit8 v3, p1, 0x2

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x2

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 189
    add-int/lit8 v3, p1, 0x2

    long-to-int v6, v0

    aput v6, p0, v3

    .line 190
    add-int/lit8 v3, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v3

    .line 191
    ushr-long/2addr v0, v2

    .line 192
    add-int/lit8 v3, p1, 0x3

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x3

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 193
    add-int/lit8 v3, p1, 0x3

    long-to-int v6, v0

    aput v6, p0, v3

    .line 194
    add-int/lit8 v3, p3, 0x3

    long-to-int v6, v0

    aput v6, p2, v3

    .line 195
    ushr-long/2addr v0, v2

    .line 196
    add-int/lit8 v3, p1, 0x4

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x4

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 197
    add-int/lit8 v3, p1, 0x4

    long-to-int v6, v0

    aput v6, p0, v3

    .line 198
    add-int/lit8 v3, p3, 0x4

    long-to-int v6, v0

    aput v6, p2, v3

    .line 199
    ushr-long/2addr v0, v2

    .line 200
    add-int/lit8 v3, p1, 0x5

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x5

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 201
    add-int/lit8 v3, p1, 0x5

    long-to-int v6, v0

    aput v6, p0, v3

    .line 202
    add-int/lit8 v3, p3, 0x5

    long-to-int v6, v0

    aput v6, p2, v3

    .line 203
    ushr-long/2addr v0, v2

    .line 204
    add-int/lit8 v3, p1, 0x6

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x6

    aget v3, p2, v3

    int-to-long v8, v3

    and-long v3, v8, v4

    add-long/2addr v6, v3

    add-long/2addr v0, v6

    .line 205
    add-int/lit8 v3, p1, 0x6

    long-to-int v4, v0

    aput v4, p0, v3

    .line 206
    add-int/lit8 v3, p3, 0x6

    long-to-int v4, v0

    aput v4, p2, v3

    .line 207
    ushr-long/2addr v0, v2

    .line 208
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist copy([II[II)V
    .locals 2
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .line 224
    add-int/lit8 v0, p3, 0x0

    add-int/lit8 v1, p1, 0x0

    aget v1, p0, v1

    aput v1, p2, v0

    .line 225
    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    aput v1, p2, v0

    .line 226
    add-int/lit8 v0, p3, 0x2

    add-int/lit8 v1, p1, 0x2

    aget v1, p0, v1

    aput v1, p2, v0

    .line 227
    add-int/lit8 v0, p3, 0x3

    add-int/lit8 v1, p1, 0x3

    aget v1, p0, v1

    aput v1, p2, v0

    .line 228
    add-int/lit8 v0, p3, 0x4

    add-int/lit8 v1, p1, 0x4

    aget v1, p0, v1

    aput v1, p2, v0

    .line 229
    add-int/lit8 v0, p3, 0x5

    add-int/lit8 v1, p1, 0x5

    aget v1, p0, v1

    aput v1, p2, v0

    .line 230
    add-int/lit8 v0, p3, 0x6

    add-int/lit8 v1, p1, 0x6

    aget v1, p0, v1

    aput v1, p2, v0

    .line 231
    return-void
.end method

.method public static blacklist copy([I[I)V
    .locals 2
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 213
    const/4 v0, 0x0

    aget v1, p0, v0

    aput v1, p1, v0

    .line 214
    const/4 v0, 0x1

    aget v1, p0, v0

    aput v1, p1, v0

    .line 215
    const/4 v0, 0x2

    aget v1, p0, v0

    aput v1, p1, v0

    .line 216
    const/4 v0, 0x3

    aget v1, p0, v0

    aput v1, p1, v0

    .line 217
    const/4 v0, 0x4

    aget v1, p0, v0

    aput v1, p1, v0

    .line 218
    const/4 v0, 0x5

    aget v1, p0, v0

    aput v1, p1, v0

    .line 219
    const/4 v0, 0x6

    aget v1, p0, v0

    aput v1, p1, v0

    .line 220
    return-void
.end method

.method public static blacklist create()[I
    .locals 1

    .line 235
    const/4 v0, 0x7

    new-array v0, v0, [I

    return-object v0
.end method

.method public static blacklist createExt()[I
    .locals 1

    .line 240
    const/16 v0, 0xe

    new-array v0, v0, [I

    return-object v0
.end method

.method public static blacklist diff([II[II[II)Z
    .locals 7
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    .line 245
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->gte([II[II)Z

    move-result v0

    .line 246
    .local v0, "pos":Z
    if-eqz v0, :cond_0

    .line 248
    invoke-static/range {p0 .. p5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->sub([II[II[II)I

    goto :goto_0

    .line 252
    :cond_0
    move-object v1, p2

    move v2, p3

    move-object v3, p0

    move v4, p1

    move-object v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->sub([II[II[II)I

    .line 254
    :goto_0
    return v0
.end method

.method public static blacklist eq([I[I)Z
    .locals 3
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .line 259
    const/4 v0, 0x6

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 261
    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_0

    .line 263
    const/4 v1, 0x0

    return v1

    .line 259
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 266
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 3
    .param p0, "x"    # Ljava/math/BigInteger;

    .line 271
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xe0

    if-gt v0, v1, :cond_1

    .line 276
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 279
    .local v0, "z":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    .line 281
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 282
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 273
    .end local v0    # "z":[I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static blacklist getBit([II)I
    .locals 3
    .param p0, "x"    # [I
    .param p1, "bit"    # I

    .line 289
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 291
    aget v0, p0, v0

    and-int/lit8 v0, v0, 0x1

    return v0

    .line 293
    :cond_0
    shr-int/lit8 v1, p1, 0x5

    .line 294
    .local v1, "w":I
    if-ltz v1, :cond_2

    const/4 v2, 0x7

    if-lt v1, v2, :cond_1

    goto :goto_0

    .line 298
    :cond_1
    and-int/lit8 v0, p1, 0x1f

    .line 299
    .local v0, "b":I
    aget v2, p0, v1

    ushr-int/2addr v2, v0

    and-int/lit8 v2, v2, 0x1

    return v2

    .line 296
    .end local v0    # "b":I
    :cond_2
    :goto_0
    return v0
.end method

.method public static blacklist gte([II[II)Z
    .locals 5
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I

    .line 318
    const/4 v0, 0x6

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    .line 320
    add-int v2, p1, v0

    aget v2, p0, v2

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 321
    .local v2, "x_i":I
    add-int v4, p3, v0

    aget v4, p2, v4

    xor-int/2addr v3, v4

    .line 322
    .local v3, "y_i":I
    if-ge v2, v3, :cond_0

    .line 323
    const/4 v1, 0x0

    return v1

    .line 324
    :cond_0
    if-le v2, v3, :cond_1

    .line 325
    return v1

    .line 318
    .end local v2    # "x_i":I
    .end local v3    # "y_i":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 327
    .end local v0    # "i":I
    :cond_2
    return v1
.end method

.method public static blacklist gte([I[I)Z
    .locals 5
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .line 304
    const/4 v0, 0x6

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    .line 306
    aget v2, p0, v0

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 307
    .local v2, "x_i":I
    aget v4, p1, v0

    xor-int/2addr v3, v4

    .line 308
    .local v3, "y_i":I
    if-ge v2, v3, :cond_0

    .line 309
    const/4 v1, 0x0

    return v1

    .line 310
    :cond_0
    if-le v2, v3, :cond_1

    .line 311
    return v1

    .line 304
    .end local v2    # "x_i":I
    .end local v3    # "y_i":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 313
    .end local v0    # "i":I
    :cond_2
    return v1
.end method

.method public static blacklist isOne([I)Z
    .locals 4
    .param p0, "x"    # [I

    .line 332
    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 334
    return v0

    .line 336
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x7

    if-ge v1, v3, :cond_2

    .line 338
    aget v3, p0, v1

    if-eqz v3, :cond_1

    .line 340
    return v0

    .line 336
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    .end local v1    # "i":I
    :cond_2
    return v2
.end method

.method public static blacklist isZero([I)Z
    .locals 2
    .param p0, "x"    # [I

    .line 348
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    .line 350
    aget v1, p0, v0

    if-eqz v1, :cond_0

    .line 352
    const/4 v1, 0x0

    return v1

    .line 348
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist mul([II[II[II)V
    .locals 29
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "zz"    # [I
    .param p5, "zzOff"    # I

    .line 424
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 425
    .local v0, "y_0":J
    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 426
    .local v4, "y_1":J
    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 427
    .local v6, "y_2":J
    add-int/lit8 v8, p3, 0x3

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 428
    .local v8, "y_3":J
    add-int/lit8 v10, p3, 0x4

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    .line 429
    .local v10, "y_4":J
    add-int/lit8 v12, p3, 0x5

    aget v12, p2, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    .line 430
    .local v12, "y_5":J
    add-int/lit8 v14, p3, 0x6

    aget v14, p2, v14

    int-to-long v14, v14

    and-long/2addr v14, v2

    .line 433
    .local v14, "y_6":J
    const-wide/16 v16, 0x0

    .local v16, "c":J
    add-int/lit8 v18, p1, 0x0

    move-wide/from16 v19, v14

    .end local v14    # "y_6":J
    .local v19, "y_6":J
    aget v14, p0, v18

    int-to-long v14, v14

    and-long/2addr v14, v2

    .line 434
    .local v14, "x_0":J
    mul-long v21, v14, v0

    add-long v2, v16, v21

    .line 435
    .end local v16    # "c":J
    .local v2, "c":J
    add-int/lit8 v16, p5, 0x0

    move-wide/from16 v17, v0

    .end local v0    # "y_0":J
    .local v17, "y_0":J
    long-to-int v0, v2

    aput v0, p4, v16

    .line 436
    const/16 v0, 0x20

    ushr-long v1, v2, v0

    .line 437
    .end local v2    # "c":J
    .local v1, "c":J
    mul-long v21, v14, v4

    add-long v1, v1, v21

    .line 438
    add-int/lit8 v3, p5, 0x1

    long-to-int v0, v1

    aput v0, p4, v3

    .line 439
    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    .line 440
    mul-long v21, v14, v6

    add-long v1, v1, v21

    .line 441
    add-int/lit8 v3, p5, 0x2

    long-to-int v0, v1

    aput v0, p4, v3

    .line 442
    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    .line 443
    mul-long v21, v14, v8

    add-long v1, v1, v21

    .line 444
    add-int/lit8 v3, p5, 0x3

    long-to-int v0, v1

    aput v0, p4, v3

    .line 445
    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    .line 446
    mul-long v21, v14, v10

    add-long v1, v1, v21

    .line 447
    add-int/lit8 v3, p5, 0x4

    long-to-int v0, v1

    aput v0, p4, v3

    .line 448
    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    .line 449
    mul-long v21, v14, v12

    add-long v1, v1, v21

    .line 450
    add-int/lit8 v3, p5, 0x5

    long-to-int v0, v1

    aput v0, p4, v3

    .line 451
    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    .line 452
    mul-long v21, v14, v19

    add-long v1, v1, v21

    .line 453
    add-int/lit8 v3, p5, 0x6

    long-to-int v0, v1

    aput v0, p4, v3

    .line 454
    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    .line 455
    add-int/lit8 v0, p5, 0x7

    long-to-int v3, v1

    aput v3, p4, v0

    .line 458
    .end local v1    # "c":J
    .end local v14    # "x_0":J
    const/4 v0, 0x1

    move v1, v0

    move/from16 v0, p5

    .end local p5    # "zzOff":I
    .local v0, "zzOff":I
    .local v1, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    .line 460
    add-int/lit8 v0, v0, 0x1

    .line 461
    const-wide/16 v2, 0x0

    .restart local v2    # "c":J
    add-int v14, p1, v1

    aget v14, p0, v14

    int-to-long v14, v14

    const-wide v21, 0xffffffffL

    and-long v14, v14, v21

    .line 462
    .local v14, "x_i":J
    mul-long v25, v14, v17

    add-int/lit8 v23, v0, 0x0

    move/from16 p5, v1

    .end local v1    # "i":I
    .local p5, "i":I
    aget v1, p4, v23

    move-wide/from16 v27, v12

    .end local v12    # "y_5":J
    .local v27, "y_5":J
    int-to-long v12, v1

    and-long v12, v12, v21

    add-long v25, v25, v12

    add-long v2, v2, v25

    .line 463
    add-int/lit8 v1, v0, 0x0

    long-to-int v12, v2

    aput v12, p4, v1

    .line 464
    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    .line 465
    mul-long v12, v14, v4

    add-int/lit8 v1, v0, 0x1

    aget v1, p4, v1

    move-wide/from16 v21, v4

    .end local v4    # "y_1":J
    .local v21, "y_1":J
    int-to-long v4, v1

    const-wide v23, 0xffffffffL

    and-long v4, v4, v23

    add-long/2addr v12, v4

    add-long/2addr v2, v12

    .line 466
    add-int/lit8 v1, v0, 0x1

    long-to-int v4, v2

    aput v4, p4, v1

    .line 467
    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    .line 468
    mul-long v4, v14, v6

    add-int/lit8 v1, v0, 0x2

    aget v1, p4, v1

    int-to-long v12, v1

    const-wide v23, 0xffffffffL

    and-long v12, v12, v23

    add-long/2addr v4, v12

    add-long/2addr v2, v4

    .line 469
    add-int/lit8 v1, v0, 0x2

    long-to-int v4, v2

    aput v4, p4, v1

    .line 470
    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    .line 471
    mul-long v4, v14, v8

    add-int/lit8 v1, v0, 0x3

    aget v1, p4, v1

    int-to-long v12, v1

    const-wide v23, 0xffffffffL

    and-long v12, v12, v23

    add-long/2addr v4, v12

    add-long/2addr v2, v4

    .line 472
    add-int/lit8 v1, v0, 0x3

    long-to-int v4, v2

    aput v4, p4, v1

    .line 473
    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    .line 474
    mul-long v4, v14, v10

    add-int/lit8 v1, v0, 0x4

    aget v1, p4, v1

    int-to-long v12, v1

    const-wide v23, 0xffffffffL

    and-long v12, v12, v23

    add-long/2addr v4, v12

    add-long/2addr v2, v4

    .line 475
    add-int/lit8 v1, v0, 0x4

    long-to-int v4, v2

    aput v4, p4, v1

    .line 476
    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    .line 477
    mul-long v12, v14, v27

    add-int/lit8 v1, v0, 0x5

    aget v1, p4, v1

    int-to-long v4, v1

    const-wide v23, 0xffffffffL

    and-long v4, v4, v23

    add-long/2addr v12, v4

    add-long/2addr v2, v12

    .line 478
    add-int/lit8 v1, v0, 0x5

    long-to-int v4, v2

    aput v4, p4, v1

    .line 479
    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    .line 480
    mul-long v4, v14, v19

    add-int/lit8 v1, v0, 0x6

    aget v1, p4, v1

    int-to-long v12, v1

    const-wide v23, 0xffffffffL

    and-long v12, v12, v23

    add-long/2addr v4, v12

    add-long/2addr v2, v4

    .line 481
    add-int/lit8 v1, v0, 0x6

    long-to-int v4, v2

    aput v4, p4, v1

    .line 482
    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    .line 483
    add-int/lit8 v4, v0, 0x7

    long-to-int v5, v2

    aput v5, p4, v4

    .line 458
    .end local v2    # "c":J
    .end local v14    # "x_i":J
    add-int/lit8 v2, p5, 0x1

    move v1, v2

    move-wide/from16 v4, v21

    move-wide/from16 v12, v27

    .end local p5    # "i":I
    .local v2, "i":I
    goto/16 :goto_0

    .line 485
    .end local v2    # "i":I
    .end local v21    # "y_1":J
    .end local v27    # "y_5":J
    .restart local v4    # "y_1":J
    .restart local v12    # "y_5":J
    :cond_0
    return-void
.end method

.method public static blacklist mul([I[I[I)V
    .locals 31
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .line 360
    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 361
    .local v1, "y_0":J
    const/4 v5, 0x1

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    .line 362
    .local v6, "y_1":J
    const/4 v8, 0x2

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    .line 363
    .local v9, "y_2":J
    const/4 v11, 0x3

    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    .line 364
    .local v12, "y_3":J
    const/4 v14, 0x4

    aget v15, p1, v14

    int-to-long v14, v15

    and-long/2addr v14, v3

    .line 365
    .local v14, "y_4":J
    const/16 v17, 0x5

    aget v11, p1, v17

    move-wide/from16 v20, v9

    .end local v9    # "y_2":J
    .local v20, "y_2":J
    int-to-long v8, v11

    and-long/2addr v8, v3

    .line 366
    .local v8, "y_5":J
    const/4 v10, 0x6

    aget v11, p1, v10

    int-to-long v10, v11

    and-long/2addr v10, v3

    .line 369
    .local v10, "y_6":J
    const-wide/16 v23, 0x0

    .local v23, "c":J
    aget v5, p0, v0

    move-wide/from16 v27, v1

    .end local v1    # "y_0":J
    .local v27, "y_0":J
    int-to-long v0, v5

    and-long/2addr v0, v3

    .line 370
    .local v0, "x_0":J
    mul-long v29, v0, v27

    add-long v3, v23, v29

    .line 371
    .end local v23    # "c":J
    .local v3, "c":J
    long-to-int v2, v3

    const/4 v5, 0x0

    aput v2, p2, v5

    .line 372
    const/16 v2, 0x20

    ushr-long/2addr v3, v2

    .line 373
    mul-long v23, v0, v6

    add-long v3, v3, v23

    .line 374
    long-to-int v5, v3

    const/16 v23, 0x1

    aput v5, p2, v23

    .line 375
    ushr-long/2addr v3, v2

    .line 376
    mul-long v23, v0, v20

    add-long v3, v3, v23

    .line 377
    long-to-int v5, v3

    const/16 v19, 0x2

    aput v5, p2, v19

    .line 378
    ushr-long/2addr v3, v2

    .line 379
    mul-long v23, v0, v12

    add-long v3, v3, v23

    .line 380
    long-to-int v5, v3

    const/16 v18, 0x3

    aput v5, p2, v18

    .line 381
    ushr-long/2addr v3, v2

    .line 382
    mul-long v18, v0, v14

    add-long v3, v3, v18

    .line 383
    long-to-int v5, v3

    const/16 v16, 0x4

    aput v5, p2, v16

    .line 384
    ushr-long/2addr v3, v2

    .line 385
    mul-long v18, v0, v8

    add-long v3, v3, v18

    .line 386
    long-to-int v5, v3

    aput v5, p2, v17

    .line 387
    ushr-long/2addr v3, v2

    .line 388
    mul-long v16, v0, v10

    add-long v3, v3, v16

    .line 389
    long-to-int v5, v3

    const/16 v16, 0x6

    aput v5, p2, v16

    .line 390
    ushr-long/2addr v3, v2

    .line 391
    long-to-int v5, v3

    const/4 v2, 0x7

    aput v5, p2, v2

    .line 394
    .end local v0    # "x_0":J
    .end local v3    # "c":J
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 396
    const-wide/16 v3, 0x0

    .restart local v3    # "c":J
    aget v1, p0, v0

    move-wide/from16 v17, v3

    .end local v3    # "c":J
    .local v17, "c":J
    int-to-long v2, v1

    const-wide v22, 0xffffffffL

    and-long v1, v2, v22

    .line 397
    .local v1, "x_i":J
    mul-long v3, v1, v27

    add-int/lit8 v19, v0, 0x0

    aget v5, p2, v19

    move-wide/from16 v25, v10

    .end local v10    # "y_6":J
    .local v25, "y_6":J
    int-to-long v10, v5

    and-long v10, v10, v22

    add-long/2addr v3, v10

    add-long v3, v17, v3

    .line 398
    .end local v17    # "c":J
    .restart local v3    # "c":J
    add-int/lit8 v5, v0, 0x0

    long-to-int v10, v3

    aput v10, p2, v5

    .line 399
    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    .line 400
    mul-long v10, v1, v6

    add-int/lit8 v5, v0, 0x1

    aget v5, p2, v5

    move-wide/from16 v17, v6

    .end local v6    # "y_1":J
    .local v17, "y_1":J
    int-to-long v5, v5

    const-wide v22, 0xffffffffL

    and-long v5, v5, v22

    add-long/2addr v10, v5

    add-long/2addr v3, v10

    .line 401
    add-int/lit8 v5, v0, 0x1

    long-to-int v6, v3

    aput v6, p2, v5

    .line 402
    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    .line 403
    mul-long v5, v1, v20

    add-int/lit8 v7, v0, 0x2

    aget v7, p2, v7

    int-to-long v10, v7

    const-wide v22, 0xffffffffL

    and-long v10, v10, v22

    add-long/2addr v5, v10

    add-long/2addr v3, v5

    .line 404
    add-int/lit8 v5, v0, 0x2

    long-to-int v6, v3

    aput v6, p2, v5

    .line 405
    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    .line 406
    mul-long v5, v1, v12

    add-int/lit8 v7, v0, 0x3

    aget v7, p2, v7

    int-to-long v10, v7

    const-wide v22, 0xffffffffL

    and-long v10, v10, v22

    add-long/2addr v5, v10

    add-long/2addr v3, v5

    .line 407
    add-int/lit8 v5, v0, 0x3

    long-to-int v6, v3

    aput v6, p2, v5

    .line 408
    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    .line 409
    mul-long v5, v1, v14

    add-int/lit8 v7, v0, 0x4

    aget v7, p2, v7

    int-to-long v10, v7

    const-wide v22, 0xffffffffL

    and-long v10, v10, v22

    add-long/2addr v5, v10

    add-long/2addr v3, v5

    .line 410
    add-int/lit8 v5, v0, 0x4

    long-to-int v6, v3

    aput v6, p2, v5

    .line 411
    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    .line 412
    mul-long v5, v1, v8

    add-int/lit8 v7, v0, 0x5

    aget v7, p2, v7

    int-to-long v10, v7

    const-wide v22, 0xffffffffL

    and-long v10, v10, v22

    add-long/2addr v5, v10

    add-long/2addr v3, v5

    .line 413
    add-int/lit8 v5, v0, 0x5

    long-to-int v6, v3

    aput v6, p2, v5

    .line 414
    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    .line 415
    mul-long v10, v1, v25

    add-int/lit8 v5, v0, 0x6

    aget v5, p2, v5

    int-to-long v5, v5

    const-wide v22, 0xffffffffL

    and-long v5, v5, v22

    add-long/2addr v10, v5

    add-long/2addr v3, v10

    .line 416
    add-int/lit8 v5, v0, 0x6

    long-to-int v6, v3

    aput v6, p2, v5

    .line 417
    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    .line 418
    add-int/lit8 v6, v0, 0x7

    long-to-int v7, v3

    aput v7, p2, v6

    .line 394
    .end local v1    # "x_i":J
    .end local v3    # "c":J
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v6, v17

    move-wide/from16 v10, v25

    const/4 v2, 0x7

    goto/16 :goto_0

    .line 420
    .end local v0    # "i":I
    .end local v17    # "y_1":J
    .end local v25    # "y_6":J
    .restart local v6    # "y_1":J
    .restart local v10    # "y_6":J
    :cond_0
    return-void
.end method

.method public static blacklist mul33Add(I[II[II[II)J
    .locals 27
    .param p0, "w"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .line 578
    const-wide/16 v0, 0x0

    move/from16 v2, p0

    .local v0, "c":J
    int-to-long v3, v2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    .line 579
    .local v3, "wVal":J
    add-int/lit8 v7, p2, 0x0

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    .line 580
    .local v7, "x0":J
    mul-long v9, v3, v7

    add-int/lit8 v11, p4, 0x0

    aget v11, p3, v11

    int-to-long v11, v11

    and-long/2addr v11, v5

    add-long/2addr v9, v11

    add-long/2addr v0, v9

    .line 581
    add-int/lit8 v9, p6, 0x0

    long-to-int v10, v0

    aput v10, p5, v9

    .line 582
    const/16 v9, 0x20

    ushr-long/2addr v0, v9

    .line 583
    add-int/lit8 v10, p2, 0x1

    aget v10, p1, v10

    int-to-long v10, v10

    and-long/2addr v10, v5

    .line 584
    .local v10, "x1":J
    mul-long v12, v3, v10

    add-long/2addr v12, v7

    add-int/lit8 v14, p4, 0x1

    aget v14, p3, v14

    int-to-long v14, v14

    and-long/2addr v14, v5

    add-long/2addr v12, v14

    add-long/2addr v0, v12

    .line 585
    add-int/lit8 v12, p6, 0x1

    long-to-int v13, v0

    aput v13, p5, v12

    .line 586
    ushr-long/2addr v0, v9

    .line 587
    add-int/lit8 v12, p2, 0x2

    aget v12, p1, v12

    int-to-long v12, v12

    and-long/2addr v12, v5

    .line 588
    .local v12, "x2":J
    mul-long v14, v3, v12

    add-long/2addr v14, v10

    add-int/lit8 v16, p4, 0x2

    aget v9, p3, v16

    move-wide/from16 v17, v7

    .end local v7    # "x0":J
    .local v17, "x0":J
    int-to-long v7, v9

    and-long/2addr v7, v5

    add-long/2addr v14, v7

    add-long/2addr v0, v14

    .line 589
    add-int/lit8 v7, p6, 0x2

    long-to-int v8, v0

    aput v8, p5, v7

    .line 590
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 591
    add-int/lit8 v7, p2, 0x3

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    .line 592
    .local v7, "x3":J
    mul-long v14, v3, v7

    add-long/2addr v14, v12

    add-int/lit8 v9, p4, 0x3

    aget v9, p3, v9

    move-wide/from16 v19, v10

    .end local v10    # "x1":J
    .local v19, "x1":J
    int-to-long v9, v9

    and-long/2addr v9, v5

    add-long/2addr v14, v9

    add-long/2addr v0, v14

    .line 593
    add-int/lit8 v9, p6, 0x3

    long-to-int v10, v0

    aput v10, p5, v9

    .line 594
    const/16 v9, 0x20

    ushr-long/2addr v0, v9

    .line 595
    add-int/lit8 v9, p2, 0x4

    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v5

    .line 596
    .local v9, "x4":J
    mul-long v14, v3, v9

    add-long/2addr v14, v7

    add-int/lit8 v11, p4, 0x4

    aget v11, p3, v11

    move-wide/from16 v21, v7

    .end local v7    # "x3":J
    .local v21, "x3":J
    int-to-long v7, v11

    and-long/2addr v7, v5

    add-long/2addr v14, v7

    add-long/2addr v0, v14

    .line 597
    add-int/lit8 v7, p6, 0x4

    long-to-int v8, v0

    aput v8, p5, v7

    .line 598
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 599
    add-int/lit8 v7, p2, 0x5

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    .line 600
    .local v7, "x5":J
    mul-long v14, v3, v7

    add-long/2addr v14, v9

    add-int/lit8 v11, p4, 0x5

    aget v11, p3, v11

    move-wide/from16 v23, v9

    .end local v9    # "x4":J
    .local v23, "x4":J
    int-to-long v9, v11

    and-long/2addr v9, v5

    add-long/2addr v14, v9

    add-long/2addr v0, v14

    .line 601
    add-int/lit8 v9, p6, 0x5

    long-to-int v10, v0

    aput v10, p5, v9

    .line 602
    const/16 v9, 0x20

    ushr-long/2addr v0, v9

    .line 603
    add-int/lit8 v9, p2, 0x6

    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v5

    .line 604
    .local v9, "x6":J
    mul-long v14, v3, v9

    add-long/2addr v14, v7

    add-int/lit8 v11, p4, 0x6

    aget v11, p3, v11

    move-wide/from16 v25, v3

    .end local v3    # "wVal":J
    .local v25, "wVal":J
    int-to-long v2, v11

    and-long/2addr v2, v5

    add-long/2addr v14, v2

    add-long/2addr v0, v14

    .line 605
    add-int/lit8 v2, p6, 0x6

    long-to-int v3, v0

    aput v3, p5, v2

    .line 606
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 607
    add-long/2addr v0, v9

    .line 608
    return-wide v0
.end method

.method public static blacklist mul33DWordAdd(IJ[II)I
    .locals 19
    .param p0, "x"    # I
    .param p1, "y"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .line 697
    move-object/from16 v0, p3

    move/from16 v1, p4

    const-wide/16 v2, 0x0

    move/from16 v4, p0

    .local v2, "c":J
    int-to-long v5, v4

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    .line 698
    .local v5, "xVal":J
    and-long v9, p1, v7

    .line 699
    .local v9, "y00":J
    mul-long v11, v5, v9

    add-int/lit8 v13, v1, 0x0

    aget v13, v0, v13

    int-to-long v13, v13

    and-long/2addr v13, v7

    add-long/2addr v11, v13

    add-long/2addr v2, v11

    .line 700
    add-int/lit8 v11, v1, 0x0

    long-to-int v12, v2

    aput v12, v0, v11

    .line 701
    const/16 v11, 0x20

    ushr-long/2addr v2, v11

    .line 702
    ushr-long v12, p1, v11

    .line 703
    .local v12, "y01":J
    mul-long v14, v5, v12

    add-long/2addr v14, v9

    add-int/lit8 v16, v1, 0x1

    aget v11, v0, v16

    move-wide/from16 v17, v5

    .end local v5    # "xVal":J
    .local v17, "xVal":J
    int-to-long v4, v11

    and-long/2addr v4, v7

    add-long/2addr v14, v4

    add-long/2addr v2, v14

    .line 704
    add-int/lit8 v4, v1, 0x1

    long-to-int v5, v2

    aput v5, v0, v4

    .line 705
    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    .line 706
    add-int/lit8 v4, v1, 0x2

    aget v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    add-long/2addr v4, v12

    add-long/2addr v2, v4

    .line 707
    add-int/lit8 v4, v1, 0x2

    long-to-int v5, v2

    aput v5, v0, v4

    .line 708
    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    .line 709
    add-int/lit8 v4, v1, 0x3

    aget v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    add-long/2addr v2, v4

    .line 710
    add-int/lit8 v4, v1, 0x3

    long-to-int v5, v2

    aput v5, v0, v4

    .line 711
    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    .line 712
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x7

    const/4 v5, 0x4

    invoke-static {v4, v0, v1, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v4

    :goto_0
    return v4
.end method

.method public static blacklist mul33WordAdd(II[II)I
    .locals 12
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .line 720
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .local v2, "xVal":J
    int-to-long v6, p1

    and-long/2addr v6, v4

    .line 721
    .local v6, "yVal":J
    mul-long v8, v6, v2

    add-int/lit8 v10, p3, 0x0

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 722
    add-int/lit8 v8, p3, 0x0

    long-to-int v9, v0

    aput v9, p2, v8

    .line 723
    const/16 v8, 0x20

    ushr-long/2addr v0, v8

    .line 724
    add-int/lit8 v9, p3, 0x1

    aget v9, p2, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v9, v6

    add-long/2addr v0, v9

    .line 725
    add-int/lit8 v9, p3, 0x1

    long-to-int v10, v0

    aput v10, p2, v9

    .line 726
    ushr-long/2addr v0, v8

    .line 727
    add-int/lit8 v9, p3, 0x2

    aget v9, p2, v9

    int-to-long v9, v9

    and-long/2addr v4, v9

    add-long/2addr v0, v4

    .line 728
    add-int/lit8 v4, p3, 0x2

    long-to-int v5, v0

    aput v5, p2, v4

    .line 729
    ushr-long/2addr v0, v8

    .line 730
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x7

    const/4 v5, 0x3

    invoke-static {v4, p2, p3, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v4

    :goto_0
    return v4
.end method

.method public static blacklist mulAddTo([II[II[II)I
    .locals 30
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "zz"    # [I
    .param p5, "zzOff"    # I

    .line 532
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 533
    .local v0, "y_0":J
    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 534
    .local v4, "y_1":J
    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 535
    .local v6, "y_2":J
    add-int/lit8 v8, p3, 0x3

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 536
    .local v8, "y_3":J
    add-int/lit8 v10, p3, 0x4

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    .line 537
    .local v10, "y_4":J
    add-int/lit8 v12, p3, 0x5

    aget v12, p2, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    .line 538
    .local v12, "y_5":J
    add-int/lit8 v14, p3, 0x6

    aget v14, p2, v14

    int-to-long v14, v14

    and-long/2addr v14, v2

    .line 540
    .local v14, "y_6":J
    const-wide/16 v16, 0x0

    .line 541
    .local v16, "zc":J
    const/16 v18, 0x0

    move-wide/from16 v19, v16

    move/from16 v2, v18

    move/from16 v16, p5

    .end local p5    # "zzOff":I
    .local v2, "i":I
    .local v16, "zzOff":I
    .local v19, "zc":J
    :goto_0
    const/4 v3, 0x7

    if-ge v2, v3, :cond_0

    .line 543
    const-wide/16 v21, 0x0

    .local v21, "c":J
    add-int v3, p1, v2

    aget v3, p0, v3

    move/from16 p5, v2

    .end local v2    # "i":I
    .local p5, "i":I
    int-to-long v2, v3

    const-wide v17, 0xffffffffL

    and-long v2, v2, v17

    .line 544
    .local v2, "x_i":J
    mul-long v23, v2, v0

    add-int/lit8 v25, v16, 0x0

    move-wide/from16 v26, v0

    .end local v0    # "y_0":J
    .local v26, "y_0":J
    aget v0, p4, v25

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long v23, v23, v0

    add-long v0, v21, v23

    .line 545
    .end local v21    # "c":J
    .local v0, "c":J
    add-int/lit8 v21, v16, 0x0

    move-wide/from16 v22, v14

    .end local v14    # "y_6":J
    .local v22, "y_6":J
    long-to-int v14, v0

    aput v14, p4, v21

    .line 546
    const/16 v14, 0x20

    ushr-long/2addr v0, v14

    .line 547
    mul-long v24, v2, v4

    add-int/lit8 v15, v16, 0x1

    aget v15, p4, v15

    int-to-long v14, v15

    const-wide v17, 0xffffffffL

    and-long v14, v14, v17

    add-long v24, v24, v14

    add-long v0, v0, v24

    .line 548
    add-int/lit8 v14, v16, 0x1

    long-to-int v15, v0

    aput v15, p4, v14

    .line 549
    const/16 v14, 0x20

    ushr-long/2addr v0, v14

    .line 550
    mul-long v14, v2, v6

    add-int/lit8 v24, v16, 0x2

    move-wide/from16 v28, v4

    .end local v4    # "y_1":J
    .local v28, "y_1":J
    aget v4, p4, v24

    int-to-long v4, v4

    const-wide v17, 0xffffffffL

    and-long v4, v4, v17

    add-long/2addr v14, v4

    add-long/2addr v0, v14

    .line 551
    add-int/lit8 v4, v16, 0x2

    long-to-int v5, v0

    aput v5, p4, v4

    .line 552
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 553
    mul-long v4, v2, v8

    add-int/lit8 v14, v16, 0x3

    aget v14, p4, v14

    int-to-long v14, v14

    const-wide v17, 0xffffffffL

    and-long v14, v14, v17

    add-long/2addr v4, v14

    add-long/2addr v0, v4

    .line 554
    add-int/lit8 v4, v16, 0x3

    long-to-int v5, v0

    aput v5, p4, v4

    .line 555
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 556
    mul-long v4, v2, v10

    add-int/lit8 v14, v16, 0x4

    aget v14, p4, v14

    int-to-long v14, v14

    const-wide v17, 0xffffffffL

    and-long v14, v14, v17

    add-long/2addr v4, v14

    add-long/2addr v0, v4

    .line 557
    add-int/lit8 v4, v16, 0x4

    long-to-int v5, v0

    aput v5, p4, v4

    .line 558
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 559
    mul-long v4, v2, v12

    add-int/lit8 v14, v16, 0x5

    aget v14, p4, v14

    int-to-long v14, v14

    const-wide v17, 0xffffffffL

    and-long v14, v14, v17

    add-long/2addr v4, v14

    add-long/2addr v0, v4

    .line 560
    add-int/lit8 v4, v16, 0x5

    long-to-int v5, v0

    aput v5, p4, v4

    .line 561
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 562
    mul-long v14, v2, v22

    add-int/lit8 v4, v16, 0x6

    aget v4, p4, v4

    int-to-long v4, v4

    const-wide v17, 0xffffffffL

    and-long v4, v4, v17

    add-long/2addr v14, v4

    add-long/2addr v0, v14

    .line 563
    add-int/lit8 v4, v16, 0x6

    long-to-int v5, v0

    aput v5, p4, v4

    .line 564
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 566
    add-int/lit8 v4, v16, 0x7

    aget v4, p4, v4

    int-to-long v4, v4

    const-wide v14, 0xffffffffL

    and-long/2addr v4, v14

    add-long/2addr v4, v0

    move-wide/from16 v14, v19

    .end local v19    # "zc":J
    .local v14, "zc":J
    add-long/2addr v4, v14

    .line 567
    .end local v14    # "zc":J
    .local v4, "zc":J
    add-int/lit8 v14, v16, 0x7

    long-to-int v15, v4

    aput v15, p4, v14

    .line 568
    const/16 v14, 0x20

    ushr-long v19, v4, v14

    .line 569
    .end local v4    # "zc":J
    .restart local v19    # "zc":J
    nop

    .end local v0    # "c":J
    .end local v2    # "x_i":J
    add-int/lit8 v16, v16, 0x1

    .line 541
    add-int/lit8 v2, p5, 0x1

    move-wide/from16 v14, v22

    move-wide/from16 v0, v26

    move-wide/from16 v4, v28

    .end local p5    # "i":I
    .local v2, "i":I
    goto/16 :goto_0

    .end local v22    # "y_6":J
    .end local v26    # "y_0":J
    .end local v28    # "y_1":J
    .local v0, "y_0":J
    .local v4, "y_1":J
    .local v14, "y_6":J
    :cond_0
    move-wide/from16 v26, v0

    move-wide/from16 v22, v14

    move-wide/from16 v14, v19

    .line 571
    .end local v0    # "y_0":J
    .end local v2    # "i":I
    .end local v19    # "zc":J
    .local v14, "zc":J
    .restart local v22    # "y_6":J
    .restart local v26    # "y_0":J
    long-to-int v0, v14

    return v0
.end method

.method public static blacklist mulAddTo([I[I[I)I
    .locals 31
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .line 489
    const/4 v0, 0x0

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 490
    .local v0, "y_0":J
    const/4 v4, 0x1

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 491
    .local v4, "y_1":J
    const/4 v6, 0x2

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 492
    .local v6, "y_2":J
    const/4 v8, 0x3

    aget v8, p1, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 493
    .local v8, "y_3":J
    const/4 v10, 0x4

    aget v10, p1, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    .line 494
    .local v10, "y_4":J
    const/4 v12, 0x5

    aget v12, p1, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    .line 495
    .local v12, "y_5":J
    const/4 v14, 0x6

    aget v14, p1, v14

    int-to-long v14, v14

    and-long/2addr v14, v2

    .line 497
    .local v14, "y_6":J
    const-wide/16 v16, 0x0

    .line 498
    .local v16, "zc":J
    const/16 v18, 0x0

    move-wide/from16 v19, v16

    move/from16 v2, v18

    .end local v16    # "zc":J
    .local v2, "i":I
    .local v19, "zc":J
    :goto_0
    const/4 v3, 0x7

    if-ge v2, v3, :cond_0

    .line 500
    const-wide/16 v21, 0x0

    .local v21, "c":J
    aget v3, p0, v2

    move-wide/from16 v23, v14

    .end local v14    # "y_6":J
    .local v23, "y_6":J
    int-to-long v14, v3

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    .line 501
    .local v14, "x_i":J
    mul-long v25, v14, v0

    add-int/lit8 v3, v2, 0x0

    aget v3, p2, v3

    move-wide/from16 v27, v0

    .end local v0    # "y_0":J
    .local v27, "y_0":J
    int-to-long v0, v3

    and-long v0, v0, v16

    add-long v25, v25, v0

    add-long v0, v21, v25

    .line 502
    .end local v21    # "c":J
    .local v0, "c":J
    add-int/lit8 v3, v2, 0x0

    move-wide/from16 v21, v12

    .end local v12    # "y_5":J
    .local v21, "y_5":J
    long-to-int v12, v0

    aput v12, p2, v3

    .line 503
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 504
    mul-long v12, v14, v4

    add-int/lit8 v18, v2, 0x1

    aget v3, p2, v18

    move-wide/from16 v29, v4

    .end local v4    # "y_1":J
    .local v29, "y_1":J
    int-to-long v3, v3

    const-wide v16, 0xffffffffL

    and-long v3, v3, v16

    add-long/2addr v12, v3

    add-long/2addr v0, v12

    .line 505
    add-int/lit8 v3, v2, 0x1

    long-to-int v4, v0

    aput v4, p2, v3

    .line 506
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 507
    mul-long v3, v14, v6

    add-int/lit8 v5, v2, 0x2

    aget v5, p2, v5

    int-to-long v12, v5

    const-wide v16, 0xffffffffL

    and-long v12, v12, v16

    add-long/2addr v3, v12

    add-long/2addr v0, v3

    .line 508
    add-int/lit8 v3, v2, 0x2

    long-to-int v4, v0

    aput v4, p2, v3

    .line 509
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 510
    mul-long v3, v14, v8

    add-int/lit8 v5, v2, 0x3

    aget v5, p2, v5

    int-to-long v12, v5

    const-wide v16, 0xffffffffL

    and-long v12, v12, v16

    add-long/2addr v3, v12

    add-long/2addr v0, v3

    .line 511
    add-int/lit8 v3, v2, 0x3

    long-to-int v4, v0

    aput v4, p2, v3

    .line 512
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 513
    mul-long v3, v14, v10

    add-int/lit8 v5, v2, 0x4

    aget v5, p2, v5

    int-to-long v12, v5

    const-wide v16, 0xffffffffL

    and-long v12, v12, v16

    add-long/2addr v3, v12

    add-long/2addr v0, v3

    .line 514
    add-int/lit8 v3, v2, 0x4

    long-to-int v4, v0

    aput v4, p2, v3

    .line 515
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 516
    mul-long v12, v14, v21

    add-int/lit8 v3, v2, 0x5

    aget v3, p2, v3

    int-to-long v3, v3

    const-wide v16, 0xffffffffL

    and-long v3, v3, v16

    add-long/2addr v12, v3

    add-long/2addr v0, v12

    .line 517
    add-int/lit8 v3, v2, 0x5

    long-to-int v4, v0

    aput v4, p2, v3

    .line 518
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 519
    mul-long v3, v14, v23

    add-int/lit8 v5, v2, 0x6

    aget v5, p2, v5

    int-to-long v12, v5

    const-wide v16, 0xffffffffL

    and-long v12, v12, v16

    add-long/2addr v3, v12

    add-long/2addr v0, v3

    .line 520
    add-int/lit8 v3, v2, 0x6

    long-to-int v4, v0

    aput v4, p2, v3

    .line 521
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 523
    add-int/lit8 v3, v2, 0x7

    aget v3, p2, v3

    int-to-long v3, v3

    const-wide v12, 0xffffffffL

    and-long/2addr v3, v12

    add-long/2addr v3, v0

    move-wide/from16 v12, v19

    .end local v19    # "zc":J
    .local v12, "zc":J
    add-long/2addr v3, v12

    .line 524
    .end local v12    # "zc":J
    .local v3, "zc":J
    add-int/lit8 v5, v2, 0x7

    long-to-int v12, v3

    aput v12, p2, v5

    .line 525
    const/16 v5, 0x20

    ushr-long v19, v3, v5

    .line 498
    .end local v0    # "c":J
    .end local v3    # "zc":J
    .end local v14    # "x_i":J
    .restart local v19    # "zc":J
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v12, v21

    move-wide/from16 v14, v23

    move-wide/from16 v0, v27

    move-wide/from16 v4, v29

    goto/16 :goto_0

    .end local v21    # "y_5":J
    .end local v23    # "y_6":J
    .end local v27    # "y_0":J
    .end local v29    # "y_1":J
    .local v0, "y_0":J
    .restart local v4    # "y_1":J
    .local v12, "y_5":J
    .local v14, "y_6":J
    :cond_0
    move-wide/from16 v27, v0

    move-wide/from16 v21, v12

    move-wide/from16 v12, v19

    .line 527
    .end local v0    # "y_0":J
    .end local v2    # "i":I
    .end local v19    # "zc":J
    .local v12, "zc":J
    .restart local v21    # "y_5":J
    .restart local v27    # "y_0":J
    long-to-int v0, v12

    return v0
.end method

.method public static blacklist mulByWord(I[I)I
    .locals 10
    .param p0, "x"    # I
    .param p1, "z"    # [I

    .line 613
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 614
    .local v2, "xVal":J
    const/4 v6, 0x0

    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-long/2addr v0, v7

    .line 615
    long-to-int v7, v0

    aput v7, p1, v6

    .line 616
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 617
    const/4 v7, 0x1

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    add-long/2addr v0, v8

    .line 618
    long-to-int v8, v0

    aput v8, p1, v7

    .line 619
    ushr-long/2addr v0, v6

    .line 620
    const/4 v7, 0x2

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    add-long/2addr v0, v8

    .line 621
    long-to-int v8, v0

    aput v8, p1, v7

    .line 622
    ushr-long/2addr v0, v6

    .line 623
    const/4 v7, 0x3

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    add-long/2addr v0, v8

    .line 624
    long-to-int v8, v0

    aput v8, p1, v7

    .line 625
    ushr-long/2addr v0, v6

    .line 626
    const/4 v7, 0x4

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    add-long/2addr v0, v8

    .line 627
    long-to-int v8, v0

    aput v8, p1, v7

    .line 628
    ushr-long/2addr v0, v6

    .line 629
    const/4 v7, 0x5

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    add-long/2addr v0, v8

    .line 630
    long-to-int v8, v0

    aput v8, p1, v7

    .line 631
    ushr-long/2addr v0, v6

    .line 632
    const/4 v7, 0x6

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v4, v8

    mul-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 633
    long-to-int v4, v0

    aput v4, p1, v7

    .line 634
    ushr-long/2addr v0, v6

    .line 635
    long-to-int v4, v0

    return v4
.end method

.method public static blacklist mulByWordAddTo(I[I[I)I
    .locals 12
    .param p0, "x"    # I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 640
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 641
    .local v2, "xVal":J
    const/4 v6, 0x0

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    aget v9, p1, v6

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 642
    long-to-int v7, v0

    aput v7, p2, v6

    .line 643
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 644
    const/4 v7, 0x1

    aget v8, p2, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    aget v10, p1, v7

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 645
    long-to-int v8, v0

    aput v8, p2, v7

    .line 646
    ushr-long/2addr v0, v6

    .line 647
    const/4 v7, 0x2

    aget v8, p2, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    aget v10, p1, v7

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 648
    long-to-int v8, v0

    aput v8, p2, v7

    .line 649
    ushr-long/2addr v0, v6

    .line 650
    const/4 v7, 0x3

    aget v8, p2, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    aget v10, p1, v7

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 651
    long-to-int v8, v0

    aput v8, p2, v7

    .line 652
    ushr-long/2addr v0, v6

    .line 653
    const/4 v7, 0x4

    aget v8, p2, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    aget v10, p1, v7

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 654
    long-to-int v8, v0

    aput v8, p2, v7

    .line 655
    ushr-long/2addr v0, v6

    .line 656
    const/4 v7, 0x5

    aget v8, p2, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    aget v10, p1, v7

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 657
    long-to-int v8, v0

    aput v8, p2, v7

    .line 658
    ushr-long/2addr v0, v6

    .line 659
    const/4 v7, 0x6

    aget v8, p2, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    aget v10, p1, v7

    int-to-long v10, v10

    and-long/2addr v4, v10

    add-long/2addr v8, v4

    add-long/2addr v0, v8

    .line 660
    long-to-int v4, v0

    aput v4, p2, v7

    .line 661
    ushr-long/2addr v0, v6

    .line 662
    long-to-int v4, v0

    return v4
.end method

.method public static blacklist mulWord(I[I[II)I
    .locals 9
    .param p0, "x"    # I
    .param p1, "y"    # [I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .line 751
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 752
    .local v2, "xVal":J
    const/4 v6, 0x0

    .line 755
    .local v6, "i":I
    :goto_0
    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-long/2addr v0, v7

    .line 756
    add-int v7, p3, v6

    long-to-int v8, v0

    aput v8, p2, v7

    .line 757
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 759
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x7

    if-lt v6, v7, :cond_0

    .line 760
    long-to-int v4, v0

    return v4

    .line 759
    :cond_0
    goto :goto_0
.end method

.method public static blacklist mulWordAddTo(I[II[II)I
    .locals 11
    .param p0, "x"    # I
    .param p1, "y"    # [I
    .param p2, "yOff"    # I
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .line 667
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 668
    .local v2, "xVal":J
    add-int/lit8 v6, p2, 0x0

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    mul-long/2addr v6, v2

    add-int/lit8 v8, p4, 0x0

    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 669
    add-int/lit8 v6, p4, 0x0

    long-to-int v7, v0

    aput v7, p3, v6

    .line 670
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 671
    add-int/lit8 v7, p2, 0x1

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int/lit8 v9, p4, 0x1

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 672
    add-int/lit8 v7, p4, 0x1

    long-to-int v8, v0

    aput v8, p3, v7

    .line 673
    ushr-long/2addr v0, v6

    .line 674
    add-int/lit8 v7, p2, 0x2

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int/lit8 v9, p4, 0x2

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 675
    add-int/lit8 v7, p4, 0x2

    long-to-int v8, v0

    aput v8, p3, v7

    .line 676
    ushr-long/2addr v0, v6

    .line 677
    add-int/lit8 v7, p2, 0x3

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int/lit8 v9, p4, 0x3

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 678
    add-int/lit8 v7, p4, 0x3

    long-to-int v8, v0

    aput v8, p3, v7

    .line 679
    ushr-long/2addr v0, v6

    .line 680
    add-int/lit8 v7, p2, 0x4

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int/lit8 v9, p4, 0x4

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 681
    add-int/lit8 v7, p4, 0x4

    long-to-int v8, v0

    aput v8, p3, v7

    .line 682
    ushr-long/2addr v0, v6

    .line 683
    add-int/lit8 v7, p2, 0x5

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int/lit8 v9, p4, 0x5

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 684
    add-int/lit8 v7, p4, 0x5

    long-to-int v8, v0

    aput v8, p3, v7

    .line 685
    ushr-long/2addr v0, v6

    .line 686
    add-int/lit8 v7, p2, 0x6

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int/lit8 v9, p4, 0x6

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v4, v9

    add-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 687
    add-int/lit8 v4, p4, 0x6

    long-to-int v5, v0

    aput v5, p3, v4

    .line 688
    ushr-long/2addr v0, v6

    .line 689
    long-to-int v4, v0

    return v4
.end method

.method public static blacklist mulWordDwordAdd(IJ[II)I
    .locals 11
    .param p0, "x"    # I
    .param p1, "y"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .line 736
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 737
    .local v2, "xVal":J
    and-long v6, p1, v4

    mul-long/2addr v6, v2

    add-int/lit8 v8, p4, 0x0

    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 738
    add-int/lit8 v6, p4, 0x0

    long-to-int v7, v0

    aput v7, p3, v6

    .line 739
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 740
    ushr-long v7, p1, v6

    mul-long/2addr v7, v2

    add-int/lit8 v9, p4, 0x1

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 741
    add-int/lit8 v7, p4, 0x1

    long-to-int v8, v0

    aput v8, p3, v7

    .line 742
    ushr-long/2addr v0, v6

    .line 743
    add-int/lit8 v7, p4, 0x2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v4, v7

    add-long/2addr v0, v4

    .line 744
    add-int/lit8 v4, p4, 0x2

    long-to-int v5, v0

    aput v5, p3, v4

    .line 745
    ushr-long/2addr v0, v6

    .line 746
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x7

    const/4 v5, 0x3

    invoke-static {v4, p3, p4, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v4

    :goto_0
    return v4
.end method

.method public static blacklist square([II[II)V
    .locals 47
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "zz"    # [I
    .param p3, "zzOff"    # I

    .line 904
    add-int/lit8 v0, p1, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 907
    .local v0, "x_0":J
    const/4 v4, 0x0

    .line 909
    .local v4, "c":I
    const/4 v5, 0x6

    .local v5, "i":I
    const/16 v6, 0xe

    .line 912
    .local v6, "j":I
    :goto_0
    add-int/lit8 v7, v5, -0x1

    .end local v5    # "i":I
    .local v7, "i":I
    add-int v5, p1, v5

    aget v5, p0, v5

    int-to-long v8, v5

    and-long/2addr v8, v2

    .line 913
    .local v8, "xVal":J
    mul-long v10, v8, v8

    .line 914
    .local v10, "p":J
    add-int/lit8 v6, v6, -0x1

    add-int v5, p3, v6

    shl-int/lit8 v12, v4, 0x1f

    const/16 v13, 0x21

    ushr-long v14, v10, v13

    long-to-int v14, v14

    or-int/2addr v12, v14

    aput v12, p2, v5

    .line 915
    add-int/lit8 v6, v6, -0x1

    add-int v5, p3, v6

    const/4 v12, 0x1

    ushr-long v14, v10, v12

    long-to-int v14, v14

    aput v14, p2, v5

    .line 916
    long-to-int v4, v10

    .line 918
    .end local v8    # "xVal":J
    .end local v10    # "p":J
    if-gtz v7, :cond_0

    .line 921
    mul-long v8, v0, v0

    .line 922
    .local v8, "p":J
    shl-int/lit8 v5, v4, 0x1f

    int-to-long v10, v5

    and-long/2addr v10, v2

    ushr-long v13, v8, v13

    or-long/2addr v10, v13

    .line 923
    .local v10, "zz_1":J
    add-int/lit8 v5, p3, 0x0

    long-to-int v13, v8

    aput v13, p2, v5

    .line 924
    const/16 v5, 0x20

    ushr-long v13, v8, v5

    long-to-int v13, v13

    and-int/lit8 v4, v13, 0x1

    .line 928
    .end local v6    # "j":I
    .end local v7    # "i":I
    .end local v8    # "p":J
    add-int/lit8 v6, p1, 0x1

    aget v6, p0, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 929
    .local v6, "x_1":J
    add-int/lit8 v8, p3, 0x2

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 932
    .local v8, "zz_2":J
    mul-long v12, v6, v0

    add-long/2addr v10, v12

    .line 933
    long-to-int v12, v10

    .line 934
    .local v12, "w":I
    add-int/lit8 v13, p3, 0x1

    shl-int/lit8 v14, v12, 0x1

    or-int/2addr v14, v4

    aput v14, p2, v13

    .line 935
    ushr-int/lit8 v4, v12, 0x1f

    .line 936
    ushr-long v13, v10, v5

    add-long/2addr v8, v13

    .line 939
    add-int/lit8 v13, p1, 0x2

    aget v13, p0, v13

    int-to-long v13, v13

    and-long/2addr v13, v2

    .line 940
    .local v13, "x_2":J
    add-int/lit8 v15, p3, 0x3

    aget v15, p2, v15

    move-wide/from16 v17, v6

    .end local v6    # "x_1":J
    .local v17, "x_1":J
    int-to-long v5, v15

    and-long/2addr v5, v2

    .line 941
    .local v5, "zz_3":J
    add-int/lit8 v7, p3, 0x4

    aget v7, p2, v7

    move-wide/from16 v19, v10

    .end local v10    # "zz_1":J
    .local v19, "zz_1":J
    int-to-long v10, v7

    and-long/2addr v10, v2

    .line 943
    .local v10, "zz_4":J
    mul-long v21, v13, v0

    add-long v8, v8, v21

    .line 944
    long-to-int v7, v8

    .line 945
    .end local v12    # "w":I
    .local v7, "w":I
    add-int/lit8 v12, p3, 0x2

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 946
    ushr-int/lit8 v4, v7, 0x1f

    .line 947
    const/16 v12, 0x20

    ushr-long v15, v8, v12

    mul-long v21, v13, v17

    add-long v15, v15, v21

    add-long/2addr v5, v15

    .line 948
    ushr-long v21, v5, v12

    add-long v10, v10, v21

    .line 949
    and-long/2addr v5, v2

    .line 952
    add-int/lit8 v12, p1, 0x3

    aget v12, p0, v12

    move-wide/from16 v21, v8

    move v9, v7

    .end local v7    # "w":I
    .end local v8    # "zz_2":J
    .local v9, "w":I
    .local v21, "zz_2":J
    int-to-long v7, v12

    and-long/2addr v7, v2

    .line 953
    .local v7, "x_3":J
    add-int/lit8 v12, p3, 0x5

    aget v12, p2, v12

    move-wide/from16 v23, v13

    .end local v13    # "x_2":J
    .local v23, "x_2":J
    int-to-long v12, v12

    and-long/2addr v12, v2

    const/16 v14, 0x20

    ushr-long v15, v10, v14

    add-long/2addr v12, v15

    .local v12, "zz_5":J
    and-long/2addr v10, v2

    .line 954
    add-int/lit8 v15, p3, 0x6

    aget v15, p2, v15

    move/from16 v25, v9

    move-wide/from16 v26, v10

    .end local v9    # "w":I
    .end local v10    # "zz_4":J
    .local v25, "w":I
    .local v26, "zz_4":J
    int-to-long v9, v15

    and-long/2addr v9, v2

    ushr-long v28, v12, v14

    add-long v9, v9, v28

    .local v9, "zz_6":J
    and-long v11, v12, v2

    .line 956
    .end local v12    # "zz_5":J
    .local v11, "zz_5":J
    mul-long v13, v7, v0

    add-long/2addr v5, v13

    .line 957
    long-to-int v13, v5

    .line 958
    .end local v25    # "w":I
    .local v13, "w":I
    add-int/lit8 v14, p3, 0x3

    shl-int/lit8 v15, v13, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v14

    .line 959
    ushr-int/lit8 v4, v13, 0x1f

    .line 960
    const/16 v14, 0x20

    ushr-long v15, v5, v14

    mul-long v28, v7, v17

    add-long v15, v15, v28

    add-long v15, v26, v15

    .line 961
    .end local v26    # "zz_4":J
    .local v15, "zz_4":J
    ushr-long v25, v15, v14

    mul-long v27, v7, v23

    add-long v25, v25, v27

    add-long v11, v11, v25

    .line 962
    and-long v25, v15, v2

    .line 963
    .end local v15    # "zz_4":J
    .local v25, "zz_4":J
    ushr-long v27, v11, v14

    add-long v9, v9, v27

    .line 964
    and-long/2addr v11, v2

    .line 967
    add-int/lit8 v14, p1, 0x4

    aget v14, p0, v14

    int-to-long v14, v14

    and-long/2addr v14, v2

    .line 968
    .local v14, "x_4":J
    add-int/lit8 v27, p3, 0x7

    move-wide/from16 v28, v5

    .end local v5    # "zz_3":J
    .local v28, "zz_3":J
    aget v5, p2, v27

    int-to-long v5, v5

    and-long/2addr v5, v2

    const/16 v16, 0x20

    ushr-long v30, v9, v16

    add-long v5, v5, v30

    .local v5, "zz_7":J
    and-long/2addr v9, v2

    .line 969
    add-int/lit8 v27, p3, 0x8

    move/from16 v30, v13

    .end local v13    # "w":I
    .local v30, "w":I
    aget v13, p2, v27

    move-wide/from16 v31, v7

    .end local v7    # "x_3":J
    .local v31, "x_3":J
    int-to-long v7, v13

    and-long/2addr v7, v2

    ushr-long v33, v5, v16

    add-long v7, v7, v33

    .local v7, "zz_8":J
    and-long/2addr v5, v2

    .line 971
    mul-long v33, v14, v0

    add-long v2, v25, v33

    .line 972
    .end local v25    # "zz_4":J
    .local v2, "zz_4":J
    long-to-int v13, v2

    .line 973
    .end local v30    # "w":I
    .restart local v13    # "w":I
    add-int/lit8 v25, p3, 0x4

    shl-int/lit8 v26, v13, 0x1

    or-int v26, v26, v4

    aput v26, p2, v25

    .line 974
    ushr-int/lit8 v4, v13, 0x1f

    .line 975
    const/16 v16, 0x20

    ushr-long v25, v2, v16

    mul-long v33, v14, v17

    add-long v25, v25, v33

    add-long v11, v11, v25

    .line 976
    ushr-long v25, v11, v16

    mul-long v33, v14, v23

    add-long v25, v25, v33

    add-long v9, v9, v25

    .line 977
    const-wide v25, 0xffffffffL

    and-long v11, v11, v25

    .line 978
    ushr-long v33, v9, v16

    mul-long v35, v14, v31

    add-long v33, v33, v35

    add-long v5, v5, v33

    .line 979
    and-long v9, v9, v25

    .line 980
    ushr-long v33, v5, v16

    add-long v7, v7, v33

    .line 981
    and-long v5, v5, v25

    .line 984
    add-int/lit8 v27, p1, 0x5

    move-wide/from16 v33, v2

    .end local v2    # "zz_4":J
    .local v33, "zz_4":J
    aget v2, p0, v27

    int-to-long v2, v2

    and-long v2, v2, v25

    .line 985
    .local v2, "x_5":J
    add-int/lit8 v27, p3, 0x9

    move/from16 v30, v13

    .end local v13    # "w":I
    .restart local v30    # "w":I
    aget v13, p2, v27

    move-wide/from16 v37, v14

    .end local v14    # "x_4":J
    .local v37, "x_4":J
    int-to-long v13, v13

    and-long v13, v13, v25

    const/16 v15, 0x20

    ushr-long v35, v7, v15

    add-long v13, v13, v35

    .local v13, "zz_9":J
    and-long v7, v7, v25

    .line 986
    add-int/lit8 v16, p3, 0xa

    aget v15, p2, v16

    move-wide/from16 v39, v7

    .end local v7    # "zz_8":J
    .local v39, "zz_8":J
    int-to-long v7, v15

    and-long v7, v7, v25

    const/16 v15, 0x20

    ushr-long v35, v13, v15

    add-long v7, v7, v35

    .local v7, "zz_10":J
    and-long v13, v13, v25

    .line 988
    mul-long v25, v2, v0

    add-long v11, v11, v25

    .line 989
    long-to-int v15, v11

    .line 990
    .end local v30    # "w":I
    .local v15, "w":I
    add-int/lit8 v25, p3, 0x5

    shl-int/lit8 v26, v15, 0x1

    or-int v26, v26, v4

    aput v26, p2, v25

    .line 991
    ushr-int/lit8 v4, v15, 0x1f

    .line 992
    const/16 v16, 0x20

    ushr-long v25, v11, v16

    mul-long v41, v2, v17

    add-long v25, v25, v41

    add-long v9, v9, v25

    .line 993
    ushr-long v25, v9, v16

    mul-long v41, v2, v23

    add-long v25, v25, v41

    add-long v5, v5, v25

    .line 994
    const-wide v25, 0xffffffffL

    and-long v9, v9, v25

    .line 995
    ushr-long v35, v5, v16

    mul-long v41, v2, v31

    add-long v35, v35, v41

    add-long v35, v39, v35

    .line 996
    .end local v39    # "zz_8":J
    .local v35, "zz_8":J
    and-long v5, v5, v25

    .line 997
    ushr-long v39, v35, v16

    mul-long v41, v2, v37

    add-long v39, v39, v41

    add-long v13, v13, v39

    .line 998
    and-long v35, v35, v25

    .line 999
    ushr-long v39, v13, v16

    add-long v7, v7, v39

    .line 1000
    and-long v13, v13, v25

    .line 1003
    add-int/lit8 v27, p1, 0x6

    move-wide/from16 v39, v11

    .end local v11    # "zz_5":J
    .local v39, "zz_5":J
    aget v11, p0, v27

    int-to-long v11, v11

    and-long v11, v11, v25

    .line 1004
    .local v11, "x_6":J
    add-int/lit8 v27, p3, 0xb

    move/from16 v30, v15

    .end local v15    # "w":I
    .restart local v30    # "w":I
    aget v15, p2, v27

    move-wide/from16 v41, v2

    .end local v2    # "x_5":J
    .local v41, "x_5":J
    int-to-long v2, v15

    and-long v2, v2, v25

    const/16 v15, 0x20

    ushr-long v43, v7, v15

    add-long v2, v2, v43

    .local v2, "zz_11":J
    and-long v7, v7, v25

    .line 1005
    add-int/lit8 v16, p3, 0xc

    aget v15, p2, v16

    move-wide/from16 v43, v7

    .end local v7    # "zz_10":J
    .local v43, "zz_10":J
    int-to-long v7, v15

    and-long v7, v7, v25

    const/16 v15, 0x20

    ushr-long v45, v2, v15

    add-long v7, v7, v45

    .local v7, "zz_12":J
    and-long v2, v2, v25

    .line 1007
    mul-long v25, v11, v0

    add-long v9, v9, v25

    .line 1008
    long-to-int v15, v9

    .line 1009
    .end local v30    # "w":I
    .restart local v15    # "w":I
    add-int/lit8 v25, p3, 0x6

    shl-int/lit8 v26, v15, 0x1

    or-int v26, v26, v4

    aput v26, p2, v25

    .line 1010
    ushr-int/lit8 v4, v15, 0x1f

    .line 1011
    const/16 v16, 0x20

    ushr-long v25, v9, v16

    mul-long v45, v11, v17

    add-long v25, v25, v45

    add-long v5, v5, v25

    .line 1012
    ushr-long v25, v5, v16

    mul-long v45, v11, v23

    add-long v25, v25, v45

    move-wide/from16 v45, v0

    .end local v0    # "x_0":J
    .local v45, "x_0":J
    add-long v0, v35, v25

    .line 1013
    .end local v35    # "zz_8":J
    .local v0, "zz_8":J
    ushr-long v25, v0, v16

    mul-long v35, v11, v31

    add-long v25, v25, v35

    add-long v13, v13, v25

    .line 1014
    ushr-long v25, v13, v16

    mul-long v35, v11, v37

    add-long v25, v25, v35

    move-wide/from16 v35, v9

    .end local v9    # "zz_6":J
    .local v35, "zz_6":J
    add-long v9, v43, v25

    .line 1015
    .end local v43    # "zz_10":J
    .local v9, "zz_10":J
    ushr-long v25, v9, v16

    mul-long v43, v11, v41

    add-long v25, v25, v43

    add-long v2, v2, v25

    .line 1016
    ushr-long v25, v2, v16

    add-long v7, v7, v25

    .line 1019
    long-to-int v15, v5

    .line 1020
    add-int/lit8 v25, p3, 0x7

    shl-int/lit8 v26, v15, 0x1

    or-int v26, v26, v4

    aput v26, p2, v25

    .line 1021
    ushr-int/lit8 v4, v15, 0x1f

    .line 1022
    long-to-int v15, v0

    .line 1023
    add-int/lit8 v25, p3, 0x8

    shl-int/lit8 v26, v15, 0x1

    or-int v26, v26, v4

    aput v26, p2, v25

    .line 1024
    ushr-int/lit8 v4, v15, 0x1f

    .line 1025
    long-to-int v15, v13

    .line 1026
    add-int/lit8 v25, p3, 0x9

    shl-int/lit8 v26, v15, 0x1

    or-int v26, v26, v4

    aput v26, p2, v25

    .line 1027
    ushr-int/lit8 v4, v15, 0x1f

    .line 1028
    long-to-int v15, v9

    .line 1029
    add-int/lit8 v25, p3, 0xa

    shl-int/lit8 v26, v15, 0x1

    or-int v26, v26, v4

    aput v26, p2, v25

    .line 1030
    ushr-int/lit8 v4, v15, 0x1f

    .line 1031
    long-to-int v15, v2

    .line 1032
    add-int/lit8 v25, p3, 0xb

    shl-int/lit8 v26, v15, 0x1

    or-int v26, v26, v4

    aput v26, p2, v25

    .line 1033
    ushr-int/lit8 v4, v15, 0x1f

    .line 1034
    long-to-int v15, v7

    .line 1035
    add-int/lit8 v25, p3, 0xc

    shl-int/lit8 v26, v15, 0x1

    or-int v26, v26, v4

    aput v26, p2, v25

    .line 1036
    ushr-int/lit8 v4, v15, 0x1f

    .line 1037
    add-int/lit8 v25, p3, 0xd

    aget v25, p2, v25

    move-wide/from16 v26, v0

    const/16 v16, 0x20

    .end local v0    # "zz_8":J
    .local v26, "zz_8":J
    ushr-long v0, v7, v16

    long-to-int v0, v0

    add-int v25, v25, v0

    .line 1038
    .end local v15    # "w":I
    .local v25, "w":I
    add-int/lit8 v0, p3, 0xd

    shl-int/lit8 v1, v25, 0x1

    or-int/2addr v1, v4

    aput v1, p2, v0

    .line 1039
    return-void

    .line 918
    .end local v2    # "zz_11":J
    .end local v5    # "zz_7":J
    .end local v9    # "zz_10":J
    .end local v11    # "x_6":J
    .end local v13    # "zz_9":J
    .end local v17    # "x_1":J
    .end local v19    # "zz_1":J
    .end local v21    # "zz_2":J
    .end local v23    # "x_2":J
    .end local v25    # "w":I
    .end local v26    # "zz_8":J
    .end local v28    # "zz_3":J
    .end local v31    # "x_3":J
    .end local v33    # "zz_4":J
    .end local v35    # "zz_6":J
    .end local v37    # "x_4":J
    .end local v39    # "zz_5":J
    .end local v41    # "x_5":J
    .end local v45    # "x_0":J
    .local v0, "x_0":J
    .local v6, "j":I
    .local v7, "i":I
    :cond_0
    move-wide/from16 v45, v0

    move-wide/from16 v25, v2

    .end local v0    # "x_0":J
    .restart local v45    # "x_0":J
    move v5, v7

    goto/16 :goto_0
.end method

.method public static blacklist square([I[I)V
    .locals 53
    .param p0, "x"    # [I
    .param p1, "zz"    # [I

    .line 765
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 768
    .local v1, "x_0":J
    const/4 v5, 0x0

    .line 770
    .local v5, "c":I
    const/4 v6, 0x6

    .local v6, "i":I
    const/16 v7, 0xe

    .line 773
    .local v7, "j":I
    :goto_0
    add-int/lit8 v8, v6, -0x1

    .end local v6    # "i":I
    .local v8, "i":I
    aget v6, p0, v6

    int-to-long v9, v6

    and-long/2addr v9, v3

    .line 774
    .local v9, "xVal":J
    mul-long v11, v9, v9

    .line 775
    .local v11, "p":J
    add-int/lit8 v7, v7, -0x1

    shl-int/lit8 v6, v5, 0x1f

    const/16 v13, 0x21

    ushr-long v14, v11, v13

    long-to-int v14, v14

    or-int/2addr v6, v14

    aput v6, p1, v7

    .line 776
    add-int/lit8 v7, v7, -0x1

    const/4 v6, 0x1

    ushr-long v14, v11, v6

    long-to-int v14, v14

    aput v14, p1, v7

    .line 777
    long-to-int v5, v11

    .line 779
    .end local v9    # "xVal":J
    .end local v11    # "p":J
    if-gtz v8, :cond_0

    .line 782
    mul-long v9, v1, v1

    .line 783
    .local v9, "p":J
    shl-int/lit8 v11, v5, 0x1f

    int-to-long v11, v11

    and-long/2addr v11, v3

    ushr-long v13, v9, v13

    or-long/2addr v11, v13

    .line 784
    .local v11, "zz_1":J
    long-to-int v13, v9

    aput v13, p1, v0

    .line 785
    const/16 v0, 0x20

    ushr-long v13, v9, v0

    long-to-int v13, v13

    and-int/lit8 v5, v13, 0x1

    .line 789
    .end local v7    # "j":I
    .end local v8    # "i":I
    .end local v9    # "p":J
    aget v7, p0, v6

    int-to-long v7, v7

    and-long/2addr v7, v3

    .line 790
    .local v7, "x_1":J
    const/4 v9, 0x2

    aget v10, p1, v9

    int-to-long v13, v10

    and-long/2addr v13, v3

    .line 793
    .local v13, "zz_2":J
    mul-long v15, v7, v1

    add-long/2addr v11, v15

    .line 794
    long-to-int v10, v11

    .line 795
    .local v10, "w":I
    shl-int/lit8 v15, v10, 0x1

    or-int/2addr v15, v5

    aput v15, p1, v6

    .line 796
    ushr-int/lit8 v5, v10, 0x1f

    .line 797
    ushr-long v15, v11, v0

    add-long/2addr v13, v15

    .line 800
    aget v6, p0, v9

    move/from16 v16, v10

    .end local v10    # "w":I
    .local v16, "w":I
    int-to-long v9, v6

    and-long/2addr v9, v3

    .line 801
    .local v9, "x_2":J
    const/4 v6, 0x3

    aget v15, p1, v6

    move-wide/from16 v18, v7

    .end local v7    # "x_1":J
    .local v18, "x_1":J
    int-to-long v6, v15

    and-long/2addr v6, v3

    .line 802
    .local v6, "zz_3":J
    const/4 v15, 0x4

    aget v8, p1, v15

    move-wide/from16 v21, v1

    .end local v1    # "x_0":J
    .local v21, "x_0":J
    int-to-long v0, v8

    and-long/2addr v0, v3

    .line 804
    .local v0, "zz_4":J
    mul-long v23, v9, v21

    add-long v13, v13, v23

    .line 805
    long-to-int v8, v13

    .line 806
    .end local v16    # "w":I
    .local v8, "w":I
    shl-int/lit8 v16, v8, 0x1

    or-int v16, v16, v5

    const/16 v17, 0x2

    aput v16, p1, v17

    .line 807
    ushr-int/lit8 v5, v8, 0x1f

    .line 808
    const/16 v2, 0x20

    ushr-long v16, v13, v2

    mul-long v23, v9, v18

    add-long v16, v16, v23

    add-long v6, v6, v16

    .line 809
    ushr-long v16, v6, v2

    add-long v0, v0, v16

    .line 810
    and-long/2addr v6, v3

    .line 813
    const/16 v16, 0x3

    aget v2, p0, v16

    move/from16 v16, v8

    move-wide/from16 v23, v9

    .end local v8    # "w":I
    .end local v9    # "x_2":J
    .restart local v16    # "w":I
    .local v23, "x_2":J
    int-to-long v8, v2

    and-long/2addr v8, v3

    .line 814
    .local v8, "x_3":J
    const/4 v10, 0x5

    aget v2, p1, v10

    move-wide/from16 v25, v11

    .end local v11    # "zz_1":J
    .local v25, "zz_1":J
    int-to-long v10, v2

    and-long/2addr v10, v3

    const/16 v2, 0x20

    ushr-long v27, v0, v2

    add-long v10, v10, v27

    .local v10, "zz_5":J
    and-long/2addr v0, v3

    .line 815
    const/16 v17, 0x6

    aget v12, p1, v17

    move-wide/from16 v28, v13

    .end local v13    # "zz_2":J
    .local v28, "zz_2":J
    int-to-long v12, v12

    and-long/2addr v12, v3

    ushr-long v30, v10, v2

    add-long v12, v12, v30

    .local v12, "zz_6":J
    and-long/2addr v10, v3

    .line 817
    mul-long v30, v8, v21

    add-long v6, v6, v30

    .line 818
    long-to-int v14, v6

    .line 819
    .end local v16    # "w":I
    .local v14, "w":I
    shl-int/lit8 v16, v14, 0x1

    or-int v16, v16, v5

    const/16 v20, 0x3

    aput v16, p1, v20

    .line 820
    ushr-int/lit8 v5, v14, 0x1f

    .line 821
    const/16 v2, 0x20

    ushr-long v30, v6, v2

    mul-long v32, v8, v18

    add-long v30, v30, v32

    add-long v0, v0, v30

    .line 822
    ushr-long v30, v0, v2

    mul-long v32, v8, v23

    add-long v30, v30, v32

    add-long v10, v10, v30

    .line 823
    and-long/2addr v0, v3

    .line 824
    ushr-long v30, v10, v2

    add-long v12, v12, v30

    .line 825
    and-long/2addr v10, v3

    .line 828
    aget v2, p0, v15

    move-wide/from16 v30, v6

    .end local v6    # "zz_3":J
    .local v30, "zz_3":J
    int-to-long v6, v2

    and-long/2addr v6, v3

    .line 829
    .local v6, "x_4":J
    const/16 v20, 0x7

    aget v2, p1, v20

    move-wide/from16 v32, v8

    .end local v8    # "x_3":J
    .local v32, "x_3":J
    int-to-long v8, v2

    and-long/2addr v8, v3

    const/16 v2, 0x20

    ushr-long v34, v12, v2

    add-long v8, v8, v34

    .local v8, "zz_7":J
    and-long/2addr v12, v3

    .line 830
    const/16 v16, 0x8

    aget v15, p1, v16

    move/from16 v35, v14

    .end local v14    # "w":I
    .local v35, "w":I
    int-to-long v14, v15

    and-long/2addr v14, v3

    ushr-long v36, v8, v2

    add-long v14, v14, v36

    .local v14, "zz_8":J
    and-long/2addr v8, v3

    .line 832
    mul-long v36, v6, v21

    add-long v0, v0, v36

    .line 833
    long-to-int v2, v0

    .line 834
    .end local v35    # "w":I
    .local v2, "w":I
    shl-int/lit8 v35, v2, 0x1

    or-int v35, v35, v5

    const/16 v34, 0x4

    aput v35, p1, v34

    .line 835
    ushr-int/lit8 v5, v2, 0x1f

    .line 836
    const/16 v34, 0x20

    ushr-long v35, v0, v34

    mul-long v37, v6, v18

    add-long v35, v35, v37

    add-long v10, v10, v35

    .line 837
    ushr-long v35, v10, v34

    mul-long v37, v6, v23

    add-long v35, v35, v37

    add-long v12, v12, v35

    .line 838
    and-long/2addr v10, v3

    .line 839
    ushr-long v35, v12, v34

    mul-long v37, v6, v32

    add-long v35, v35, v37

    add-long v8, v8, v35

    .line 840
    and-long v35, v12, v3

    .line 841
    .end local v12    # "zz_6":J
    .local v35, "zz_6":J
    ushr-long v12, v8, v34

    add-long/2addr v14, v12

    .line 842
    and-long/2addr v8, v3

    .line 845
    const/4 v12, 0x5

    aget v13, p0, v12

    int-to-long v12, v13

    and-long/2addr v12, v3

    .line 846
    .local v12, "x_5":J
    const/16 v37, 0x9

    move-wide/from16 v38, v0

    .end local v0    # "zz_4":J
    .local v38, "zz_4":J
    aget v0, p1, v37

    int-to-long v0, v0

    and-long/2addr v0, v3

    const/16 v34, 0x20

    ushr-long v40, v14, v34

    add-long v0, v0, v40

    .local v0, "zz_9":J
    and-long/2addr v14, v3

    .line 847
    const/16 v40, 0xa

    move/from16 v41, v2

    .end local v2    # "w":I
    .local v41, "w":I
    aget v2, p1, v40

    move-wide/from16 v42, v6

    .end local v6    # "x_4":J
    .local v42, "x_4":J
    int-to-long v6, v2

    and-long/2addr v6, v3

    ushr-long v44, v0, v34

    add-long v6, v6, v44

    .local v6, "zz_10":J
    and-long/2addr v0, v3

    .line 849
    mul-long v44, v12, v21

    add-long v10, v10, v44

    .line 850
    long-to-int v2, v10

    .line 851
    .end local v41    # "w":I
    .restart local v2    # "w":I
    shl-int/lit8 v41, v2, 0x1

    or-int v41, v41, v5

    const/16 v27, 0x5

    aput v41, p1, v27

    .line 852
    ushr-int/lit8 v5, v2, 0x1f

    .line 853
    const/16 v27, 0x20

    ushr-long v44, v10, v27

    mul-long v46, v12, v18

    add-long v44, v44, v46

    add-long v35, v35, v44

    .line 854
    ushr-long v44, v35, v27

    mul-long v46, v12, v23

    add-long v44, v44, v46

    add-long v8, v8, v44

    .line 855
    and-long v34, v35, v3

    .line 856
    .end local v35    # "zz_6":J
    .local v34, "zz_6":J
    ushr-long v44, v8, v27

    mul-long v46, v12, v32

    add-long v44, v44, v46

    add-long v14, v14, v44

    .line 857
    and-long/2addr v8, v3

    .line 858
    ushr-long v44, v14, v27

    mul-long v46, v12, v42

    add-long v44, v44, v46

    add-long v0, v0, v44

    .line 859
    and-long/2addr v14, v3

    .line 860
    ushr-long v44, v0, v27

    add-long v6, v6, v44

    .line 861
    and-long/2addr v0, v3

    .line 864
    move/from16 v36, v2

    .end local v2    # "w":I
    .local v36, "w":I
    aget v2, p0, v17

    move-wide/from16 v44, v10

    .end local v10    # "zz_5":J
    .local v44, "zz_5":J
    int-to-long v10, v2

    and-long/2addr v10, v3

    .line 865
    .local v10, "x_6":J
    const/16 v41, 0xb

    aget v2, p1, v41

    move-wide/from16 v46, v12

    .end local v12    # "x_5":J
    .local v46, "x_5":J
    int-to-long v12, v2

    and-long/2addr v12, v3

    const/16 v2, 0x20

    ushr-long v48, v6, v2

    add-long v12, v12, v48

    .local v12, "zz_11":J
    and-long/2addr v6, v3

    .line 866
    const/16 v27, 0xc

    aget v2, p1, v27

    move-wide/from16 v49, v6

    .end local v6    # "zz_10":J
    .local v49, "zz_10":J
    int-to-long v6, v2

    and-long/2addr v6, v3

    const/16 v2, 0x20

    ushr-long v51, v12, v2

    add-long v6, v6, v51

    .local v6, "zz_12":J
    and-long/2addr v3, v12

    .line 868
    .end local v12    # "zz_11":J
    .local v3, "zz_11":J
    mul-long v12, v10, v21

    add-long v12, v34, v12

    .line 869
    .end local v34    # "zz_6":J
    .local v12, "zz_6":J
    long-to-int v2, v12

    .line 870
    .end local v36    # "w":I
    .restart local v2    # "w":I
    shl-int/lit8 v35, v2, 0x1

    or-int v35, v35, v5

    aput v35, p1, v17

    .line 871
    ushr-int/lit8 v5, v2, 0x1f

    .line 872
    const/16 v17, 0x20

    ushr-long v34, v12, v17

    mul-long v51, v10, v18

    add-long v34, v34, v51

    add-long v8, v8, v34

    .line 873
    ushr-long v34, v8, v17

    mul-long v51, v10, v23

    add-long v34, v34, v51

    add-long v14, v14, v34

    .line 874
    ushr-long v34, v14, v17

    mul-long v51, v10, v32

    add-long v34, v34, v51

    add-long v0, v0, v34

    .line 875
    ushr-long v34, v0, v17

    mul-long v51, v10, v42

    add-long v34, v34, v51

    move-wide/from16 v51, v12

    .end local v12    # "zz_6":J
    .local v51, "zz_6":J
    add-long v12, v49, v34

    .line 876
    .end local v49    # "zz_10":J
    .local v12, "zz_10":J
    ushr-long v34, v12, v17

    mul-long v48, v10, v46

    add-long v34, v34, v48

    add-long v3, v3, v34

    .line 877
    ushr-long v34, v3, v17

    add-long v6, v6, v34

    .line 880
    long-to-int v2, v8

    .line 881
    shl-int/lit8 v34, v2, 0x1

    or-int v34, v34, v5

    aput v34, p1, v20

    .line 882
    ushr-int/lit8 v5, v2, 0x1f

    .line 883
    long-to-int v2, v14

    .line 884
    shl-int/lit8 v20, v2, 0x1

    or-int v20, v20, v5

    aput v20, p1, v16

    .line 885
    ushr-int/lit8 v5, v2, 0x1f

    .line 886
    long-to-int v2, v0

    .line 887
    shl-int/lit8 v16, v2, 0x1

    or-int v16, v16, v5

    aput v16, p1, v37

    .line 888
    ushr-int/lit8 v5, v2, 0x1f

    .line 889
    long-to-int v2, v12

    .line 890
    shl-int/lit8 v16, v2, 0x1

    or-int v16, v16, v5

    aput v16, p1, v40

    .line 891
    ushr-int/lit8 v5, v2, 0x1f

    .line 892
    long-to-int v2, v3

    .line 893
    shl-int/lit8 v16, v2, 0x1

    or-int v16, v16, v5

    aput v16, p1, v41

    .line 894
    ushr-int/lit8 v5, v2, 0x1f

    .line 895
    long-to-int v2, v6

    .line 896
    shl-int/lit8 v16, v2, 0x1

    or-int v16, v16, v5

    aput v16, p1, v27

    .line 897
    ushr-int/lit8 v5, v2, 0x1f

    .line 898
    const/16 v16, 0xd

    aget v20, p1, v16

    move-wide/from16 v34, v0

    const/16 v17, 0x20

    .end local v0    # "zz_9":J
    .local v34, "zz_9":J
    ushr-long v0, v6, v17

    long-to-int v0, v0

    add-int v20, v20, v0

    .line 899
    .end local v2    # "w":I
    .local v20, "w":I
    shl-int/lit8 v0, v20, 0x1

    or-int/2addr v0, v5

    aput v0, p1, v16

    .line 900
    return-void

    .line 779
    .end local v3    # "zz_11":J
    .end local v6    # "zz_12":J
    .end local v10    # "x_6":J
    .end local v12    # "zz_10":J
    .end local v14    # "zz_8":J
    .end local v18    # "x_1":J
    .end local v20    # "w":I
    .end local v21    # "x_0":J
    .end local v23    # "x_2":J
    .end local v25    # "zz_1":J
    .end local v28    # "zz_2":J
    .end local v30    # "zz_3":J
    .end local v32    # "x_3":J
    .end local v34    # "zz_9":J
    .end local v38    # "zz_4":J
    .end local v42    # "x_4":J
    .end local v44    # "zz_5":J
    .end local v46    # "x_5":J
    .end local v51    # "zz_6":J
    .restart local v1    # "x_0":J
    .local v7, "j":I
    .local v8, "i":I
    :cond_0
    move-wide/from16 v21, v1

    .end local v1    # "x_0":J
    .restart local v21    # "x_0":J
    move v6, v8

    goto/16 :goto_0
.end method

.method public static blacklist sub([II[II[II)I
    .locals 10
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    .line 1070
    const-wide/16 v0, 0x0

    .line 1071
    .local v0, "c":J
    add-int/lit8 v2, p1, 0x0

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-int/lit8 v6, p3, 0x0

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    sub-long/2addr v2, v6

    add-long/2addr v0, v2

    .line 1072
    add-int/lit8 v2, p5, 0x0

    long-to-int v3, v0

    aput v3, p4, v2

    .line 1073
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1074
    add-int/lit8 v3, p1, 0x1

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x1

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1075
    add-int/lit8 v3, p5, 0x1

    long-to-int v6, v0

    aput v6, p4, v3

    .line 1076
    shr-long/2addr v0, v2

    .line 1077
    add-int/lit8 v3, p1, 0x2

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x2

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1078
    add-int/lit8 v3, p5, 0x2

    long-to-int v6, v0

    aput v6, p4, v3

    .line 1079
    shr-long/2addr v0, v2

    .line 1080
    add-int/lit8 v3, p1, 0x3

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x3

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1081
    add-int/lit8 v3, p5, 0x3

    long-to-int v6, v0

    aput v6, p4, v3

    .line 1082
    shr-long/2addr v0, v2

    .line 1083
    add-int/lit8 v3, p1, 0x4

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x4

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1084
    add-int/lit8 v3, p5, 0x4

    long-to-int v6, v0

    aput v6, p4, v3

    .line 1085
    shr-long/2addr v0, v2

    .line 1086
    add-int/lit8 v3, p1, 0x5

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x5

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1087
    add-int/lit8 v3, p5, 0x5

    long-to-int v6, v0

    aput v6, p4, v3

    .line 1088
    shr-long/2addr v0, v2

    .line 1089
    add-int/lit8 v3, p1, 0x6

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x6

    aget v3, p2, v3

    int-to-long v8, v3

    and-long v3, v8, v4

    sub-long/2addr v6, v3

    add-long/2addr v0, v6

    .line 1090
    add-int/lit8 v3, p5, 0x6

    long-to-int v4, v0

    aput v4, p4, v3

    .line 1091
    shr-long/2addr v0, v2

    .line 1092
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist sub([I[I[I)I
    .locals 11
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 1043
    const-wide/16 v0, 0x0

    .line 1044
    .local v0, "c":J
    const/4 v2, 0x0

    aget v3, p0, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    sub-long/2addr v3, v7

    add-long/2addr v0, v3

    .line 1045
    long-to-int v3, v0

    aput v3, p2, v2

    .line 1046
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1047
    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1048
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1049
    shr-long/2addr v0, v2

    .line 1050
    const/4 v3, 0x2

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1051
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1052
    shr-long/2addr v0, v2

    .line 1053
    const/4 v3, 0x3

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1054
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1055
    shr-long/2addr v0, v2

    .line 1056
    const/4 v3, 0x4

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1057
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1058
    shr-long/2addr v0, v2

    .line 1059
    const/4 v3, 0x5

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1060
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1061
    shr-long/2addr v0, v2

    .line 1062
    const/4 v3, 0x6

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long v4, v9, v5

    sub-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 1063
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1064
    shr-long/2addr v0, v2

    .line 1065
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist subBothFrom([I[I[I)I
    .locals 11
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 1097
    const-wide/16 v0, 0x0

    .line 1098
    .local v0, "c":J
    const/4 v2, 0x0

    aget v3, p2, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p0, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    sub-long/2addr v3, v7

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    sub-long/2addr v3, v7

    add-long/2addr v0, v3

    .line 1099
    long-to-int v3, v0

    aput v3, p2, v2

    .line 1100
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1101
    const/4 v3, 0x1

    aget v4, p2, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1102
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1103
    shr-long/2addr v0, v2

    .line 1104
    const/4 v3, 0x2

    aget v4, p2, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1105
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1106
    shr-long/2addr v0, v2

    .line 1107
    const/4 v3, 0x3

    aget v4, p2, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1108
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1109
    shr-long/2addr v0, v2

    .line 1110
    const/4 v3, 0x4

    aget v4, p2, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1111
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1112
    shr-long/2addr v0, v2

    .line 1113
    const/4 v3, 0x5

    aget v4, p2, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1114
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1115
    shr-long/2addr v0, v2

    .line 1116
    const/4 v3, 0x6

    aget v4, p2, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    aget v4, p1, v3

    int-to-long v9, v4

    and-long v4, v9, v5

    sub-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 1117
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1118
    shr-long/2addr v0, v2

    .line 1119
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist subFrom([II[II)I
    .locals 10
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .line 1151
    const-wide/16 v0, 0x0

    .line 1152
    .local v0, "c":J
    add-int/lit8 v2, p3, 0x0

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-int/lit8 v6, p1, 0x0

    aget v6, p0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    sub-long/2addr v2, v6

    add-long/2addr v0, v2

    .line 1153
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1154
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1155
    add-int/lit8 v3, p3, 0x1

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x1

    aget v3, p0, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1156
    add-int/lit8 v3, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1157
    shr-long/2addr v0, v2

    .line 1158
    add-int/lit8 v3, p3, 0x2

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x2

    aget v3, p0, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1159
    add-int/lit8 v3, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1160
    shr-long/2addr v0, v2

    .line 1161
    add-int/lit8 v3, p3, 0x3

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x3

    aget v3, p0, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1162
    add-int/lit8 v3, p3, 0x3

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1163
    shr-long/2addr v0, v2

    .line 1164
    add-int/lit8 v3, p3, 0x4

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x4

    aget v3, p0, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1165
    add-int/lit8 v3, p3, 0x4

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1166
    shr-long/2addr v0, v2

    .line 1167
    add-int/lit8 v3, p3, 0x5

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x5

    aget v3, p0, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1168
    add-int/lit8 v3, p3, 0x5

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1169
    shr-long/2addr v0, v2

    .line 1170
    add-int/lit8 v3, p3, 0x6

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x6

    aget v3, p0, v3

    int-to-long v8, v3

    and-long v3, v8, v4

    sub-long/2addr v6, v3

    add-long/2addr v0, v6

    .line 1171
    add-int/lit8 v3, p3, 0x6

    long-to-int v4, v0

    aput v4, p2, v3

    .line 1172
    shr-long/2addr v0, v2

    .line 1173
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist subFrom([I[I)I
    .locals 11
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 1124
    const-wide/16 v0, 0x0

    .line 1125
    .local v0, "c":J
    const/4 v2, 0x0

    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p0, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    sub-long/2addr v3, v7

    add-long/2addr v0, v3

    .line 1126
    long-to-int v3, v0

    aput v3, p1, v2

    .line 1127
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1128
    const/4 v3, 0x1

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1129
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1130
    shr-long/2addr v0, v2

    .line 1131
    const/4 v3, 0x2

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1132
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1133
    shr-long/2addr v0, v2

    .line 1134
    const/4 v3, 0x3

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1135
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1136
    shr-long/2addr v0, v2

    .line 1137
    const/4 v3, 0x4

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1138
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1139
    shr-long/2addr v0, v2

    .line 1140
    const/4 v3, 0x5

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1141
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1142
    shr-long/2addr v0, v2

    .line 1143
    const/4 v3, 0x6

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long v4, v9, v5

    sub-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 1144
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1145
    shr-long/2addr v0, v2

    .line 1146
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist toBigInteger([I)Ljava/math/BigInteger;
    .locals 4
    .param p0, "x"    # [I

    .line 1178
    const/16 v0, 0x1c

    new-array v0, v0, [B

    .line 1179
    .local v0, "bs":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    .line 1181
    aget v2, p0, v1

    .line 1182
    .local v2, "x_i":I
    if-eqz v2, :cond_0

    .line 1184
    rsub-int/lit8 v3, v1, 0x6

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v2, v0, v3}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 1179
    .end local v2    # "x_i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1187
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public static blacklist zero([I)V
    .locals 2
    .param p0, "z"    # [I

    .line 1192
    const/4 v0, 0x0

    aput v0, p0, v0

    .line 1193
    const/4 v1, 0x1

    aput v0, p0, v1

    .line 1194
    const/4 v1, 0x2

    aput v0, p0, v1

    .line 1195
    const/4 v1, 0x3

    aput v0, p0, v1

    .line 1196
    const/4 v1, 0x4

    aput v0, p0, v1

    .line 1197
    const/4 v1, 0x5

    aput v0, p0, v1

    .line 1198
    const/4 v1, 0x6

    aput v0, p0, v1

    .line 1199
    return-void
.end method
