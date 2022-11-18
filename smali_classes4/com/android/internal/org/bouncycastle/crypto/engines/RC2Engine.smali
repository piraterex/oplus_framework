.class public Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;
.super Ljava/lang/Object;
.source "RC2Engine.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final blacklist BLOCK_SIZE:I = 0x8

.field private static blacklist piTable:[B


# instance fields
.field private blacklist encrypting:Z

.field private blacklist workingKey:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 22
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->piTable:[B

    return-void

    :array_0
    .array-data 1
        -0x27t
        0x78t
        -0x7t
        -0x3ct
        0x19t
        -0x23t
        -0x4bt
        -0x13t
        0x28t
        -0x17t
        -0x3t
        0x79t
        0x4at
        -0x60t
        -0x28t
        -0x63t
        -0x3at
        0x7et
        0x37t
        -0x7dt
        0x2bt
        0x76t
        0x53t
        -0x72t
        0x62t
        0x4ct
        0x64t
        -0x78t
        0x44t
        -0x75t
        -0x5t
        -0x5et
        0x17t
        -0x66t
        0x59t
        -0xbt
        -0x79t
        -0x4dt
        0x4ft
        0x13t
        0x61t
        0x45t
        0x6dt
        -0x73t
        0x9t
        -0x7ft
        0x7dt
        0x32t
        -0x43t
        -0x71t
        0x40t
        -0x15t
        -0x7at
        -0x49t
        0x7bt
        0xbt
        -0x10t
        -0x6bt
        0x21t
        0x22t
        0x5ct
        0x6bt
        0x4et
        -0x7et
        0x54t
        -0x2at
        0x65t
        -0x6dt
        -0x32t
        0x60t
        -0x4et
        0x1ct
        0x73t
        0x56t
        -0x40t
        0x14t
        -0x59t
        -0x74t
        -0xft
        -0x24t
        0x12t
        0x75t
        -0x36t
        0x1ft
        0x3bt
        -0x42t
        -0x1ct
        -0x2ft
        0x42t
        0x3dt
        -0x2ct
        0x30t
        -0x5dt
        0x3ct
        -0x4at
        0x26t
        0x6ft
        -0x41t
        0xet
        -0x26t
        0x46t
        0x69t
        0x7t
        0x57t
        0x27t
        -0xet
        0x1dt
        -0x65t
        -0x44t
        -0x6ct
        0x43t
        0x3t
        -0x8t
        0x11t
        -0x39t
        -0xat
        -0x70t
        -0x11t
        0x3et
        -0x19t
        0x6t
        -0x3dt
        -0x2bt
        0x2ft
        -0x38t
        0x66t
        0x1et
        -0x29t
        0x8t
        -0x18t
        -0x16t
        -0x22t
        -0x80t
        0x52t
        -0x12t
        -0x9t
        -0x7ct
        -0x56t
        0x72t
        -0x54t
        0x35t
        0x4dt
        0x6at
        0x2at
        -0x6at
        0x1at
        -0x2et
        0x71t
        0x5at
        0x15t
        0x49t
        0x74t
        0x4bt
        -0x61t
        -0x30t
        0x5et
        0x4t
        0x18t
        -0x5ct
        -0x14t
        -0x3et
        -0x20t
        0x41t
        0x6et
        0xft
        0x51t
        -0x35t
        -0x34t
        0x24t
        -0x6ft
        -0x51t
        0x50t
        -0x5ft
        -0xct
        0x70t
        0x39t
        -0x67t
        0x7ct
        0x3at
        -0x7bt
        0x23t
        -0x48t
        -0x4ct
        0x7at
        -0x4t
        0x2t
        0x36t
        0x5bt
        0x25t
        0x55t
        -0x69t
        0x31t
        0x2dt
        0x5dt
        -0x6t
        -0x68t
        -0x1dt
        -0x76t
        -0x6et
        -0x52t
        0x5t
        -0x21t
        0x29t
        0x10t
        0x67t
        0x6ct
        -0x46t
        -0x37t
        -0x2dt
        0x0t
        -0x1at
        -0x31t
        -0x1ft
        -0x62t
        -0x58t
        0x2ct
        0x63t
        0x16t
        0x1t
        0x3ft
        0x58t
        -0x1et
        -0x77t
        -0x57t
        0xdt
        0x38t
        0x34t
        0x1bt
        -0x55t
        0x33t
        -0x1t
        -0x50t
        -0x45t
        0x48t
        0xct
        0x5ft
        -0x47t
        -0x4ft
        -0x33t
        0x2et
        -0x3bt
        -0xdt
        -0x25t
        0x47t
        -0x1bt
        -0x5bt
        -0x64t
        0x77t
        0xat
        -0x5at
        0x20t
        0x68t
        -0x2t
        0x7ft
        -0x3ft
        -0x53t
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist decryptBlock([BI[BI)V
    .locals 14
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .line 271
    move-object v0, p0

    add-int/lit8 v1, p2, 0x7

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    .line 272
    .local v1, "x76":I
    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, p2, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    .line 273
    .local v2, "x54":I
    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, p2, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    .line 274
    .local v3, "x32":I
    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, p2, 0x0

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    .line 276
    .local v4, "x10":I
    const/16 v5, 0x3c

    .local v5, "i":I
    :goto_0
    const/16 v6, 0x2c

    const/16 v7, 0xf

    const/16 v8, 0xe

    const/16 v9, 0xd

    const/16 v10, 0xb

    if-lt v5, v6, :cond_0

    .line 278
    invoke-direct {p0, v1, v10}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v6

    not-int v10, v2

    and-int/2addr v10, v4

    and-int v11, v3, v2

    add-int/2addr v10, v11

    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v12, v5, 0x3

    aget v11, v11, v12

    add-int/2addr v10, v11

    sub-int v1, v6, v10

    .line 279
    invoke-direct {p0, v2, v9}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v6

    not-int v9, v3

    and-int/2addr v9, v1

    and-int v10, v4, v3

    add-int/2addr v9, v10

    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v11, v5, 0x2

    aget v10, v10, v11

    add-int/2addr v9, v10

    sub-int v2, v6, v9

    .line 280
    invoke-direct {p0, v3, v8}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v6

    not-int v8, v4

    and-int/2addr v8, v2

    and-int v9, v1, v4

    add-int/2addr v8, v9

    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v10, v5, 0x1

    aget v9, v9, v10

    add-int/2addr v8, v9

    sub-int v3, v6, v8

    .line 281
    invoke-direct {p0, v4, v7}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v6

    not-int v7, v1

    and-int/2addr v7, v3

    and-int v8, v2, v1

    add-int/2addr v7, v8

    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    aget v8, v8, v5

    add-int/2addr v7, v8

    sub-int v4, v6, v7

    .line 276
    add-int/lit8 v5, v5, -0x4

    goto :goto_0

    .line 284
    .end local v5    # "i":I
    :cond_0
    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v6, v2, 0x3f

    aget v6, v5, v6

    sub-int/2addr v1, v6

    .line 285
    and-int/lit8 v6, v3, 0x3f

    aget v6, v5, v6

    sub-int/2addr v2, v6

    .line 286
    and-int/lit8 v6, v4, 0x3f

    aget v6, v5, v6

    sub-int/2addr v3, v6

    .line 287
    and-int/lit8 v6, v1, 0x3f

    aget v5, v5, v6

    sub-int/2addr v4, v5

    .line 289
    const/16 v5, 0x28

    .restart local v5    # "i":I
    :goto_1
    const/16 v6, 0x14

    if-lt v5, v6, :cond_1

    .line 291
    invoke-direct {p0, v1, v10}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v6

    not-int v11, v2

    and-int/2addr v11, v4

    and-int v12, v3, v2

    add-int/2addr v11, v12

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v13, v5, 0x3

    aget v12, v12, v13

    add-int/2addr v11, v12

    sub-int v1, v6, v11

    .line 292
    invoke-direct {p0, v2, v9}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v6

    not-int v11, v3

    and-int/2addr v11, v1

    and-int v12, v4, v3

    add-int/2addr v11, v12

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v13, v5, 0x2

    aget v12, v12, v13

    add-int/2addr v11, v12

    sub-int v2, v6, v11

    .line 293
    invoke-direct {p0, v3, v8}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v6

    not-int v11, v4

    and-int/2addr v11, v2

    and-int v12, v1, v4

    add-int/2addr v11, v12

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v13, v5, 0x1

    aget v12, v12, v13

    add-int/2addr v11, v12

    sub-int v3, v6, v11

    .line 294
    invoke-direct {p0, v4, v7}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v6

    not-int v11, v1

    and-int/2addr v11, v3

    and-int v12, v2, v1

    add-int/2addr v11, v12

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    aget v12, v12, v5

    add-int/2addr v11, v12

    sub-int v4, v6, v11

    .line 289
    add-int/lit8 v5, v5, -0x4

    goto :goto_1

    .line 297
    .end local v5    # "i":I
    :cond_1
    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v6, v2, 0x3f

    aget v6, v5, v6

    sub-int/2addr v1, v6

    .line 298
    and-int/lit8 v6, v3, 0x3f

    aget v6, v5, v6

    sub-int/2addr v2, v6

    .line 299
    and-int/lit8 v6, v4, 0x3f

    aget v6, v5, v6

    sub-int/2addr v3, v6

    .line 300
    and-int/lit8 v6, v1, 0x3f

    aget v5, v5, v6

    sub-int/2addr v4, v5

    .line 302
    const/16 v5, 0x10

    .restart local v5    # "i":I
    :goto_2
    if-ltz v5, :cond_2

    .line 304
    invoke-direct {p0, v1, v10}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v6

    not-int v11, v2

    and-int/2addr v11, v4

    and-int v12, v3, v2

    add-int/2addr v11, v12

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v13, v5, 0x3

    aget v12, v12, v13

    add-int/2addr v11, v12

    sub-int v1, v6, v11

    .line 305
    invoke-direct {p0, v2, v9}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v6

    not-int v11, v3

    and-int/2addr v11, v1

    and-int v12, v4, v3

    add-int/2addr v11, v12

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v13, v5, 0x2

    aget v12, v12, v13

    add-int/2addr v11, v12

    sub-int v2, v6, v11

    .line 306
    invoke-direct {p0, v3, v8}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v6

    not-int v11, v4

    and-int/2addr v11, v2

    and-int v12, v1, v4

    add-int/2addr v11, v12

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v13, v5, 0x1

    aget v12, v12, v13

    add-int/2addr v11, v12

    sub-int v3, v6, v11

    .line 307
    invoke-direct {p0, v4, v7}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v6

    not-int v11, v1

    and-int/2addr v11, v3

    and-int v12, v2, v1

    add-int/2addr v11, v12

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    aget v12, v12, v5

    add-int/2addr v11, v12

    sub-int v4, v6, v11

    .line 302
    add-int/lit8 v5, v5, -0x4

    goto :goto_2

    .line 310
    .end local v5    # "i":I
    :cond_2
    add-int/lit8 v5, p4, 0x0

    int-to-byte v6, v4

    aput-byte v6, p3, v5

    .line 311
    add-int/lit8 v5, p4, 0x1

    shr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    .line 312
    add-int/lit8 v5, p4, 0x2

    int-to-byte v6, v3

    aput-byte v6, p3, v5

    .line 313
    add-int/lit8 v5, p4, 0x3

    shr-int/lit8 v6, v3, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    .line 314
    add-int/lit8 v5, p4, 0x4

    int-to-byte v6, v2

    aput-byte v6, p3, v5

    .line 315
    add-int/lit8 v5, p4, 0x5

    shr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    .line 316
    add-int/lit8 v5, p4, 0x6

    int-to-byte v6, v1

    aput-byte v6, p3, v5

    .line 317
    add-int/lit8 v5, p4, 0x7

    shr-int/lit8 v6, v1, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    .line 318
    return-void
.end method

.method private blacklist encryptBlock([BI[BI)V
    .locals 13
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .line 214
    move-object v0, p0

    add-int/lit8 v1, p2, 0x7

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    .line 215
    .local v1, "x76":I
    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, p2, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    .line 216
    .local v2, "x54":I
    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, p2, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    .line 217
    .local v3, "x32":I
    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, p2, 0x0

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    .line 219
    .local v4, "x10":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v6, 0x10

    const/4 v7, 0x5

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x3

    if-gt v5, v6, :cond_0

    .line 221
    not-int v6, v1

    and-int/2addr v6, v3

    add-int/2addr v6, v4

    and-int v11, v2, v1

    add-int/2addr v6, v11

    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    aget v11, v11, v5

    add-int/2addr v6, v11

    invoke-direct {p0, v6, v8}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v4

    .line 222
    not-int v6, v4

    and-int/2addr v6, v2

    add-int/2addr v6, v3

    and-int v8, v1, v4

    add-int/2addr v6, v8

    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v11, v5, 0x1

    aget v8, v8, v11

    add-int/2addr v6, v8

    invoke-direct {p0, v6, v9}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v3

    .line 223
    not-int v6, v3

    and-int/2addr v6, v1

    add-int/2addr v6, v2

    and-int v8, v4, v3

    add-int/2addr v6, v8

    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v9, v5, 0x2

    aget v8, v8, v9

    add-int/2addr v6, v8

    invoke-direct {p0, v6, v10}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v2

    .line 224
    not-int v6, v2

    and-int/2addr v6, v4

    add-int/2addr v6, v1

    and-int v8, v3, v2

    add-int/2addr v6, v8

    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v9, v5, 0x3

    aget v8, v8, v9

    add-int/2addr v6, v8

    invoke-direct {p0, v6, v7}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v1

    .line 219
    add-int/lit8 v5, v5, 0x4

    goto :goto_0

    .line 227
    .end local v5    # "i":I
    :cond_0
    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v6, v1, 0x3f

    aget v6, v5, v6

    add-int/2addr v4, v6

    .line 228
    and-int/lit8 v6, v4, 0x3f

    aget v6, v5, v6

    add-int/2addr v3, v6

    .line 229
    and-int/lit8 v6, v3, 0x3f

    aget v6, v5, v6

    add-int/2addr v2, v6

    .line 230
    and-int/lit8 v6, v2, 0x3f

    aget v5, v5, v6

    add-int/2addr v1, v5

    .line 232
    const/16 v5, 0x14

    .restart local v5    # "i":I
    :goto_1
    const/16 v6, 0x28

    if-gt v5, v6, :cond_1

    .line 234
    not-int v6, v1

    and-int/2addr v6, v3

    add-int/2addr v6, v4

    and-int v11, v2, v1

    add-int/2addr v6, v11

    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    aget v11, v11, v5

    add-int/2addr v6, v11

    invoke-direct {p0, v6, v8}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v4

    .line 235
    not-int v6, v4

    and-int/2addr v6, v2

    add-int/2addr v6, v3

    and-int v11, v1, v4

    add-int/2addr v6, v11

    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v12, v5, 0x1

    aget v11, v11, v12

    add-int/2addr v6, v11

    invoke-direct {p0, v6, v9}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v3

    .line 236
    not-int v6, v3

    and-int/2addr v6, v1

    add-int/2addr v6, v2

    and-int v11, v4, v3

    add-int/2addr v6, v11

    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v12, v5, 0x2

    aget v11, v11, v12

    add-int/2addr v6, v11

    invoke-direct {p0, v6, v10}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v2

    .line 237
    not-int v6, v2

    and-int/2addr v6, v4

    add-int/2addr v6, v1

    and-int v11, v3, v2

    add-int/2addr v6, v11

    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v12, v5, 0x3

    aget v11, v11, v12

    add-int/2addr v6, v11

    invoke-direct {p0, v6, v7}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v1

    .line 232
    add-int/lit8 v5, v5, 0x4

    goto :goto_1

    .line 240
    .end local v5    # "i":I
    :cond_1
    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v6, v1, 0x3f

    aget v6, v5, v6

    add-int/2addr v4, v6

    .line 241
    and-int/lit8 v6, v4, 0x3f

    aget v6, v5, v6

    add-int/2addr v3, v6

    .line 242
    and-int/lit8 v6, v3, 0x3f

    aget v6, v5, v6

    add-int/2addr v2, v6

    .line 243
    and-int/lit8 v6, v2, 0x3f

    aget v5, v5, v6

    add-int/2addr v1, v5

    .line 245
    const/16 v5, 0x2c

    .restart local v5    # "i":I
    :goto_2
    const/16 v6, 0x40

    if-ge v5, v6, :cond_2

    .line 247
    not-int v6, v1

    and-int/2addr v6, v3

    add-int/2addr v6, v4

    and-int v11, v2, v1

    add-int/2addr v6, v11

    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    aget v11, v11, v5

    add-int/2addr v6, v11

    invoke-direct {p0, v6, v8}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v4

    .line 248
    not-int v6, v4

    and-int/2addr v6, v2

    add-int/2addr v6, v3

    and-int v11, v1, v4

    add-int/2addr v6, v11

    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v12, v5, 0x1

    aget v11, v11, v12

    add-int/2addr v6, v11

    invoke-direct {p0, v6, v9}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v3

    .line 249
    not-int v6, v3

    and-int/2addr v6, v1

    add-int/2addr v6, v2

    and-int v11, v4, v3

    add-int/2addr v6, v11

    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v12, v5, 0x2

    aget v11, v11, v12

    add-int/2addr v6, v11

    invoke-direct {p0, v6, v10}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v2

    .line 250
    not-int v6, v2

    and-int/2addr v6, v4

    add-int/2addr v6, v1

    and-int v11, v3, v2

    add-int/2addr v6, v11

    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v12, v5, 0x3

    aget v11, v11, v12

    add-int/2addr v6, v11

    invoke-direct {p0, v6, v7}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v1

    .line 245
    add-int/lit8 v5, v5, 0x4

    goto :goto_2

    .line 253
    .end local v5    # "i":I
    :cond_2
    add-int/lit8 v5, p4, 0x0

    int-to-byte v6, v4

    aput-byte v6, p3, v5

    .line 254
    add-int/lit8 v5, p4, 0x1

    shr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    .line 255
    add-int/lit8 v5, p4, 0x2

    int-to-byte v6, v3

    aput-byte v6, p3, v5

    .line 256
    add-int/lit8 v5, p4, 0x3

    shr-int/lit8 v6, v3, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    .line 257
    add-int/lit8 v5, p4, 0x4

    int-to-byte v6, v2

    aput-byte v6, p3, v5

    .line 258
    add-int/lit8 v5, p4, 0x5

    shr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    .line 259
    add-int/lit8 v5, p4, 0x6

    int-to-byte v6, v1

    aput-byte v6, p3, v5

    .line 260
    add-int/lit8 v5, p4, 0x7

    shr-int/lit8 v6, v1, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    .line 261
    return-void
.end method

.method private blacklist generateWorkingKey([BI)[I
    .locals 8
    .param p1, "key"    # [B
    .param p2, "bits"    # I

    .line 68
    const/16 v0, 0x80

    new-array v1, v0, [I

    .line 70
    .local v1, "xKey":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    const/16 v4, 0xff

    if-eq v2, v3, :cond_0

    .line 72
    aget-byte v3, p1, v2

    and-int/2addr v3, v4

    aput v3, v1, v2

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    .end local v2    # "i":I
    :cond_0
    array-length v2, p1

    .line 78
    .local v2, "len":I
    if-ge v2, v0, :cond_2

    .line 80
    const/4 v3, 0x0

    .line 82
    .local v3, "index":I
    add-int/lit8 v5, v2, -0x1

    aget v5, v1, v5

    .line 86
    .local v5, "x":I
    :goto_1
    sget-object v6, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->piTable:[B

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "index":I
    .local v7, "index":I
    aget v3, v1, v3

    add-int/2addr v3, v5

    and-int/2addr v3, v4

    aget-byte v3, v6, v3

    and-int/lit16 v5, v3, 0xff

    .line 87
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "len":I
    .local v3, "len":I
    aput v5, v1, v2

    .line 89
    move v2, v3

    if-lt v3, v0, :cond_1

    goto :goto_2

    :cond_1
    move v3, v7

    goto :goto_1

    .line 93
    .end local v3    # "len":I
    .end local v5    # "x":I
    .end local v7    # "index":I
    .restart local v2    # "len":I
    :cond_2
    :goto_2
    add-int/lit8 v0, p2, 0x7

    shr-int/lit8 v0, v0, 0x3

    .line 94
    .end local v2    # "len":I
    .local v0, "len":I
    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->piTable:[B

    rsub-int v3, v0, 0x80

    aget v3, v1, v3

    neg-int v5, p2

    and-int/lit8 v5, v5, 0x7

    shr-int v5, v4, v5

    and-int/2addr v3, v5

    aget-byte v2, v2, v3

    and-int/2addr v2, v4

    .line 95
    .local v2, "x":I
    rsub-int v3, v0, 0x80

    aput v2, v1, v3

    .line 97
    rsub-int v3, v0, 0x80

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_3
    if-ltz v3, :cond_3

    .line 99
    sget-object v5, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->piTable:[B

    add-int v6, v3, v0

    aget v6, v1, v6

    xor-int/2addr v6, v2

    aget-byte v5, v5, v6

    and-int/lit16 v2, v5, 0xff

    .line 100
    aput v2, v1, v3

    .line 97
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 104
    .end local v3    # "i":I
    :cond_3
    const/16 v3, 0x40

    new-array v3, v3, [I

    .line 106
    .local v3, "newKey":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    array-length v5, v3

    if-eq v4, v5, :cond_4

    .line 108
    mul-int/lit8 v5, v4, 0x2

    aget v5, v1, v5

    mul-int/lit8 v6, v4, 0x2

    add-int/lit8 v6, v6, 0x1

    aget v6, v1, v6

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    aput v5, v3, v4

    .line 106
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 111
    .end local v4    # "i":I
    :cond_4
    return-object v3
.end method

.method private blacklist rotateWordLeft(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 202
    const v0, 0xffff

    and-int/2addr p1, v0

    .line 203
    shl-int v0, p1, p2

    rsub-int/lit8 v1, p2, 0x10

    shr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public blacklist getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 154
    const-string v0, "RC2"

    return-object v0
.end method

.method public blacklist getBlockSize()I
    .locals 1

    .line 159
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "encrypting"    # Z
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 126
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->encrypting:Z

    .line 128
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/RC2Parameters;

    if-eqz v0, :cond_0

    .line 130
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/RC2Parameters;

    .line 132
    .local v0, "param":Lcom/android/internal/org/bouncycastle/crypto/params/RC2Parameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/RC2Parameters;->getKey()[B

    move-result-object v1

    .line 133
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/RC2Parameters;->getEffectiveKeyBits()I

    move-result v2

    .line 132
    invoke-direct {p0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->generateWorkingKey([BI)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    .line 134
    .end local v0    # "param":Lcom/android/internal/org/bouncycastle/crypto/params/RC2Parameters;
    goto :goto_0

    .line 135
    :cond_0
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_1

    .line 137
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    .line 139
    .local v0, "key":[B
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->generateWorkingKey([BI)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    .line 140
    .end local v0    # "key":[B
    nop

    .line 146
    :goto_0
    return-void

    .line 143
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to RC2 init - "

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

.method public final blacklist processBlock([BI[BI)I
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .line 168
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    if-eqz v0, :cond_3

    .line 173
    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 178
    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-gt v0, v1, :cond_1

    .line 183
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->encrypting:Z

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->encryptBlock([BI[BI)V

    goto :goto_0

    .line 189
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->decryptBlock([BI[BI)V

    .line 192
    :goto_0
    const/16 v0, 0x8

    return v0

    .line 180
    :cond_1
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string/jumbo v1, "output buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_2
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RC2 engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist reset()V
    .locals 0

    .line 150
    return-void
.end method
