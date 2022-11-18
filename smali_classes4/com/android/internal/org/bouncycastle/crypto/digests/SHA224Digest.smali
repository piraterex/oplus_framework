.class public Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;
.super Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;
.source "SHA224Digest.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/digests/EncodableDigest;


# static fields
.field private static final blacklist DIGEST_LENGTH:I = 0x1c

.field static final blacklist K:[I


# instance fields
.field private blacklist H1:I

.field private blacklist H2:I

.field private blacklist H3:I

.field private blacklist H4:I

.field private blacklist H5:I

.field private blacklist H6:I

.field private blacklist H7:I

.field private blacklist H8:I

.field private blacklist X:[I

.field private blacklist xOff:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 317
    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->K:[I

    return-void

    :array_0
    .array-data 4
        0x428a2f98
        0x71374491
        -0x4a3f0431
        -0x164a245b
        0x3956c25b
        0x59f111f1
        -0x6dc07d5c    # -6.043E-28f
        -0x54e3a12b
        -0x27f85568
        0x12835b01
        0x243185be
        0x550c7dc3
        0x72be5d74
        -0x7f214e02
        -0x6423f959
        -0x3e640e8c
        -0x1b64963f
        -0x1041b87a
        0xfc19dc6
        0x240ca1cc
        0x2de92c6f
        0x4a7484aa    # 4006186.5f
        0x5cb0a9dc
        0x76f988da
        -0x67c1aeae
        -0x57ce3993
        -0x4ffcd838
        -0x40a68039
        -0x391ff40d
        -0x2a586eb9
        0x6ca6351
        0x14292967
        0x27b70a85
        0x2e1b2138
        0x4d2c6dfc    # 1.80805568E8f
        0x53380d13
        0x650a7354
        0x766a0abb
        -0x7e3d36d2
        -0x6d8dd37b
        -0x5d40175f
        -0x57e599b5
        -0x3db47490
        -0x3893ae5d
        -0x2e6d17e7
        -0x2966f9dc
        -0xbf1ca7b
        0x106aa070
        0x19a4c116
        0x1e376c08
        0x2748774c
        0x34b0bcb5
        0x391c0cb3
        0x4ed8aa4a    # 1.81751936E9f
        0x5b9cca4f
        0x682e6ff3
        0x748f82ee
        0x78a5636f
        -0x7b3787ec
        -0x7338fdf8
        -0x6f410006
        -0x5baf9315
        -0x41065c09
        -0x398e870e
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    .line 29
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    .line 37
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->reset()V

    .line 38
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;)V
    .locals 1
    .param p1, "t"    # Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;

    .line 46
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 29
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    .line 48
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->doCopy(Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;)V

    .line 49
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .locals 3
    .param p1, "encodedState"    # [B

    .line 75
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;-><init>([B)V

    .line 29
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    .line 77
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H1:I

    .line 78
    const/16 v0, 0x14

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H2:I

    .line 79
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H3:I

    .line 80
    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H4:I

    .line 81
    const/16 v0, 0x20

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H5:I

    .line 82
    const/16 v0, 0x24

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H6:I

    .line 83
    const/16 v0, 0x28

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H7:I

    .line 84
    const/16 v0, 0x2c

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H8:I

    .line 86
    const/16 v0, 0x30

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    if-eq v0, v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x34

    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v1, v0

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist Ch(III)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .line 278
    and-int v0, p1, p2

    not-int v1, p1

    and-int/2addr v1, p3

    xor-int/2addr v0, v1

    return v0
.end method

.method private blacklist Maj(III)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .line 286
    and-int v0, p1, p2

    and-int v1, p1, p3

    xor-int/2addr v0, v1

    and-int v1, p2, p3

    xor-int/2addr v0, v1

    return v0
.end method

.method private blacklist Sum0(I)I
    .locals 3
    .param p1, "x"    # I

    .line 292
    ushr-int/lit8 v0, p1, 0x2

    shl-int/lit8 v1, p1, 0x1e

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0xd

    shl-int/lit8 v2, p1, 0x13

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x16

    shl-int/lit8 v2, p1, 0xa

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private blacklist Sum1(I)I
    .locals 3
    .param p1, "x"    # I

    .line 298
    ushr-int/lit8 v0, p1, 0x6

    shl-int/lit8 v1, p1, 0x1a

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0xb

    shl-int/lit8 v2, p1, 0x15

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x19

    shl-int/lit8 v2, p1, 0x7

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private blacklist Theta0(I)I
    .locals 3
    .param p1, "x"    # I

    .line 304
    ushr-int/lit8 v0, p1, 0x7

    shl-int/lit8 v1, p1, 0x19

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x12

    shl-int/lit8 v2, p1, 0xe

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x3

    xor-int/2addr v0, v1

    return v0
.end method

.method private blacklist Theta1(I)I
    .locals 3
    .param p1, "x"    # I

    .line 310
    ushr-int/lit8 v0, p1, 0x11

    shl-int/lit8 v1, p1, 0xf

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x13

    shl-int/lit8 v2, p1, 0xd

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0xa

    xor-int/2addr v0, v1

    return v0
.end method

.method private blacklist doCopy(Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;)V
    .locals 4
    .param p1, "t"    # Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;

    .line 53
    invoke-super {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 55
    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H1:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H1:I

    .line 56
    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H2:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H2:I

    .line 57
    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H3:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H3:I

    .line 58
    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H4:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H4:I

    .line 59
    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H5:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H5:I

    .line 60
    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H6:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H6:I

    .line 61
    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H7:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H7:I

    .line 62
    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H8:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H8:I

    .line 64
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    .line 66
    return-void
.end method


# virtual methods
.method public blacklist copy()Lcom/android/internal/org/bouncycastle/util/Memoable;
    .locals 1

    .line 329
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;-><init>(Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;)V

    return-object v0
.end method

.method public blacklist doFinal([BI)I
    .locals 2
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->finish()V

    .line 139
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H1:I

    invoke-static {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 140
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 141
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 142
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H4:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 143
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H5:I

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 144
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H6:I

    add-int/lit8 v1, p2, 0x14

    invoke-static {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 145
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H7:I

    add-int/lit8 v1, p2, 0x18

    invoke-static {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 147
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->reset()V

    .line 149
    const/16 v0, 0x1c

    return v0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 95
    const-string v0, "SHA-224"

    return-object v0
.end method

.method public blacklist getDigestSize()I
    .locals 1

    .line 100
    const/16 v0, 0x1c

    return v0
.end method

.method public blacklist getEncodedState()[B
    .locals 4

    .line 341
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x34

    new-array v0, v0, [B

    .line 343
    .local v0, "state":[B
    invoke-super {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->populateState([B)V

    .line 345
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H1:I

    const/16 v2, 0x10

    invoke-static {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 346
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H2:I

    const/16 v2, 0x14

    invoke-static {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 347
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H3:I

    const/16 v2, 0x18

    invoke-static {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 348
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H4:I

    const/16 v2, 0x1c

    invoke-static {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 349
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H5:I

    const/16 v2, 0x20

    invoke-static {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 350
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H6:I

    const/16 v2, 0x24

    invoke-static {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 351
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H7:I

    const/16 v2, 0x28

    invoke-static {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 352
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H8:I

    const/16 v2, 0x2c

    invoke-static {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 353
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    const/16 v2, 0x30

    invoke-static {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 355
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    if-eq v1, v2, :cond_0

    .line 357
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    aget v2, v2, v1

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x34

    invoke-static {v2, v0, v3}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method protected blacklist processBlock()V
    .locals 13

    .line 183
    const/16 v0, 0x10

    .local v0, "t":I
    :goto_0
    const/16 v1, 0x3f

    if-gt v0, v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    add-int/lit8 v2, v0, -0x2

    aget v2, v1, v2

    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->Theta1(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    add-int/lit8 v4, v0, -0x7

    aget v4, v3, v4

    add-int/2addr v2, v4

    add-int/lit8 v4, v0, -0xf

    aget v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->Theta0(I)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    add-int/lit8 v4, v0, -0x10

    aget v3, v3, v4

    add-int/2addr v2, v3

    aput v2, v1, v0

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    .end local v0    # "t":I
    :cond_0
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H1:I

    .line 192
    .local v0, "a":I
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H2:I

    .line 193
    .local v1, "b":I
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H3:I

    .line 194
    .local v2, "c":I
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H4:I

    .line 195
    .local v3, "d":I
    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H5:I

    .line 196
    .local v4, "e":I
    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H6:I

    .line 197
    .local v5, "f":I
    iget v6, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H7:I

    .line 198
    .local v6, "g":I
    iget v7, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H8:I

    .line 201
    .local v7, "h":I
    const/4 v8, 0x0

    .line 202
    .local v8, "t":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    const/16 v10, 0x8

    if-ge v9, v10, :cond_1

    .line 205
    invoke-direct {p0, v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->Sum1(I)I

    move-result v10

    invoke-direct {p0, v4, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->Ch(III)I

    move-result v11

    add-int/2addr v10, v11

    sget-object v11, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->K:[I

    aget v12, v11, v8

    add-int/2addr v10, v12

    iget-object v12, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    aget v12, v12, v8

    add-int/2addr v10, v12

    add-int/2addr v7, v10

    .line 206
    add-int/2addr v3, v7

    .line 207
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->Sum0(I)I

    move-result v10

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->Maj(III)I

    move-result v12

    add-int/2addr v10, v12

    add-int/2addr v7, v10

    .line 208
    add-int/lit8 v8, v8, 0x1

    .line 211
    invoke-direct {p0, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->Sum1(I)I

    move-result v10

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->Ch(III)I

    move-result v12

    add-int/2addr v10, v12

    aget v12, v11, v8

    add-int/2addr v10, v12

    iget-object v12, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    aget v12, v12, v8

    add-int/2addr v10, v12

    add-int/2addr v6, v10

    .line 212
    add-int/2addr v2, v6

    .line 213
    invoke-direct {p0, v7}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->Sum0(I)I

    move-result v10

    invoke-direct {p0, v7, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->Maj(III)I

    move-result v12

    add-int/2addr v10, v12

    add-int/2addr v6, v10

    .line 214
    add-int/lit8 v8, v8, 0x1

    .line 217
    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->Sum1(I)I

    move-result v10

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->Ch(III)I

    move-result v12

    add-int/2addr v10, v12

    aget v12, v11, v8

    add-int/2addr v10, v12

    iget-object v12, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    aget v12, v12, v8

    add-int/2addr v10, v12

    add-int/2addr v5, v10

    .line 218
    add-int/2addr v1, v5

    .line 219
    invoke-direct {p0, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->Sum0(I)I

    move-result v10

    invoke-direct {p0, v6, v7, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->Maj(III)I

    move-result v12

    add-int/2addr v10, v12

    add-int/2addr v5, v10

    .line 220
    add-int/lit8 v8, v8, 0x1

    .line 223
    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->Sum1(I)I

    move-result v10

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->Ch(III)I

    move-result v12

    add-int/2addr v10, v12

    aget v12, v11, v8

    add-int/2addr v10, v12

    iget-object v12, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    aget v12, v12, v8

    add-int/2addr v10, v12

    add-int/2addr v4, v10

    .line 224
    add-int/2addr v0, v4

    .line 225
    invoke-direct {p0, v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->Sum0(I)I

    move-result v10

    invoke-direct {p0, v5, v6, v7}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->Maj(III)I

    move-result v12

    add-int/2addr v10, v12

    add-int/2addr v4, v10

    .line 226
    add-int/lit8 v8, v8, 0x1

    .line 229
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->Sum1(I)I

    move-result v10

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->Ch(III)I

    move-result v12

    add-int/2addr v10, v12

    aget v12, v11, v8

    add-int/2addr v10, v12

    iget-object v12, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    aget v12, v12, v8

    add-int/2addr v10, v12

    add-int/2addr v3, v10

    .line 230
    add-int/2addr v7, v3

    .line 231
    invoke-direct {p0, v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->Sum0(I)I

    move-result v10

    invoke-direct {p0, v4, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->Maj(III)I

    move-result v12

    add-int/2addr v10, v12

    add-int/2addr v3, v10

    .line 232
    add-int/lit8 v8, v8, 0x1

    .line 235
    invoke-direct {p0, v7}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->Sum1(I)I

    move-result v10

    invoke-direct {p0, v7, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->Ch(III)I

    move-result v12

    add-int/2addr v10, v12

    aget v12, v11, v8

    add-int/2addr v10, v12

    iget-object v12, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    aget v12, v12, v8

    add-int/2addr v10, v12

    add-int/2addr v2, v10

    .line 236
    add-int/2addr v6, v2

    .line 237
    invoke-direct {p0, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->Sum0(I)I

    move-result v10

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->Maj(III)I

    move-result v12

    add-int/2addr v10, v12

    add-int/2addr v2, v10

    .line 238
    add-int/lit8 v8, v8, 0x1

    .line 241
    invoke-direct {p0, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->Sum1(I)I

    move-result v10

    invoke-direct {p0, v6, v7, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->Ch(III)I

    move-result v12

    add-int/2addr v10, v12

    aget v12, v11, v8

    add-int/2addr v10, v12

    iget-object v12, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    aget v12, v12, v8

    add-int/2addr v10, v12

    add-int/2addr v1, v10

    .line 242
    add-int/2addr v5, v1

    .line 243
    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->Sum0(I)I

    move-result v10

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->Maj(III)I

    move-result v12

    add-int/2addr v10, v12

    add-int/2addr v1, v10

    .line 244
    add-int/lit8 v8, v8, 0x1

    .line 247
    invoke-direct {p0, v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->Sum1(I)I

    move-result v10

    invoke-direct {p0, v5, v6, v7}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->Ch(III)I

    move-result v12

    add-int/2addr v10, v12

    aget v11, v11, v8

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    aget v11, v11, v8

    add-int/2addr v10, v11

    add-int/2addr v0, v10

    .line 248
    add-int/2addr v4, v0

    .line 249
    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->Sum0(I)I

    move-result v10

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->Maj(III)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v0, v10

    .line 250
    add-int/lit8 v8, v8, 0x1

    .line 202
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 253
    .end local v9    # "i":I
    :cond_1
    iget v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H1:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H1:I

    .line 254
    iget v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H2:I

    add-int/2addr v9, v1

    iput v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H2:I

    .line 255
    iget v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H3:I

    add-int/2addr v9, v2

    iput v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H3:I

    .line 256
    iget v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H4:I

    add-int/2addr v9, v3

    iput v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H4:I

    .line 257
    iget v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H5:I

    add-int/2addr v9, v4

    iput v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H5:I

    .line 258
    iget v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H6:I

    add-int/2addr v9, v5

    iput v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H6:I

    .line 259
    iget v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H7:I

    add-int/2addr v9, v6

    iput v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H7:I

    .line 260
    iget v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H8:I

    add-int/2addr v9, v7

    iput v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H8:I

    .line 265
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    .line 266
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    const/16 v11, 0x10

    if-ge v10, v11, :cond_2

    .line 268
    iget-object v11, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    aput v9, v11, v10

    .line 266
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 270
    .end local v10    # "i":I
    :cond_2
    return-void
.end method

.method protected blacklist processLength(J)V
    .locals 4
    .param p1, "bitLength"    # J

    .line 124
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->processBlock()V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aput v2, v0, v1

    .line 130
    const/16 v1, 0xf

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v2, v2

    aput v2, v0, v1

    .line 131
    return-void
.end method

.method protected blacklist processWord([BI)V
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    .line 109
    aget-byte v0, p1, p2

    shl-int/lit8 v0, v0, 0x18

    .line 110
    .local v0, "n":I
    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x10

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 111
    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 112
    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 113
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    aput v0, v1, v3

    .line 115
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    if-ne v3, v2, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->processBlock()V

    .line 119
    :cond_0
    return-void
.end method

.method public blacklist reset()V
    .locals 4

    .line 157
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    .line 162
    const v0, -0x3efa6128

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H1:I

    .line 163
    const v0, 0x367cd507

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H2:I

    .line 164
    const v0, 0x3070dd17

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H3:I

    .line 165
    const v0, -0x8f1a6c7

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H4:I

    .line 166
    const v0, -0x3ff4cf

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H5:I

    .line 167
    const v0, 0x68581511

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H6:I

    .line 168
    const v0, 0x64f98fa7

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H7:I

    .line 169
    const v0, -0x4105b05c

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->H8:I

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    .line 172
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    array-length v3, v2

    if-eq v1, v3, :cond_0

    .line 174
    aput v0, v2, v1

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public blacklist reset(Lcom/android/internal/org/bouncycastle/util/Memoable;)V
    .locals 1
    .param p1, "other"    # Lcom/android/internal/org/bouncycastle/util/Memoable;

    .line 334
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;

    .line 336
    .local v0, "d":Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;->doCopy(Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;)V

    .line 337
    return-void
.end method
