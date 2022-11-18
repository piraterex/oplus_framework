.class public Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;
.super Ljava/lang/Object;
.source "DESEngine.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;


# static fields
.field protected static final blacklist BLOCK_SIZE:I = 0x8

.field private static final blacklist SP1:[I

.field private static final blacklist SP2:[I

.field private static final blacklist SP3:[I

.field private static final blacklist SP4:[I

.field private static final blacklist SP5:[I

.field private static final blacklist SP6:[I

.field private static final blacklist SP7:[I

.field private static final blacklist SP8:[I

.field private static final blacklist bigbyte:[I

.field private static final blacklist bytebit:[S

.field private static final blacklist pc1:[B

.field private static final blacklist pc2:[B

.field private static final blacklist totrot:[B


# instance fields
.field private blacklist workingKey:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 110
    const/16 v0, 0x8

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->bytebit:[S

    .line 115
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->bigbyte:[I

    .line 129
    const/16 v0, 0x38

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->pc1:[B

    .line 137
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->totrot:[B

    .line 143
    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->pc2:[B

    .line 151
    const/16 v0, 0x40

    new-array v1, v0, [I

    fill-array-data v1, :array_5

    sput-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->SP1:[I

    .line 170
    new-array v1, v0, [I

    fill-array-data v1, :array_6

    sput-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->SP2:[I

    .line 189
    new-array v1, v0, [I

    fill-array-data v1, :array_7

    sput-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->SP3:[I

    .line 208
    new-array v1, v0, [I

    fill-array-data v1, :array_8

    sput-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->SP4:[I

    .line 227
    new-array v1, v0, [I

    fill-array-data v1, :array_9

    sput-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->SP5:[I

    .line 246
    new-array v1, v0, [I

    fill-array-data v1, :array_a

    sput-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->SP6:[I

    .line 265
    new-array v1, v0, [I

    fill-array-data v1, :array_b

    sput-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->SP7:[I

    .line 284
    new-array v0, v0, [I

    fill-array-data v0, :array_c

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->SP8:[I

    return-void

    :array_0
    .array-data 2
        0x80s
        0x40s
        0x20s
        0x10s
        0x8s
        0x4s
        0x2s
        0x1s
    .end array-data

    :array_1
    .array-data 4
        0x800000
        0x400000
        0x200000
        0x100000
        0x80000
        0x40000
        0x20000
        0x10000
        0x8000
        0x4000
        0x2000
        0x1000
        0x800
        0x400
        0x200
        0x100
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data

    :array_2
    .array-data 1
        0x38t
        0x30t
        0x28t
        0x20t
        0x18t
        0x10t
        0x8t
        0x0t
        0x39t
        0x31t
        0x29t
        0x21t
        0x19t
        0x11t
        0x9t
        0x1t
        0x3at
        0x32t
        0x2at
        0x22t
        0x1at
        0x12t
        0xat
        0x2t
        0x3bt
        0x33t
        0x2bt
        0x23t
        0x3et
        0x36t
        0x2et
        0x26t
        0x1et
        0x16t
        0xet
        0x6t
        0x3dt
        0x35t
        0x2dt
        0x25t
        0x1dt
        0x15t
        0xdt
        0x5t
        0x3ct
        0x34t
        0x2ct
        0x24t
        0x1ct
        0x14t
        0xct
        0x4t
        0x1bt
        0x13t
        0xbt
        0x3t
    .end array-data

    :array_3
    .array-data 1
        0x1t
        0x2t
        0x4t
        0x6t
        0x8t
        0xat
        0xct
        0xet
        0xft
        0x11t
        0x13t
        0x15t
        0x17t
        0x19t
        0x1bt
        0x1ct
    .end array-data

    :array_4
    .array-data 1
        0xdt
        0x10t
        0xat
        0x17t
        0x0t
        0x4t
        0x2t
        0x1bt
        0xet
        0x5t
        0x14t
        0x9t
        0x16t
        0x12t
        0xbt
        0x3t
        0x19t
        0x7t
        0xft
        0x6t
        0x1at
        0x13t
        0xct
        0x1t
        0x28t
        0x33t
        0x1et
        0x24t
        0x2et
        0x36t
        0x1dt
        0x27t
        0x32t
        0x2ct
        0x20t
        0x2ft
        0x2bt
        0x30t
        0x26t
        0x37t
        0x21t
        0x34t
        0x2dt
        0x29t
        0x31t
        0x23t
        0x1ct
        0x1ft
    .end array-data

    :array_5
    .array-data 4
        0x1010400
        0x0
        0x10000
        0x1010404
        0x1010004
        0x10404
        0x4
        0x10000
        0x400
        0x1010400
        0x1010404
        0x400
        0x1000404
        0x1010004
        0x1000000
        0x4
        0x404
        0x1000400
        0x1000400
        0x10400
        0x10400
        0x1010000
        0x1010000
        0x1000404
        0x10004
        0x1000004
        0x1000004
        0x10004
        0x0
        0x404
        0x10404
        0x1000000
        0x10000
        0x1010404
        0x4
        0x1010000
        0x1010400
        0x1000000
        0x1000000
        0x400
        0x1010004
        0x10000
        0x10400
        0x1000004
        0x400
        0x4
        0x1000404
        0x10404
        0x1010404
        0x10004
        0x1010000
        0x1000404
        0x1000004
        0x404
        0x10404
        0x1010400
        0x404
        0x1000400
        0x1000400
        0x0
        0x10004
        0x10400
        0x0
        0x1010004
    .end array-data

    :array_6
    .array-data 4
        -0x7fef7fe0
        -0x7fff8000
        0x8000
        0x108020
        0x100000
        0x20
        -0x7fefffe0
        -0x7fff7fe0
        -0x7fffffe0
        -0x7fef7fe0
        -0x7fef8000
        -0x80000000
        -0x7fff8000
        0x100000
        0x20
        -0x7fefffe0
        0x108000
        0x100020
        -0x7fff7fe0
        0x0
        -0x80000000
        0x8000
        0x108020
        -0x7ff00000
        0x100020
        -0x7fffffe0
        0x0
        0x108000
        0x8020
        -0x7fef8000
        -0x7ff00000
        0x8020
        0x0
        0x108020
        -0x7fefffe0
        0x100000
        -0x7fff7fe0
        -0x7ff00000
        -0x7fef8000
        0x8000
        -0x7ff00000
        -0x7fff8000
        0x20
        -0x7fef7fe0
        0x108020
        0x20
        0x8000
        -0x80000000
        0x8020
        -0x7fef8000
        0x100000
        -0x7fffffe0
        0x100020
        -0x7fff7fe0
        -0x7fffffe0
        0x100020
        0x108000
        0x0
        -0x7fff8000
        0x8020
        -0x80000000
        -0x7fefffe0
        -0x7fef7fe0
        0x108000
    .end array-data

    :array_7
    .array-data 4
        0x208
        0x8020200
        0x0
        0x8020008
        0x8000200
        0x0
        0x20208
        0x8000200
        0x20008
        0x8000008
        0x8000008
        0x20000
        0x8020208
        0x20008
        0x8020000
        0x208
        0x8000000
        0x8
        0x8020200
        0x200
        0x20200
        0x8020000
        0x8020008
        0x20208
        0x8000208
        0x20200
        0x20000
        0x8000208
        0x8
        0x8020208
        0x200
        0x8000000
        0x8020200
        0x8000000
        0x20008
        0x208
        0x20000
        0x8020200
        0x8000200
        0x0
        0x200
        0x20008
        0x8020208
        0x8000200
        0x8000008
        0x200
        0x0
        0x8020008
        0x8000208
        0x20000
        0x8000000
        0x8020208
        0x8
        0x20208
        0x20200
        0x8000008
        0x8020000
        0x8000208
        0x208
        0x8020000
        0x20208
        0x8
        0x8020008
        0x20200
    .end array-data

    :array_8
    .array-data 4
        0x802001
        0x2081
        0x2081
        0x80
        0x802080
        0x800081
        0x800001
        0x2001
        0x0
        0x802000
        0x802000
        0x802081
        0x81
        0x0
        0x800080
        0x800001
        0x1
        0x2000
        0x800000
        0x802001
        0x80
        0x800000
        0x2001
        0x2080
        0x800081
        0x1
        0x2080
        0x800080
        0x2000
        0x802080
        0x802081
        0x81
        0x800080
        0x800001
        0x802000
        0x802081
        0x81
        0x0
        0x0
        0x802000
        0x2080
        0x800080
        0x800081
        0x1
        0x802001
        0x2081
        0x2081
        0x80
        0x802081
        0x81
        0x1
        0x2000
        0x800001
        0x2001
        0x802080
        0x800081
        0x2001
        0x2080
        0x800000
        0x802001
        0x80
        0x800000
        0x2000
        0x802080
    .end array-data

    :array_9
    .array-data 4
        0x100
        0x2080100
        0x2080000
        0x42000100    # 32.000977f
        0x80000
        0x100
        0x40000000    # 2.0f
        0x2080000
        0x40080100
        0x80000
        0x2000100
        0x40080100
        0x42000100    # 32.000977f
        0x42080000    # 34.0f
        0x80100
        0x40000000    # 2.0f
        0x2000000
        0x40080000    # 2.125f
        0x40080000    # 2.125f
        0x0
        0x40000100    # 2.000061f
        0x42080100    # 34.000977f
        0x42080100    # 34.000977f
        0x2000100
        0x42080000    # 34.0f
        0x40000100    # 2.000061f
        0x0
        0x42000000    # 32.0f
        0x2080100
        0x2000000
        0x42000000    # 32.0f
        0x80100
        0x80000
        0x42000100    # 32.000977f
        0x100
        0x2000000
        0x40000000    # 2.0f
        0x2080000
        0x42000100    # 32.000977f
        0x40080100
        0x2000100
        0x40000000    # 2.0f
        0x42080000    # 34.0f
        0x2080100
        0x40080100
        0x100
        0x2000000
        0x42080000    # 34.0f
        0x42080100    # 34.000977f
        0x80100
        0x42000000    # 32.0f
        0x42080100    # 34.000977f
        0x2080000
        0x0
        0x40080000    # 2.125f
        0x42000000    # 32.0f
        0x80100
        0x2000100
        0x40000100    # 2.000061f
        0x80000
        0x0
        0x40080000    # 2.125f
        0x2080100
        0x40000100    # 2.000061f
    .end array-data

    :array_a
    .array-data 4
        0x20000010
        0x20400000
        0x4000
        0x20404010
        0x20400000
        0x10
        0x20404010
        0x400000
        0x20004000
        0x404010
        0x400000
        0x20000010
        0x400010
        0x20004000
        0x20000000
        0x4010
        0x0
        0x400010
        0x20004010
        0x4000
        0x404000
        0x20004010
        0x10
        0x20400010
        0x20400010
        0x0
        0x404010
        0x20404000
        0x4010
        0x404000
        0x20404000
        0x20000000
        0x20004000
        0x10
        0x20400010
        0x404000
        0x20404010
        0x400000
        0x4010
        0x20000010
        0x400000
        0x20004000
        0x20000000
        0x4010
        0x20000010
        0x20404010
        0x404000
        0x20400000
        0x404010
        0x20404000
        0x0
        0x20400010
        0x10
        0x4000
        0x20400000
        0x404010
        0x4000
        0x400010
        0x20004010
        0x0
        0x20404000
        0x20000000
        0x400010
        0x20004010
    .end array-data

    :array_b
    .array-data 4
        0x200000
        0x4200002
        0x4000802    # 1.5050005E-36f
        0x0
        0x800
        0x4000802    # 1.5050005E-36f
        0x200802
        0x4200800
        0x4200802
        0x200000
        0x0
        0x4000002
        0x2
        0x4000000
        0x4200002
        0x802
        0x4000800    # 1.5050001E-36f
        0x200802
        0x200002
        0x4000800    # 1.5050001E-36f
        0x4000002
        0x4200000
        0x4200800
        0x200002
        0x4200000
        0x800
        0x802
        0x4200802
        0x200800
        0x2
        0x4000000
        0x200800
        0x4000000
        0x200800
        0x200000
        0x4000802    # 1.5050005E-36f
        0x4000802    # 1.5050005E-36f
        0x4200002
        0x4200002
        0x2
        0x200002
        0x4000000
        0x4000800    # 1.5050001E-36f
        0x200000
        0x4200800
        0x802
        0x200802
        0x4200800
        0x802
        0x4000002
        0x4200802
        0x4200000
        0x200800
        0x0
        0x2
        0x4200802
        0x0
        0x200802
        0x4200000
        0x800
        0x4000002
        0x4000800    # 1.5050001E-36f
        0x800
        0x200002
    .end array-data

    :array_c
    .array-data 4
        0x10001040
        0x1000
        0x40000
        0x10041040
        0x10000000
        0x10001040
        0x40
        0x10000000
        0x40040
        0x10040000
        0x10041040
        0x41000
        0x10041000
        0x41040
        0x1000
        0x40
        0x10040000
        0x10000040
        0x10001000
        0x1040
        0x41000
        0x40040
        0x10040040
        0x10041000
        0x1040
        0x0
        0x0
        0x10040040
        0x10000040
        0x10001000
        0x41040
        0x40000
        0x41040
        0x40000
        0x10041000
        0x1000
        0x40
        0x10040040
        0x1000
        0x41040
        0x10001000
        0x40
        0x10000040
        0x10040000
        0x10040040
        0x10000000
        0x40000
        0x10001040
        0x0
        0x10041040
        0x40040
        0x10000040
        0x10040000
        0x10001000
        0x10001040
        0x0
        0x10041040
        0x41000
        0x41000
        0x1040
        0x1040
        0x40040
        0x10000000
        0x10041000
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->workingKey:[I

    .line 27
    return-void
.end method


# virtual methods
.method protected blacklist desFunc([I[BI[BI)V
    .locals 23
    .param p1, "wKey"    # [I
    .param p2, "in"    # [B
    .param p3, "inOff"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I

    .line 413
    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-static/range {p2 .. p3}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    .line 414
    .local v2, "left":I
    add-int/lit8 v3, p3, 0x4

    move-object/from16 v4, p2

    invoke-static {v4, v3}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v3

    .line 416
    .local v3, "right":I
    ushr-int/lit8 v5, v2, 0x4

    xor-int/2addr v5, v3

    const v6, 0xf0f0f0f

    and-int/2addr v5, v6

    .line 417
    .local v5, "work":I
    xor-int/2addr v3, v5

    .line 418
    shl-int/lit8 v7, v5, 0x4

    xor-int/2addr v2, v7

    .line 419
    ushr-int/lit8 v7, v2, 0x10

    xor-int/2addr v7, v3

    const v8, 0xffff

    and-int v5, v7, v8

    .line 420
    xor-int/2addr v3, v5

    .line 421
    shl-int/lit8 v7, v5, 0x10

    xor-int/2addr v2, v7

    .line 422
    ushr-int/lit8 v7, v3, 0x2

    xor-int/2addr v7, v2

    const v9, 0x33333333

    and-int v5, v7, v9

    .line 423
    xor-int/2addr v2, v5

    .line 424
    shl-int/lit8 v7, v5, 0x2

    xor-int/2addr v3, v7

    .line 425
    ushr-int/lit8 v7, v3, 0x8

    xor-int/2addr v7, v2

    const v10, 0xff00ff

    and-int v5, v7, v10

    .line 426
    xor-int/2addr v2, v5

    .line 427
    shl-int/lit8 v7, v5, 0x8

    xor-int/2addr v3, v7

    .line 428
    shl-int/lit8 v7, v3, 0x1

    ushr-int/lit8 v11, v3, 0x1f

    or-int v3, v7, v11

    .line 429
    xor-int v7, v2, v3

    const v11, -0x55555556

    and-int v5, v7, v11

    .line 430
    xor-int/2addr v2, v5

    .line 431
    xor-int/2addr v3, v5

    .line 432
    shl-int/lit8 v7, v2, 0x1

    ushr-int/lit8 v12, v2, 0x1f

    or-int v2, v7, v12

    .line 434
    const/4 v7, 0x0

    .local v7, "round":I
    :goto_0
    const/16 v12, 0x8

    if-ge v7, v12, :cond_0

    .line 438
    shl-int/lit8 v12, v3, 0x1c

    ushr-int/lit8 v13, v3, 0x4

    or-int v5, v12, v13

    .line 439
    mul-int/lit8 v12, v7, 0x4

    add-int/lit8 v12, v12, 0x0

    aget v12, p1, v12

    xor-int/2addr v5, v12

    .line 440
    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->SP7:[I

    and-int/lit8 v13, v5, 0x3f

    aget v13, v12, v13

    .line 441
    .local v13, "fval":I
    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->SP5:[I

    ushr-int/lit8 v15, v5, 0x8

    and-int/lit8 v15, v15, 0x3f

    aget v15, v14, v15

    or-int/2addr v13, v15

    .line 442
    sget-object v15, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->SP3:[I

    ushr-int/lit8 v16, v5, 0x10

    and-int/lit8 v16, v16, 0x3f

    aget v16, v15, v16

    or-int v13, v13, v16

    .line 443
    sget-object v16, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->SP1:[I

    ushr-int/lit8 v17, v5, 0x18

    and-int/lit8 v17, v17, 0x3f

    aget v17, v16, v17

    or-int v13, v13, v17

    .line 444
    mul-int/lit8 v17, v7, 0x4

    add-int/lit8 v17, v17, 0x1

    aget v17, p1, v17

    xor-int v5, v3, v17

    .line 445
    sget-object v17, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->SP8:[I

    and-int/lit8 v18, v5, 0x3f

    aget v18, v17, v18

    or-int v13, v13, v18

    .line 446
    sget-object v18, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->SP6:[I

    ushr-int/lit8 v19, v5, 0x8

    and-int/lit8 v19, v19, 0x3f

    aget v19, v18, v19

    or-int v13, v13, v19

    .line 447
    sget-object v19, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->SP4:[I

    ushr-int/lit8 v20, v5, 0x10

    and-int/lit8 v20, v20, 0x3f

    aget v20, v19, v20

    or-int v13, v13, v20

    .line 448
    sget-object v20, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->SP2:[I

    ushr-int/lit8 v21, v5, 0x18

    and-int/lit8 v21, v21, 0x3f

    aget v21, v20, v21

    or-int v13, v13, v21

    .line 449
    xor-int/2addr v2, v13

    .line 450
    shl-int/lit8 v21, v2, 0x1c

    ushr-int/lit8 v22, v2, 0x4

    or-int v5, v21, v22

    .line 451
    mul-int/lit8 v21, v7, 0x4

    add-int/lit8 v21, v21, 0x2

    aget v21, p1, v21

    xor-int v5, v5, v21

    .line 452
    and-int/lit8 v21, v5, 0x3f

    aget v12, v12, v21

    .line 453
    .end local v13    # "fval":I
    .local v12, "fval":I
    ushr-int/lit8 v13, v5, 0x8

    and-int/lit8 v13, v13, 0x3f

    aget v13, v14, v13

    or-int/2addr v12, v13

    .line 454
    ushr-int/lit8 v13, v5, 0x10

    and-int/lit8 v13, v13, 0x3f

    aget v13, v15, v13

    or-int/2addr v12, v13

    .line 455
    ushr-int/lit8 v13, v5, 0x18

    and-int/lit8 v13, v13, 0x3f

    aget v13, v16, v13

    or-int/2addr v12, v13

    .line 456
    mul-int/lit8 v13, v7, 0x4

    add-int/lit8 v13, v13, 0x3

    aget v13, p1, v13

    xor-int v5, v2, v13

    .line 457
    and-int/lit8 v13, v5, 0x3f

    aget v13, v17, v13

    or-int/2addr v12, v13

    .line 458
    ushr-int/lit8 v13, v5, 0x8

    and-int/lit8 v13, v13, 0x3f

    aget v13, v18, v13

    or-int/2addr v12, v13

    .line 459
    ushr-int/lit8 v13, v5, 0x10

    and-int/lit8 v13, v13, 0x3f

    aget v13, v19, v13

    or-int/2addr v12, v13

    .line 460
    ushr-int/lit8 v13, v5, 0x18

    and-int/lit8 v13, v13, 0x3f

    aget v13, v20, v13

    or-int/2addr v12, v13

    .line 461
    xor-int/2addr v3, v12

    .line 434
    .end local v12    # "fval":I
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 464
    .end local v7    # "round":I
    :cond_0
    shl-int/lit8 v7, v3, 0x1f

    ushr-int/lit8 v12, v3, 0x1

    or-int v3, v7, v12

    .line 465
    xor-int v7, v2, v3

    and-int v5, v7, v11

    .line 466
    xor-int/2addr v2, v5

    .line 467
    xor-int/2addr v3, v5

    .line 468
    shl-int/lit8 v7, v2, 0x1f

    ushr-int/lit8 v11, v2, 0x1

    or-int v2, v7, v11

    .line 469
    ushr-int/lit8 v7, v2, 0x8

    xor-int/2addr v7, v3

    and-int v5, v7, v10

    .line 470
    xor-int/2addr v3, v5

    .line 471
    shl-int/lit8 v7, v5, 0x8

    xor-int/2addr v2, v7

    .line 472
    ushr-int/lit8 v7, v2, 0x2

    xor-int/2addr v7, v3

    and-int v5, v7, v9

    .line 473
    xor-int/2addr v3, v5

    .line 474
    shl-int/lit8 v7, v5, 0x2

    xor-int/2addr v2, v7

    .line 475
    ushr-int/lit8 v7, v3, 0x10

    xor-int/2addr v7, v2

    and-int v5, v7, v8

    .line 476
    xor-int/2addr v2, v5

    .line 477
    shl-int/lit8 v7, v5, 0x10

    xor-int/2addr v3, v7

    .line 478
    ushr-int/lit8 v7, v3, 0x4

    xor-int/2addr v7, v2

    and-int v5, v7, v6

    .line 479
    xor-int/2addr v2, v5

    .line 480
    shl-int/lit8 v6, v5, 0x4

    xor-int/2addr v3, v6

    .line 482
    invoke-static {v3, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 483
    add-int/lit8 v6, v1, 0x4

    invoke-static {v2, v0, v6}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 484
    return-void
.end method

.method protected blacklist generateWorkingKey(Z[B)[I
    .locals 14
    .param p1, "encrypting"    # Z
    .param p2, "key"    # [B

    .line 314
    const/16 v0, 0x20

    new-array v1, v0, [I

    .line 315
    .local v1, "newKey":[I
    const/16 v2, 0x38

    new-array v3, v2, [Z

    .line 316
    .local v3, "pc1m":[Z
    new-array v4, v2, [Z

    .line 318
    .local v4, "pcr":[Z
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v5, v2, :cond_1

    .line 320
    sget-object v8, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->pc1:[B

    aget-byte v8, v8, v5

    .line 322
    .local v8, "l":I
    ushr-int/lit8 v9, v8, 0x3

    aget-byte v9, p2, v9

    sget-object v10, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->bytebit:[S

    and-int/lit8 v11, v8, 0x7

    aget-short v10, v10, v11

    and-int/2addr v9, v10

    if-eqz v9, :cond_0

    move v6, v7

    :cond_0
    aput-boolean v6, v3, v5

    .line 318
    .end local v8    # "l":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 325
    .end local v5    # "j":I
    :cond_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    const/16 v8, 0x10

    if-ge v5, v8, :cond_a

    .line 329
    if-eqz p1, :cond_2

    .line 331
    shl-int/lit8 v8, v5, 0x1

    .local v8, "m":I
    goto :goto_2

    .line 335
    .end local v8    # "m":I
    :cond_2
    rsub-int/lit8 v8, v5, 0xf

    shl-int/2addr v8, v7

    .line 338
    .restart local v8    # "m":I
    :goto_2
    add-int/lit8 v9, v8, 0x1

    .line 339
    .local v9, "n":I
    aput v6, v1, v9

    aput v6, v1, v8

    .line 341
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_3
    const/16 v11, 0x1c

    if-ge v10, v11, :cond_4

    .line 343
    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->totrot:[B

    aget-byte v12, v12, v5

    add-int/2addr v12, v10

    .line 344
    .local v12, "l":I
    if-ge v12, v11, :cond_3

    .line 346
    aget-boolean v11, v3, v12

    aput-boolean v11, v4, v10

    goto :goto_4

    .line 350
    :cond_3
    add-int/lit8 v11, v12, -0x1c

    aget-boolean v11, v3, v11

    aput-boolean v11, v4, v10

    .line 341
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 354
    .end local v10    # "j":I
    .end local v12    # "l":I
    :cond_4
    const/16 v10, 0x1c

    .restart local v10    # "j":I
    :goto_5
    if-ge v10, v2, :cond_6

    .line 356
    sget-object v11, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->totrot:[B

    aget-byte v11, v11, v5

    add-int/2addr v11, v10

    .line 357
    .local v11, "l":I
    if-ge v11, v2, :cond_5

    .line 359
    aget-boolean v12, v3, v11

    aput-boolean v12, v4, v10

    goto :goto_6

    .line 363
    :cond_5
    add-int/lit8 v12, v11, -0x1c

    aget-boolean v12, v3, v12

    aput-boolean v12, v4, v10

    .line 354
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 367
    .end local v10    # "j":I
    .end local v11    # "l":I
    :cond_6
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_7
    const/16 v11, 0x18

    if-ge v10, v11, :cond_9

    .line 369
    sget-object v11, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->pc2:[B

    aget-byte v12, v11, v10

    aget-boolean v12, v4, v12

    if-eqz v12, :cond_7

    .line 371
    aget v12, v1, v8

    sget-object v13, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->bigbyte:[I

    aget v13, v13, v10

    or-int/2addr v12, v13

    aput v12, v1, v8

    .line 374
    :cond_7
    add-int/lit8 v12, v10, 0x18

    aget-byte v11, v11, v12

    aget-boolean v11, v4, v11

    if-eqz v11, :cond_8

    .line 376
    aget v11, v1, v9

    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->bigbyte:[I

    aget v12, v12, v10

    or-int/2addr v11, v12

    aput v11, v1, v9

    .line 367
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 325
    .end local v8    # "m":I
    .end local v9    # "n":I
    .end local v10    # "j":I
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 384
    .end local v5    # "i":I
    :cond_a
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-eq v2, v0, :cond_b

    .line 388
    aget v5, v1, v2

    .line 389
    .local v5, "i1":I
    add-int/lit8 v6, v2, 0x1

    aget v6, v1, v6

    .line 391
    .local v6, "i2":I
    const/high16 v7, 0xfc0000

    and-int v9, v5, v7

    shl-int/lit8 v9, v9, 0x6

    and-int/lit16 v10, v5, 0xfc0

    shl-int/lit8 v10, v10, 0xa

    or-int/2addr v9, v10

    and-int/2addr v7, v6

    ushr-int/lit8 v7, v7, 0xa

    or-int/2addr v7, v9

    and-int/lit16 v9, v6, 0xfc0

    ushr-int/lit8 v9, v9, 0x6

    or-int/2addr v7, v9

    aput v7, v1, v2

    .line 394
    add-int/lit8 v7, v2, 0x1

    const v9, 0x3f000

    and-int v10, v5, v9

    shl-int/lit8 v10, v10, 0xc

    and-int/lit8 v11, v5, 0x3f

    shl-int/2addr v11, v8

    or-int/2addr v10, v11

    and-int/2addr v9, v6

    ushr-int/lit8 v9, v9, 0x4

    or-int/2addr v9, v10

    and-int/lit8 v10, v6, 0x3f

    or-int/2addr v9, v10

    aput v9, v1, v7

    .line 384
    .end local v5    # "i1":I
    .end local v6    # "i2":I
    add-int/lit8 v2, v2, 0x2

    goto :goto_8

    .line 398
    .end local v2    # "i":I
    :cond_b
    return-object v1
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 59
    const-string v0, "DES"

    return-object v0
.end method

.method public blacklist getBlockSize()I
    .locals 1

    .line 64
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "encrypting"    # Z
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 41
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_1

    .line 43
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 48
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 49
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    .line 48
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->generateWorkingKey(Z[B)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->workingKey:[I

    .line 51
    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DES key too long - should be 8 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to DES init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist processBlock([BI[BI)I
    .locals 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .line 73
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->workingKey:[I

    if-eqz v1, :cond_2

    .line 78
    add-int/lit8 v0, p2, 0x8

    array-length v2, p1

    if-gt v0, v2, :cond_1

    .line 83
    add-int/lit8 v0, p4, 0x8

    array-length v2, p3

    if-gt v0, v2, :cond_0

    .line 88
    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;->desFunc([I[BI[BI)V

    .line 90
    const/16 v0, 0x8

    return v0

    .line 85
    :cond_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string/jumbo v1, "output buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DES engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist reset()V
    .locals 0

    .line 95
    return-void
.end method
