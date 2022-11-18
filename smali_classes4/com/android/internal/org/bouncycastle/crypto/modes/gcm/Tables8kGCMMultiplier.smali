.class public Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;
.super Ljava/lang/Object;
.source "Tables8kGCMMultiplier.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;


# instance fields
.field private blacklist H:[B

.field private blacklist T:[[[J


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist init([B)V
    .locals 7
    .param p1, "H"    # [B

    .line 18
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const-class v1, J

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[J

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    return-void

    .line 27
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    .line 29
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x20

    if-ge v0, v1, :cond_4

    .line 31
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    aget-object v2, v1, v0

    .line 35
    .local v2, "t":[[J
    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 38
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    aget-object v4, v2, v3

    invoke-static {v1, v4}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asLongs([B[J)V

    .line 39
    aget-object v1, v2, v3

    aget-object v4, v2, v3

    invoke-static {v1, v4}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP3([J[J)V

    goto :goto_2

    .line 44
    :cond_2
    add-int/lit8 v4, v0, -0x1

    aget-object v1, v1, v4

    aget-object v1, v1, v3

    aget-object v4, v2, v3

    invoke-static {v1, v4}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP4([J[J)V

    .line 47
    :goto_2
    const/4 v1, 0x2

    .local v1, "n":I
    :goto_3
    const/16 v4, 0x10

    if-ge v1, v4, :cond_3

    .line 50
    shr-int/lit8 v4, v1, 0x1

    aget-object v4, v2, v4

    aget-object v5, v2, v1

    invoke-static {v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->divideP([J[J)V

    .line 53
    aget-object v4, v2, v1

    aget-object v5, v2, v3

    add-int/lit8 v6, v1, 0x1

    aget-object v6, v2, v6

    invoke-static {v4, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([J[J[J)V

    .line 47
    add-int/lit8 v1, v1, 0x2

    goto :goto_3

    .line 29
    .end local v1    # "n":I
    .end local v2    # "t":[[J
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 57
    .end local v0    # "i":I
    :cond_4
    return-void

    :array_0
    .array-data 4
        0x20
        0x10
        0x2
    .end array-data
.end method

.method public blacklist multiplyH([B)V
    .locals 13
    .param p1, "x"    # [B

    .line 69
    const-wide/16 v0, 0x0

    .local v0, "z0":J
    const-wide/16 v2, 0x0

    .line 71
    .local v2, "z1":J
    const/16 v4, 0xf

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x0

    if-ltz v4, :cond_0

    .line 73
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    add-int v7, v4, v4

    const/4 v8, 0x1

    add-int/2addr v7, v8

    aget-object v7, v6, v7

    aget-byte v9, p1, v4

    and-int/lit8 v9, v9, 0xf

    aget-object v7, v7, v9

    .line 74
    .local v7, "u":[J
    add-int v9, v4, v4

    aget-object v6, v6, v9

    aget-byte v9, p1, v4

    and-int/lit16 v9, v9, 0xf0

    ushr-int/lit8 v9, v9, 0x4

    aget-object v6, v6, v9

    .line 76
    .local v6, "v":[J
    aget-wide v9, v7, v5

    aget-wide v11, v6, v5

    xor-long/2addr v9, v11

    xor-long/2addr v0, v9

    .line 77
    aget-wide v9, v7, v8

    aget-wide v11, v6, v8

    xor-long v8, v9, v11

    xor-long/2addr v2, v8

    .line 71
    .end local v6    # "v":[J
    .end local v7    # "u":[J
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 80
    .end local v4    # "i":I
    :cond_0
    invoke-static {v0, v1, p1, v5}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 81
    const/16 v4, 0x8

    invoke-static {v2, v3, p1, v4}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 82
    return-void
.end method
