.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;
.super Ljava/lang/Object;
.source "SecP256R1Field.java"


# static fields
.field private static final blacklist M:J = 0xffffffffL

.field static final blacklist P:[I

.field private static final blacklist P7:I = -0x1

.field private static final blacklist PExt:[I

.field private static final blacklist PExt15s1:I = 0x7fffffff


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 20
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    .line 22
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        0x0
        0x0
        0x0
        0x1
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
        -0x2
        0x1
        -0x2
        0x1
        -0x2
        0x1
        0x1
        -0x2
        0x2
        -0x2
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

    .line 30
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    move-result v0

    .line 31
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x7

    aget v1, p2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p2, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    :cond_0
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    .line 35
    :cond_1
    return-void
.end method

.method public static blacklist addExt([I[I[I)V
    .locals 4
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    .line 39
    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v1

    .line 40
    .local v1, "c":I
    if-nez v1, :cond_0

    const/16 v2, 0xf

    aget v2, p2, v2

    ushr-int/lit8 v2, v2, 0x1

    const v3, 0x7fffffff

    if-lt v2, v3, :cond_1

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    :cond_0
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v0, v2, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    .line 44
    :cond_1
    return-void
.end method

.method public static blacklist addOne([I[I)V
    .locals 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 48
    const/16 v0, 0x8

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v0

    .line 49
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x7

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    :cond_0
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    .line 53
    :cond_1
    return-void
.end method

.method private static blacklist addPInvTo([I)V
    .locals 12
    .param p0, "z"    # [I

    .line 291
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    .line 292
    .local v1, "c":J
    long-to-int v7, v1

    aput v7, p0, v0

    .line 293
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 294
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_0

    .line 296
    const/4 v9, 0x1

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 297
    long-to-int v10, v1

    aput v10, p0, v9

    .line 298
    shr-long/2addr v1, v0

    .line 299
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 300
    long-to-int v10, v1

    aput v10, p0, v9

    .line 301
    shr-long/2addr v1, v0

    .line 303
    :cond_0
    const/4 v9, 0x3

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    sub-long/2addr v10, v5

    add-long/2addr v1, v10

    .line 304
    long-to-int v10, v1

    aput v10, p0, v9

    .line 305
    shr-long/2addr v1, v0

    .line 306
    cmp-long v7, v1, v7

    if-eqz v7, :cond_1

    .line 308
    const/4 v7, 0x4

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    .line 309
    long-to-int v8, v1

    aput v8, p0, v7

    .line 310
    shr-long/2addr v1, v0

    .line 311
    const/4 v7, 0x5

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    .line 312
    long-to-int v8, v1

    aput v8, p0, v7

    .line 313
    shr-long/2addr v1, v0

    .line 315
    :cond_1
    const/4 v7, 0x6

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v8, v5

    add-long/2addr v1, v8

    .line 316
    long-to-int v8, v1

    aput v8, p0, v7

    .line 317
    shr-long v0, v1, v0

    .line 318
    .end local v1    # "c":J
    .local v0, "c":J
    const/4 v2, 0x7

    aget v7, p0, v2

    int-to-long v7, v7

    and-long/2addr v3, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 319
    long-to-int v3, v0

    aput v3, p0, v2

    .line 321
    return-void
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 3
    .param p0, "x"    # Ljava/math/BigInteger;

    .line 57
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    .line 58
    .local v0, "z":[I
    const/4 v1, 0x7

    aget v1, v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->subFrom([I[I)I

    .line 62
    :cond_0
    return-object v0
.end method

.method public static blacklist half([I[I)V
    .locals 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 67
    const/4 v0, 0x0

    aget v1, p0, v0

    and-int/lit8 v1, v1, 0x1

    const/16 v2, 0x8

    if-nez v1, :cond_0

    .line 69
    invoke-static {v2, p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    goto :goto_0

    .line 73
    :cond_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    move-result v0

    .line 74
    .local v0, "c":I
    invoke-static {v2, p1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    .line 76
    .end local v0    # "c":I
    :goto_0
    return-void
.end method

.method public static blacklist inv([I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 80
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->checkedModOddInverse([I[I[I)V

    .line 81
    return-void
.end method

.method public static blacklist isZero([I)I
    .locals 3
    .param p0, "x"    # [I

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 88
    aget v2, p0, v1

    or-int/2addr v0, v2

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    .end local v1    # "i":I
    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 91
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static blacklist multiply([I[I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 96
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 97
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    .line 98
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    .line 99
    return-void
.end method

.method public static blacklist multiplyAddToExt([I[I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .line 103
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->mulAddTo([I[I[I)I

    move-result v0

    .line 104
    .local v0, "c":I
    const/16 v1, 0x10

    if-nez v0, :cond_0

    const/16 v2, 0xf

    aget v2, p2, v2

    ushr-int/lit8 v2, v2, 0x1

    const v3, 0x7fffffff

    if-lt v2, v3, :cond_1

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v1, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    :cond_0
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v1, v2, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    .line 108
    :cond_1
    return-void
.end method

.method public static blacklist negate([I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 112
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->isZero([I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v0, v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    goto :goto_0

    .line 118
    :cond_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    .line 120
    :goto_0
    return-void
.end method

.method public static blacklist random(Ljava/security/SecureRandom;[I)V
    .locals 3
    .param p0, "r"    # Ljava/security/SecureRandom;
    .param p1, "z"    # [I

    .line 124
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 127
    .local v0, "bb":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 128
    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v0, v1, p1, v1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 130
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v2, p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->lessThan(I[I[I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    return-void

    .line 130
    :cond_0
    goto :goto_0
.end method

.method public static blacklist randomMult(Ljava/security/SecureRandom;[I)V
    .locals 1
    .param p0, "r"    # Ljava/security/SecureRandom;
    .param p1, "z"    # [I

    .line 137
    :goto_0
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->random(Ljava/security/SecureRandom;[I)V

    .line 139
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->isZero([I)I

    move-result v0

    if-nez v0, :cond_0

    .line 140
    return-void

    .line 139
    :cond_0
    goto :goto_0
.end method

.method public static blacklist reduce([I[I)V
    .locals 50
    .param p0, "xx"    # [I
    .param p1, "z"    # [I

    .line 144
    move-object/from16 v0, p1

    const/16 v1, 0x8

    aget v1, p0, v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .local v1, "xx08":J
    const/16 v5, 0x9

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    .local v5, "xx09":J
    const/16 v7, 0xa

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v3

    .local v7, "xx10":J
    const/16 v9, 0xb

    aget v9, p0, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    .line 145
    .local v9, "xx11":J
    const/16 v11, 0xc

    aget v11, p0, v11

    int-to-long v11, v11

    and-long/2addr v11, v3

    .local v11, "xx12":J
    const/16 v13, 0xd

    aget v13, p0, v13

    int-to-long v13, v13

    and-long/2addr v13, v3

    .local v13, "xx13":J
    const/16 v15, 0xe

    aget v15, p0, v15

    move-wide/from16 v16, v13

    .end local v13    # "xx13":J
    .local v16, "xx13":J
    int-to-long v13, v15

    and-long/2addr v13, v3

    .local v13, "xx14":J
    const/16 v15, 0xf

    aget v15, p0, v15

    move-wide/from16 v18, v13

    .end local v13    # "xx14":J
    .local v18, "xx14":J
    int-to-long v13, v15

    and-long/2addr v13, v3

    .line 147
    .local v13, "xx15":J
    const-wide/16 v20, 0x6

    .line 149
    .local v20, "n":J
    const-wide/16 v22, 0x6

    sub-long v1, v1, v22

    .line 151
    add-long v24, v1, v5

    .line 152
    .local v24, "t0":J
    add-long v26, v5, v7

    .line 153
    .local v26, "t1":J
    add-long v28, v7, v9

    sub-long v28, v28, v13

    .line 154
    .local v28, "t2":J
    add-long v30, v9, v11

    .line 155
    .local v30, "t3":J
    add-long v32, v11, v16

    .line 156
    .local v32, "t4":J
    add-long v34, v16, v18

    .line 157
    .local v34, "t5":J
    add-long v36, v18, v13

    .line 158
    .local v36, "t6":J
    sub-long v38, v34, v24

    .line 160
    .local v38, "t7":J
    const-wide/16 v40, 0x0

    .line 161
    .local v40, "cc":J
    const/4 v15, 0x0

    move-wide/from16 v42, v5

    .end local v5    # "xx09":J
    .local v42, "xx09":J
    aget v5, p0, v15

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long v5, v5, v30

    sub-long v5, v5, v38

    add-long v5, v40, v5

    .line 162
    .end local v40    # "cc":J
    .local v5, "cc":J
    long-to-int v3, v5

    aput v3, v0, v15

    .line 163
    const/16 v3, 0x20

    shr-long v4, v5, v3

    .line 164
    .end local v5    # "cc":J
    .local v4, "cc":J
    const/4 v6, 0x1

    aget v15, p0, v6

    move-wide/from16 v44, v7

    .end local v7    # "xx10":J
    .local v44, "xx10":J
    int-to-long v6, v15

    const-wide v40, 0xffffffffL

    and-long v6, v6, v40

    add-long v6, v6, v26

    sub-long v6, v6, v32

    sub-long v6, v6, v36

    add-long/2addr v4, v6

    .line 165
    long-to-int v6, v4

    const/4 v7, 0x1

    aput v6, v0, v7

    .line 166
    shr-long/2addr v4, v3

    .line 167
    const/4 v6, 0x2

    aget v7, p0, v6

    move-wide/from16 v46, v9

    .end local v9    # "xx11":J
    .local v46, "xx11":J
    int-to-long v8, v7

    const-wide v40, 0xffffffffL

    and-long v7, v8, v40

    add-long v7, v7, v28

    sub-long v7, v7, v34

    add-long/2addr v4, v7

    .line 168
    long-to-int v7, v4

    aput v7, v0, v6

    .line 169
    shr-long/2addr v4, v3

    .line 170
    const/4 v6, 0x3

    aget v7, p0, v6

    int-to-long v7, v7

    const-wide v40, 0xffffffffL

    and-long v48, v7, v40

    const/4 v7, 0x1

    shl-long v9, v30, v7

    add-long v48, v48, v9

    add-long v48, v48, v38

    sub-long v48, v48, v36

    add-long v4, v4, v48

    .line 171
    long-to-int v7, v4

    aput v7, v0, v6

    .line 172
    shr-long/2addr v4, v3

    .line 173
    const/4 v6, 0x4

    aget v7, p0, v6

    int-to-long v9, v7

    const-wide v40, 0xffffffffL

    and-long v9, v9, v40

    const/4 v7, 0x1

    shl-long v48, v32, v7

    add-long v9, v9, v48

    add-long v9, v9, v18

    sub-long v9, v9, v26

    add-long/2addr v4, v9

    .line 174
    long-to-int v7, v4

    aput v7, v0, v6

    .line 175
    shr-long/2addr v4, v3

    .line 176
    const/4 v6, 0x5

    aget v7, p0, v6

    int-to-long v9, v7

    const-wide v40, 0xffffffffL

    and-long v9, v9, v40

    const/4 v7, 0x1

    shl-long v48, v34, v7

    add-long v9, v9, v48

    sub-long v9, v9, v28

    add-long/2addr v4, v9

    .line 177
    long-to-int v7, v4

    aput v7, v0, v6

    .line 178
    shr-long/2addr v4, v3

    .line 179
    const/4 v6, 0x6

    aget v7, p0, v6

    int-to-long v9, v7

    const-wide v40, 0xffffffffL

    and-long v9, v9, v40

    const/4 v7, 0x1

    shl-long v48, v36, v7

    add-long v9, v9, v48

    add-long v9, v9, v38

    add-long/2addr v4, v9

    .line 180
    long-to-int v7, v4

    aput v7, v0, v6

    .line 181
    shr-long/2addr v4, v3

    .line 182
    const/4 v6, 0x7

    aget v7, p0, v6

    int-to-long v9, v7

    const-wide v40, 0xffffffffL

    and-long v9, v9, v40

    const/4 v7, 0x1

    shl-long v7, v13, v7

    add-long/2addr v9, v7

    add-long/2addr v9, v1

    sub-long v9, v9, v28

    sub-long v9, v9, v32

    add-long/2addr v4, v9

    .line 183
    long-to-int v7, v4

    aput v7, v0, v6

    .line 184
    shr-long v3, v4, v3

    .line 185
    .end local v4    # "cc":J
    .local v3, "cc":J
    add-long v3, v3, v22

    .line 189
    long-to-int v5, v3

    invoke-static {v5, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce32(I[I)V

    .line 190
    return-void
.end method

.method public static blacklist reduce32(I[I)V
    .locals 13
    .param p0, "x"    # I
    .param p1, "z"    # [I

    .line 194
    const-wide/16 v0, 0x0

    .line 196
    .local v0, "cc":J
    const/4 v2, 0x7

    const-wide/16 v3, 0x0

    if-eqz p0, :cond_2

    .line 198
    int-to-long v5, p0

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    .line 200
    .local v5, "xx08":J
    const/4 v9, 0x0

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v7

    add-long/2addr v10, v5

    add-long/2addr v0, v10

    .line 201
    long-to-int v10, v0

    aput v10, p1, v9

    .line 202
    const/16 v9, 0x20

    shr-long/2addr v0, v9

    .line 203
    cmp-long v10, v0, v3

    if-eqz v10, :cond_0

    .line 205
    const/4 v10, 0x1

    aget v11, p1, v10

    int-to-long v11, v11

    and-long/2addr v11, v7

    add-long/2addr v0, v11

    .line 206
    long-to-int v11, v0

    aput v11, p1, v10

    .line 207
    shr-long/2addr v0, v9

    .line 208
    const/4 v10, 0x2

    aget v11, p1, v10

    int-to-long v11, v11

    and-long/2addr v11, v7

    add-long/2addr v0, v11

    .line 209
    long-to-int v11, v0

    aput v11, p1, v10

    .line 210
    shr-long/2addr v0, v9

    .line 212
    :cond_0
    const/4 v10, 0x3

    aget v11, p1, v10

    int-to-long v11, v11

    and-long/2addr v11, v7

    sub-long/2addr v11, v5

    add-long/2addr v0, v11

    .line 213
    long-to-int v11, v0

    aput v11, p1, v10

    .line 214
    shr-long/2addr v0, v9

    .line 215
    cmp-long v10, v0, v3

    if-eqz v10, :cond_1

    .line 217
    const/4 v10, 0x4

    aget v11, p1, v10

    int-to-long v11, v11

    and-long/2addr v11, v7

    add-long/2addr v0, v11

    .line 218
    long-to-int v11, v0

    aput v11, p1, v10

    .line 219
    shr-long/2addr v0, v9

    .line 220
    const/4 v10, 0x5

    aget v11, p1, v10

    int-to-long v11, v11

    and-long/2addr v11, v7

    add-long/2addr v0, v11

    .line 221
    long-to-int v11, v0

    aput v11, p1, v10

    .line 222
    shr-long/2addr v0, v9

    .line 224
    :cond_1
    const/4 v10, 0x6

    aget v11, p1, v10

    int-to-long v11, v11

    and-long/2addr v11, v7

    sub-long/2addr v11, v5

    add-long/2addr v0, v11

    .line 225
    long-to-int v11, v0

    aput v11, p1, v10

    .line 226
    shr-long/2addr v0, v9

    .line 227
    aget v10, p1, v2

    int-to-long v10, v10

    and-long/2addr v7, v10

    add-long/2addr v7, v5

    add-long/2addr v0, v7

    .line 228
    long-to-int v7, v0

    aput v7, p1, v2

    .line 229
    shr-long/2addr v0, v9

    .line 234
    .end local v5    # "xx08":J
    :cond_2
    cmp-long v3, v0, v3

    if-nez v3, :cond_3

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 236
    :cond_3
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    .line 238
    :cond_4
    return-void
.end method

.method public static blacklist square([I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 242
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 243
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 244
    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    .line 245
    return-void
.end method

.method public static blacklist squareN([II[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I

    .line 251
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 252
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 253
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    .line 255
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 257
    invoke-static {p2, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 258
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    goto :goto_0

    .line 260
    :cond_0
    return-void
.end method

.method private static blacklist subPInvFrom([I)V
    .locals 12
    .param p0, "z"    # [I

    .line 325
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    .line 326
    .local v1, "c":J
    long-to-int v7, v1

    aput v7, p0, v0

    .line 327
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 328
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_0

    .line 330
    const/4 v9, 0x1

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 331
    long-to-int v10, v1

    aput v10, p0, v9

    .line 332
    shr-long/2addr v1, v0

    .line 333
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 334
    long-to-int v10, v1

    aput v10, p0, v9

    .line 335
    shr-long/2addr v1, v0

    .line 337
    :cond_0
    const/4 v9, 0x3

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v10, v5

    add-long/2addr v1, v10

    .line 338
    long-to-int v10, v1

    aput v10, p0, v9

    .line 339
    shr-long/2addr v1, v0

    .line 340
    cmp-long v7, v1, v7

    if-eqz v7, :cond_1

    .line 342
    const/4 v7, 0x4

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    .line 343
    long-to-int v8, v1

    aput v8, p0, v7

    .line 344
    shr-long/2addr v1, v0

    .line 345
    const/4 v7, 0x5

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    .line 346
    long-to-int v8, v1

    aput v8, p0, v7

    .line 347
    shr-long/2addr v1, v0

    .line 349
    :cond_1
    const/4 v7, 0x6

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v8, v5

    add-long/2addr v1, v8

    .line 350
    long-to-int v8, v1

    aput v8, p0, v7

    .line 351
    shr-long v0, v1, v0

    .line 352
    .end local v1    # "c":J
    .local v0, "c":J
    const/4 v2, 0x7

    aget v7, p0, v2

    int-to-long v7, v7

    and-long/2addr v3, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 353
    long-to-int v3, v0

    aput v3, p0, v2

    .line 355
    return-void
.end method

.method public static blacklist subtract([I[I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 264
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    move-result v0

    .line 265
    .local v0, "c":I
    if-eqz v0, :cond_0

    .line 267
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subPInvFrom([I)V

    .line 269
    :cond_0
    return-void
.end method

.method public static blacklist subtractExt([I[I[I)V
    .locals 3
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    .line 273
    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v1

    .line 274
    .local v1, "c":I
    if-eqz v1, :cond_0

    .line 276
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v0, v2, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    .line 278
    :cond_0
    return-void
.end method

.method public static blacklist twice([I[I)V
    .locals 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 282
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v0

    .line 283
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x7

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    :cond_0
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    .line 287
    :cond_1
    return-void
.end method
