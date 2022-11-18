.class public final Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;
.super Ljava/lang/Object;
.source "TwofishEngine.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final blacklist BLOCK_SIZE:I = 0x10

.field private static final blacklist GF256_FDBK:I = 0x169

.field private static final blacklist GF256_FDBK_2:I = 0xb4

.field private static final blacklist GF256_FDBK_4:I = 0x5a

.field private static final blacklist INPUT_WHITEN:I = 0x0

.field private static final blacklist MAX_KEY_BITS:I = 0x100

.field private static final blacklist MAX_ROUNDS:I = 0x10

.field private static final blacklist OUTPUT_WHITEN:I = 0x4

.field private static final blacklist P:[[B

.field private static final blacklist P_00:I = 0x1

.field private static final blacklist P_01:I = 0x0

.field private static final blacklist P_02:I = 0x0

.field private static final blacklist P_03:I = 0x1

.field private static final blacklist P_04:I = 0x1

.field private static final blacklist P_10:I = 0x0

.field private static final blacklist P_11:I = 0x0

.field private static final blacklist P_12:I = 0x1

.field private static final blacklist P_13:I = 0x1

.field private static final blacklist P_14:I = 0x0

.field private static final blacklist P_20:I = 0x1

.field private static final blacklist P_21:I = 0x1

.field private static final blacklist P_22:I = 0x0

.field private static final blacklist P_23:I = 0x0

.field private static final blacklist P_24:I = 0x0

.field private static final blacklist P_30:I = 0x0

.field private static final blacklist P_31:I = 0x1

.field private static final blacklist P_32:I = 0x1

.field private static final blacklist P_33:I = 0x0

.field private static final blacklist P_34:I = 0x1

.field private static final blacklist ROUNDS:I = 0x10

.field private static final blacklist ROUND_SUBKEYS:I = 0x8

.field private static final blacklist RS_GF_FDBK:I = 0x14d

.field private static final blacklist SK_BUMP:I = 0x1010101

.field private static final blacklist SK_ROTL:I = 0x9

.field private static final blacklist SK_STEP:I = 0x2020202

.field private static final blacklist TOTAL_SUBKEYS:I = 0x28


# instance fields
.field private blacklist encrypting:Z

.field private blacklist gMDS0:[I

.field private blacklist gMDS1:[I

.field private blacklist gMDS2:[I

.field private blacklist gMDS3:[I

.field private blacklist gSBox:[I

.field private blacklist gSubKeys:[I

.field private blacklist k64Cnt:I

.field private blacklist workingKey:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/16 v1, 0x100

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    return-void

    :array_0
    .array-data 1
        -0x57t
        0x67t
        -0x4dt
        -0x18t
        0x4t
        -0x3t
        -0x5dt
        0x76t
        -0x66t
        -0x6et
        -0x80t
        0x78t
        -0x1ct
        -0x23t
        -0x2ft
        0x38t
        0xdt
        -0x3at
        0x35t
        -0x68t
        0x18t
        -0x9t
        -0x14t
        0x6ct
        0x43t
        0x75t
        0x37t
        0x26t
        -0x6t
        0x13t
        -0x6ct
        0x48t
        -0xet
        -0x30t
        -0x75t
        0x30t
        -0x7ct
        0x54t
        -0x21t
        0x23t
        0x19t
        0x5bt
        0x3dt
        0x59t
        -0xdt
        -0x52t
        -0x5et
        -0x7et
        0x63t
        0x1t
        -0x7dt
        0x2et
        -0x27t
        0x51t
        -0x65t
        0x7ct
        -0x5at
        -0x15t
        -0x5bt
        -0x42t
        0x16t
        0xct
        -0x1dt
        0x61t
        -0x40t
        -0x74t
        0x3at
        -0xbt
        0x73t
        0x2ct
        0x25t
        0xbt
        -0x45t
        0x4et
        -0x77t
        0x6bt
        0x53t
        0x6at
        -0x4ct
        -0xft
        -0x1ft
        -0x1at
        -0x43t
        0x45t
        -0x1et
        -0xct
        -0x4at
        0x66t
        -0x34t
        -0x6bt
        0x3t
        0x56t
        -0x2ct
        0x1ct
        0x1et
        -0x29t
        -0x5t
        -0x3dt
        -0x72t
        -0x4bt
        -0x17t
        -0x31t
        -0x41t
        -0x46t
        -0x16t
        0x77t
        0x39t
        -0x51t
        0x33t
        -0x37t
        0x62t
        0x71t
        -0x7ft
        0x79t
        0x9t
        -0x53t
        0x24t
        -0x33t
        -0x7t
        -0x28t
        -0x1bt
        -0x3bt
        -0x47t
        0x4dt
        0x44t
        0x8t
        -0x7at
        -0x19t
        -0x5ft
        0x1dt
        -0x56t
        -0x13t
        0x6t
        0x70t
        -0x4et
        -0x2et
        0x41t
        0x7bt
        -0x60t
        0x11t
        0x31t
        -0x3et
        0x27t
        -0x70t
        0x20t
        -0xat
        0x60t
        -0x1t
        -0x6at
        0x5ct
        -0x4ft
        -0x55t
        -0x62t
        -0x64t
        0x52t
        0x1bt
        0x5ft
        -0x6dt
        0xat
        -0x11t
        -0x6ft
        -0x7bt
        0x49t
        -0x12t
        0x2dt
        0x4ft
        -0x71t
        0x3bt
        0x47t
        -0x79t
        0x6dt
        0x46t
        -0x2at
        0x3et
        0x69t
        0x64t
        0x2at
        -0x32t
        -0x35t
        0x2ft
        -0x4t
        -0x69t
        0x5t
        0x7at
        -0x54t
        0x7ft
        -0x2bt
        0x1at
        0x4bt
        0xet
        -0x59t
        0x5at
        0x28t
        0x14t
        0x3ft
        0x29t
        -0x78t
        0x3ct
        0x4ct
        0x2t
        -0x48t
        -0x26t
        -0x50t
        0x17t
        0x55t
        0x1ft
        -0x76t
        0x7dt
        0x57t
        -0x39t
        -0x73t
        0x74t
        -0x49t
        -0x3ct
        -0x61t
        0x72t
        0x7et
        0x15t
        0x22t
        0x12t
        0x58t
        0x7t
        -0x67t
        0x34t
        0x6et
        0x50t
        -0x22t
        0x68t
        0x65t
        -0x44t
        -0x25t
        -0x8t
        -0x38t
        -0x58t
        0x2bt
        0x40t
        -0x24t
        -0x2t
        0x32t
        -0x5ct
        -0x36t
        0x10t
        0x21t
        -0x10t
        -0x2dt
        0x5dt
        0xft
        0x0t
        0x6ft
        -0x63t
        0x36t
        0x42t
        0x4at
        0x5et
        -0x3ft
        -0x20t
    .end array-data

    :array_1
    .array-data 1
        0x75t
        -0xdt
        -0x3at
        -0xct
        -0x25t
        0x7bt
        -0x5t
        -0x38t
        0x4at
        -0x2dt
        -0x1at
        0x6bt
        0x45t
        0x7dt
        -0x18t
        0x4bt
        -0x2at
        0x32t
        -0x28t
        -0x3t
        0x37t
        0x71t
        -0xft
        -0x1ft
        0x30t
        0xft
        -0x8t
        0x1bt
        -0x79t
        -0x6t
        0x6t
        0x3ft
        0x5et
        -0x46t
        -0x52t
        0x5bt
        -0x76t
        0x0t
        -0x44t
        -0x63t
        0x6dt
        -0x3ft
        -0x4ft
        0xet
        -0x80t
        0x5dt
        -0x2et
        -0x2bt
        -0x60t
        -0x7ct
        0x7t
        0x14t
        -0x4bt
        -0x70t
        0x2ct
        -0x5dt
        -0x4et
        0x73t
        0x4ct
        0x54t
        -0x6et
        0x74t
        0x36t
        0x51t
        0x38t
        -0x50t
        -0x43t
        0x5at
        -0x4t
        0x60t
        0x62t
        -0x6at
        0x6ct
        0x42t
        -0x9t
        0x10t
        0x7ct
        0x28t
        0x27t
        -0x74t
        0x13t
        -0x6bt
        -0x64t
        -0x39t
        0x24t
        0x46t
        0x3bt
        0x70t
        -0x36t
        -0x1dt
        -0x7bt
        -0x35t
        0x11t
        -0x30t
        -0x6dt
        -0x48t
        -0x5at
        -0x7dt
        0x20t
        -0x1t
        -0x61t
        0x77t
        -0x3dt
        -0x34t
        0x3t
        0x6ft
        0x8t
        -0x41t
        0x40t
        -0x19t
        0x2bt
        -0x1et
        0x79t
        0xct
        -0x56t
        -0x7et
        0x41t
        0x3at
        -0x16t
        -0x47t
        -0x1ct
        -0x66t
        -0x5ct
        -0x69t
        0x7et
        -0x26t
        0x7at
        0x17t
        0x66t
        -0x6ct
        -0x5ft
        0x1dt
        0x3dt
        -0x10t
        -0x22t
        -0x4dt
        0xbt
        0x72t
        -0x59t
        0x1ct
        -0x11t
        -0x2ft
        0x53t
        0x3et
        -0x71t
        0x33t
        0x26t
        0x5ft
        -0x14t
        0x76t
        0x2at
        0x49t
        -0x7ft
        -0x78t
        -0x12t
        0x21t
        -0x3ct
        0x1at
        -0x15t
        -0x27t
        -0x3bt
        0x39t
        -0x67t
        -0x33t
        -0x53t
        0x31t
        -0x75t
        0x1t
        0x18t
        0x23t
        -0x23t
        0x1ft
        0x4et
        0x2dt
        -0x7t
        0x48t
        0x4ft
        -0xet
        0x65t
        -0x72t
        0x78t
        0x5ct
        0x58t
        0x19t
        -0x73t
        -0x1bt
        -0x68t
        0x57t
        0x67t
        0x7ft
        0x5t
        0x64t
        -0x51t
        0x63t
        -0x4at
        -0x2t
        -0xbt
        -0x49t
        0x3ct
        -0x5bt
        -0x32t
        -0x17t
        0x68t
        0x44t
        -0x20t
        0x4dt
        0x43t
        0x69t
        0x29t
        0x2et
        -0x54t
        0x15t
        0x59t
        -0x58t
        0xat
        -0x62t
        0x6et
        0x47t
        -0x21t
        0x34t
        0x35t
        0x6at
        -0x31t
        -0x24t
        0x22t
        -0x37t
        -0x40t
        -0x65t
        -0x77t
        -0x2ct
        -0x13t
        -0x55t
        0x12t
        -0x5et
        0xdt
        0x52t
        -0x45t
        0x2t
        0x2ft
        -0x57t
        -0x29t
        0x61t
        0x1et
        -0x4ct
        0x50t
        0x4t
        -0xat
        -0x3et
        0x16t
        0x25t
        -0x7at
        0x56t
        0x55t
        0x9t
        -0x42t
        -0x6ft
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .locals 11

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->encrypting:Z

    .line 211
    const/16 v1, 0x100

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    .line 212
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    .line 213
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    .line 214
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    .line 223
    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    .line 225
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    .line 230
    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 231
    .local v3, "m1":[I
    new-array v4, v2, [I

    .line 232
    .local v4, "mX":[I
    new-array v2, v2, [I

    .line 235
    .local v2, "mY":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_0

    .line 237
    sget-object v6, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v7, v6, v0

    aget-byte v7, v7, v5

    and-int/lit16 v7, v7, 0xff

    .line 238
    .local v7, "j":I
    aput v7, v3, v0

    .line 239
    invoke-direct {p0, v7}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Mx_X(I)I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    aput v8, v4, v0

    .line 240
    invoke-direct {p0, v7}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Mx_Y(I)I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    aput v8, v2, v0

    .line 242
    const/4 v8, 0x1

    aget-object v6, v6, v8

    aget-byte v6, v6, v5

    and-int/lit16 v6, v6, 0xff

    .line 243
    .end local v7    # "j":I
    .local v6, "j":I
    aput v6, v3, v8

    .line 244
    invoke-direct {p0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Mx_X(I)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    aput v7, v4, v8

    .line 245
    invoke-direct {p0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Mx_Y(I)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    aput v7, v2, v8

    .line 247
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    aget v9, v3, v8

    aget v10, v4, v8

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    aget v10, v2, v8

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    aget v10, v2, v8

    shl-int/lit8 v10, v10, 0x18

    or-int/2addr v9, v10

    aput v9, v7, v5

    .line 250
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    aget v9, v2, v0

    aget v10, v2, v0

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    aget v10, v4, v0

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    aget v10, v3, v0

    shl-int/lit8 v10, v10, 0x18

    or-int/2addr v9, v10

    aput v9, v7, v5

    .line 253
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    aget v9, v4, v8

    aget v10, v2, v8

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    aget v10, v3, v8

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    aget v8, v2, v8

    shl-int/lit8 v8, v8, 0x18

    or-int/2addr v8, v9

    aput v8, v7, v5

    .line 256
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    aget v8, v4, v0

    aget v9, v3, v0

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    aget v9, v2, v0

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    aget v9, v4, v0

    shl-int/lit8 v9, v9, 0x18

    or-int/2addr v8, v9

    aput v8, v7, v5

    .line 235
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 259
    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_0
    return-void
.end method

.method private blacklist Bits32ToBytes(I[BI)V
    .locals 2
    .param p1, "in"    # I
    .param p2, "b"    # [B
    .param p3, "offset"    # I

    .line 677
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 678
    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 679
    add-int/lit8 v0, p3, 0x2

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 680
    add-int/lit8 v0, p3, 0x3

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 681
    return-void
.end method

.method private blacklist BytesTo32Bits([BI)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "p"    # I

    .line 669
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private blacklist F32(I[I)I
    .locals 17
    .param p1, "x"    # I
    .param p2, "k32"    # [I

    .line 527
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v1

    .line 528
    .local v1, "b0":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v2

    .line 529
    .local v2, "b1":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v3

    .line 530
    .local v3, "b2":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v4

    .line 531
    .local v4, "b3":I
    const/4 v5, 0x0

    aget v6, p2, v5

    .line 532
    .local v6, "k0":I
    const/4 v7, 0x1

    aget v8, p2, v7

    .line 533
    .local v8, "k1":I
    const/4 v9, 0x2

    aget v9, p2, v9

    .line 534
    .local v9, "k2":I
    const/4 v10, 0x3

    aget v11, p2, v10

    .line 536
    .local v11, "k3":I
    const/4 v12, 0x0

    .line 537
    .local v12, "result":I
    iget v13, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    and-int/2addr v10, v13

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_0

    .line 540
    :pswitch_0
    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v13, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v14, v13, v5

    aget-byte v14, v14, v1

    and-int/lit16 v14, v14, 0xff

    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v15

    xor-int/2addr v14, v15

    aget v10, v10, v14

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    aget-object v5, v13, v5

    aget-byte v5, v5, v2

    and-int/lit16 v5, v5, 0xff

    .line 541
    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v15

    xor-int/2addr v5, v15

    aget v5, v14, v5

    xor-int/2addr v5, v10

    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    aget-object v14, v13, v7

    aget-byte v14, v14, v3

    and-int/lit16 v14, v14, 0xff

    .line 542
    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v15

    xor-int/2addr v14, v15

    aget v10, v10, v14

    xor-int/2addr v5, v10

    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    aget-object v7, v13, v7

    aget-byte v7, v7, v4

    and-int/lit16 v7, v7, 0xff

    .line 543
    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v13

    xor-int/2addr v7, v13

    aget v7, v10, v7

    xor-int v12, v5, v7

    .line 544
    goto/16 :goto_0

    .line 546
    :pswitch_1
    sget-object v10, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v13, v10, v7

    aget-byte v13, v13, v1

    and-int/lit16 v13, v13, 0xff

    invoke-direct {v0, v11}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v14

    xor-int v1, v13, v14

    .line 547
    aget-object v13, v10, v5

    aget-byte v13, v13, v2

    and-int/lit16 v13, v13, 0xff

    invoke-direct {v0, v11}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v14

    xor-int v2, v13, v14

    .line 548
    aget-object v13, v10, v5

    aget-byte v13, v13, v3

    and-int/lit16 v13, v13, 0xff

    invoke-direct {v0, v11}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v14

    xor-int v3, v13, v14

    .line 549
    aget-object v10, v10, v7

    aget-byte v10, v10, v4

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v0, v11}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v13

    xor-int v4, v10, v13

    .line 551
    :pswitch_2
    sget-object v10, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v13, v10, v7

    aget-byte v13, v13, v1

    and-int/lit16 v13, v13, 0xff

    invoke-direct {v0, v9}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v14

    xor-int v1, v13, v14

    .line 552
    aget-object v13, v10, v7

    aget-byte v13, v13, v2

    and-int/lit16 v13, v13, 0xff

    invoke-direct {v0, v9}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v14

    xor-int v2, v13, v14

    .line 553
    aget-object v13, v10, v5

    aget-byte v13, v13, v3

    and-int/lit16 v13, v13, 0xff

    invoke-direct {v0, v9}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v14

    xor-int v3, v13, v14

    .line 554
    aget-object v10, v10, v5

    aget-byte v10, v10, v4

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v0, v9}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v13

    xor-int v4, v10, v13

    .line 556
    :pswitch_3
    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v13, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v14, v13, v5

    aget-byte v15, v14, v1

    and-int/lit16 v15, v15, 0xff

    .line 557
    invoke-direct {v0, v8}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v16

    xor-int v15, v15, v16

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v15

    xor-int/2addr v14, v15

    aget v10, v10, v14

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    aget-object v15, v13, v5

    aget-object v16, v13, v7

    aget-byte v5, v16, v2

    and-int/lit16 v5, v5, 0xff

    .line 558
    invoke-direct {v0, v8}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v16

    xor-int v5, v5, v16

    aget-byte v5, v15, v5

    and-int/lit16 v5, v5, 0xff

    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v15

    xor-int/2addr v5, v15

    aget v5, v14, v5

    xor-int/2addr v5, v10

    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    aget-object v14, v13, v7

    const/4 v15, 0x0

    aget-object v15, v13, v15

    aget-byte v15, v15, v3

    and-int/lit16 v15, v15, 0xff

    .line 559
    invoke-direct {v0, v8}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v16

    xor-int v15, v15, v16

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v15

    xor-int/2addr v14, v15

    aget v10, v10, v14

    xor-int/2addr v5, v10

    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    aget-object v7, v13, v7

    aget-byte v13, v7, v4

    and-int/lit16 v13, v13, 0xff

    .line 560
    invoke-direct {v0, v8}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v14

    xor-int/2addr v13, v14

    aget-byte v7, v7, v13

    and-int/lit16 v7, v7, 0xff

    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v13

    xor-int/2addr v7, v13

    aget v7, v10, v7

    xor-int v12, v5, v7

    .line 563
    :goto_0
    return v12

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private blacklist Fe32_0(I)I
    .locals 3
    .param p1, "x"    # I

    .line 653
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    and-int/lit16 v1, p1, 0xff

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x0

    aget v1, v0, v1

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v2, v0, v2

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x200

    aget v2, v0, v2

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x201

    aget v0, v0, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private blacklist Fe32_3(I)I
    .locals 3
    .param p1, "x"    # I

    .line 661
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x0

    aget v1, v0, v1

    and-int/lit16 v2, p1, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v2, v0, v2

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x200

    aget v2, v0, v2

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x201

    aget v0, v0, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private blacklist LFSR1(I)I
    .locals 2
    .param p1, "x"    # I

    .line 610
    shr-int/lit8 v0, p1, 0x1

    .line 611
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    const/16 v1, 0xb4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v0, v1

    .line 610
    return v0
.end method

.method private blacklist LFSR2(I)I
    .locals 3
    .param p1, "x"    # I

    .line 616
    shr-int/lit8 v0, p1, 0x2

    .line 617
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0xb4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    xor-int/2addr v0, v1

    .line 618
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    const/16 v2, 0x5a

    :cond_1
    xor-int/2addr v0, v2

    .line 616
    return v0
.end method

.method private blacklist Mx_X(I)I
    .locals 1
    .param p1, "x"    # I

    .line 623
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->LFSR2(I)I

    move-result v0

    xor-int/2addr v0, p1

    return v0
.end method

.method private blacklist Mx_Y(I)I
    .locals 2
    .param p1, "x"    # I

    .line 628
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->LFSR1(I)I

    move-result v0

    xor-int/2addr v0, p1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->LFSR2(I)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private blacklist RS_MDS_Encode(II)I
    .locals 3
    .param p1, "k0"    # I
    .param p2, "k1"    # I

    .line 577
    move v0, p2

    .line 578
    .local v0, "r":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 580
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->RS_rem(I)I

    move-result v0

    .line 578
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 582
    .end local v1    # "i":I
    :cond_0
    xor-int/2addr v0, p1

    .line 583
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 585
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->RS_rem(I)I

    move-result v0

    .line 583
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 588
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private blacklist RS_rem(I)I
    .locals 5
    .param p1, "x"    # I

    .line 600
    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 601
    .local v0, "b":I
    shl-int/lit8 v1, v0, 0x1

    .line 602
    and-int/lit16 v2, v0, 0x80

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/16 v2, 0x14d

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    xor-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 603
    .local v1, "g2":I
    ushr-int/lit8 v2, v0, 0x1

    .line 604
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_1

    const/16 v3, 0xa6

    :cond_1
    xor-int/2addr v2, v3

    xor-int/2addr v2, v1

    .line 605
    .local v2, "g3":I
    shl-int/lit8 v3, p1, 0x8

    shl-int/lit8 v4, v2, 0x18

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v1, 0x10

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v2, 0x8

    xor-int/2addr v3, v4

    xor-int/2addr v3, v0

    return v3
.end method

.method private blacklist b0(I)I
    .locals 1
    .param p1, "x"    # I

    .line 633
    and-int/lit16 v0, p1, 0xff

    return v0
.end method

.method private blacklist b1(I)I
    .locals 1
    .param p1, "x"    # I

    .line 638
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private blacklist b2(I)I
    .locals 1
    .param p1, "x"    # I

    .line 643
    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private blacklist b3(I)I
    .locals 1
    .param p1, "x"    # I

    .line 648
    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private blacklist decryptBlock([BI[BI)V
    .locals 16
    .param p1, "src"    # [B
    .param p2, "srcIndex"    # I
    .param p3, "dst"    # [B
    .param p4, "dstIndex"    # I

    .line 492
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-direct/range {p0 .. p2}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v4

    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    xor-int/2addr v4, v5

    .line 493
    .local v4, "x2":I
    add-int/lit8 v5, p2, 0x4

    invoke-direct {v0, v1, v5}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v5

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v7, 0x5

    aget v6, v6, v7

    xor-int/2addr v5, v6

    .line 494
    .local v5, "x3":I
    add-int/lit8 v6, p2, 0x8

    invoke-direct {v0, v1, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v6

    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v8, 0x6

    aget v7, v7, v8

    xor-int/2addr v6, v7

    .line 495
    .local v6, "x0":I
    add-int/lit8 v7, p2, 0xc

    invoke-direct {v0, v1, v7}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v7

    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v9, 0x7

    aget v8, v8, v9

    xor-int/2addr v7, v8

    .line 497
    .local v7, "x1":I
    const/16 v8, 0x27

    .line 499
    .local v8, "k":I
    const/4 v9, 0x0

    .local v9, "r":I
    :goto_0
    const/16 v10, 0x10

    if-ge v9, v10, :cond_0

    .line 501
    invoke-direct {v0, v4}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v10

    .line 502
    .local v10, "t0":I
    invoke-direct {v0, v5}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v11

    .line 503
    .local v11, "t1":I
    mul-int/lit8 v12, v11, 0x2

    add-int/2addr v12, v10

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v14, v8, -0x1

    .end local v8    # "k":I
    .local v14, "k":I
    aget v8, v13, v8

    add-int/2addr v12, v8

    xor-int/2addr v7, v12

    .line 504
    shl-int/lit8 v8, v6, 0x1

    ushr-int/lit8 v12, v6, 0x1f

    or-int/2addr v8, v12

    add-int v12, v10, v11

    add-int/lit8 v15, v14, -0x1

    .end local v14    # "k":I
    .local v15, "k":I
    aget v13, v13, v14

    add-int/2addr v12, v13

    xor-int v6, v8, v12

    .line 505
    ushr-int/lit8 v8, v7, 0x1

    shl-int/lit8 v12, v7, 0x1f

    or-int v7, v8, v12

    .line 507
    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v8

    .line 508
    .end local v10    # "t0":I
    .local v8, "t0":I
    invoke-direct {v0, v7}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v10

    .line 509
    .end local v11    # "t1":I
    .local v10, "t1":I
    mul-int/lit8 v11, v10, 0x2

    add-int/2addr v11, v8

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v13, v15, -0x1

    .end local v15    # "k":I
    .local v13, "k":I
    aget v14, v12, v15

    add-int/2addr v11, v14

    xor-int/2addr v5, v11

    .line 510
    shl-int/lit8 v11, v4, 0x1

    ushr-int/lit8 v14, v4, 0x1f

    or-int/2addr v11, v14

    add-int v14, v8, v10

    add-int/lit8 v15, v13, -0x1

    .end local v13    # "k":I
    .restart local v15    # "k":I
    aget v12, v12, v13

    add-int/2addr v14, v12

    xor-int v4, v11, v14

    .line 511
    ushr-int/lit8 v11, v5, 0x1

    shl-int/lit8 v12, v5, 0x1f

    or-int v5, v11, v12

    .line 499
    add-int/lit8 v9, v9, 0x2

    move v8, v15

    goto :goto_0

    .line 514
    .end local v9    # "r":I
    .end local v10    # "t1":I
    .end local v15    # "k":I
    .local v8, "k":I
    :cond_0
    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    xor-int/2addr v9, v6

    invoke-direct {v0, v9, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    .line 515
    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    xor-int/2addr v9, v7

    add-int/lit8 v10, v3, 0x4

    invoke-direct {v0, v9, v2, v10}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    .line 516
    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    xor-int/2addr v9, v4

    add-int/lit8 v10, v3, 0x8

    invoke-direct {v0, v9, v2, v10}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    .line 517
    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v10, 0x3

    aget v9, v9, v10

    xor-int/2addr v9, v5

    add-int/lit8 v10, v3, 0xc

    invoke-direct {v0, v9, v2, v10}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    .line 518
    return-void
.end method

.method private blacklist encryptBlock([BI[BI)V
    .locals 16
    .param p1, "src"    # [B
    .param p2, "srcIndex"    # I
    .param p3, "dst"    # [B
    .param p4, "dstIndex"    # I

    .line 453
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-direct/range {p0 .. p2}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v4

    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    xor-int/2addr v4, v5

    .line 454
    .local v4, "x0":I
    add-int/lit8 v5, p2, 0x4

    invoke-direct {v0, v1, v5}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v5

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    xor-int/2addr v5, v6

    .line 455
    .local v5, "x1":I
    add-int/lit8 v6, p2, 0x8

    invoke-direct {v0, v1, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v6

    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v8, 0x2

    aget v7, v7, v8

    xor-int/2addr v6, v7

    .line 456
    .local v6, "x2":I
    add-int/lit8 v7, p2, 0xc

    invoke-direct {v0, v1, v7}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v7

    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v9, 0x3

    aget v8, v8, v9

    xor-int/2addr v7, v8

    .line 458
    .local v7, "x3":I
    const/16 v8, 0x8

    .line 460
    .local v8, "k":I
    const/4 v9, 0x0

    .local v9, "r":I
    :goto_0
    const/16 v10, 0x10

    if-ge v9, v10, :cond_0

    .line 462
    invoke-direct {v0, v4}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v10

    .line 463
    .local v10, "t0":I
    invoke-direct {v0, v5}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v11

    .line 464
    .local v11, "t1":I
    add-int v12, v10, v11

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v14, v8, 0x1

    .end local v8    # "k":I
    .local v14, "k":I
    aget v8, v13, v8

    add-int/2addr v12, v8

    xor-int/2addr v6, v12

    .line 465
    ushr-int/lit8 v8, v6, 0x1

    shl-int/lit8 v12, v6, 0x1f

    or-int v6, v8, v12

    .line 466
    shl-int/lit8 v8, v7, 0x1

    ushr-int/lit8 v12, v7, 0x1f

    or-int/2addr v8, v12

    mul-int/lit8 v12, v11, 0x2

    add-int/2addr v12, v10

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .local v15, "k":I
    aget v13, v13, v14

    add-int/2addr v12, v13

    xor-int v7, v8, v12

    .line 468
    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v8

    .line 469
    .end local v10    # "t0":I
    .local v8, "t0":I
    invoke-direct {v0, v7}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v10

    .line 470
    .end local v11    # "t1":I
    .local v10, "t1":I
    add-int v11, v8, v10

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v13, v15, 0x1

    .end local v15    # "k":I
    .local v13, "k":I
    aget v14, v12, v15

    add-int/2addr v11, v14

    xor-int/2addr v4, v11

    .line 471
    ushr-int/lit8 v11, v4, 0x1

    shl-int/lit8 v14, v4, 0x1f

    or-int v4, v11, v14

    .line 472
    shl-int/lit8 v11, v5, 0x1

    ushr-int/lit8 v14, v5, 0x1f

    or-int/2addr v11, v14

    mul-int/lit8 v14, v10, 0x2

    add-int/2addr v14, v8

    add-int/lit8 v15, v13, 0x1

    .end local v13    # "k":I
    .restart local v15    # "k":I
    aget v12, v12, v13

    add-int/2addr v14, v12

    xor-int v5, v11, v14

    .line 460
    add-int/lit8 v9, v9, 0x2

    move v8, v15

    goto :goto_0

    .line 475
    .end local v9    # "r":I
    .end local v10    # "t1":I
    .end local v15    # "k":I
    .local v8, "k":I
    :cond_0
    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v10, 0x4

    aget v9, v9, v10

    xor-int/2addr v9, v6

    invoke-direct {v0, v9, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    .line 476
    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v10, 0x5

    aget v9, v9, v10

    xor-int/2addr v9, v7

    add-int/lit8 v10, v3, 0x4

    invoke-direct {v0, v9, v2, v10}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    .line 477
    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v10, 0x6

    aget v9, v9, v10

    xor-int/2addr v9, v4

    add-int/lit8 v10, v3, 0x8

    invoke-direct {v0, v9, v2, v10}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    .line 478
    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v10, 0x7

    aget v9, v9, v10

    xor-int/2addr v9, v5

    add-int/lit8 v10, v3, 0xc

    invoke-direct {v0, v9, v2, v10}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    .line 479
    return-void
.end method

.method private blacklist setKey([B)V
    .locals 21
    .param p1, "key"    # [B

    .line 343
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x4

    new-array v3, v2, [I

    .line 344
    .local v3, "k32e":[I
    new-array v4, v2, [I

    .line 346
    .local v4, "k32o":[I
    new-array v5, v2, [I

    .line 347
    .local v5, "sBoxKeys":[I
    const/16 v6, 0x28

    new-array v6, v6, [I

    iput-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    .line 349
    iget v6, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    const/4 v7, 0x1

    if-lt v6, v7, :cond_4

    .line 354
    if-gt v6, v2, :cond_3

    .line 365
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v6, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    if-ge v2, v6, :cond_0

    .line 367
    mul-int/lit8 v6, v2, 0x8

    .line 369
    .local v6, "p":I
    invoke-direct {v0, v1, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v8

    aput v8, v3, v2

    .line 370
    add-int/lit8 v8, v6, 0x4

    invoke-direct {v0, v1, v8}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v8

    aput v8, v4, v2

    .line 372
    iget v8, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    sub-int/2addr v8, v7

    sub-int/2addr v8, v2

    aget v9, v3, v2

    aget v10, v4, v2

    invoke-direct {v0, v9, v10}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->RS_MDS_Encode(II)I

    move-result v9

    aput v9, v5, v8

    .line 365
    .end local v6    # "p":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 376
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    const/16 v6, 0x14

    if-ge v2, v6, :cond_1

    .line 378
    const v6, 0x2020202

    mul-int/2addr v6, v2

    .line 379
    .local v6, "q":I
    invoke-direct {v0, v6, v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->F32(I[I)I

    move-result v8

    .line 380
    .local v8, "A":I
    const v9, 0x1010101

    add-int/2addr v9, v6

    invoke-direct {v0, v9, v4}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->F32(I[I)I

    move-result v9

    .line 381
    .local v9, "B":I
    shl-int/lit8 v10, v9, 0x8

    ushr-int/lit8 v11, v9, 0x18

    or-int v9, v10, v11

    .line 382
    add-int/2addr v8, v9

    .line 383
    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    mul-int/lit8 v11, v2, 0x2

    aput v8, v10, v11

    .line 384
    add-int/2addr v8, v9

    .line 385
    mul-int/lit8 v11, v2, 0x2

    add-int/2addr v11, v7

    shl-int/lit8 v12, v8, 0x9

    ushr-int/lit8 v13, v8, 0x17

    or-int/2addr v12, v13

    aput v12, v10, v11

    .line 376
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 391
    .end local v2    # "i":I
    .end local v6    # "q":I
    .end local v8    # "A":I
    .end local v9    # "B":I
    :cond_1
    const/4 v2, 0x0

    aget v6, v5, v2

    .line 392
    .local v6, "k0":I
    aget v8, v5, v7

    .line 393
    .local v8, "k1":I
    const/4 v9, 0x2

    aget v9, v5, v9

    .line 394
    .local v9, "k2":I
    const/4 v10, 0x3

    aget v11, v5, v10

    .line 396
    .local v11, "k3":I
    const/16 v12, 0x400

    new-array v12, v12, [I

    iput-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    .line 397
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    const/16 v13, 0x100

    if-ge v12, v13, :cond_2

    .line 399
    move v13, v12

    .local v13, "b3":I
    move v14, v12

    .local v14, "b2":I
    move v15, v12

    .local v15, "b1":I
    move/from16 v16, v12

    .line 400
    .local v16, "b0":I
    iget v7, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    and-int/2addr v7, v10

    packed-switch v7, :pswitch_data_0

    move-object/from16 v18, v3

    .end local v3    # "k32e":[I
    .local v18, "k32e":[I
    goto/16 :goto_4

    .end local v18    # "k32e":[I
    .restart local v3    # "k32e":[I
    :pswitch_0
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 403
    :pswitch_1
    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v18, v12, 0x2

    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v19, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v20, v19, v2

    aget-byte v2, v20, v16

    and-int/lit16 v2, v2, 0xff

    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v20

    xor-int v2, v2, v20

    aget v2, v10, v2

    aput v2, v7, v18

    .line 404
    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v7, v12, 0x2

    const/4 v10, 0x1

    add-int/2addr v7, v10

    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    const/16 v18, 0x0

    aget-object v20, v19, v18

    aget-byte v1, v20, v15

    and-int/lit16 v1, v1, 0xff

    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v18

    xor-int v1, v1, v18

    aget v1, v10, v1

    aput v1, v2, v7

    .line 405
    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v2, v12, 0x2

    add-int/lit16 v2, v2, 0x200

    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    const/4 v10, 0x1

    aget-object v18, v19, v10

    aget-byte v10, v18, v14

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v18

    xor-int v10, v10, v18

    aget v7, v7, v10

    aput v7, v1, v2

    .line 406
    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v2, v12, 0x2

    add-int/lit16 v2, v2, 0x201

    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    const/4 v10, 0x1

    aget-object v17, v19, v10

    aget-byte v10, v17, v13

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v17

    xor-int v10, v10, v17

    aget v7, v7, v10

    aput v7, v1, v2

    .line 407
    move-object/from16 v18, v3

    goto/16 :goto_4

    .line 409
    :pswitch_2
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v2, 0x1

    aget-object v7, v1, v2

    aget-byte v2, v7, v16

    and-int/lit16 v2, v2, 0xff

    invoke-direct {v0, v11}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v7

    xor-int v16, v2, v7

    .line 410
    const/4 v2, 0x0

    aget-object v7, v1, v2

    aget-byte v7, v7, v15

    and-int/lit16 v7, v7, 0xff

    invoke-direct {v0, v11}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v10

    xor-int v15, v7, v10

    .line 411
    aget-object v7, v1, v2

    aget-byte v2, v7, v14

    and-int/lit16 v2, v2, 0xff

    invoke-direct {v0, v11}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v7

    xor-int v14, v2, v7

    .line 412
    const/4 v2, 0x1

    aget-object v1, v1, v2

    aget-byte v1, v1, v13

    and-int/lit16 v1, v1, 0xff

    invoke-direct {v0, v11}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v7

    xor-int v13, v1, v7

    .line 415
    :goto_3
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v7, v1, v2

    aget-byte v7, v7, v16

    and-int/lit16 v7, v7, 0xff

    invoke-direct {v0, v9}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v10

    xor-int v16, v7, v10

    .line 416
    aget-object v7, v1, v2

    aget-byte v2, v7, v15

    and-int/lit16 v2, v2, 0xff

    invoke-direct {v0, v9}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v7

    xor-int v15, v2, v7

    .line 417
    const/4 v2, 0x0

    aget-object v7, v1, v2

    aget-byte v7, v7, v14

    and-int/lit16 v7, v7, 0xff

    invoke-direct {v0, v9}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v10

    xor-int v14, v7, v10

    .line 418
    aget-object v1, v1, v2

    aget-byte v1, v1, v13

    and-int/lit16 v1, v1, 0xff

    invoke-direct {v0, v9}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v2

    xor-int v13, v1, v2

    .line 421
    :pswitch_3
    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v2, v12, 0x2

    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v10, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v18, 0x0

    aget-object v19, v10, v18

    move-object/from16 v18, v3

    .end local v3    # "k32e":[I
    .restart local v18    # "k32e":[I
    aget-byte v3, v19, v16

    and-int/lit16 v3, v3, 0xff

    .line 422
    invoke-direct {v0, v8}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v20

    xor-int v3, v3, v20

    aget-byte v3, v19, v3

    and-int/lit16 v3, v3, 0xff

    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v19

    xor-int v3, v3, v19

    aget v3, v7, v3

    aput v3, v1, v2

    .line 423
    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v2, v12, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    const/16 v17, 0x0

    aget-object v19, v10, v17

    aget-object v20, v10, v3

    aget-byte v3, v20, v15

    and-int/lit16 v3, v3, 0xff

    .line 424
    invoke-direct {v0, v8}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v20

    xor-int v3, v3, v20

    aget-byte v3, v19, v3

    and-int/lit16 v3, v3, 0xff

    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v19

    xor-int v3, v3, v19

    aget v3, v7, v3

    aput v3, v1, v2

    .line 425
    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v2, v12, 0x2

    add-int/lit16 v2, v2, 0x200

    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    const/4 v7, 0x1

    aget-object v19, v10, v7

    const/4 v7, 0x0

    aget-object v20, v10, v7

    aget-byte v7, v20, v14

    and-int/lit16 v7, v7, 0xff

    .line 426
    invoke-direct {v0, v8}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v20

    xor-int v7, v7, v20

    aget-byte v7, v19, v7

    and-int/lit16 v7, v7, 0xff

    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v19

    xor-int v7, v7, v19

    aget v3, v3, v7

    aput v3, v1, v2

    .line 427
    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v2, v12, 0x2

    add-int/lit16 v2, v2, 0x201

    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    const/4 v7, 0x1

    aget-object v10, v10, v7

    aget-byte v7, v10, v13

    and-int/lit16 v7, v7, 0xff

    .line 428
    invoke-direct {v0, v8}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v19

    xor-int v7, v7, v19

    aget-byte v7, v10, v7

    and-int/lit16 v7, v7, 0xff

    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v10

    xor-int/2addr v7, v10

    aget v3, v3, v7

    aput v3, v1, v2

    .line 397
    :goto_4
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    move-object/from16 v3, v18

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x3

    goto/16 :goto_2

    .line 437
    .end local v12    # "i":I
    .end local v13    # "b3":I
    .end local v14    # "b2":I
    .end local v15    # "b1":I
    .end local v16    # "b0":I
    .end local v18    # "k32e":[I
    .restart local v3    # "k32e":[I
    :cond_2
    return-void

    .line 356
    .end local v6    # "k0":I
    .end local v8    # "k1":I
    .end local v9    # "k2":I
    .end local v11    # "k3":I
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Key size larger than 256 bits"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 351
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Key size less than 64 bits"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 288
    const-string v0, "Twofish"

    return-object v0
.end method

.method public blacklist getBlockSize()I
    .locals 1

    .line 334
    const/16 v0, 0x10

    return v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "encrypting"    # Z
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 273
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    .line 275
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->encrypting:Z

    .line 276
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    .line 277
    array-length v1, v0

    div-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    .line 278
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->setKey([B)V

    .line 280
    return-void

    .line 283
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to Twofish init - "

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
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .line 297
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    if-eqz v0, :cond_3

    .line 302
    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 307
    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-gt v0, v1, :cond_1

    .line 312
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->encrypting:Z

    if-eqz v0, :cond_0

    .line 314
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->encryptBlock([BI[BI)V

    goto :goto_0

    .line 318
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->decryptBlock([BI[BI)V

    .line 321
    :goto_0
    const/16 v0, 0x10

    return v0

    .line 309
    :cond_1
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string/jumbo v1, "output buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_2
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Twofish not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist reset()V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    if-eqz v0, :cond_0

    .line 328
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->setKey([B)V

    .line 330
    :cond_0
    return-void
.end method
