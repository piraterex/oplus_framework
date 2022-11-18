.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;
.super Ljava/lang/Object;
.source "SecP224R1Field.java"


# static fields
.field private static final blacklist M:J = 0xffffffffL

.field static final blacklist P:[I

.field private static final blacklist P6:I = -0x1

.field private static final blacklist PExt:[I

.field private static final blacklist PExt13:I = -0x1

.field private static final blacklist PExtInv:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 20
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    .line 22
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExt:[I

    .line 24
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x0
        -0x2
        -0x1
        -0x1
        0x0
        0x2
        0x0
        0x0
        -0x2
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0x1
        -0x1
        0x1
        0x0
        0x0
        -0x1
        -0x3
        -0x1
        -0x1
        0x1
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist add([I[I[I)V
    .locals 3
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 31
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->add([I[I[I)I

    move-result v0

    .line 32
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x6

    aget v1, p2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {p2, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    :cond_0
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addPInvTo([I)V

    .line 36
    :cond_1
    return-void
.end method

.method public static blacklist addExt([I[I[I)V
    .locals 4
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    .line 40
    const/16 v0, 0xe

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v1

    .line 41
    .local v1, "c":I
    if-nez v1, :cond_0

    const/16 v2, 0xd

    aget v2, p2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExt:[I

    invoke-static {v0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    :cond_0
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    array-length v3, v2

    invoke-static {v3, v2, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v3

    if-eqz v3, :cond_1

    .line 45
    array-length v2, v2

    invoke-static {v0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 48
    :cond_1
    return-void
.end method

.method public static blacklist addOne([I[I)V
    .locals 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 52
    const/4 v0, 0x7

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v0

    .line 53
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x6

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    :cond_0
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addPInvTo([I)V

    .line 57
    :cond_1
    return-void
.end method

.method private static blacklist addPInvTo([I)V
    .locals 12
    .param p0, "z"    # [I

    .line 299
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    .line 300
    .local v1, "c":J
    long-to-int v7, v1

    aput v7, p0, v0

    .line 301
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 302
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_0

    .line 304
    const/4 v9, 0x1

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 305
    long-to-int v10, v1

    aput v10, p0, v9

    .line 306
    shr-long/2addr v1, v0

    .line 307
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 308
    long-to-int v10, v1

    aput v10, p0, v9

    .line 309
    shr-long/2addr v1, v0

    .line 311
    :cond_0
    const/4 v9, 0x3

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v3, v10

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 312
    long-to-int v3, v1

    aput v3, p0, v9

    .line 313
    shr-long v0, v1, v0

    .line 314
    .end local v1    # "c":J
    .local v0, "c":J
    cmp-long v2, v0, v7

    if-eqz v2, :cond_1

    .line 316
    const/4 v2, 0x7

    const/4 v3, 0x4

    invoke-static {v2, p0, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 318
    :cond_1
    return-void
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 3
    .param p0, "x"    # Ljava/math/BigInteger;

    .line 61
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    .line 62
    .local v0, "z":[I
    const/4 v1, 0x6

    aget v1, v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->subFrom([I[I)I

    .line 66
    :cond_0
    return-object v0
.end method

.method public static blacklist half([I[I)V
    .locals 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 71
    const/4 v0, 0x0

    aget v1, p0, v0

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x7

    if-nez v1, :cond_0

    .line 73
    invoke-static {v2, p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    goto :goto_0

    .line 77
    :cond_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->add([I[I[I)I

    move-result v0

    .line 78
    .local v0, "c":I
    invoke-static {v2, p1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    .line 80
    .end local v0    # "c":I
    :goto_0
    return-void
.end method

.method public static blacklist inv([I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 84
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->checkedModOddInverse([I[I[I)V

    .line 85
    return-void
.end method

.method public static blacklist isZero([I)I
    .locals 3
    .param p0, "x"    # [I

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    .line 92
    aget v2, p0, v1

    or-int/2addr v0, v2

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v1    # "i":I
    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 95
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static blacklist multiply([I[I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 100
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->createExt()[I

    move-result-object v0

    .line 101
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->mul([I[I[I)V

    .line 102
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce([I[I)V

    .line 103
    return-void
.end method

.method public static blacklist multiplyAddToExt([I[I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .line 107
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->mulAddTo([I[I[I)I

    move-result v0

    .line 108
    .local v0, "c":I
    const/16 v1, 0xe

    if-nez v0, :cond_0

    const/16 v2, 0xd

    aget v2, p2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExt:[I

    invoke-static {v1, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    :cond_0
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    array-length v3, v2

    invoke-static {v3, v2, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    array-length v2, v2

    invoke-static {v1, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 115
    :cond_1
    return-void
.end method

.method public static blacklist negate([I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 119
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->isZero([I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {v0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->sub([I[I[I)I

    goto :goto_0

    .line 125
    :cond_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->sub([I[I[I)I

    .line 127
    :goto_0
    return-void
.end method

.method public static blacklist random(Ljava/security/SecureRandom;[I)V
    .locals 3
    .param p0, "r"    # Ljava/security/SecureRandom;
    .param p1, "z"    # [I

    .line 131
    const/16 v0, 0x1c

    new-array v0, v0, [B

    .line 134
    .local v0, "bb":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 135
    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-static {v0, v1, p1, v1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 137
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {v2, p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->lessThan(I[I[I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    return-void

    .line 137
    :cond_0
    goto :goto_0
.end method

.method public static blacklist randomMult(Ljava/security/SecureRandom;[I)V
    .locals 1
    .param p0, "r"    # Ljava/security/SecureRandom;
    .param p1, "z"    # [I

    .line 144
    :goto_0
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->random(Ljava/security/SecureRandom;[I)V

    .line 146
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->isZero([I)I

    move-result v0

    if-nez v0, :cond_0

    .line 147
    return-void

    .line 146
    :cond_0
    goto :goto_0
.end method

.method public static blacklist reduce([I[I)V
    .locals 35
    .param p0, "xx"    # [I
    .param p1, "z"    # [I

    .line 151
    move-object/from16 v0, p1

    const/16 v1, 0xa

    aget v1, p0, v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .local v1, "xx10":J
    const/16 v5, 0xb

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    .local v5, "xx11":J
    const/16 v7, 0xc

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v3

    .local v7, "xx12":J
    const/16 v9, 0xd

    aget v9, p0, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    .line 153
    .local v9, "xx13":J
    const-wide/16 v11, 0x1

    .line 155
    .local v11, "n":J
    const/4 v13, 0x7

    aget v14, p0, v13

    int-to-long v14, v14

    and-long/2addr v14, v3

    add-long/2addr v14, v5

    const-wide/16 v16, 0x1

    sub-long v14, v14, v16

    .line 156
    .local v14, "t0":J
    const/16 v18, 0x8

    aget v13, p0, v18

    move-wide/from16 v19, v11

    .end local v11    # "n":J
    .local v19, "n":J
    int-to-long v11, v13

    and-long/2addr v11, v3

    add-long/2addr v11, v7

    .line 157
    .local v11, "t1":J
    const/16 v13, 0x9

    aget v13, p0, v13

    move-wide/from16 v21, v7

    .end local v7    # "xx12":J
    .local v21, "xx12":J
    int-to-long v7, v13

    and-long/2addr v7, v3

    add-long/2addr v7, v9

    .line 159
    .local v7, "t2":J
    const-wide/16 v23, 0x0

    .line 160
    .local v23, "cc":J
    const/4 v13, 0x0

    move-wide/from16 v25, v9

    .end local v9    # "xx13":J
    .local v25, "xx13":J
    aget v9, p0, v13

    int-to-long v9, v9

    and-long/2addr v9, v3

    sub-long/2addr v9, v14

    add-long v23, v23, v9

    .line 161
    and-long v9, v23, v3

    .line 162
    .local v9, "z0":J
    const/16 v18, 0x20

    shr-long v23, v23, v18

    .line 163
    const/16 v27, 0x1

    aget v13, p0, v27

    move-wide/from16 v29, v9

    .end local v9    # "z0":J
    .local v29, "z0":J
    int-to-long v9, v13

    and-long/2addr v9, v3

    sub-long/2addr v9, v11

    add-long v9, v23, v9

    .line 164
    .end local v23    # "cc":J
    .local v9, "cc":J
    long-to-int v13, v9

    aput v13, v0, v27

    .line 165
    shr-long v9, v9, v18

    .line 166
    const/4 v13, 0x2

    move-wide/from16 v23, v5

    .end local v5    # "xx11":J
    .local v23, "xx11":J
    aget v5, p0, v13

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v5, v7

    add-long/2addr v9, v5

    .line 167
    long-to-int v5, v9

    aput v5, v0, v13

    .line 168
    shr-long v5, v9, v18

    .line 169
    .end local v9    # "cc":J
    .local v5, "cc":J
    const/4 v9, 0x3

    aget v10, p0, v9

    int-to-long v9, v10

    and-long/2addr v9, v3

    add-long/2addr v9, v14

    sub-long/2addr v9, v1

    add-long/2addr v5, v9

    .line 170
    and-long v9, v5, v3

    .line 171
    .local v9, "z3":J
    shr-long v5, v5, v18

    .line 172
    const/4 v13, 0x4

    move-wide/from16 v31, v14

    .end local v14    # "t0":J
    .local v31, "t0":J
    aget v14, p0, v13

    int-to-long v14, v14

    and-long/2addr v14, v3

    add-long/2addr v14, v11

    sub-long v14, v14, v23

    add-long/2addr v5, v14

    .line 173
    long-to-int v14, v5

    aput v14, v0, v13

    .line 174
    shr-long v5, v5, v18

    .line 175
    const/4 v14, 0x5

    aget v15, p0, v14

    int-to-long v13, v15

    and-long/2addr v13, v3

    add-long/2addr v13, v7

    sub-long v13, v13, v21

    add-long/2addr v5, v13

    .line 176
    long-to-int v13, v5

    const/4 v14, 0x5

    aput v13, v0, v14

    .line 177
    shr-long v5, v5, v18

    .line 178
    const/4 v13, 0x6

    aget v14, p0, v13

    int-to-long v14, v14

    and-long/2addr v14, v3

    add-long/2addr v14, v1

    sub-long v14, v14, v25

    add-long/2addr v5, v14

    .line 179
    long-to-int v14, v5

    aput v14, v0, v13

    .line 180
    shr-long v5, v5, v18

    .line 181
    add-long v5, v5, v16

    .line 185
    add-long/2addr v9, v5

    .line 187
    sub-long v14, v29, v5

    .line 188
    .end local v29    # "z0":J
    .local v14, "z0":J
    long-to-int v13, v14

    const/16 v17, 0x0

    aput v13, v0, v17

    .line 189
    shr-long v5, v14, v18

    .line 190
    const-wide/16 v28, 0x0

    cmp-long v13, v5, v28

    if-eqz v13, :cond_0

    .line 192
    aget v13, v0, v27

    move-wide/from16 v33, v1

    .end local v1    # "xx10":J
    .local v33, "xx10":J
    int-to-long v1, v13

    and-long/2addr v1, v3

    add-long/2addr v5, v1

    .line 193
    long-to-int v1, v5

    aput v1, v0, v27

    .line 194
    shr-long v1, v5, v18

    .line 195
    .end local v5    # "cc":J
    .local v1, "cc":J
    const/4 v5, 0x2

    aget v6, v0, v5

    int-to-long v5, v6

    and-long/2addr v3, v5

    add-long v5, v1, v3

    .line 196
    .end local v1    # "cc":J
    .restart local v5    # "cc":J
    long-to-int v1, v5

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 197
    shr-long v1, v5, v18

    add-long/2addr v9, v1

    goto :goto_0

    .line 190
    .end local v33    # "xx10":J
    .local v1, "xx10":J
    :cond_0
    move-wide/from16 v33, v1

    .line 199
    .end local v1    # "xx10":J
    .restart local v33    # "xx10":J
    :goto_0
    long-to-int v1, v9

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 200
    shr-long v1, v9, v18

    .line 204
    .end local v5    # "cc":J
    .local v1, "cc":J
    cmp-long v3, v1, v28

    if-eqz v3, :cond_1

    const/4 v3, 0x7

    const/4 v4, 0x4

    invoke-static {v3, v0, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const/4 v3, 0x6

    aget v3, v0, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    .line 205
    invoke-static {v0, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 207
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addPInvTo([I)V

    .line 209
    :cond_3
    return-void
.end method

.method public static blacklist reduce32(I[I)V
    .locals 12
    .param p0, "x"    # I
    .param p1, "z"    # [I

    .line 213
    const-wide/16 v0, 0x0

    .line 215
    .local v0, "cc":J
    const-wide/16 v2, 0x0

    if-eqz p0, :cond_1

    .line 217
    int-to-long v4, p0

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    .line 219
    .local v4, "xx07":J
    const/4 v8, 0x0

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v6

    sub-long/2addr v9, v4

    add-long/2addr v0, v9

    .line 220
    long-to-int v9, v0

    aput v9, p1, v8

    .line 221
    const/16 v8, 0x20

    shr-long/2addr v0, v8

    .line 222
    cmp-long v9, v0, v2

    if-eqz v9, :cond_0

    .line 224
    const/4 v9, 0x1

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v6

    add-long/2addr v0, v10

    .line 225
    long-to-int v10, v0

    aput v10, p1, v9

    .line 226
    shr-long/2addr v0, v8

    .line 227
    const/4 v9, 0x2

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v6

    add-long/2addr v0, v10

    .line 228
    long-to-int v10, v0

    aput v10, p1, v9

    .line 229
    shr-long/2addr v0, v8

    .line 231
    :cond_0
    const/4 v9, 0x3

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v6, v10

    add-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 232
    long-to-int v6, v0

    aput v6, p1, v9

    .line 233
    shr-long/2addr v0, v8

    .line 238
    .end local v4    # "xx07":J
    :cond_1
    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    const/4 v2, 0x7

    const/4 v3, 0x4

    invoke-static {v2, p1, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x6

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    .line 239
    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 241
    :cond_3
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addPInvTo([I)V

    .line 243
    :cond_4
    return-void
.end method

.method public static blacklist square([I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 247
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->createExt()[I

    move-result-object v0

    .line 248
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->square([I[I)V

    .line 249
    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce([I[I)V

    .line 250
    return-void
.end method

.method public static blacklist squareN([II[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I

    .line 256
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->createExt()[I

    move-result-object v0

    .line 257
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->square([I[I)V

    .line 258
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce([I[I)V

    .line 260
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 262
    invoke-static {p2, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->square([I[I)V

    .line 263
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce([I[I)V

    goto :goto_0

    .line 265
    :cond_0
    return-void
.end method

.method private static blacklist subPInvFrom([I)V
    .locals 12
    .param p0, "z"    # [I

    .line 322
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    .line 323
    .local v1, "c":J
    long-to-int v7, v1

    aput v7, p0, v0

    .line 324
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 325
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_0

    .line 327
    const/4 v9, 0x1

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 328
    long-to-int v10, v1

    aput v10, p0, v9

    .line 329
    shr-long/2addr v1, v0

    .line 330
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 331
    long-to-int v10, v1

    aput v10, p0, v9

    .line 332
    shr-long/2addr v1, v0

    .line 334
    :cond_0
    const/4 v9, 0x3

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v3, v10

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 335
    long-to-int v3, v1

    aput v3, p0, v9

    .line 336
    shr-long v0, v1, v0

    .line 337
    .end local v1    # "c":J
    .local v0, "c":J
    cmp-long v2, v0, v7

    if-eqz v2, :cond_1

    .line 339
    const/4 v2, 0x7

    const/4 v3, 0x4

    invoke-static {v2, p0, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    .line 341
    :cond_1
    return-void
.end method

.method public static blacklist subtract([I[I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 269
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->sub([I[I[I)I

    move-result v0

    .line 270
    .local v0, "c":I
    if-eqz v0, :cond_0

    .line 272
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subPInvFrom([I)V

    .line 274
    :cond_0
    return-void
.end method

.method public static blacklist subtractExt([I[I[I)V
    .locals 4
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    .line 278
    const/16 v0, 0xe

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v1

    .line 279
    .local v1, "c":I
    if-eqz v1, :cond_0

    .line 281
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    array-length v3, v2

    invoke-static {v3, v2, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 283
    array-length v2, v2

    invoke-static {v0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    .line 286
    :cond_0
    return-void
.end method

.method public static blacklist twice([I[I)V
    .locals 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 290
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v0

    .line 291
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x6

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    :cond_0
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addPInvTo([I)V

    .line 295
    :cond_1
    return-void
.end method
