.class public abstract Lcom/android/internal/org/bouncycastle/math/raw/Nat256;
.super Ljava/lang/Object;
.source "Nat256.java"


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

    .line 47
    const-wide/16 v0, 0x0

    .line 48
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

    .line 49
    add-int/lit8 v2, p5, 0x0

    long-to-int v3, v0

    aput v3, p4, v2

    .line 50
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 51
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

    .line 52
    add-int/lit8 v3, p5, 0x1

    long-to-int v6, v0

    aput v6, p4, v3

    .line 53
    ushr-long/2addr v0, v2

    .line 54
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

    .line 55
    add-int/lit8 v3, p5, 0x2

    long-to-int v6, v0

    aput v6, p4, v3

    .line 56
    ushr-long/2addr v0, v2

    .line 57
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

    .line 58
    add-int/lit8 v3, p5, 0x3

    long-to-int v6, v0

    aput v6, p4, v3

    .line 59
    ushr-long/2addr v0, v2

    .line 60
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

    .line 61
    add-int/lit8 v3, p5, 0x4

    long-to-int v6, v0

    aput v6, p4, v3

    .line 62
    ushr-long/2addr v0, v2

    .line 63
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

    .line 64
    add-int/lit8 v3, p5, 0x5

    long-to-int v6, v0

    aput v6, p4, v3

    .line 65
    ushr-long/2addr v0, v2

    .line 66
    add-int/lit8 v3, p1, 0x6

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x6

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 67
    add-int/lit8 v3, p5, 0x6

    long-to-int v6, v0

    aput v6, p4, v3

    .line 68
    ushr-long/2addr v0, v2

    .line 69
    add-int/lit8 v3, p1, 0x7

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x7

    aget v3, p2, v3

    int-to-long v8, v3

    and-long v3, v8, v4

    add-long/2addr v6, v3

    add-long/2addr v0, v6

    .line 70
    add-int/lit8 v3, p5, 0x7

    long-to-int v4, v0

    aput v4, p4, v3

    .line 71
    ushr-long/2addr v0, v2

    .line 72
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

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 37
    long-to-int v4, v0

    aput v4, p2, v3

    .line 38
    ushr-long/2addr v0, v2

    .line 39
    const/4 v3, 0x7

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long v4, v9, v5

    add-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 40
    long-to-int v4, v0

    aput v4, p2, v3

    .line 41
    ushr-long/2addr v0, v2

    .line 42
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

    .line 107
    const-wide/16 v0, 0x0

    .line 108
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

    .line 109
    add-int/lit8 v2, p5, 0x0

    long-to-int v3, v0

    aput v3, p4, v2

    .line 110
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 111
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

    .line 112
    add-int/lit8 v3, p5, 0x1

    long-to-int v6, v0

    aput v6, p4, v3

    .line 113
    ushr-long/2addr v0, v2

    .line 114
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

    .line 115
    add-int/lit8 v3, p5, 0x2

    long-to-int v6, v0

    aput v6, p4, v3

    .line 116
    ushr-long/2addr v0, v2

    .line 117
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

    .line 118
    add-int/lit8 v3, p5, 0x3

    long-to-int v6, v0

    aput v6, p4, v3

    .line 119
    ushr-long/2addr v0, v2

    .line 120
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

    .line 121
    add-int/lit8 v3, p5, 0x4

    long-to-int v6, v0

    aput v6, p4, v3

    .line 122
    ushr-long/2addr v0, v2

    .line 123
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

    .line 124
    add-int/lit8 v3, p5, 0x5

    long-to-int v6, v0

    aput v6, p4, v3

    .line 125
    ushr-long/2addr v0, v2

    .line 126
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

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 127
    add-int/lit8 v3, p5, 0x6

    long-to-int v6, v0

    aput v6, p4, v3

    .line 128
    ushr-long/2addr v0, v2

    .line 129
    add-int/lit8 v3, p1, 0x7

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x7

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-int/lit8 v3, p5, 0x7

    aget v3, p4, v3

    int-to-long v8, v3

    and-long v3, v8, v4

    add-long/2addr v6, v3

    add-long/2addr v0, v6

    .line 130
    add-int/lit8 v3, p5, 0x7

    long-to-int v4, v0

    aput v4, p4, v3

    .line 131
    ushr-long/2addr v0, v2

    .line 132
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addBothTo([I[I[I)I
    .locals 11
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 77
    const-wide/16 v0, 0x0

    .line 78
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

    .line 79
    long-to-int v3, v0

    aput v3, p2, v2

    .line 80
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 81
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

    .line 82
    long-to-int v4, v0

    aput v4, p2, v3

    .line 83
    ushr-long/2addr v0, v2

    .line 84
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

    .line 85
    long-to-int v4, v0

    aput v4, p2, v3

    .line 86
    ushr-long/2addr v0, v2

    .line 87
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

    .line 88
    long-to-int v4, v0

    aput v4, p2, v3

    .line 89
    ushr-long/2addr v0, v2

    .line 90
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

    .line 91
    long-to-int v4, v0

    aput v4, p2, v3

    .line 92
    ushr-long/2addr v0, v2

    .line 93
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

    .line 94
    long-to-int v4, v0

    aput v4, p2, v3

    .line 95
    ushr-long/2addr v0, v2

    .line 96
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

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 97
    long-to-int v4, v0

    aput v4, p2, v3

    .line 98
    ushr-long/2addr v0, v2

    .line 99
    const/4 v3, 0x7

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

    .line 100
    long-to-int v4, v0

    aput v4, p2, v3

    .line 101
    ushr-long/2addr v0, v2

    .line 102
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

    .line 167
    int-to-long v0, p4

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 168
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

    .line 169
    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    .line 170
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 171
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

    .line 172
    add-int/lit8 v5, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v5

    .line 173
    ushr-long/2addr v0, v4

    .line 174
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

    .line 175
    add-int/lit8 v5, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v5

    .line 176
    ushr-long/2addr v0, v4

    .line 177
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

    .line 178
    add-int/lit8 v5, p3, 0x3

    long-to-int v6, v0

    aput v6, p2, v5

    .line 179
    ushr-long/2addr v0, v4

    .line 180
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

    .line 181
    add-int/lit8 v5, p3, 0x4

    long-to-int v6, v0

    aput v6, p2, v5

    .line 182
    ushr-long/2addr v0, v4

    .line 183
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

    .line 184
    add-int/lit8 v5, p3, 0x5

    long-to-int v6, v0

    aput v6, p2, v5

    .line 185
    ushr-long/2addr v0, v4

    .line 186
    add-int/lit8 v5, p1, 0x6

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x6

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 187
    add-int/lit8 v5, p3, 0x6

    long-to-int v6, v0

    aput v6, p2, v5

    .line 188
    ushr-long/2addr v0, v4

    .line 189
    add-int/lit8 v5, p1, 0x7

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x7

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v2, v7

    add-long/2addr v5, v2

    add-long/2addr v0, v5

    .line 190
    add-int/lit8 v2, p3, 0x7

    long-to-int v3, v0

    aput v3, p2, v2

    .line 191
    ushr-long/2addr v0, v4

    .line 192
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addTo([I[I)I
    .locals 11
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 137
    const-wide/16 v0, 0x0

    .line 138
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

    .line 139
    long-to-int v3, v0

    aput v3, p1, v2

    .line 140
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 141
    const/4 v3, 0x1

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
    const/4 v3, 0x2

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 145
    long-to-int v4, v0

    aput v4, p1, v3

    .line 146
    ushr-long/2addr v0, v2

    .line 147
    const/4 v3, 0x3

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 148
    long-to-int v4, v0

    aput v4, p1, v3

    .line 149
    ushr-long/2addr v0, v2

    .line 150
    const/4 v3, 0x4

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 151
    long-to-int v4, v0

    aput v4, p1, v3

    .line 152
    ushr-long/2addr v0, v2

    .line 153
    const/4 v3, 0x5

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 154
    long-to-int v4, v0

    aput v4, p1, v3

    .line 155
    ushr-long/2addr v0, v2

    .line 156
    const/4 v3, 0x6

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 157
    long-to-int v4, v0

    aput v4, p1, v3

    .line 158
    ushr-long/2addr v0, v2

    .line 159
    const/4 v3, 0x7

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long v4, v9, v5

    add-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 160
    long-to-int v4, v0

    aput v4, p1, v3

    .line 161
    ushr-long/2addr v0, v2

    .line 162
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addToEachOther([II[II)I
    .locals 10
    .param p0, "u"    # [I
    .param p1, "uOff"    # I
    .param p2, "v"    # [I
    .param p3, "vOff"    # I

    .line 197
    const-wide/16 v0, 0x0

    .line 198
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

    .line 199
    add-int/lit8 v2, p1, 0x0

    long-to-int v3, v0

    aput v3, p0, v2

    .line 200
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 201
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 202
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

    .line 203
    add-int/lit8 v3, p1, 0x1

    long-to-int v6, v0

    aput v6, p0, v3

    .line 204
    add-int/lit8 v3, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v3

    .line 205
    ushr-long/2addr v0, v2

    .line 206
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

    .line 207
    add-int/lit8 v3, p1, 0x2

    long-to-int v6, v0

    aput v6, p0, v3

    .line 208
    add-int/lit8 v3, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v3

    .line 209
    ushr-long/2addr v0, v2

    .line 210
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

    .line 211
    add-int/lit8 v3, p1, 0x3

    long-to-int v6, v0

    aput v6, p0, v3

    .line 212
    add-int/lit8 v3, p3, 0x3

    long-to-int v6, v0

    aput v6, p2, v3

    .line 213
    ushr-long/2addr v0, v2

    .line 214
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

    .line 215
    add-int/lit8 v3, p1, 0x4

    long-to-int v6, v0

    aput v6, p0, v3

    .line 216
    add-int/lit8 v3, p3, 0x4

    long-to-int v6, v0

    aput v6, p2, v3

    .line 217
    ushr-long/2addr v0, v2

    .line 218
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

    .line 219
    add-int/lit8 v3, p1, 0x5

    long-to-int v6, v0

    aput v6, p0, v3

    .line 220
    add-int/lit8 v3, p3, 0x5

    long-to-int v6, v0

    aput v6, p2, v3

    .line 221
    ushr-long/2addr v0, v2

    .line 222
    add-int/lit8 v3, p1, 0x6

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x6

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 223
    add-int/lit8 v3, p1, 0x6

    long-to-int v6, v0

    aput v6, p0, v3

    .line 224
    add-int/lit8 v3, p3, 0x6

    long-to-int v6, v0

    aput v6, p2, v3

    .line 225
    ushr-long/2addr v0, v2

    .line 226
    add-int/lit8 v3, p1, 0x7

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x7

    aget v3, p2, v3

    int-to-long v8, v3

    and-long v3, v8, v4

    add-long/2addr v6, v3

    add-long/2addr v0, v6

    .line 227
    add-int/lit8 v3, p1, 0x7

    long-to-int v4, v0

    aput v4, p0, v3

    .line 228
    add-int/lit8 v3, p3, 0x7

    long-to-int v4, v0

    aput v4, p2, v3

    .line 229
    ushr-long/2addr v0, v2

    .line 230
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist copy([II[II)V
    .locals 2
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .line 247
    add-int/lit8 v0, p3, 0x0

    add-int/lit8 v1, p1, 0x0

    aget v1, p0, v1

    aput v1, p2, v0

    .line 248
    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    aput v1, p2, v0

    .line 249
    add-int/lit8 v0, p3, 0x2

    add-int/lit8 v1, p1, 0x2

    aget v1, p0, v1

    aput v1, p2, v0

    .line 250
    add-int/lit8 v0, p3, 0x3

    add-int/lit8 v1, p1, 0x3

    aget v1, p0, v1

    aput v1, p2, v0

    .line 251
    add-int/lit8 v0, p3, 0x4

    add-int/lit8 v1, p1, 0x4

    aget v1, p0, v1

    aput v1, p2, v0

    .line 252
    add-int/lit8 v0, p3, 0x5

    add-int/lit8 v1, p1, 0x5

    aget v1, p0, v1

    aput v1, p2, v0

    .line 253
    add-int/lit8 v0, p3, 0x6

    add-int/lit8 v1, p1, 0x6

    aget v1, p0, v1

    aput v1, p2, v0

    .line 254
    add-int/lit8 v0, p3, 0x7

    add-int/lit8 v1, p1, 0x7

    aget v1, p0, v1

    aput v1, p2, v0

    .line 255
    return-void
.end method

.method public static blacklist copy([I[I)V
    .locals 2
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 235
    const/4 v0, 0x0

    aget v1, p0, v0

    aput v1, p1, v0

    .line 236
    const/4 v0, 0x1

    aget v1, p0, v0

    aput v1, p1, v0

    .line 237
    const/4 v0, 0x2

    aget v1, p0, v0

    aput v1, p1, v0

    .line 238
    const/4 v0, 0x3

    aget v1, p0, v0

    aput v1, p1, v0

    .line 239
    const/4 v0, 0x4

    aget v1, p0, v0

    aput v1, p1, v0

    .line 240
    const/4 v0, 0x5

    aget v1, p0, v0

    aput v1, p1, v0

    .line 241
    const/4 v0, 0x6

    aget v1, p0, v0

    aput v1, p1, v0

    .line 242
    const/4 v0, 0x7

    aget v1, p0, v0

    aput v1, p1, v0

    .line 243
    return-void
.end method

.method public static blacklist copy64([JI[JI)V
    .locals 3
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "z"    # [J
    .param p3, "zOff"    # I

    .line 267
    add-int/lit8 v0, p3, 0x0

    add-int/lit8 v1, p1, 0x0

    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    .line 268
    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p1, 0x1

    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    .line 269
    add-int/lit8 v0, p3, 0x2

    add-int/lit8 v1, p1, 0x2

    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    .line 270
    add-int/lit8 v0, p3, 0x3

    add-int/lit8 v1, p1, 0x3

    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    .line 271
    return-void
.end method

.method public static blacklist copy64([J[J)V
    .locals 3
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .line 259
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 260
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 261
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 262
    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 263
    return-void
.end method

.method public static blacklist create()[I
    .locals 1

    .line 275
    const/16 v0, 0x8

    new-array v0, v0, [I

    return-object v0
.end method

.method public static blacklist create64()[J
    .locals 1

    .line 280
    const/4 v0, 0x4

    new-array v0, v0, [J

    return-object v0
.end method

.method public static blacklist createExt()[I
    .locals 1

    .line 285
    const/16 v0, 0x10

    new-array v0, v0, [I

    return-object v0
.end method

.method public static blacklist createExt64()[J
    .locals 1

    .line 290
    const/16 v0, 0x8

    new-array v0, v0, [J

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

    .line 295
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->gte([II[II)Z

    move-result v0

    .line 296
    .local v0, "pos":Z
    if-eqz v0, :cond_0

    .line 298
    invoke-static/range {p0 .. p5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->sub([II[II[II)I

    goto :goto_0

    .line 302
    :cond_0
    move-object v1, p2

    move v2, p3

    move-object v3, p0

    move v4, p1

    move-object v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->sub([II[II[II)I

    .line 304
    :goto_0
    return v0
.end method

.method public static blacklist eq([I[I)Z
    .locals 3
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .line 309
    const/4 v0, 0x7

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 311
    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_0

    .line 313
    const/4 v1, 0x0

    return v1

    .line 309
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 316
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist eq64([J[J)Z
    .locals 5
    .param p0, "x"    # [J
    .param p1, "y"    # [J

    .line 321
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 323
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 325
    const/4 v1, 0x0

    return v1

    .line 321
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 328
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 3
    .param p0, "x"    # Ljava/math/BigInteger;

    .line 333
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x100

    if-gt v0, v1, :cond_1

    .line 338
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 341
    .local v0, "z":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 343
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 344
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 341
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 346
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 335
    .end local v0    # "z":[I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static blacklist fromBigInteger64(Ljava/math/BigInteger;)[J
    .locals 4
    .param p0, "x"    # Ljava/math/BigInteger;

    .line 351
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x100

    if-gt v0, v1, :cond_1

    .line 356
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create64()[J

    move-result-object v0

    .line 359
    .local v0, "z":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 361
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 362
    const/16 v2, 0x40

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 353
    .end local v0    # "z":[J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static blacklist getBit([II)I
    .locals 3
    .param p0, "x"    # [I
    .param p1, "bit"    # I

    .line 369
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 371
    aget v0, p0, v0

    and-int/lit8 v0, v0, 0x1

    return v0

    .line 373
    :cond_0
    and-int/lit16 v1, p1, 0xff

    if-eq v1, p1, :cond_1

    .line 375
    return v0

    .line 377
    :cond_1
    ushr-int/lit8 v0, p1, 0x5

    .line 378
    .local v0, "w":I
    and-int/lit8 v1, p1, 0x1f

    .line 379
    .local v1, "b":I
    aget v2, p0, v0

    ushr-int/2addr v2, v1

    and-int/lit8 v2, v2, 0x1

    return v2
.end method

.method public static blacklist gte([II[II)Z
    .locals 5
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I

    .line 398
    const/4 v0, 0x7

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    .line 400
    add-int v2, p1, v0

    aget v2, p0, v2

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 401
    .local v2, "x_i":I
    add-int v4, p3, v0

    aget v4, p2, v4

    xor-int/2addr v3, v4

    .line 402
    .local v3, "y_i":I
    if-ge v2, v3, :cond_0

    .line 403
    const/4 v1, 0x0

    return v1

    .line 404
    :cond_0
    if-le v2, v3, :cond_1

    .line 405
    return v1

    .line 398
    .end local v2    # "x_i":I
    .end local v3    # "y_i":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 407
    .end local v0    # "i":I
    :cond_2
    return v1
.end method

.method public static blacklist gte([I[I)Z
    .locals 5
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .line 384
    const/4 v0, 0x7

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    .line 386
    aget v2, p0, v0

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 387
    .local v2, "x_i":I
    aget v4, p1, v0

    xor-int/2addr v3, v4

    .line 388
    .local v3, "y_i":I
    if-ge v2, v3, :cond_0

    .line 389
    const/4 v1, 0x0

    return v1

    .line 390
    :cond_0
    if-le v2, v3, :cond_1

    .line 391
    return v1

    .line 384
    .end local v2    # "x_i":I
    .end local v3    # "y_i":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 393
    .end local v0    # "i":I
    :cond_2
    return v1
.end method

.method public static blacklist isOne([I)Z
    .locals 4
    .param p0, "x"    # [I

    .line 412
    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 414
    return v0

    .line 416
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_2

    .line 418
    aget v3, p0, v1

    if-eqz v3, :cond_1

    .line 420
    return v0

    .line 416
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 423
    .end local v1    # "i":I
    :cond_2
    return v2
.end method

.method public static blacklist isOne64([J)Z
    .locals 6
    .param p0, "x"    # [J

    .line 428
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 430
    return v0

    .line 432
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    .line 434
    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 436
    return v0

    .line 432
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 439
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isZero([I)Z
    .locals 2
    .param p0, "x"    # [I

    .line 444
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 446
    aget v1, p0, v0

    if-eqz v1, :cond_0

    .line 448
    const/4 v1, 0x0

    return v1

    .line 444
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 451
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isZero64([J)Z
    .locals 5
    .param p0, "x"    # [J

    .line 456
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 458
    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 460
    const/4 v1, 0x0

    return v1

    .line 456
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 463
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist mul([II[II[II)V
    .locals 31
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "zz"    # [I
    .param p5, "zzOff"    # I

    .line 539
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 540
    .local v0, "y_0":J
    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 541
    .local v4, "y_1":J
    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 542
    .local v6, "y_2":J
    add-int/lit8 v8, p3, 0x3

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 543
    .local v8, "y_3":J
    add-int/lit8 v10, p3, 0x4

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    .line 544
    .local v10, "y_4":J
    add-int/lit8 v12, p3, 0x5

    aget v12, p2, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    .line 545
    .local v12, "y_5":J
    add-int/lit8 v14, p3, 0x6

    aget v14, p2, v14

    int-to-long v14, v14

    and-long/2addr v14, v2

    .line 546
    .local v14, "y_6":J
    add-int/lit8 v16, p3, 0x7

    move-wide/from16 v17, v14

    .end local v14    # "y_6":J
    .local v17, "y_6":J
    aget v14, p2, v16

    int-to-long v14, v14

    and-long/2addr v14, v2

    .line 549
    .local v14, "y_7":J
    const-wide/16 v19, 0x0

    .local v19, "c":J
    add-int/lit8 v16, p1, 0x0

    move-wide/from16 v21, v14

    .end local v14    # "y_7":J
    .local v21, "y_7":J
    aget v14, p0, v16

    int-to-long v14, v14

    and-long/2addr v14, v2

    .line 550
    .local v14, "x_0":J
    mul-long v23, v14, v0

    add-long v2, v19, v23

    .line 551
    .end local v19    # "c":J
    .local v2, "c":J
    add-int/lit8 v16, p5, 0x0

    move-wide/from16 v19, v0

    .end local v0    # "y_0":J
    .local v19, "y_0":J
    long-to-int v0, v2

    aput v0, p4, v16

    .line 552
    const/16 v0, 0x20

    ushr-long v1, v2, v0

    .line 553
    .end local v2    # "c":J
    .local v1, "c":J
    mul-long v23, v14, v4

    add-long v1, v1, v23

    .line 554
    add-int/lit8 v3, p5, 0x1

    long-to-int v0, v1

    aput v0, p4, v3

    .line 555
    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    .line 556
    mul-long v23, v14, v6

    add-long v1, v1, v23

    .line 557
    add-int/lit8 v3, p5, 0x2

    long-to-int v0, v1

    aput v0, p4, v3

    .line 558
    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    .line 559
    mul-long v23, v14, v8

    add-long v1, v1, v23

    .line 560
    add-int/lit8 v3, p5, 0x3

    long-to-int v0, v1

    aput v0, p4, v3

    .line 561
    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    .line 562
    mul-long v23, v14, v10

    add-long v1, v1, v23

    .line 563
    add-int/lit8 v3, p5, 0x4

    long-to-int v0, v1

    aput v0, p4, v3

    .line 564
    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    .line 565
    mul-long v23, v14, v12

    add-long v1, v1, v23

    .line 566
    add-int/lit8 v3, p5, 0x5

    long-to-int v0, v1

    aput v0, p4, v3

    .line 567
    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    .line 568
    mul-long v23, v14, v17

    add-long v1, v1, v23

    .line 569
    add-int/lit8 v3, p5, 0x6

    long-to-int v0, v1

    aput v0, p4, v3

    .line 570
    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    .line 571
    mul-long v23, v14, v21

    add-long v1, v1, v23

    .line 572
    add-int/lit8 v3, p5, 0x7

    long-to-int v0, v1

    aput v0, p4, v3

    .line 573
    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    .line 574
    add-int/lit8 v0, p5, 0x8

    long-to-int v3, v1

    aput v3, p4, v0

    .line 577
    .end local v1    # "c":J
    .end local v14    # "x_0":J
    const/4 v0, 0x1

    move v1, v0

    move/from16 v0, p5

    .end local p5    # "zzOff":I
    .local v0, "zzOff":I
    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 579
    add-int/lit8 v0, v0, 0x1

    .line 580
    const-wide/16 v2, 0x0

    .restart local v2    # "c":J
    add-int v14, p1, v1

    aget v14, p0, v14

    int-to-long v14, v14

    const-wide v23, 0xffffffffL

    and-long v14, v14, v23

    .line 581
    .local v14, "x_i":J
    mul-long v27, v14, v19

    add-int/lit8 v25, v0, 0x0

    move/from16 p5, v1

    .end local v1    # "i":I
    .local p5, "i":I
    aget v1, p4, v25

    move-wide/from16 v29, v12

    .end local v12    # "y_5":J
    .local v29, "y_5":J
    int-to-long v12, v1

    and-long v12, v12, v23

    add-long v27, v27, v12

    add-long v2, v2, v27

    .line 582
    add-int/lit8 v1, v0, 0x0

    long-to-int v12, v2

    aput v12, p4, v1

    .line 583
    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    .line 584
    mul-long v12, v14, v4

    add-int/lit8 v1, v0, 0x1

    aget v1, p4, v1

    move-wide/from16 v23, v4

    .end local v4    # "y_1":J
    .local v23, "y_1":J
    int-to-long v4, v1

    const-wide v25, 0xffffffffL

    and-long v4, v4, v25

    add-long/2addr v12, v4

    add-long/2addr v2, v12

    .line 585
    add-int/lit8 v1, v0, 0x1

    long-to-int v4, v2

    aput v4, p4, v1

    .line 586
    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    .line 587
    mul-long v4, v14, v6

    add-int/lit8 v1, v0, 0x2

    aget v1, p4, v1

    int-to-long v12, v1

    const-wide v25, 0xffffffffL

    and-long v12, v12, v25

    add-long/2addr v4, v12

    add-long/2addr v2, v4

    .line 588
    add-int/lit8 v1, v0, 0x2

    long-to-int v4, v2

    aput v4, p4, v1

    .line 589
    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    .line 590
    mul-long v4, v14, v8

    add-int/lit8 v1, v0, 0x3

    aget v1, p4, v1

    int-to-long v12, v1

    const-wide v25, 0xffffffffL

    and-long v12, v12, v25

    add-long/2addr v4, v12

    add-long/2addr v2, v4

    .line 591
    add-int/lit8 v1, v0, 0x3

    long-to-int v4, v2

    aput v4, p4, v1

    .line 592
    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    .line 593
    mul-long v4, v14, v10

    add-int/lit8 v1, v0, 0x4

    aget v1, p4, v1

    int-to-long v12, v1

    const-wide v25, 0xffffffffL

    and-long v12, v12, v25

    add-long/2addr v4, v12

    add-long/2addr v2, v4

    .line 594
    add-int/lit8 v1, v0, 0x4

    long-to-int v4, v2

    aput v4, p4, v1

    .line 595
    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    .line 596
    mul-long v12, v14, v29

    add-int/lit8 v1, v0, 0x5

    aget v1, p4, v1

    int-to-long v4, v1

    const-wide v25, 0xffffffffL

    and-long v4, v4, v25

    add-long/2addr v12, v4

    add-long/2addr v2, v12

    .line 597
    add-int/lit8 v1, v0, 0x5

    long-to-int v4, v2

    aput v4, p4, v1

    .line 598
    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    .line 599
    mul-long v4, v14, v17

    add-int/lit8 v1, v0, 0x6

    aget v1, p4, v1

    int-to-long v12, v1

    const-wide v25, 0xffffffffL

    and-long v12, v12, v25

    add-long/2addr v4, v12

    add-long/2addr v2, v4

    .line 600
    add-int/lit8 v1, v0, 0x6

    long-to-int v4, v2

    aput v4, p4, v1

    .line 601
    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    .line 602
    mul-long v4, v14, v21

    add-int/lit8 v1, v0, 0x7

    aget v1, p4, v1

    int-to-long v12, v1

    const-wide v25, 0xffffffffL

    and-long v12, v12, v25

    add-long/2addr v4, v12

    add-long/2addr v2, v4

    .line 603
    add-int/lit8 v1, v0, 0x7

    long-to-int v4, v2

    aput v4, p4, v1

    .line 604
    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    .line 605
    add-int/lit8 v4, v0, 0x8

    long-to-int v5, v2

    aput v5, p4, v4

    .line 577
    .end local v2    # "c":J
    .end local v14    # "x_i":J
    add-int/lit8 v2, p5, 0x1

    move v1, v2

    move-wide/from16 v4, v23

    move-wide/from16 v12, v29

    .end local p5    # "i":I
    .local v2, "i":I
    goto/16 :goto_0

    .line 607
    .end local v2    # "i":I
    .end local v23    # "y_1":J
    .end local v29    # "y_5":J
    .restart local v4    # "y_1":J
    .restart local v12    # "y_5":J
    :cond_0
    return-void
.end method

.method public static blacklist mul([I[I[I)V
    .locals 34
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .line 468
    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 469
    .local v1, "y_0":J
    const/4 v5, 0x1

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    .line 470
    .local v6, "y_1":J
    const/4 v8, 0x2

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    .line 471
    .local v9, "y_2":J
    const/4 v11, 0x3

    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    .line 472
    .local v12, "y_3":J
    const/4 v14, 0x4

    aget v15, p1, v14

    int-to-long v14, v15

    and-long/2addr v14, v3

    .line 473
    .local v14, "y_4":J
    const/16 v17, 0x5

    aget v11, p1, v17

    move-wide/from16 v20, v9

    .end local v9    # "y_2":J
    .local v20, "y_2":J
    int-to-long v8, v11

    and-long/2addr v8, v3

    .line 474
    .local v8, "y_5":J
    const/4 v10, 0x6

    aget v11, p1, v10

    int-to-long v10, v11

    and-long/2addr v10, v3

    .line 475
    .local v10, "y_6":J
    const/16 v23, 0x7

    aget v5, p1, v23

    move-wide/from16 v26, v1

    .end local v1    # "y_0":J
    .local v26, "y_0":J
    int-to-long v0, v5

    and-long/2addr v0, v3

    .line 478
    .local v0, "y_7":J
    const-wide/16 v28, 0x0

    const/4 v2, 0x0

    .local v28, "c":J
    aget v5, p0, v2

    move-wide/from16 v30, v0

    .end local v0    # "y_7":J
    .local v30, "y_7":J
    int-to-long v0, v5

    and-long/2addr v0, v3

    .line 479
    .local v0, "x_0":J
    mul-long v32, v0, v26

    add-long v3, v28, v32

    .line 480
    .end local v28    # "c":J
    .local v3, "c":J
    long-to-int v5, v3

    aput v5, p2, v2

    .line 481
    const/16 v2, 0x20

    ushr-long/2addr v3, v2

    .line 482
    mul-long v28, v0, v6

    add-long v3, v3, v28

    .line 483
    long-to-int v5, v3

    const/16 v24, 0x1

    aput v5, p2, v24

    .line 484
    ushr-long/2addr v3, v2

    .line 485
    mul-long v24, v0, v20

    add-long v3, v3, v24

    .line 486
    long-to-int v5, v3

    const/16 v19, 0x2

    aput v5, p2, v19

    .line 487
    ushr-long/2addr v3, v2

    .line 488
    mul-long v24, v0, v12

    add-long v3, v3, v24

    .line 489
    long-to-int v5, v3

    const/16 v18, 0x3

    aput v5, p2, v18

    .line 490
    ushr-long/2addr v3, v2

    .line 491
    mul-long v18, v0, v14

    add-long v3, v3, v18

    .line 492
    long-to-int v5, v3

    const/16 v16, 0x4

    aput v5, p2, v16

    .line 493
    ushr-long/2addr v3, v2

    .line 494
    mul-long v18, v0, v8

    add-long v3, v3, v18

    .line 495
    long-to-int v5, v3

    aput v5, p2, v17

    .line 496
    ushr-long/2addr v3, v2

    .line 497
    mul-long v16, v0, v10

    add-long v3, v3, v16

    .line 498
    long-to-int v5, v3

    const/16 v16, 0x6

    aput v5, p2, v16

    .line 499
    ushr-long/2addr v3, v2

    .line 500
    mul-long v16, v0, v30

    add-long v3, v3, v16

    .line 501
    long-to-int v5, v3

    aput v5, p2, v23

    .line 502
    ushr-long/2addr v3, v2

    .line 503
    long-to-int v5, v3

    const/16 v2, 0x8

    aput v5, p2, v2

    .line 506
    .end local v0    # "x_0":J
    .end local v3    # "c":J
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 508
    const-wide/16 v3, 0x0

    .restart local v3    # "c":J
    aget v1, p0, v0

    move-wide/from16 v17, v3

    .end local v3    # "c":J
    .local v17, "c":J
    int-to-long v2, v1

    const-wide v22, 0xffffffffL

    and-long v1, v2, v22

    .line 509
    .local v1, "x_i":J
    mul-long v3, v1, v26

    add-int/lit8 v19, v0, 0x0

    aget v5, p2, v19

    move-wide/from16 v28, v10

    .end local v10    # "y_6":J
    .local v28, "y_6":J
    int-to-long v10, v5

    and-long v10, v10, v22

    add-long/2addr v3, v10

    add-long v3, v17, v3

    .line 510
    .end local v17    # "c":J
    .restart local v3    # "c":J
    add-int/lit8 v5, v0, 0x0

    long-to-int v10, v3

    aput v10, p2, v5

    .line 511
    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    .line 512
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

    .line 513
    add-int/lit8 v5, v0, 0x1

    long-to-int v6, v3

    aput v6, p2, v5

    .line 514
    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    .line 515
    mul-long v5, v1, v20

    add-int/lit8 v7, v0, 0x2

    aget v7, p2, v7

    int-to-long v10, v7

    const-wide v22, 0xffffffffL

    and-long v10, v10, v22

    add-long/2addr v5, v10

    add-long/2addr v3, v5

    .line 516
    add-int/lit8 v5, v0, 0x2

    long-to-int v6, v3

    aput v6, p2, v5

    .line 517
    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    .line 518
    mul-long v5, v1, v12

    add-int/lit8 v7, v0, 0x3

    aget v7, p2, v7

    int-to-long v10, v7

    const-wide v22, 0xffffffffL

    and-long v10, v10, v22

    add-long/2addr v5, v10

    add-long/2addr v3, v5

    .line 519
    add-int/lit8 v5, v0, 0x3

    long-to-int v6, v3

    aput v6, p2, v5

    .line 520
    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    .line 521
    mul-long v5, v1, v14

    add-int/lit8 v7, v0, 0x4

    aget v7, p2, v7

    int-to-long v10, v7

    const-wide v22, 0xffffffffL

    and-long v10, v10, v22

    add-long/2addr v5, v10

    add-long/2addr v3, v5

    .line 522
    add-int/lit8 v5, v0, 0x4

    long-to-int v6, v3

    aput v6, p2, v5

    .line 523
    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    .line 524
    mul-long v5, v1, v8

    add-int/lit8 v7, v0, 0x5

    aget v7, p2, v7

    int-to-long v10, v7

    const-wide v22, 0xffffffffL

    and-long v10, v10, v22

    add-long/2addr v5, v10

    add-long/2addr v3, v5

    .line 525
    add-int/lit8 v5, v0, 0x5

    long-to-int v6, v3

    aput v6, p2, v5

    .line 526
    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    .line 527
    mul-long v10, v1, v28

    add-int/lit8 v5, v0, 0x6

    aget v5, p2, v5

    int-to-long v5, v5

    const-wide v22, 0xffffffffL

    and-long v5, v5, v22

    add-long/2addr v10, v5

    add-long/2addr v3, v10

    .line 528
    add-int/lit8 v5, v0, 0x6

    long-to-int v6, v3

    aput v6, p2, v5

    .line 529
    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    .line 530
    mul-long v5, v1, v30

    add-int/lit8 v7, v0, 0x7

    aget v7, p2, v7

    int-to-long v10, v7

    const-wide v22, 0xffffffffL

    and-long v10, v10, v22

    add-long/2addr v5, v10

    add-long/2addr v3, v5

    .line 531
    add-int/lit8 v5, v0, 0x7

    long-to-int v6, v3

    aput v6, p2, v5

    .line 532
    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    .line 533
    add-int/lit8 v6, v0, 0x8

    long-to-int v7, v3

    aput v7, p2, v6

    .line 506
    .end local v1    # "x_i":J
    .end local v3    # "c":J
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v6, v17

    move-wide/from16 v10, v28

    const/16 v2, 0x8

    goto/16 :goto_0

    .line 535
    .end local v0    # "i":I
    .end local v17    # "y_1":J
    .end local v28    # "y_6":J
    .restart local v6    # "y_1":J
    .restart local v10    # "y_6":J
    :cond_0
    return-void
.end method

.method public static blacklist mul33Add(I[II[II[II)J
    .locals 29
    .param p0, "w"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .line 708
    const-wide/16 v0, 0x0

    move/from16 v2, p0

    .local v0, "c":J
    int-to-long v3, v2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    .line 709
    .local v3, "wVal":J
    add-int/lit8 v7, p2, 0x0

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    .line 710
    .local v7, "x0":J
    mul-long v9, v3, v7

    add-int/lit8 v11, p4, 0x0

    aget v11, p3, v11

    int-to-long v11, v11

    and-long/2addr v11, v5

    add-long/2addr v9, v11

    add-long/2addr v0, v9

    .line 711
    add-int/lit8 v9, p6, 0x0

    long-to-int v10, v0

    aput v10, p5, v9

    .line 712
    const/16 v9, 0x20

    ushr-long/2addr v0, v9

    .line 713
    add-int/lit8 v10, p2, 0x1

    aget v10, p1, v10

    int-to-long v10, v10

    and-long/2addr v10, v5

    .line 714
    .local v10, "x1":J
    mul-long v12, v3, v10

    add-long/2addr v12, v7

    add-int/lit8 v14, p4, 0x1

    aget v14, p3, v14

    int-to-long v14, v14

    and-long/2addr v14, v5

    add-long/2addr v12, v14

    add-long/2addr v0, v12

    .line 715
    add-int/lit8 v12, p6, 0x1

    long-to-int v13, v0

    aput v13, p5, v12

    .line 716
    ushr-long/2addr v0, v9

    .line 717
    add-int/lit8 v12, p2, 0x2

    aget v12, p1, v12

    int-to-long v12, v12

    and-long/2addr v12, v5

    .line 718
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

    .line 719
    add-int/lit8 v7, p6, 0x2

    long-to-int v8, v0

    aput v8, p5, v7

    .line 720
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 721
    add-int/lit8 v7, p2, 0x3

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    .line 722
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

    .line 723
    add-int/lit8 v9, p6, 0x3

    long-to-int v10, v0

    aput v10, p5, v9

    .line 724
    const/16 v9, 0x20

    ushr-long/2addr v0, v9

    .line 725
    add-int/lit8 v9, p2, 0x4

    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v5

    .line 726
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

    .line 727
    add-int/lit8 v7, p6, 0x4

    long-to-int v8, v0

    aput v8, p5, v7

    .line 728
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 729
    add-int/lit8 v7, p2, 0x5

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    .line 730
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

    .line 731
    add-int/lit8 v9, p6, 0x5

    long-to-int v10, v0

    aput v10, p5, v9

    .line 732
    const/16 v9, 0x20

    ushr-long/2addr v0, v9

    .line 733
    add-int/lit8 v9, p2, 0x6

    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v5

    .line 734
    .local v9, "x6":J
    mul-long v14, v3, v9

    add-long/2addr v14, v7

    add-int/lit8 v11, p4, 0x6

    aget v11, p3, v11

    move-wide/from16 v25, v7

    .end local v7    # "x5":J
    .local v25, "x5":J
    int-to-long v7, v11

    and-long/2addr v7, v5

    add-long/2addr v14, v7

    add-long/2addr v0, v14

    .line 735
    add-int/lit8 v7, p6, 0x6

    long-to-int v8, v0

    aput v8, p5, v7

    .line 736
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 737
    add-int/lit8 v7, p2, 0x7

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    .line 738
    .local v7, "x7":J
    mul-long v14, v3, v7

    add-long/2addr v14, v9

    add-int/lit8 v11, p4, 0x7

    aget v11, p3, v11

    move-wide/from16 v27, v3

    .end local v3    # "wVal":J
    .local v27, "wVal":J
    int-to-long v2, v11

    and-long/2addr v2, v5

    add-long/2addr v14, v2

    add-long/2addr v0, v14

    .line 739
    add-int/lit8 v2, p6, 0x7

    long-to-int v3, v0

    aput v3, p5, v2

    .line 740
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 741
    add-long/2addr v0, v7

    .line 742
    return-wide v0
.end method

.method public static blacklist mul33DWordAdd(IJ[II)I
    .locals 19
    .param p0, "x"    # I
    .param p1, "y"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .line 840
    move-object/from16 v0, p3

    move/from16 v1, p4

    const-wide/16 v2, 0x0

    move/from16 v4, p0

    .local v2, "c":J
    int-to-long v5, v4

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    .line 841
    .local v5, "xVal":J
    and-long v9, p1, v7

    .line 842
    .local v9, "y00":J
    mul-long v11, v5, v9

    add-int/lit8 v13, v1, 0x0

    aget v13, v0, v13

    int-to-long v13, v13

    and-long/2addr v13, v7

    add-long/2addr v11, v13

    add-long/2addr v2, v11

    .line 843
    add-int/lit8 v11, v1, 0x0

    long-to-int v12, v2

    aput v12, v0, v11

    .line 844
    const/16 v11, 0x20

    ushr-long/2addr v2, v11

    .line 845
    ushr-long v12, p1, v11

    .line 846
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

    .line 847
    add-int/lit8 v4, v1, 0x1

    long-to-int v5, v2

    aput v5, v0, v4

    .line 848
    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    .line 849
    add-int/lit8 v4, v1, 0x2

    aget v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    add-long/2addr v4, v12

    add-long/2addr v2, v4

    .line 850
    add-int/lit8 v4, v1, 0x2

    long-to-int v5, v2

    aput v5, v0, v4

    .line 851
    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    .line 852
    add-int/lit8 v4, v1, 0x3

    aget v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    add-long/2addr v2, v4

    .line 853
    add-int/lit8 v4, v1, 0x3

    long-to-int v5, v2

    aput v5, v0, v4

    .line 854
    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    .line 855
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

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

    .line 863
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .local v2, "xVal":J
    int-to-long v6, p1

    and-long/2addr v6, v4

    .line 864
    .local v6, "yVal":J
    mul-long v8, v6, v2

    add-int/lit8 v10, p3, 0x0

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 865
    add-int/lit8 v8, p3, 0x0

    long-to-int v9, v0

    aput v9, p2, v8

    .line 866
    const/16 v8, 0x20

    ushr-long/2addr v0, v8

    .line 867
    add-int/lit8 v9, p3, 0x1

    aget v9, p2, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v9, v6

    add-long/2addr v0, v9

    .line 868
    add-int/lit8 v9, p3, 0x1

    long-to-int v10, v0

    aput v10, p2, v9

    .line 869
    ushr-long/2addr v0, v8

    .line 870
    add-int/lit8 v9, p3, 0x2

    aget v9, p2, v9

    int-to-long v9, v9

    and-long/2addr v4, v9

    add-long/2addr v0, v4

    .line 871
    add-int/lit8 v4, p3, 0x2

    long-to-int v5, v0

    aput v5, p2, v4

    .line 872
    ushr-long/2addr v0, v8

    .line 873
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    const/4 v5, 0x3

    invoke-static {v4, p2, p3, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v4

    :goto_0
    return v4
.end method

.method public static blacklist mulAddTo([II[II[II)I
    .locals 32
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "zz"    # [I
    .param p5, "zzOff"    # I

    .line 658
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 659
    .local v0, "y_0":J
    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 660
    .local v4, "y_1":J
    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 661
    .local v6, "y_2":J
    add-int/lit8 v8, p3, 0x3

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 662
    .local v8, "y_3":J
    add-int/lit8 v10, p3, 0x4

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    .line 663
    .local v10, "y_4":J
    add-int/lit8 v12, p3, 0x5

    aget v12, p2, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    .line 664
    .local v12, "y_5":J
    add-int/lit8 v14, p3, 0x6

    aget v14, p2, v14

    int-to-long v14, v14

    and-long/2addr v14, v2

    .line 665
    .local v14, "y_6":J
    add-int/lit8 v16, p3, 0x7

    move-wide/from16 v17, v14

    .end local v14    # "y_6":J
    .local v17, "y_6":J
    aget v14, p2, v16

    int-to-long v14, v14

    and-long/2addr v14, v2

    .line 667
    .local v14, "y_7":J
    const-wide/16 v19, 0x0

    .line 668
    .local v19, "zc":J
    const/16 v16, 0x0

    move/from16 v2, v16

    move-wide/from16 v21, v19

    move/from16 v16, p5

    .end local v19    # "zc":J
    .end local p5    # "zzOff":I
    .local v2, "i":I
    .local v16, "zzOff":I
    .local v21, "zc":J
    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 670
    const-wide/16 v23, 0x0

    .local v23, "c":J
    add-int v3, p1, v2

    aget v3, p0, v3

    move/from16 p5, v2

    .end local v2    # "i":I
    .local p5, "i":I
    int-to-long v2, v3

    const-wide v19, 0xffffffffL

    and-long v2, v2, v19

    .line 671
    .local v2, "x_i":J
    mul-long v25, v2, v0

    add-int/lit8 v27, v16, 0x0

    move-wide/from16 v28, v0

    .end local v0    # "y_0":J
    .local v28, "y_0":J
    aget v0, p4, v27

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long v25, v25, v0

    add-long v0, v23, v25

    .line 672
    .end local v23    # "c":J
    .local v0, "c":J
    add-int/lit8 v23, v16, 0x0

    move-wide/from16 v24, v14

    .end local v14    # "y_7":J
    .local v24, "y_7":J
    long-to-int v14, v0

    aput v14, p4, v23

    .line 673
    const/16 v14, 0x20

    ushr-long/2addr v0, v14

    .line 674
    mul-long v26, v2, v4

    add-int/lit8 v15, v16, 0x1

    aget v15, p4, v15

    int-to-long v14, v15

    const-wide v19, 0xffffffffL

    and-long v14, v14, v19

    add-long v26, v26, v14

    add-long v0, v0, v26

    .line 675
    add-int/lit8 v14, v16, 0x1

    long-to-int v15, v0

    aput v15, p4, v14

    .line 676
    const/16 v14, 0x20

    ushr-long/2addr v0, v14

    .line 677
    mul-long v14, v2, v6

    add-int/lit8 v26, v16, 0x2

    move-wide/from16 v30, v4

    .end local v4    # "y_1":J
    .local v30, "y_1":J
    aget v4, p4, v26

    int-to-long v4, v4

    const-wide v19, 0xffffffffL

    and-long v4, v4, v19

    add-long/2addr v14, v4

    add-long/2addr v0, v14

    .line 678
    add-int/lit8 v4, v16, 0x2

    long-to-int v5, v0

    aput v5, p4, v4

    .line 679
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 680
    mul-long v4, v2, v8

    add-int/lit8 v14, v16, 0x3

    aget v14, p4, v14

    int-to-long v14, v14

    const-wide v19, 0xffffffffL

    and-long v14, v14, v19

    add-long/2addr v4, v14

    add-long/2addr v0, v4

    .line 681
    add-int/lit8 v4, v16, 0x3

    long-to-int v5, v0

    aput v5, p4, v4

    .line 682
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 683
    mul-long v4, v2, v10

    add-int/lit8 v14, v16, 0x4

    aget v14, p4, v14

    int-to-long v14, v14

    const-wide v19, 0xffffffffL

    and-long v14, v14, v19

    add-long/2addr v4, v14

    add-long/2addr v0, v4

    .line 684
    add-int/lit8 v4, v16, 0x4

    long-to-int v5, v0

    aput v5, p4, v4

    .line 685
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 686
    mul-long v4, v2, v12

    add-int/lit8 v14, v16, 0x5

    aget v14, p4, v14

    int-to-long v14, v14

    const-wide v19, 0xffffffffL

    and-long v14, v14, v19

    add-long/2addr v4, v14

    add-long/2addr v0, v4

    .line 687
    add-int/lit8 v4, v16, 0x5

    long-to-int v5, v0

    aput v5, p4, v4

    .line 688
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 689
    mul-long v14, v2, v17

    add-int/lit8 v4, v16, 0x6

    aget v4, p4, v4

    int-to-long v4, v4

    const-wide v19, 0xffffffffL

    and-long v4, v4, v19

    add-long/2addr v14, v4

    add-long/2addr v0, v14

    .line 690
    add-int/lit8 v4, v16, 0x6

    long-to-int v5, v0

    aput v5, p4, v4

    .line 691
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 692
    mul-long v14, v2, v24

    add-int/lit8 v4, v16, 0x7

    aget v4, p4, v4

    int-to-long v4, v4

    const-wide v19, 0xffffffffL

    and-long v4, v4, v19

    add-long/2addr v14, v4

    add-long/2addr v0, v14

    .line 693
    add-int/lit8 v4, v16, 0x7

    long-to-int v5, v0

    aput v5, p4, v4

    .line 694
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 696
    add-int/lit8 v4, v16, 0x8

    aget v4, p4, v4

    int-to-long v4, v4

    const-wide v14, 0xffffffffL

    and-long/2addr v4, v14

    add-long/2addr v4, v0

    move-wide/from16 v14, v21

    .end local v21    # "zc":J
    .local v14, "zc":J
    add-long/2addr v4, v14

    .line 697
    .end local v14    # "zc":J
    .local v4, "zc":J
    add-int/lit8 v14, v16, 0x8

    long-to-int v15, v4

    aput v15, p4, v14

    .line 698
    const/16 v14, 0x20

    ushr-long v21, v4, v14

    .line 699
    .end local v4    # "zc":J
    .restart local v21    # "zc":J
    nop

    .end local v0    # "c":J
    .end local v2    # "x_i":J
    add-int/lit8 v16, v16, 0x1

    .line 668
    add-int/lit8 v2, p5, 0x1

    move-wide/from16 v14, v24

    move-wide/from16 v0, v28

    move-wide/from16 v4, v30

    .end local p5    # "i":I
    .local v2, "i":I
    goto/16 :goto_0

    .end local v24    # "y_7":J
    .end local v28    # "y_0":J
    .end local v30    # "y_1":J
    .local v0, "y_0":J
    .local v4, "y_1":J
    .local v14, "y_7":J
    :cond_0
    move-wide/from16 v28, v0

    move-wide/from16 v24, v14

    move-wide/from16 v14, v21

    .line 701
    .end local v0    # "y_0":J
    .end local v2    # "i":I
    .end local v21    # "zc":J
    .local v14, "zc":J
    .restart local v24    # "y_7":J
    .restart local v28    # "y_0":J
    long-to-int v0, v14

    return v0
.end method

.method public static blacklist mulAddTo([I[I[I)I
    .locals 33
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .line 611
    const/4 v0, 0x0

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 612
    .local v0, "y_0":J
    const/4 v4, 0x1

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 613
    .local v4, "y_1":J
    const/4 v6, 0x2

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 614
    .local v6, "y_2":J
    const/4 v8, 0x3

    aget v8, p1, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 615
    .local v8, "y_3":J
    const/4 v10, 0x4

    aget v10, p1, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    .line 616
    .local v10, "y_4":J
    const/4 v12, 0x5

    aget v12, p1, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    .line 617
    .local v12, "y_5":J
    const/4 v14, 0x6

    aget v14, p1, v14

    int-to-long v14, v14

    and-long/2addr v14, v2

    .line 618
    .local v14, "y_6":J
    const/16 v16, 0x7

    move-wide/from16 v17, v14

    .end local v14    # "y_6":J
    .local v17, "y_6":J
    aget v14, p1, v16

    int-to-long v14, v14

    and-long/2addr v14, v2

    .line 620
    .local v14, "y_7":J
    const-wide/16 v19, 0x0

    .line 621
    .local v19, "zc":J
    const/16 v16, 0x0

    move/from16 v2, v16

    move-wide/from16 v23, v19

    .end local v19    # "zc":J
    .local v2, "i":I
    .local v23, "zc":J
    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 623
    const-wide/16 v19, 0x0

    .local v19, "c":J
    aget v3, p0, v2

    move-wide/from16 v25, v14

    .end local v14    # "y_7":J
    .local v25, "y_7":J
    int-to-long v14, v3

    const-wide v21, 0xffffffffL

    and-long v14, v14, v21

    .line 624
    .local v14, "x_i":J
    mul-long v27, v14, v0

    add-int/lit8 v3, v2, 0x0

    aget v3, p2, v3

    move-wide/from16 v29, v0

    .end local v0    # "y_0":J
    .local v29, "y_0":J
    int-to-long v0, v3

    and-long v0, v0, v21

    add-long v27, v27, v0

    add-long v0, v19, v27

    .line 625
    .end local v19    # "c":J
    .local v0, "c":J
    add-int/lit8 v3, v2, 0x0

    move-wide/from16 v19, v12

    .end local v12    # "y_5":J
    .local v19, "y_5":J
    long-to-int v12, v0

    aput v12, p2, v3

    .line 626
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 627
    mul-long v12, v14, v4

    add-int/lit8 v16, v2, 0x1

    aget v3, p2, v16

    move-wide/from16 v31, v4

    .end local v4    # "y_1":J
    .local v31, "y_1":J
    int-to-long v3, v3

    const-wide v21, 0xffffffffL

    and-long v3, v3, v21

    add-long/2addr v12, v3

    add-long/2addr v0, v12

    .line 628
    add-int/lit8 v3, v2, 0x1

    long-to-int v4, v0

    aput v4, p2, v3

    .line 629
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 630
    mul-long v3, v14, v6

    add-int/lit8 v5, v2, 0x2

    aget v5, p2, v5

    int-to-long v12, v5

    const-wide v21, 0xffffffffL

    and-long v12, v12, v21

    add-long/2addr v3, v12

    add-long/2addr v0, v3

    .line 631
    add-int/lit8 v3, v2, 0x2

    long-to-int v4, v0

    aput v4, p2, v3

    .line 632
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 633
    mul-long v3, v14, v8

    add-int/lit8 v5, v2, 0x3

    aget v5, p2, v5

    int-to-long v12, v5

    const-wide v21, 0xffffffffL

    and-long v12, v12, v21

    add-long/2addr v3, v12

    add-long/2addr v0, v3

    .line 634
    add-int/lit8 v3, v2, 0x3

    long-to-int v4, v0

    aput v4, p2, v3

    .line 635
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 636
    mul-long v3, v14, v10

    add-int/lit8 v5, v2, 0x4

    aget v5, p2, v5

    int-to-long v12, v5

    const-wide v21, 0xffffffffL

    and-long v12, v12, v21

    add-long/2addr v3, v12

    add-long/2addr v0, v3

    .line 637
    add-int/lit8 v3, v2, 0x4

    long-to-int v4, v0

    aput v4, p2, v3

    .line 638
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 639
    mul-long v12, v14, v19

    add-int/lit8 v3, v2, 0x5

    aget v3, p2, v3

    int-to-long v3, v3

    const-wide v21, 0xffffffffL

    and-long v3, v3, v21

    add-long/2addr v12, v3

    add-long/2addr v0, v12

    .line 640
    add-int/lit8 v3, v2, 0x5

    long-to-int v4, v0

    aput v4, p2, v3

    .line 641
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 642
    mul-long v3, v14, v17

    add-int/lit8 v5, v2, 0x6

    aget v5, p2, v5

    int-to-long v12, v5

    const-wide v21, 0xffffffffL

    and-long v12, v12, v21

    add-long/2addr v3, v12

    add-long/2addr v0, v3

    .line 643
    add-int/lit8 v3, v2, 0x6

    long-to-int v4, v0

    aput v4, p2, v3

    .line 644
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 645
    mul-long v3, v14, v25

    add-int/lit8 v5, v2, 0x7

    aget v5, p2, v5

    int-to-long v12, v5

    const-wide v21, 0xffffffffL

    and-long v12, v12, v21

    add-long/2addr v3, v12

    add-long/2addr v0, v3

    .line 646
    add-int/lit8 v3, v2, 0x7

    long-to-int v4, v0

    aput v4, p2, v3

    .line 647
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 649
    add-int/lit8 v3, v2, 0x8

    aget v3, p2, v3

    int-to-long v3, v3

    const-wide v12, 0xffffffffL

    and-long/2addr v3, v12

    add-long/2addr v3, v0

    move-wide/from16 v12, v23

    .end local v23    # "zc":J
    .local v12, "zc":J
    add-long/2addr v3, v12

    .line 650
    .end local v12    # "zc":J
    .local v3, "zc":J
    add-int/lit8 v5, v2, 0x8

    long-to-int v12, v3

    aput v12, p2, v5

    .line 651
    const/16 v5, 0x20

    ushr-long v23, v3, v5

    .line 621
    .end local v0    # "c":J
    .end local v3    # "zc":J
    .end local v14    # "x_i":J
    .restart local v23    # "zc":J
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v12, v19

    move-wide/from16 v14, v25

    move-wide/from16 v0, v29

    move-wide/from16 v4, v31

    goto/16 :goto_0

    .end local v19    # "y_5":J
    .end local v25    # "y_7":J
    .end local v29    # "y_0":J
    .end local v31    # "y_1":J
    .local v0, "y_0":J
    .restart local v4    # "y_1":J
    .local v12, "y_5":J
    .local v14, "y_7":J
    :cond_0
    move-wide/from16 v29, v0

    move-wide/from16 v19, v12

    move-wide/from16 v12, v23

    .line 653
    .end local v0    # "y_0":J
    .end local v2    # "i":I
    .end local v23    # "zc":J
    .local v12, "zc":J
    .restart local v19    # "y_5":J
    .restart local v29    # "y_0":J
    long-to-int v0, v12

    return v0
.end method

.method public static blacklist mulByWord(I[I)I
    .locals 10
    .param p0, "x"    # I
    .param p1, "z"    # [I

    .line 747
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 748
    .local v2, "xVal":J
    const/4 v6, 0x0

    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-long/2addr v0, v7

    .line 749
    long-to-int v7, v0

    aput v7, p1, v6

    .line 750
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 751
    const/4 v7, 0x1

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    add-long/2addr v0, v8

    .line 752
    long-to-int v8, v0

    aput v8, p1, v7

    .line 753
    ushr-long/2addr v0, v6

    .line 754
    const/4 v7, 0x2

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    add-long/2addr v0, v8

    .line 755
    long-to-int v8, v0

    aput v8, p1, v7

    .line 756
    ushr-long/2addr v0, v6

    .line 757
    const/4 v7, 0x3

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    add-long/2addr v0, v8

    .line 758
    long-to-int v8, v0

    aput v8, p1, v7

    .line 759
    ushr-long/2addr v0, v6

    .line 760
    const/4 v7, 0x4

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    add-long/2addr v0, v8

    .line 761
    long-to-int v8, v0

    aput v8, p1, v7

    .line 762
    ushr-long/2addr v0, v6

    .line 763
    const/4 v7, 0x5

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    add-long/2addr v0, v8

    .line 764
    long-to-int v8, v0

    aput v8, p1, v7

    .line 765
    ushr-long/2addr v0, v6

    .line 766
    const/4 v7, 0x6

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    add-long/2addr v0, v8

    .line 767
    long-to-int v8, v0

    aput v8, p1, v7

    .line 768
    ushr-long/2addr v0, v6

    .line 769
    const/4 v7, 0x7

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v4, v8

    mul-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 770
    long-to-int v4, v0

    aput v4, p1, v7

    .line 771
    ushr-long/2addr v0, v6

    .line 772
    long-to-int v4, v0

    return v4
.end method

.method public static blacklist mulByWordAddTo(I[I[I)I
    .locals 12
    .param p0, "x"    # I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 777
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 778
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

    .line 779
    long-to-int v7, v0

    aput v7, p2, v6

    .line 780
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 781
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

    .line 782
    long-to-int v8, v0

    aput v8, p2, v7

    .line 783
    ushr-long/2addr v0, v6

    .line 784
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

    .line 785
    long-to-int v8, v0

    aput v8, p2, v7

    .line 786
    ushr-long/2addr v0, v6

    .line 787
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

    .line 788
    long-to-int v8, v0

    aput v8, p2, v7

    .line 789
    ushr-long/2addr v0, v6

    .line 790
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

    .line 791
    long-to-int v8, v0

    aput v8, p2, v7

    .line 792
    ushr-long/2addr v0, v6

    .line 793
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

    .line 794
    long-to-int v8, v0

    aput v8, p2, v7

    .line 795
    ushr-long/2addr v0, v6

    .line 796
    const/4 v7, 0x6

    aget v8, p2, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    aget v10, p1, v7

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 797
    long-to-int v8, v0

    aput v8, p2, v7

    .line 798
    ushr-long/2addr v0, v6

    .line 799
    const/4 v7, 0x7

    aget v8, p2, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    aget v10, p1, v7

    int-to-long v10, v10

    and-long/2addr v4, v10

    add-long/2addr v8, v4

    add-long/2addr v0, v8

    .line 800
    long-to-int v4, v0

    aput v4, p2, v7

    .line 801
    ushr-long/2addr v0, v6

    .line 802
    long-to-int v4, v0

    return v4
.end method

.method public static blacklist mulWord(I[I[II)I
    .locals 9
    .param p0, "x"    # I
    .param p1, "y"    # [I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .line 894
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 895
    .local v2, "xVal":J
    const/4 v6, 0x0

    .line 898
    .local v6, "i":I
    :goto_0
    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-long/2addr v0, v7

    .line 899
    add-int v7, p3, v6

    long-to-int v8, v0

    aput v8, p2, v7

    .line 900
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 902
    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x8

    if-lt v6, v7, :cond_0

    .line 903
    long-to-int v4, v0

    return v4

    .line 902
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

    .line 807
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 808
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

    .line 809
    add-int/lit8 v6, p4, 0x0

    long-to-int v7, v0

    aput v7, p3, v6

    .line 810
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 811
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

    .line 812
    add-int/lit8 v7, p4, 0x1

    long-to-int v8, v0

    aput v8, p3, v7

    .line 813
    ushr-long/2addr v0, v6

    .line 814
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

    .line 815
    add-int/lit8 v7, p4, 0x2

    long-to-int v8, v0

    aput v8, p3, v7

    .line 816
    ushr-long/2addr v0, v6

    .line 817
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

    .line 818
    add-int/lit8 v7, p4, 0x3

    long-to-int v8, v0

    aput v8, p3, v7

    .line 819
    ushr-long/2addr v0, v6

    .line 820
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

    .line 821
    add-int/lit8 v7, p4, 0x4

    long-to-int v8, v0

    aput v8, p3, v7

    .line 822
    ushr-long/2addr v0, v6

    .line 823
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

    .line 824
    add-int/lit8 v7, p4, 0x5

    long-to-int v8, v0

    aput v8, p3, v7

    .line 825
    ushr-long/2addr v0, v6

    .line 826
    add-int/lit8 v7, p2, 0x6

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int/lit8 v9, p4, 0x6

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 827
    add-int/lit8 v7, p4, 0x6

    long-to-int v8, v0

    aput v8, p3, v7

    .line 828
    ushr-long/2addr v0, v6

    .line 829
    add-int/lit8 v7, p2, 0x7

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int/lit8 v9, p4, 0x7

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v4, v9

    add-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 830
    add-int/lit8 v4, p4, 0x7

    long-to-int v5, v0

    aput v5, p3, v4

    .line 831
    ushr-long/2addr v0, v6

    .line 832
    long-to-int v4, v0

    return v4
.end method

.method public static blacklist mulWordDwordAdd(IJ[II)I
    .locals 11
    .param p0, "x"    # I
    .param p1, "y"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .line 879
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 880
    .local v2, "xVal":J
    and-long v6, p1, v4

    mul-long/2addr v6, v2

    add-int/lit8 v8, p4, 0x0

    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 881
    add-int/lit8 v6, p4, 0x0

    long-to-int v7, v0

    aput v7, p3, v6

    .line 882
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 883
    ushr-long v7, p1, v6

    mul-long/2addr v7, v2

    add-int/lit8 v9, p4, 0x1

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 884
    add-int/lit8 v7, p4, 0x1

    long-to-int v8, v0

    aput v8, p3, v7

    .line 885
    ushr-long/2addr v0, v6

    .line 886
    add-int/lit8 v7, p4, 0x2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v4, v7

    add-long/2addr v0, v4

    .line 887
    add-int/lit8 v4, p4, 0x2

    long-to-int v5, v0

    aput v5, p3, v4

    .line 888
    ushr-long/2addr v0, v6

    .line 889
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    const/4 v5, 0x3

    invoke-static {v4, p3, p4, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v4

    :goto_0
    return v4
.end method

.method public static blacklist square([II[II)V
    .locals 53
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "zz"    # [I
    .param p3, "zzOff"    # I

    .line 1072
    add-int/lit8 v0, p1, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 1075
    .local v0, "x_0":J
    const/4 v4, 0x0

    .line 1077
    .local v4, "c":I
    const/4 v5, 0x7

    .local v5, "i":I
    const/16 v6, 0x10

    .line 1080
    .local v6, "j":I
    :goto_0
    add-int/lit8 v7, v5, -0x1

    .end local v5    # "i":I
    .local v7, "i":I
    add-int v5, p1, v5

    aget v5, p0, v5

    int-to-long v8, v5

    and-long/2addr v8, v2

    .line 1081
    .local v8, "xVal":J
    mul-long v10, v8, v8

    .line 1082
    .local v10, "p":J
    add-int/lit8 v6, v6, -0x1

    add-int v5, p3, v6

    shl-int/lit8 v12, v4, 0x1f

    const/16 v13, 0x21

    ushr-long v14, v10, v13

    long-to-int v14, v14

    or-int/2addr v12, v14

    aput v12, p2, v5

    .line 1083
    add-int/lit8 v6, v6, -0x1

    add-int v5, p3, v6

    const/4 v12, 0x1

    ushr-long v14, v10, v12

    long-to-int v14, v14

    aput v14, p2, v5

    .line 1084
    long-to-int v4, v10

    .line 1086
    .end local v8    # "xVal":J
    .end local v10    # "p":J
    if-gtz v7, :cond_0

    .line 1089
    mul-long v8, v0, v0

    .line 1090
    .local v8, "p":J
    shl-int/lit8 v5, v4, 0x1f

    int-to-long v10, v5

    and-long/2addr v10, v2

    ushr-long v13, v8, v13

    or-long/2addr v10, v13

    .line 1091
    .local v10, "zz_1":J
    add-int/lit8 v5, p3, 0x0

    long-to-int v13, v8

    aput v13, p2, v5

    .line 1092
    const/16 v5, 0x20

    ushr-long v13, v8, v5

    long-to-int v13, v13

    and-int/lit8 v4, v13, 0x1

    .line 1096
    .end local v6    # "j":I
    .end local v7    # "i":I
    .end local v8    # "p":J
    add-int/lit8 v6, p1, 0x1

    aget v6, p0, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 1097
    .local v6, "x_1":J
    add-int/lit8 v8, p3, 0x2

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 1100
    .local v8, "zz_2":J
    mul-long v12, v6, v0

    add-long/2addr v10, v12

    .line 1101
    long-to-int v12, v10

    .line 1102
    .local v12, "w":I
    add-int/lit8 v13, p3, 0x1

    shl-int/lit8 v14, v12, 0x1

    or-int/2addr v14, v4

    aput v14, p2, v13

    .line 1103
    ushr-int/lit8 v4, v12, 0x1f

    .line 1104
    ushr-long v13, v10, v5

    add-long/2addr v8, v13

    .line 1107
    add-int/lit8 v13, p1, 0x2

    aget v13, p0, v13

    int-to-long v13, v13

    and-long/2addr v13, v2

    .line 1108
    .local v13, "x_2":J
    add-int/lit8 v15, p3, 0x3

    aget v15, p2, v15

    move-wide/from16 v17, v6

    .end local v6    # "x_1":J
    .local v17, "x_1":J
    int-to-long v5, v15

    and-long/2addr v5, v2

    .line 1109
    .local v5, "zz_3":J
    add-int/lit8 v7, p3, 0x4

    aget v7, p2, v7

    move-wide/from16 v19, v10

    .end local v10    # "zz_1":J
    .local v19, "zz_1":J
    int-to-long v10, v7

    and-long/2addr v10, v2

    .line 1111
    .local v10, "zz_4":J
    mul-long v21, v13, v0

    add-long v8, v8, v21

    .line 1112
    long-to-int v7, v8

    .line 1113
    .end local v12    # "w":I
    .local v7, "w":I
    add-int/lit8 v12, p3, 0x2

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 1114
    ushr-int/lit8 v4, v7, 0x1f

    .line 1115
    const/16 v12, 0x20

    ushr-long v15, v8, v12

    mul-long v21, v13, v17

    add-long v15, v15, v21

    add-long/2addr v5, v15

    .line 1116
    ushr-long v21, v5, v12

    add-long v10, v10, v21

    .line 1117
    and-long/2addr v5, v2

    .line 1120
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

    .line 1121
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

    .line 1122
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

    .line 1124
    .end local v12    # "zz_5":J
    .local v11, "zz_5":J
    mul-long v13, v7, v0

    add-long/2addr v5, v13

    .line 1125
    long-to-int v13, v5

    .line 1126
    .end local v25    # "w":I
    .local v13, "w":I
    add-int/lit8 v14, p3, 0x3

    shl-int/lit8 v15, v13, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v14

    .line 1127
    ushr-int/lit8 v4, v13, 0x1f

    .line 1128
    const/16 v14, 0x20

    ushr-long v15, v5, v14

    mul-long v28, v7, v17

    add-long v15, v15, v28

    add-long v15, v26, v15

    .line 1129
    .end local v26    # "zz_4":J
    .local v15, "zz_4":J
    ushr-long v25, v15, v14

    mul-long v27, v7, v23

    add-long v25, v25, v27

    add-long v11, v11, v25

    .line 1130
    and-long v25, v15, v2

    .line 1131
    .end local v15    # "zz_4":J
    .local v25, "zz_4":J
    ushr-long v27, v11, v14

    add-long v9, v9, v27

    .line 1132
    and-long/2addr v11, v2

    .line 1135
    add-int/lit8 v14, p1, 0x4

    aget v14, p0, v14

    int-to-long v14, v14

    and-long/2addr v14, v2

    .line 1136
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

    .line 1137
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

    .line 1139
    mul-long v33, v14, v0

    add-long v2, v25, v33

    .line 1140
    .end local v25    # "zz_4":J
    .local v2, "zz_4":J
    long-to-int v13, v2

    .line 1141
    .end local v30    # "w":I
    .restart local v13    # "w":I
    add-int/lit8 v25, p3, 0x4

    shl-int/lit8 v26, v13, 0x1

    or-int v26, v26, v4

    aput v26, p2, v25

    .line 1142
    ushr-int/lit8 v4, v13, 0x1f

    .line 1143
    const/16 v16, 0x20

    ushr-long v25, v2, v16

    mul-long v33, v14, v17

    add-long v25, v25, v33

    add-long v11, v11, v25

    .line 1144
    ushr-long v25, v11, v16

    mul-long v33, v14, v23

    add-long v25, v25, v33

    add-long v9, v9, v25

    .line 1145
    const-wide v25, 0xffffffffL

    and-long v11, v11, v25

    .line 1146
    ushr-long v33, v9, v16

    mul-long v35, v14, v31

    add-long v33, v33, v35

    add-long v5, v5, v33

    .line 1147
    and-long v9, v9, v25

    .line 1148
    ushr-long v33, v5, v16

    add-long v7, v7, v33

    .line 1149
    and-long v5, v5, v25

    .line 1152
    add-int/lit8 v27, p1, 0x5

    move-wide/from16 v33, v2

    .end local v2    # "zz_4":J
    .local v33, "zz_4":J
    aget v2, p0, v27

    int-to-long v2, v2

    and-long v2, v2, v25

    .line 1153
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

    .line 1154
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

    .line 1156
    mul-long v25, v2, v0

    add-long v11, v11, v25

    .line 1157
    long-to-int v15, v11

    .line 1158
    .end local v30    # "w":I
    .local v15, "w":I
    add-int/lit8 v25, p3, 0x5

    shl-int/lit8 v26, v15, 0x1

    or-int v26, v26, v4

    aput v26, p2, v25

    .line 1159
    ushr-int/lit8 v4, v15, 0x1f

    .line 1160
    const/16 v16, 0x20

    ushr-long v25, v11, v16

    mul-long v41, v2, v17

    add-long v25, v25, v41

    add-long v9, v9, v25

    .line 1161
    ushr-long v25, v9, v16

    mul-long v41, v2, v23

    add-long v25, v25, v41

    add-long v5, v5, v25

    .line 1162
    const-wide v25, 0xffffffffL

    and-long v9, v9, v25

    .line 1163
    ushr-long v35, v5, v16

    mul-long v41, v2, v31

    add-long v35, v35, v41

    add-long v35, v39, v35

    .line 1164
    .end local v39    # "zz_8":J
    .local v35, "zz_8":J
    and-long v5, v5, v25

    .line 1165
    ushr-long v39, v35, v16

    mul-long v41, v2, v37

    add-long v39, v39, v41

    add-long v13, v13, v39

    .line 1166
    and-long v39, v35, v25

    .line 1167
    .end local v35    # "zz_8":J
    .restart local v39    # "zz_8":J
    ushr-long v35, v13, v16

    add-long v7, v7, v35

    .line 1168
    and-long v13, v13, v25

    .line 1171
    add-int/lit8 v27, p1, 0x6

    move-wide/from16 v41, v11

    .end local v11    # "zz_5":J
    .local v41, "zz_5":J
    aget v11, p0, v27

    int-to-long v11, v11

    and-long v11, v11, v25

    .line 1172
    .local v11, "x_6":J
    add-int/lit8 v27, p3, 0xb

    move/from16 v30, v15

    .end local v15    # "w":I
    .restart local v30    # "w":I
    aget v15, p2, v27

    move-wide/from16 v43, v2

    .end local v2    # "x_5":J
    .local v43, "x_5":J
    int-to-long v2, v15

    and-long v2, v2, v25

    const/16 v15, 0x20

    ushr-long v35, v7, v15

    add-long v2, v2, v35

    .local v2, "zz_11":J
    and-long v7, v7, v25

    .line 1173
    add-int/lit8 v16, p3, 0xc

    aget v15, p2, v16

    move-wide/from16 v45, v7

    .end local v7    # "zz_10":J
    .local v45, "zz_10":J
    int-to-long v7, v15

    and-long v7, v7, v25

    const/16 v15, 0x20

    ushr-long v35, v2, v15

    add-long v7, v7, v35

    .local v7, "zz_12":J
    and-long v2, v2, v25

    .line 1175
    mul-long v25, v11, v0

    add-long v9, v9, v25

    .line 1176
    long-to-int v15, v9

    .line 1177
    .end local v30    # "w":I
    .restart local v15    # "w":I
    add-int/lit8 v25, p3, 0x6

    shl-int/lit8 v26, v15, 0x1

    or-int v26, v26, v4

    aput v26, p2, v25

    .line 1178
    ushr-int/lit8 v4, v15, 0x1f

    .line 1179
    const/16 v16, 0x20

    ushr-long v25, v9, v16

    mul-long v47, v11, v17

    add-long v25, v25, v47

    add-long v5, v5, v25

    .line 1180
    ushr-long v25, v5, v16

    mul-long v47, v11, v23

    add-long v25, v25, v47

    add-long v39, v39, v25

    .line 1181
    const-wide v25, 0xffffffffL

    and-long v5, v5, v25

    .line 1182
    ushr-long v35, v39, v16

    mul-long v47, v11, v31

    add-long v35, v35, v47

    add-long v13, v13, v35

    .line 1183
    and-long v35, v39, v25

    .line 1184
    .end local v39    # "zz_8":J
    .restart local v35    # "zz_8":J
    ushr-long v39, v13, v16

    mul-long v47, v11, v37

    add-long v39, v39, v47

    add-long v39, v45, v39

    .line 1185
    .end local v45    # "zz_10":J
    .local v39, "zz_10":J
    and-long v13, v13, v25

    .line 1186
    ushr-long v45, v39, v16

    mul-long v47, v11, v43

    add-long v45, v45, v47

    add-long v2, v2, v45

    .line 1187
    and-long v39, v39, v25

    .line 1188
    ushr-long v45, v2, v16

    add-long v7, v7, v45

    .line 1189
    and-long v2, v2, v25

    .line 1192
    add-int/lit8 v27, p1, 0x7

    move-wide/from16 v45, v9

    .end local v9    # "zz_6":J
    .local v45, "zz_6":J
    aget v9, p0, v27

    int-to-long v9, v9

    and-long v9, v9, v25

    .line 1193
    .local v9, "x_7":J
    add-int/lit8 v27, p3, 0xd

    move/from16 v30, v15

    .end local v15    # "w":I
    .restart local v30    # "w":I
    aget v15, p2, v27

    move-wide/from16 v47, v11

    .end local v11    # "x_6":J
    .local v47, "x_6":J
    int-to-long v11, v15

    and-long v11, v11, v25

    const/16 v15, 0x20

    ushr-long v49, v7, v15

    add-long v11, v11, v49

    .local v11, "zz_13":J
    and-long v7, v7, v25

    .line 1194
    add-int/lit8 v16, p3, 0xe

    aget v15, p2, v16

    move-wide/from16 v49, v7

    .end local v7    # "zz_12":J
    .local v49, "zz_12":J
    int-to-long v7, v15

    and-long v7, v7, v25

    const/16 v15, 0x20

    ushr-long v51, v11, v15

    add-long v7, v7, v51

    .local v7, "zz_14":J
    and-long v11, v11, v25

    .line 1196
    mul-long v25, v9, v0

    add-long v5, v5, v25

    .line 1197
    long-to-int v15, v5

    .line 1198
    .end local v30    # "w":I
    .restart local v15    # "w":I
    add-int/lit8 v25, p3, 0x7

    shl-int/lit8 v26, v15, 0x1

    or-int v26, v26, v4

    aput v26, p2, v25

    .line 1199
    ushr-int/lit8 v4, v15, 0x1f

    .line 1200
    const/16 v16, 0x20

    ushr-long v25, v5, v16

    mul-long v51, v9, v17

    add-long v25, v25, v51

    move-wide/from16 v51, v0

    .end local v0    # "x_0":J
    .local v51, "x_0":J
    add-long v0, v35, v25

    .line 1201
    .end local v35    # "zz_8":J
    .local v0, "zz_8":J
    ushr-long v25, v0, v16

    mul-long v35, v9, v23

    add-long v25, v25, v35

    add-long v13, v13, v25

    .line 1202
    ushr-long v25, v13, v16

    mul-long v35, v9, v31

    add-long v25, v25, v35

    move-wide/from16 v35, v5

    .end local v5    # "zz_7":J
    .local v35, "zz_7":J
    add-long v5, v39, v25

    .line 1203
    .end local v39    # "zz_10":J
    .local v5, "zz_10":J
    ushr-long v25, v5, v16

    mul-long v39, v9, v37

    add-long v25, v25, v39

    add-long v2, v2, v25

    .line 1204
    ushr-long v25, v2, v16

    mul-long v39, v9, v43

    add-long v25, v25, v39

    move-wide/from16 v39, v2

    .end local v2    # "zz_11":J
    .local v39, "zz_11":J
    add-long v2, v49, v25

    .line 1205
    .end local v49    # "zz_12":J
    .local v2, "zz_12":J
    ushr-long v25, v2, v16

    mul-long v49, v9, v47

    add-long v25, v25, v49

    add-long v11, v11, v25

    .line 1206
    ushr-long v25, v11, v16

    add-long v7, v7, v25

    .line 1209
    long-to-int v15, v0

    .line 1210
    add-int/lit8 v25, p3, 0x8

    shl-int/lit8 v26, v15, 0x1

    or-int v26, v26, v4

    aput v26, p2, v25

    .line 1211
    ushr-int/lit8 v4, v15, 0x1f

    .line 1212
    long-to-int v15, v13

    .line 1213
    add-int/lit8 v25, p3, 0x9

    shl-int/lit8 v26, v15, 0x1

    or-int v26, v26, v4

    aput v26, p2, v25

    .line 1214
    ushr-int/lit8 v4, v15, 0x1f

    .line 1215
    long-to-int v15, v5

    .line 1216
    add-int/lit8 v25, p3, 0xa

    shl-int/lit8 v26, v15, 0x1

    or-int v26, v26, v4

    aput v26, p2, v25

    .line 1217
    ushr-int/lit8 v4, v15, 0x1f

    .line 1218
    move-wide/from16 v25, v0

    move-wide/from16 v0, v39

    .end local v39    # "zz_11":J
    .local v0, "zz_11":J
    .local v25, "zz_8":J
    long-to-int v15, v0

    .line 1219
    add-int/lit8 v27, p3, 0xb

    shl-int/lit8 v30, v15, 0x1

    or-int v30, v30, v4

    aput v30, p2, v27

    .line 1220
    ushr-int/lit8 v4, v15, 0x1f

    .line 1221
    long-to-int v15, v2

    .line 1222
    add-int/lit8 v27, p3, 0xc

    shl-int/lit8 v30, v15, 0x1

    or-int v30, v30, v4

    aput v30, p2, v27

    .line 1223
    ushr-int/lit8 v4, v15, 0x1f

    .line 1224
    long-to-int v15, v11

    .line 1225
    add-int/lit8 v27, p3, 0xd

    shl-int/lit8 v30, v15, 0x1

    or-int v30, v30, v4

    aput v30, p2, v27

    .line 1226
    ushr-int/lit8 v4, v15, 0x1f

    .line 1227
    long-to-int v15, v7

    .line 1228
    add-int/lit8 v27, p3, 0xe

    shl-int/lit8 v30, v15, 0x1

    or-int v30, v30, v4

    aput v30, p2, v27

    .line 1229
    ushr-int/lit8 v4, v15, 0x1f

    .line 1230
    add-int/lit8 v27, p3, 0xf

    aget v27, p2, v27

    const/16 v16, 0x20

    .end local v0    # "zz_11":J
    .restart local v39    # "zz_11":J
    ushr-long v0, v7, v16

    long-to-int v0, v0

    add-int v27, v27, v0

    .line 1231
    .end local v15    # "w":I
    .local v27, "w":I
    add-int/lit8 v0, p3, 0xf

    shl-int/lit8 v1, v27, 0x1

    or-int/2addr v1, v4

    aput v1, p2, v0

    .line 1232
    return-void

    .line 1086
    .end local v2    # "zz_12":J
    .end local v5    # "zz_10":J
    .end local v9    # "x_7":J
    .end local v11    # "zz_13":J
    .end local v13    # "zz_9":J
    .end local v17    # "x_1":J
    .end local v19    # "zz_1":J
    .end local v21    # "zz_2":J
    .end local v23    # "x_2":J
    .end local v25    # "zz_8":J
    .end local v27    # "w":I
    .end local v28    # "zz_3":J
    .end local v31    # "x_3":J
    .end local v33    # "zz_4":J
    .end local v35    # "zz_7":J
    .end local v37    # "x_4":J
    .end local v39    # "zz_11":J
    .end local v41    # "zz_5":J
    .end local v43    # "x_5":J
    .end local v45    # "zz_6":J
    .end local v47    # "x_6":J
    .end local v51    # "x_0":J
    .local v0, "x_0":J
    .local v6, "j":I
    .local v7, "i":I
    :cond_0
    move-wide/from16 v51, v0

    move-wide/from16 v25, v2

    .end local v0    # "x_0":J
    .restart local v51    # "x_0":J
    move v5, v7

    goto/16 :goto_0
.end method

.method public static blacklist square([I[I)V
    .locals 60
    .param p0, "x"    # [I
    .param p1, "zz"    # [I

    .line 908
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 911
    .local v1, "x_0":J
    const/4 v5, 0x0

    .line 913
    .local v5, "c":I
    const/4 v6, 0x7

    .local v6, "i":I
    const/16 v7, 0x10

    .line 916
    .local v7, "j":I
    :goto_0
    add-int/lit8 v8, v6, -0x1

    .end local v6    # "i":I
    .local v8, "i":I
    aget v6, p0, v6

    int-to-long v9, v6

    and-long/2addr v9, v3

    .line 917
    .local v9, "xVal":J
    mul-long v11, v9, v9

    .line 918
    .local v11, "p":J
    add-int/lit8 v7, v7, -0x1

    shl-int/lit8 v6, v5, 0x1f

    const/16 v13, 0x21

    ushr-long v14, v11, v13

    long-to-int v14, v14

    or-int/2addr v6, v14

    aput v6, p1, v7

    .line 919
    add-int/lit8 v7, v7, -0x1

    const/4 v6, 0x1

    ushr-long v14, v11, v6

    long-to-int v14, v14

    aput v14, p1, v7

    .line 920
    long-to-int v5, v11

    .line 922
    .end local v9    # "xVal":J
    .end local v11    # "p":J
    if-gtz v8, :cond_0

    .line 925
    mul-long v9, v1, v1

    .line 926
    .local v9, "p":J
    shl-int/lit8 v11, v5, 0x1f

    int-to-long v11, v11

    and-long/2addr v11, v3

    ushr-long v13, v9, v13

    or-long/2addr v11, v13

    .line 927
    .local v11, "zz_1":J
    long-to-int v13, v9

    aput v13, p1, v0

    .line 928
    const/16 v0, 0x20

    ushr-long v13, v9, v0

    long-to-int v13, v13

    and-int/lit8 v5, v13, 0x1

    .line 932
    .end local v7    # "j":I
    .end local v8    # "i":I
    .end local v9    # "p":J
    aget v7, p0, v6

    int-to-long v7, v7

    and-long/2addr v7, v3

    .line 933
    .local v7, "x_1":J
    const/4 v9, 0x2

    aget v10, p1, v9

    int-to-long v13, v10

    and-long/2addr v13, v3

    .line 936
    .local v13, "zz_2":J
    mul-long v15, v7, v1

    add-long/2addr v11, v15

    .line 937
    long-to-int v10, v11

    .line 938
    .local v10, "w":I
    shl-int/lit8 v15, v10, 0x1

    or-int/2addr v15, v5

    aput v15, p1, v6

    .line 939
    ushr-int/lit8 v5, v10, 0x1f

    .line 940
    ushr-long v15, v11, v0

    add-long/2addr v13, v15

    .line 943
    aget v6, p0, v9

    move/from16 v16, v10

    .end local v10    # "w":I
    .local v16, "w":I
    int-to-long v9, v6

    and-long/2addr v9, v3

    .line 944
    .local v9, "x_2":J
    const/4 v6, 0x3

    aget v15, p1, v6

    move-wide/from16 v18, v7

    .end local v7    # "x_1":J
    .local v18, "x_1":J
    int-to-long v6, v15

    and-long/2addr v6, v3

    .line 945
    .local v6, "zz_3":J
    const/4 v15, 0x4

    aget v8, p1, v15

    move-wide/from16 v21, v1

    .end local v1    # "x_0":J
    .local v21, "x_0":J
    int-to-long v0, v8

    and-long/2addr v0, v3

    .line 947
    .local v0, "zz_4":J
    mul-long v23, v9, v21

    add-long v13, v13, v23

    .line 948
    long-to-int v8, v13

    .line 949
    .end local v16    # "w":I
    .local v8, "w":I
    shl-int/lit8 v16, v8, 0x1

    or-int v16, v16, v5

    const/16 v17, 0x2

    aput v16, p1, v17

    .line 950
    ushr-int/lit8 v5, v8, 0x1f

    .line 951
    const/16 v2, 0x20

    ushr-long v16, v13, v2

    mul-long v23, v9, v18

    add-long v16, v16, v23

    add-long v6, v6, v16

    .line 952
    ushr-long v16, v6, v2

    add-long v0, v0, v16

    .line 953
    and-long/2addr v6, v3

    .line 956
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

    .line 957
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

    .line 958
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

    .line 960
    mul-long v30, v8, v21

    add-long v6, v6, v30

    .line 961
    long-to-int v14, v6

    .line 962
    .end local v16    # "w":I
    .local v14, "w":I
    shl-int/lit8 v16, v14, 0x1

    or-int v16, v16, v5

    const/16 v20, 0x3

    aput v16, p1, v20

    .line 963
    ushr-int/lit8 v5, v14, 0x1f

    .line 964
    const/16 v2, 0x20

    ushr-long v30, v6, v2

    mul-long v32, v8, v18

    add-long v30, v30, v32

    add-long v0, v0, v30

    .line 965
    ushr-long v30, v0, v2

    mul-long v32, v8, v23

    add-long v30, v30, v32

    add-long v10, v10, v30

    .line 966
    and-long/2addr v0, v3

    .line 967
    ushr-long v30, v10, v2

    add-long v12, v12, v30

    .line 968
    and-long/2addr v10, v3

    .line 971
    aget v2, p0, v15

    move-wide/from16 v30, v6

    .end local v6    # "zz_3":J
    .local v30, "zz_3":J
    int-to-long v6, v2

    and-long/2addr v6, v3

    .line 972
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

    .line 973
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

    .line 975
    mul-long v36, v6, v21

    add-long v0, v0, v36

    .line 976
    long-to-int v2, v0

    .line 977
    .end local v35    # "w":I
    .local v2, "w":I
    shl-int/lit8 v35, v2, 0x1

    or-int v35, v35, v5

    const/16 v34, 0x4

    aput v35, p1, v34

    .line 978
    ushr-int/lit8 v5, v2, 0x1f

    .line 979
    const/16 v34, 0x20

    ushr-long v35, v0, v34

    mul-long v37, v6, v18

    add-long v35, v35, v37

    add-long v10, v10, v35

    .line 980
    ushr-long v35, v10, v34

    mul-long v37, v6, v23

    add-long v35, v35, v37

    add-long v12, v12, v35

    .line 981
    and-long/2addr v10, v3

    .line 982
    ushr-long v35, v12, v34

    mul-long v37, v6, v32

    add-long v35, v35, v37

    add-long v8, v8, v35

    .line 983
    and-long v35, v12, v3

    .line 984
    .end local v12    # "zz_6":J
    .local v35, "zz_6":J
    ushr-long v12, v8, v34

    add-long/2addr v14, v12

    .line 985
    and-long/2addr v8, v3

    .line 988
    const/4 v12, 0x5

    aget v13, p0, v12

    int-to-long v12, v13

    and-long/2addr v12, v3

    .line 989
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

    .line 990
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

    .line 992
    mul-long v44, v12, v21

    add-long v10, v10, v44

    .line 993
    long-to-int v2, v10

    .line 994
    .end local v41    # "w":I
    .restart local v2    # "w":I
    shl-int/lit8 v41, v2, 0x1

    or-int v41, v41, v5

    const/16 v27, 0x5

    aput v41, p1, v27

    .line 995
    ushr-int/lit8 v5, v2, 0x1f

    .line 996
    const/16 v27, 0x20

    ushr-long v44, v10, v27

    mul-long v46, v12, v18

    add-long v44, v44, v46

    add-long v35, v35, v44

    .line 997
    ushr-long v44, v35, v27

    mul-long v46, v12, v23

    add-long v44, v44, v46

    add-long v8, v8, v44

    .line 998
    and-long v34, v35, v3

    .line 999
    .end local v35    # "zz_6":J
    .local v34, "zz_6":J
    ushr-long v44, v8, v27

    mul-long v46, v12, v32

    add-long v44, v44, v46

    add-long v14, v14, v44

    .line 1000
    and-long/2addr v8, v3

    .line 1001
    ushr-long v44, v14, v27

    mul-long v46, v12, v42

    add-long v44, v44, v46

    add-long v0, v0, v44

    .line 1002
    and-long/2addr v14, v3

    .line 1003
    ushr-long v44, v0, v27

    add-long v6, v6, v44

    .line 1004
    and-long/2addr v0, v3

    .line 1007
    move/from16 v36, v2

    .end local v2    # "w":I
    .local v36, "w":I
    aget v2, p0, v17

    move-wide/from16 v44, v10

    .end local v10    # "zz_5":J
    .local v44, "zz_5":J
    int-to-long v10, v2

    and-long/2addr v10, v3

    .line 1008
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

    .line 1009
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
    and-long/2addr v12, v3

    .line 1011
    mul-long v51, v10, v21

    add-long v2, v34, v51

    .line 1012
    .end local v34    # "zz_6":J
    .local v2, "zz_6":J
    long-to-int v4, v2

    .line 1013
    .end local v36    # "w":I
    .local v4, "w":I
    shl-int/lit8 v34, v4, 0x1

    or-int v34, v34, v5

    aput v34, p1, v17

    .line 1014
    ushr-int/lit8 v5, v4, 0x1f

    .line 1015
    const/16 v17, 0x20

    ushr-long v34, v2, v17

    mul-long v51, v10, v18

    add-long v34, v34, v51

    add-long v8, v8, v34

    .line 1016
    ushr-long v34, v8, v17

    mul-long v51, v10, v23

    add-long v34, v34, v51

    add-long v14, v14, v34

    .line 1017
    const-wide v34, 0xffffffffL

    and-long v8, v8, v34

    .line 1018
    ushr-long v51, v14, v17

    mul-long v53, v10, v32

    add-long v51, v51, v53

    add-long v0, v0, v51

    .line 1019
    and-long v14, v14, v34

    .line 1020
    ushr-long v51, v0, v17

    mul-long v53, v10, v42

    add-long v51, v51, v53

    add-long v48, v49, v51

    .line 1021
    .end local v49    # "zz_10":J
    .local v48, "zz_10":J
    and-long v0, v0, v34

    .line 1022
    ushr-long v50, v48, v17

    mul-long v52, v10, v46

    add-long v50, v50, v52

    add-long v12, v12, v50

    .line 1023
    and-long v48, v48, v34

    .line 1024
    ushr-long v50, v12, v17

    add-long v6, v6, v50

    .line 1025
    and-long v12, v12, v34

    .line 1028
    move-wide/from16 v50, v2

    .end local v2    # "zz_6":J
    .local v50, "zz_6":J
    aget v2, p0, v20

    int-to-long v2, v2

    and-long v2, v2, v34

    .line 1029
    .local v2, "x_7":J
    const/16 v36, 0xd

    move/from16 v52, v4

    .end local v4    # "w":I
    .local v52, "w":I
    aget v4, p1, v36

    move-wide/from16 v53, v10

    .end local v10    # "x_6":J
    .local v53, "x_6":J
    int-to-long v10, v4

    and-long v10, v10, v34

    const/16 v4, 0x20

    ushr-long v55, v6, v4

    add-long v10, v10, v55

    .local v10, "zz_13":J
    and-long v6, v6, v34

    .line 1030
    const/16 v17, 0xe

    aget v4, p1, v17

    move-wide/from16 v56, v6

    .end local v6    # "zz_12":J
    .local v56, "zz_12":J
    int-to-long v6, v4

    and-long v6, v6, v34

    const/16 v4, 0x20

    ushr-long v58, v10, v4

    add-long v6, v6, v58

    .local v6, "zz_14":J
    and-long v10, v10, v34

    .line 1032
    mul-long v34, v2, v21

    add-long v8, v8, v34

    .line 1033
    long-to-int v4, v8

    .line 1034
    .end local v52    # "w":I
    .restart local v4    # "w":I
    shl-int/lit8 v34, v4, 0x1

    or-int v34, v34, v5

    aput v34, p1, v20

    .line 1035
    ushr-int/lit8 v5, v4, 0x1f

    .line 1036
    const/16 v20, 0x20

    ushr-long v34, v8, v20

    mul-long v58, v2, v18

    add-long v34, v34, v58

    add-long v14, v14, v34

    .line 1037
    ushr-long v34, v14, v20

    mul-long v58, v2, v23

    add-long v34, v34, v58

    add-long v0, v0, v34

    .line 1038
    ushr-long v34, v0, v20

    mul-long v58, v2, v32

    add-long v34, v34, v58

    move-wide/from16 v58, v8

    .end local v8    # "zz_7":J
    .local v58, "zz_7":J
    add-long v8, v48, v34

    .line 1039
    .end local v48    # "zz_10":J
    .local v8, "zz_10":J
    ushr-long v34, v8, v20

    mul-long v48, v2, v42

    add-long v34, v34, v48

    add-long v12, v12, v34

    .line 1040
    ushr-long v34, v12, v20

    mul-long v48, v2, v46

    add-long v34, v34, v48

    move-wide/from16 v48, v12

    .end local v12    # "zz_11":J
    .local v48, "zz_11":J
    add-long v12, v56, v34

    .line 1041
    .end local v56    # "zz_12":J
    .local v12, "zz_12":J
    ushr-long v34, v12, v20

    mul-long v55, v2, v53

    add-long v34, v34, v55

    add-long v10, v10, v34

    .line 1042
    ushr-long v34, v10, v20

    add-long v6, v6, v34

    .line 1045
    long-to-int v4, v14

    .line 1046
    shl-int/lit8 v34, v4, 0x1

    or-int v34, v34, v5

    aput v34, p1, v16

    .line 1047
    ushr-int/lit8 v5, v4, 0x1f

    .line 1048
    long-to-int v4, v0

    .line 1049
    shl-int/lit8 v16, v4, 0x1

    or-int v16, v16, v5

    aput v16, p1, v37

    .line 1050
    ushr-int/lit8 v5, v4, 0x1f

    .line 1051
    long-to-int v4, v8

    .line 1052
    shl-int/lit8 v16, v4, 0x1

    or-int v16, v16, v5

    aput v16, p1, v40

    .line 1053
    ushr-int/lit8 v5, v4, 0x1f

    .line 1054
    move-wide/from16 v34, v0

    move-wide/from16 v0, v48

    .end local v48    # "zz_11":J
    .local v0, "zz_11":J
    .local v34, "zz_9":J
    long-to-int v4, v0

    .line 1055
    shl-int/lit8 v16, v4, 0x1

    or-int v16, v16, v5

    aput v16, p1, v41

    .line 1056
    ushr-int/lit8 v5, v4, 0x1f

    .line 1057
    long-to-int v4, v12

    .line 1058
    shl-int/lit8 v16, v4, 0x1

    or-int v16, v16, v5

    aput v16, p1, v27

    .line 1059
    ushr-int/lit8 v5, v4, 0x1f

    .line 1060
    long-to-int v4, v10

    .line 1061
    shl-int/lit8 v16, v4, 0x1

    or-int v16, v16, v5

    aput v16, p1, v36

    .line 1062
    ushr-int/lit8 v5, v4, 0x1f

    .line 1063
    long-to-int v4, v6

    .line 1064
    shl-int/lit8 v16, v4, 0x1

    or-int v16, v16, v5

    aput v16, p1, v17

    .line 1065
    ushr-int/lit8 v5, v4, 0x1f

    .line 1066
    const/16 v16, 0xf

    aget v17, p1, v16

    const/16 v20, 0x20

    .end local v0    # "zz_11":J
    .restart local v48    # "zz_11":J
    ushr-long v0, v6, v20

    long-to-int v0, v0

    add-int v17, v17, v0

    .line 1067
    .end local v4    # "w":I
    .local v17, "w":I
    shl-int/lit8 v0, v17, 0x1

    or-int/2addr v0, v5

    aput v0, p1, v16

    .line 1068
    return-void

    .line 922
    .end local v2    # "x_7":J
    .end local v6    # "zz_14":J
    .end local v10    # "zz_13":J
    .end local v12    # "zz_12":J
    .end local v14    # "zz_8":J
    .end local v17    # "w":I
    .end local v18    # "x_1":J
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
    .end local v48    # "zz_11":J
    .end local v50    # "zz_6":J
    .end local v53    # "x_6":J
    .end local v58    # "zz_7":J
    .restart local v1    # "x_0":J
    .local v7, "j":I
    .local v8, "i":I
    :cond_0
    move-wide/from16 v21, v1

    move-wide/from16 v34, v3

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

    .line 1266
    const-wide/16 v0, 0x0

    .line 1267
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

    .line 1268
    add-int/lit8 v2, p5, 0x0

    long-to-int v3, v0

    aput v3, p4, v2

    .line 1269
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1270
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

    .line 1271
    add-int/lit8 v3, p5, 0x1

    long-to-int v6, v0

    aput v6, p4, v3

    .line 1272
    shr-long/2addr v0, v2

    .line 1273
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

    .line 1274
    add-int/lit8 v3, p5, 0x2

    long-to-int v6, v0

    aput v6, p4, v3

    .line 1275
    shr-long/2addr v0, v2

    .line 1276
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

    .line 1277
    add-int/lit8 v3, p5, 0x3

    long-to-int v6, v0

    aput v6, p4, v3

    .line 1278
    shr-long/2addr v0, v2

    .line 1279
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

    .line 1280
    add-int/lit8 v3, p5, 0x4

    long-to-int v6, v0

    aput v6, p4, v3

    .line 1281
    shr-long/2addr v0, v2

    .line 1282
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

    .line 1283
    add-int/lit8 v3, p5, 0x5

    long-to-int v6, v0

    aput v6, p4, v3

    .line 1284
    shr-long/2addr v0, v2

    .line 1285
    add-int/lit8 v3, p1, 0x6

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x6

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1286
    add-int/lit8 v3, p5, 0x6

    long-to-int v6, v0

    aput v6, p4, v3

    .line 1287
    shr-long/2addr v0, v2

    .line 1288
    add-int/lit8 v3, p1, 0x7

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x7

    aget v3, p2, v3

    int-to-long v8, v3

    and-long v3, v8, v4

    sub-long/2addr v6, v3

    add-long/2addr v0, v6

    .line 1289
    add-int/lit8 v3, p5, 0x7

    long-to-int v4, v0

    aput v4, p4, v3

    .line 1290
    shr-long/2addr v0, v2

    .line 1291
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist sub([I[I[I)I
    .locals 11
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 1236
    const-wide/16 v0, 0x0

    .line 1237
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

    .line 1238
    long-to-int v3, v0

    aput v3, p2, v2

    .line 1239
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1240
    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1241
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1242
    shr-long/2addr v0, v2

    .line 1243
    const/4 v3, 0x2

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1244
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1245
    shr-long/2addr v0, v2

    .line 1246
    const/4 v3, 0x3

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1247
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1248
    shr-long/2addr v0, v2

    .line 1249
    const/4 v3, 0x4

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1250
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1251
    shr-long/2addr v0, v2

    .line 1252
    const/4 v3, 0x5

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1253
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1254
    shr-long/2addr v0, v2

    .line 1255
    const/4 v3, 0x6

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1256
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1257
    shr-long/2addr v0, v2

    .line 1258
    const/4 v3, 0x7

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long v4, v9, v5

    sub-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 1259
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1260
    shr-long/2addr v0, v2

    .line 1261
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist subBothFrom([I[I[I)I
    .locals 11
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 1296
    const-wide/16 v0, 0x0

    .line 1297
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

    .line 1298
    long-to-int v3, v0

    aput v3, p2, v2

    .line 1299
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1300
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

    .line 1301
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1302
    shr-long/2addr v0, v2

    .line 1303
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

    .line 1304
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1305
    shr-long/2addr v0, v2

    .line 1306
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

    .line 1307
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1308
    shr-long/2addr v0, v2

    .line 1309
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

    .line 1310
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1311
    shr-long/2addr v0, v2

    .line 1312
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

    .line 1313
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1314
    shr-long/2addr v0, v2

    .line 1315
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

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1316
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1317
    shr-long/2addr v0, v2

    .line 1318
    const/4 v3, 0x7

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

    .line 1319
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1320
    shr-long/2addr v0, v2

    .line 1321
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist subFrom([II[II)I
    .locals 10
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .line 1356
    const-wide/16 v0, 0x0

    .line 1357
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

    .line 1358
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1359
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1360
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

    .line 1361
    add-int/lit8 v3, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1362
    shr-long/2addr v0, v2

    .line 1363
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

    .line 1364
    add-int/lit8 v3, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1365
    shr-long/2addr v0, v2

    .line 1366
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

    .line 1367
    add-int/lit8 v3, p3, 0x3

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1368
    shr-long/2addr v0, v2

    .line 1369
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

    .line 1370
    add-int/lit8 v3, p3, 0x4

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1371
    shr-long/2addr v0, v2

    .line 1372
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

    .line 1373
    add-int/lit8 v3, p3, 0x5

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1374
    shr-long/2addr v0, v2

    .line 1375
    add-int/lit8 v3, p3, 0x6

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x6

    aget v3, p0, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1376
    add-int/lit8 v3, p3, 0x6

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1377
    shr-long/2addr v0, v2

    .line 1378
    add-int/lit8 v3, p3, 0x7

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x7

    aget v3, p0, v3

    int-to-long v8, v3

    and-long v3, v8, v4

    sub-long/2addr v6, v3

    add-long/2addr v0, v6

    .line 1379
    add-int/lit8 v3, p3, 0x7

    long-to-int v4, v0

    aput v4, p2, v3

    .line 1380
    shr-long/2addr v0, v2

    .line 1381
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist subFrom([I[I)I
    .locals 11
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 1326
    const-wide/16 v0, 0x0

    .line 1327
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

    .line 1328
    long-to-int v3, v0

    aput v3, p1, v2

    .line 1329
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1330
    const/4 v3, 0x1

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1331
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1332
    shr-long/2addr v0, v2

    .line 1333
    const/4 v3, 0x2

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1334
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1335
    shr-long/2addr v0, v2

    .line 1336
    const/4 v3, 0x3

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1337
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1338
    shr-long/2addr v0, v2

    .line 1339
    const/4 v3, 0x4

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1340
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1341
    shr-long/2addr v0, v2

    .line 1342
    const/4 v3, 0x5

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1343
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1344
    shr-long/2addr v0, v2

    .line 1345
    const/4 v3, 0x6

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1346
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1347
    shr-long/2addr v0, v2

    .line 1348
    const/4 v3, 0x7

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long v4, v9, v5

    sub-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 1349
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1350
    shr-long/2addr v0, v2

    .line 1351
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist toBigInteger([I)Ljava/math/BigInteger;
    .locals 4
    .param p0, "x"    # [I

    .line 1386
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 1387
    .local v0, "bs":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 1389
    aget v2, p0, v1

    .line 1390
    .local v2, "x_i":I
    if-eqz v2, :cond_0

    .line 1392
    rsub-int/lit8 v3, v1, 0x7

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v2, v0, v3}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 1387
    .end local v2    # "x_i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1395
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public static blacklist toBigInteger64([J)Ljava/math/BigInteger;
    .locals 6
    .param p0, "x"    # [J

    .line 1400
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 1401
    .local v0, "bs":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 1403
    aget-wide v2, p0, v1

    .line 1404
    .local v2, "x_i":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 1406
    rsub-int/lit8 v4, v1, 0x3

    shl-int/lit8 v4, v4, 0x3

    invoke-static {v2, v3, v0, v4}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 1401
    .end local v2    # "x_i":J
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1409
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

    .line 1414
    const/4 v0, 0x0

    aput v0, p0, v0

    .line 1415
    const/4 v1, 0x1

    aput v0, p0, v1

    .line 1416
    const/4 v1, 0x2

    aput v0, p0, v1

    .line 1417
    const/4 v1, 0x3

    aput v0, p0, v1

    .line 1418
    const/4 v1, 0x4

    aput v0, p0, v1

    .line 1419
    const/4 v1, 0x5

    aput v0, p0, v1

    .line 1420
    const/4 v1, 0x6

    aput v0, p0, v1

    .line 1421
    const/4 v1, 0x7

    aput v0, p0, v1

    .line 1422
    return-void
.end method
