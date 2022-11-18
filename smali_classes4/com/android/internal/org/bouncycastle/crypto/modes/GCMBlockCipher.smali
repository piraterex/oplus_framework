.class public Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;
.super Ljava/lang/Object;
.source "GCMBlockCipher.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/modes/AEADBlockCipher;


# static fields
.field private static final blacklist BLOCK_SIZE:I = 0x10

.field private static final blacklist MAX_INPUT_SIZE:J = 0xfffffffe0L


# instance fields
.field private blacklist H:[B

.field private blacklist J0:[B

.field private blacklist S:[B

.field private blacklist S_at:[B

.field private blacklist S_atPre:[B

.field private blacklist atBlock:[B

.field private blacklist atBlockPos:I

.field private blacklist atLength:J

.field private blacklist atLengthPre:J

.field private blacklist blocksRemaining:I

.field private blacklist bufBlock:[B

.field private blacklist bufOff:I

.field private blacklist cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

.field private blacklist counter:[B

.field private blacklist exp:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

.field private blacklist forEncryption:Z

.field private blacklist initialAssociatedText:[B

.field private blacklist initialised:Z

.field private blacklist lastKey:[B

.field private blacklist macBlock:[B

.field private blacklist macSize:I

.field private blacklist multiplier:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

.field private blacklist nonce:[B

.field private blacklist totalLength:J


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .locals 1
    .param p1, "c"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;)V

    .line 66
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;)V
    .locals 2
    .param p1, "c"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .param p2, "m"    # Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 76
    if-nez p2, :cond_0

    .line 78
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;-><init>()V

    move-object p2, v0

    .line 81
    :cond_0
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 82
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    .line 83
    return-void

    .line 72
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cipher required with a block size of 16."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkStatus()V
    .locals 2

    .line 683
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialised:Z

    if-nez v0, :cond_1

    .line 685
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 687
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GCM cipher cannot be reused for encryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GCM cipher needs to be initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :cond_1
    return-void
.end method

.method private blacklist gHASH([B[BI)V
    .locals 3
    .param p1, "Y"    # [B
    .param p2, "b"    # [B
    .param p3, "len"    # I

    .line 639
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 641
    sub-int v1, p3, v0

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 642
    .local v1, "num":I
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    .line 639
    .end local v1    # "num":I
    add-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 644
    .end local v0    # "pos":I
    :cond_0
    return-void
.end method

.method private blacklist gHASHBlock([B[B)V
    .locals 1
    .param p1, "Y"    # [B
    .param p2, "b"    # [B

    .line 648
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    .line 649
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    invoke-interface {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    .line 650
    return-void
.end method

.method private blacklist gHASHBlock([B[BI)V
    .locals 1
    .param p1, "Y"    # [B
    .param p2, "b"    # [B
    .param p3, "off"    # I

    .line 654
    invoke-static {p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[BI)V

    .line 655
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    invoke-interface {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    .line 656
    return-void
.end method

.method private blacklist gHASHPartial([B[BII)V
    .locals 1
    .param p1, "Y"    # [B
    .param p2, "b"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I

    .line 660
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[BII)V

    .line 661
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    invoke-interface {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    .line 662
    return-void
.end method

.method private blacklist getNextCTRBlock([B)V
    .locals 4
    .param p1, "block"    # [B

    .line 666
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->blocksRemaining:I

    if-eqz v0, :cond_0

    .line 670
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->blocksRemaining:I

    .line 672
    const/4 v0, 0x1

    .line 673
    .local v0, "c":I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    const/16 v2, 0xf

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v0, v3

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    ushr-int/lit8 v0, v0, 0x8

    .line 674
    const/16 v2, 0xe

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v0, v3

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    ushr-int/lit8 v0, v0, 0x8

    .line 675
    const/16 v2, 0xd

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v0, v3

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    ushr-int/lit8 v0, v0, 0x8

    .line 676
    const/16 v2, 0xc

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v0, v3

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 678
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3, p1, v3}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 679
    return-void

    .line 668
    .end local v0    # "c":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to process too many blocks"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getTotalInputSizeAfterNewInput(I)J
    .locals 4
    .param p1, "newInputLen"    # I

    .line 246
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private blacklist initCipher()V
    .locals 9

    .line 307
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/16 v1, 0x10

    const/4 v4, 0x0

    if-lez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    invoke-static {v0, v4, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    iget-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    iput-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    .line 314
    :cond_0
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    if-lez v0, :cond_1

    .line 316
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    invoke-direct {p0, v5, v6, v4, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    .line 317
    iget-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    int-to-long v7, v0

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    .line 320
    :cond_1
    iget-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    cmp-long v0, v5, v2

    if-lez v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-static {v0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 324
    :cond_2
    return-void
.end method

.method private blacklist processBlock([BI[BI)V
    .locals 8
    .param p1, "buf"    # [B
    .param p2, "bufOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .line 590
    array-length v0, p3

    sub-int/2addr v0, p4

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 594
    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 596
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initCipher()V

    .line 599
    :cond_0
    new-array v0, v1, [B

    .line 600
    .local v0, "ctrBlock":[B
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->getNextCTRBlock([B)V

    .line 602
    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v2, :cond_1

    .line 604
    invoke-static {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[BI)V

    .line 605
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-direct {p0, v2, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    .line 606
    const/4 v2, 0x0

    invoke-static {v0, v2, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 610
    :cond_1
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[BI)V

    .line 611
    const/4 v3, 0x0

    move-object v2, v0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([BI[BI[BI)V

    .line 614
    :goto_0
    iget-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    .line 615
    return-void

    .line 592
    .end local v0    # "ctrBlock":[B
    :cond_2
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string v1, "Output buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist processPartial([BII[BI)V
    .locals 5
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I

    .line 619
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 620
    .local v0, "ctrBlock":[B
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->getNextCTRBlock([B)V

    .line 622
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 624
    invoke-static {p1, p2, v0, v2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([BI[BII)V

    .line 625
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    goto :goto_0

    .line 629
    :cond_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    .line 630
    invoke-static {p1, p2, v0, v2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([BI[BII)V

    .line 633
    :goto_0
    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 634
    iget-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    .line 635
    return-void
.end method

.method private blacklist reset(Z)V
    .locals 4
    .param p1, "clearMac"    # Z

    .line 549
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->reset()V

    .line 553
    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    .line 554
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    .line 555
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    .line 556
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    .line 557
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    .line 558
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    .line 559
    iput-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    .line 560
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    .line 561
    const/4 v3, -0x2

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->blocksRemaining:I

    .line 562
    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 563
    iput-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    .line 565
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    if-eqz v1, :cond_0

    .line 567
    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 570
    :cond_0
    if-eqz p1, :cond_1

    .line 572
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    .line 575
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v1, :cond_2

    .line 577
    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialised:Z

    goto :goto_0

    .line 581
    :cond_2
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    if-eqz v1, :cond_3

    .line 583
    array-length v2, v1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->processAADBytes([BII)V

    .line 586
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .locals 11
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 424
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->checkStatus()V

    .line 426
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 428
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initCipher()V

    .line 431
    :cond_0
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 433
    .local v0, "extra":I
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    const-string v4, "Output buffer too short"

    if-eqz v1, :cond_2

    .line 435
    array-length v1, p1

    sub-int/2addr v1, p2

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr v5, v0

    if-lt v1, v5, :cond_1

    goto :goto_0

    .line 437
    :cond_1
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    invoke-direct {v1, v4}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 442
    :cond_2
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    if-lt v0, v1, :cond_b

    .line 446
    sub-int/2addr v0, v1

    .line 448
    array-length v1, p1

    sub-int/2addr v1, p2

    if-lt v1, v0, :cond_a

    .line 454
    :goto_0
    if-lez v0, :cond_3

    .line 456
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    const/4 v7, 0x0

    move-object v5, p0

    move v8, v0

    move-object v9, p1

    move v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->processPartial([BII[BI)V

    .line 459
    :cond_3
    iget-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    .line 461
    iget-wide v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    cmp-long v4, v4, v6

    const-wide/16 v5, 0x8

    const/16 v7, 0x10

    const/4 v8, 0x0

    if-lez v4, :cond_7

    .line 471
    if-lez v1, :cond_4

    .line 473
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    invoke-direct {p0, v4, v9, v8, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    .line 477
    :cond_4
    iget-wide v9, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    cmp-long v1, v9, v2

    if-lez v1, :cond_5

    .line 479
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    .line 483
    :cond_5
    iget-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    mul-long/2addr v1, v5

    const-wide/16 v3, 0x7f

    add-long/2addr v1, v3

    const/4 v3, 0x7

    ushr-long/2addr v1, v3

    .line 486
    .local v1, "c":J
    new-array v3, v7, [B

    .line 487
    .local v3, "H_c":[B
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    if-nez v4, :cond_6

    .line 489
    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/BasicGCMExponentiator;

    invoke-direct {v4}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/BasicGCMExponentiator;-><init>()V

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    .line 490
    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    invoke-interface {v4, v9}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;->init([B)V

    .line 492
    :cond_6
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    invoke-interface {v4, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;->exponentiateX(J[B)V

    .line 495
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    invoke-static {v4, v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiply([B[B)V

    .line 498
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    invoke-static {v4, v9}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    .line 502
    .end local v1    # "c":J
    .end local v3    # "H_c":[B
    :cond_7
    new-array v1, v7, [B

    .line 503
    .local v1, "X":[B
    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    mul-long/2addr v2, v5

    invoke-static {v2, v3, v1, v8}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 504
    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    mul-long/2addr v2, v5

    const/16 v4, 0x8

    invoke-static {v2, v3, v1, v4}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 506
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-direct {p0, v2, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    .line 509
    new-array v2, v7, [B

    .line 510
    .local v2, "tag":[B
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-interface {v3, v4, v8, v2, v8}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 511
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    .line 513
    move v3, v0

    .line 516
    .local v3, "resultLen":I
    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    new-array v5, v4, [B

    iput-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    .line 517
    invoke-static {v2, v8, v5, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 519
    iget-boolean v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v4, :cond_8

    .line 522
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr v5, p2

    iget v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-static {v4, v8, p1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 523
    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr v3, v4

    goto :goto_1

    .line 528
    :cond_8
    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    new-array v5, v4, [B

    .line 529
    .local v5, "msgMac":[B
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    invoke-static {v6, v0, v5, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 530
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    invoke-static {v4, v5}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 536
    .end local v5    # "msgMac":[B
    :goto_1
    invoke-direct {p0, v8}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->reset(Z)V

    .line 538
    return v3

    .line 532
    .restart local v5    # "msgMac":[B
    :cond_9
    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string/jumbo v6, "mac check in GCM failed"

    invoke-direct {v4, v6}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 450
    .end local v1    # "X":[B
    .end local v2    # "tag":[B
    .end local v3    # "resultLen":I
    .end local v5    # "msgMac":[B
    :cond_a
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    invoke-direct {v1, v4}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 444
    :cond_b
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v2, "data too short"

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/GCM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMac()[B
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    if-nez v0, :cond_0

    .line 225
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    new-array v0, v0, [B

    return-object v0

    .line 227
    :cond_0
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOutputSize(I)I
    .locals 2
    .param p1, "len"    # I

    .line 232
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    .line 234
    .local v0, "totalData":I
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 236
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr v1, v0

    return v1

    .line 239
    :cond_0
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    sub-int v1, v0, v1

    :goto_0
    return v1
.end method

.method public blacklist getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public blacklist getUpdateOutputSize(I)I
    .locals 2
    .param p1, "len"    # I

    .line 252
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    .line 253
    .local v0, "totalData":I
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-nez v1, :cond_1

    .line 255
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    if-ge v0, v1, :cond_0

    .line 257
    const/4 v1, 0x0

    return v1

    .line 259
    :cond_0
    sub-int/2addr v0, v1

    .line 261
    :cond_1
    rem-int/lit8 v1, v0, 0x10

    sub-int v1, v0, v1

    return v1
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .locals 11
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 102
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    .line 104
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialised:Z

    .line 107
    const/4 v2, 0x0

    .line 109
    .local v2, "newNonce":[B
    instance-of v3, p2, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    const/16 v4, 0x10

    if-eqz v3, :cond_1

    .line 111
    move-object v3, p2

    check-cast v3, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    .line 113
    .local v3, "param":Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v2

    .line 114
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    .line 116
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v5

    .line 117
    .local v5, "macSizeBits":I
    const/16 v6, 0x20

    if-lt v5, v6, :cond_0

    const/16 v6, 0x80

    if-gt v5, v6, :cond_0

    rem-int/lit8 v6, v5, 0x8

    if-nez v6, :cond_0

    .line 122
    div-int/lit8 v6, v5, 0x8

    iput v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    .line 123
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getKey()Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    move-result-object v3

    .line 124
    .end local v5    # "macSizeBits":I
    .local v3, "keyParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    goto :goto_0

    .line 119
    .local v3, "param":Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;
    .restart local v5    # "macSizeBits":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid value for MAC size: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    .end local v3    # "param":Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;
    .end local v5    # "macSizeBits":I
    :cond_1
    instance-of v3, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v3, :cond_c

    .line 127
    move-object v3, p2

    check-cast v3, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 129
    .local v3, "param":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v2

    .line 130
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    .line 131
    iput v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    .line 132
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 133
    .local v3, "keyParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    nop

    .line 139
    :goto_0
    if-eqz p1, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr v5, v4

    .line 140
    .local v5, "bufLength":I
    :goto_1
    new-array v6, v5, [B

    iput-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    .line 142
    if-eqz v2, :cond_b

    array-length v6, v2

    if-lt v6, v1, :cond_b

    .line 147
    if-eqz p1, :cond_5

    .line 149
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    if-eqz v6, :cond_5

    invoke-static {v6, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 151
    const-string v6, "cannot reuse nonce for GCM encryption"

    if-eqz v3, :cond_4

    .line 155
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->lastKey:[B

    if-eqz v7, :cond_5

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    .line 157
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_5
    :goto_2
    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    .line 163
    if-eqz v3, :cond_6

    .line 165
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->lastKey:[B

    .line 172
    :cond_6
    const/4 v6, 0x0

    if-eqz v3, :cond_7

    .line 174
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v7, v1, v3}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 176
    new-array v7, v4, [B

    iput-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    .line 177
    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v8, v7, v6, v7, v6}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 180
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    invoke-interface {v7, v8}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->init([B)V

    .line 181
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    goto :goto_3

    .line 183
    :cond_7
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    if-eqz v0, :cond_a

    .line 188
    :goto_3
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    .line 190
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v8, v7

    const/16 v9, 0xc

    if-ne v8, v9, :cond_8

    .line 192
    array-length v8, v7

    invoke-static {v7, v6, v0, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    const/16 v7, 0xf

    aput-byte v1, v0, v7

    goto :goto_4

    .line 197
    :cond_8
    array-length v1, v7

    invoke-direct {p0, v0, v7, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASH([B[BI)V

    .line 198
    new-array v0, v4, [B

    .line 199
    .local v0, "X":[B
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v1, v1

    int-to-long v7, v1

    const-wide/16 v9, 0x8

    mul-long/2addr v7, v9

    const/16 v1, 0x8

    invoke-static {v7, v8, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 200
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-direct {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    .line 203
    .end local v0    # "X":[B
    :goto_4
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    .line 204
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    .line 205
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    .line 206
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    .line 207
    iput v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    .line 208
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    .line 209
    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    .line 210
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    .line 211
    const/4 v4, -0x2

    iput v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->blocksRemaining:I

    .line 212
    iput v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 213
    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    .line 215
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    if-eqz v0, :cond_9

    .line 217
    array-length v1, v0

    invoke-virtual {p0, v0, v6, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->processAADBytes([BII)V

    .line 219
    :cond_9
    return-void

    .line 185
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key must be specified in initial init"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IV must be at least 1 byte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    .end local v3    # "keyParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    .end local v5    # "bufLength":I
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid parameters passed to GCM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist processAADByte(B)V
    .locals 5
    .param p1, "in"    # B

    .line 266
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->checkStatus()V

    .line 268
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->getTotalInputSizeAfterNewInput(I)J

    move-result-wide v1

    const-wide v3, 0xfffffffe0L

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    .line 273
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    aput-byte p1, v1, v2

    .line 274
    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    const/16 v0, 0x10

    if-ne v2, v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    .line 278
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    .line 279
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    .line 281
    :cond_0
    return-void

    .line 269
    :cond_1
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "Input exceeded 68719476704 bytes"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist processAADBytes([BII)V
    .locals 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .line 285
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->checkStatus()V

    .line 287
    invoke-direct {p0, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->getTotalInputSizeAfterNewInput(I)J

    move-result-wide v0

    const-wide v2, 0xfffffffe0L

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 292
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 294
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 295
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 298
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    invoke-direct {p0, v2, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    .line 299
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    .line 300
    iget-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    .line 292
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 288
    :cond_2
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "Input exceeded 68719476704 bytes"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist processByte(B[BI)I
    .locals 5
    .param p1, "in"    # B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 329
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->checkStatus()V

    .line 331
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->getTotalInputSizeAfterNewInput(I)J

    move-result-wide v1

    const-wide v3, 0xfffffffe0L

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    .line 336
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    aput-byte p1, v1, v2

    .line 337
    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    array-length v0, v1

    const/4 v3, 0x0

    if-ne v2, v0, :cond_1

    .line 339
    invoke-direct {p0, v1, v3, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->processBlock([BI[BI)V

    .line 340
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    const/16 v1, 0x10

    if-eqz v0, :cond_0

    .line 342
    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    goto :goto_0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-static {v0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 347
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 349
    :goto_0
    return v1

    .line 351
    :cond_1
    return v3

    .line 332
    :cond_2
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "Input exceeded 68719476704 bytes"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist processBytes([BII[BI)I
    .locals 7
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 357
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->checkStatus()V

    .line 359
    invoke-direct {p0, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->getTotalInputSizeAfterNewInput(I)J

    move-result-wide v0

    const-wide v2, 0xfffffffe0L

    cmp-long v0, v0, v2

    if-gtz v0, :cond_7

    .line 364
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_6

    .line 369
    const/4 v0, 0x0

    .line 371
    .local v0, "resultLen":I
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-eqz v1, :cond_3

    .line 373
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    if-eqz v1, :cond_1

    .line 375
    :goto_0
    if-lez p3, :cond_1

    .line 377
    add-int/lit8 p3, p3, -0x1

    .line 378
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/lit8 v5, p2, 0x1

    .end local p2    # "inOff":I
    .local v5, "inOff":I
    aget-byte p2, p1, p2

    aput-byte p2, v1, v4

    .line 379
    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    if-ne v4, v3, :cond_0

    .line 381
    invoke-direct {p0, v1, v2, p4, p5}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->processBlock([BI[BI)V

    .line 382
    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 383
    add-int/lit8 v0, v0, 0x10

    .line 384
    move p2, v5

    goto :goto_1

    .line 379
    :cond_0
    move p2, v5

    goto :goto_0

    .line 389
    .end local v5    # "inOff":I
    .restart local p2    # "inOff":I
    :cond_1
    :goto_1
    if-lt p3, v3, :cond_2

    .line 391
    add-int v1, p5, v0

    invoke-direct {p0, p1, p2, p4, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->processBlock([BI[BI)V

    .line 392
    add-int/lit8 p2, p2, 0x10

    .line 393
    add-int/lit8 p3, p3, -0x10

    .line 394
    add-int/lit8 v0, v0, 0x10

    goto :goto_1

    .line 397
    :cond_2
    if-lez p3, :cond_5

    .line 399
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 400
    iput p3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    goto :goto_3

    .line 405
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p3, :cond_5

    .line 407
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int v6, p2, v1

    aget-byte v6, p1, v6

    aput-byte v6, v4, v5

    .line 408
    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    array-length v6, v4

    if-ne v5, v6, :cond_4

    .line 410
    add-int v5, p5, v0

    invoke-direct {p0, v4, v2, p4, v5}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->processBlock([BI[BI)V

    .line 411
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-static {v4, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 412
    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    iput v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 413
    add-int/lit8 v0, v0, 0x10

    .line 405
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 418
    .end local v1    # "i":I
    :cond_5
    :goto_3
    return v0

    .line 366
    .end local v0    # "resultLen":I
    :cond_6
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "Input buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_7
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "Input exceeded 68719476704 bytes"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist reset()V
    .locals 1

    .line 543
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->reset(Z)V

    .line 544
    return-void
.end method
