.class public Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;
.super Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;
.source "SHA512Digest.java"


# static fields
.field private static final blacklist DIGEST_LENGTH:I = 0x40


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;-><init>()V

    .line 30
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;)V
    .locals 0
    .param p1, "t"    # Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;-><init>(Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;)V

    .line 39
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .locals 0
    .param p1, "encodedState"    # [B

    .line 47
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;-><init>()V

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->restoreState([B)V

    .line 49
    return-void
.end method


# virtual methods
.method public blacklist copy()Lcom/android/internal/org/bouncycastle/util/Memoable;
    .locals 1

    .line 104
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;-><init>(Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;)V

    return-object v0
.end method

.method public blacklist doFinal([BI)I
    .locals 3
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .line 65
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->finish()V

    .line 67
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->H1:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 68
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->H2:J

    add-int/lit8 v2, p2, 0x8

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 69
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->H3:J

    add-int/lit8 v2, p2, 0x10

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 70
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->H4:J

    add-int/lit8 v2, p2, 0x18

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 71
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->H5:J

    add-int/lit8 v2, p2, 0x20

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 72
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->H6:J

    add-int/lit8 v2, p2, 0x28

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 73
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->H7:J

    add-int/lit8 v2, p2, 0x30

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 74
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->H8:J

    add-int/lit8 v2, p2, 0x38

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 76
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->reset()V

    .line 78
    const/16 v0, 0x40

    return v0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 53
    const-string v0, "SHA-512"

    return-object v0
.end method

.method public blacklist getDigestSize()I
    .locals 1

    .line 58
    const/16 v0, 0x40

    return v0
.end method

.method public blacklist getEncodedState()[B
    .locals 1

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->getEncodedStateSize()I

    move-result v0

    new-array v0, v0, [B

    .line 117
    .local v0, "encoded":[B
    invoke-super {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->populateState([B)V

    .line 118
    return-object v0
.end method

.method public blacklist reset()V
    .locals 2

    .line 86
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->reset()V

    .line 92
    const-wide v0, 0x6a09e667f3bcc908L    # 6.344059688352415E202

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->H1:J

    .line 93
    const-wide v0, -0x4498517a7b3558c5L    # -1.5671250923562117E-22

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->H2:J

    .line 94
    const-wide v0, 0x3c6ef372fe94f82bL    # 1.342284505169847E-17

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->H3:J

    .line 95
    const-wide v0, -0x5ab00ac5a0e2c90fL

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->H4:J

    .line 96
    const-wide v0, 0x510e527fade682d1L    # 2.876275032471325E82

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->H5:J

    .line 97
    const-wide v0, -0x64fa9773d4c193e1L

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->H6:J

    .line 98
    const-wide v0, 0x1f83d9abfb41bd6bL    # 7.229011495228878E-157

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->H7:J

    .line 99
    const-wide v0, 0x5be0cd19137e2179L    # 3.816167663240759E134

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->H8:J

    .line 100
    return-void
.end method

.method public blacklist reset(Lcom/android/internal/org/bouncycastle/util/Memoable;)V
    .locals 1
    .param p1, "other"    # Lcom/android/internal/org/bouncycastle/util/Memoable;

    .line 109
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;

    .line 111
    .local v0, "d":Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;
    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->copyIn(Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;)V

    .line 112
    return-void
.end method
