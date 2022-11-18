.class public Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;
.super Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;
.source "SHA384Digest.java"


# static fields
.field private static final blacklist DIGEST_LENGTH:I = 0x30


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;-><init>()V

    .line 30
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;)V
    .locals 0
    .param p1, "t"    # Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;

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
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->restoreState([B)V

    .line 49
    return-void
.end method


# virtual methods
.method public blacklist copy()Lcom/android/internal/org/bouncycastle/util/Memoable;
    .locals 1

    .line 102
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;-><init>(Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;)V

    return-object v0
.end method

.method public blacklist doFinal([BI)I
    .locals 3
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .line 65
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->finish()V

    .line 67
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->H1:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 68
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->H2:J

    add-int/lit8 v2, p2, 0x8

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 69
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->H3:J

    add-int/lit8 v2, p2, 0x10

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 70
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->H4:J

    add-int/lit8 v2, p2, 0x18

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 71
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->H5:J

    add-int/lit8 v2, p2, 0x20

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 72
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->H6:J

    add-int/lit8 v2, p2, 0x28

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 74
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->reset()V

    .line 76
    const/16 v0, 0x30

    return v0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 53
    const-string v0, "SHA-384"

    return-object v0
.end method

.method public blacklist getDigestSize()I
    .locals 1

    .line 58
    const/16 v0, 0x30

    return v0
.end method

.method public blacklist getEncodedState()[B
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->getEncodedStateSize()I

    move-result v0

    new-array v0, v0, [B

    .line 115
    .local v0, "encoded":[B
    invoke-super {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->populateState([B)V

    .line 116
    return-object v0
.end method

.method public blacklist reset()V
    .locals 2

    .line 84
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->reset()V

    .line 90
    const-wide v0, -0x344462a23efa6128L    # -6.771107636816954E56

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->H1:J

    .line 91
    const-wide v0, 0x629a292a367cd507L    # 9.641589608180943E166

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->H2:J

    .line 92
    const-wide v0, -0x6ea6fea5cf8f22e9L    # -4.222163200156129E-225

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->H3:J

    .line 93
    const-wide v0, 0x152fecd8f70e5939L

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->H4:J

    .line 94
    const-wide v0, 0x67332667ffc00b31L    # 1.3331733573491853E189

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->H5:J

    .line 95
    const-wide v0, -0x714bb57897a7eaefL    # -7.790218494879152E-238

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->H6:J

    .line 96
    const-wide v0, -0x24f3d1f29b067059L    # -3.9066766103558855E130

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->H7:J

    .line 97
    const-wide v0, 0x47b5481dbefa4fa4L    # 2.8288236605994657E37

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;->H8:J

    .line 98
    return-void
.end method

.method public blacklist reset(Lcom/android/internal/org/bouncycastle/util/Memoable;)V
    .locals 1
    .param p1, "other"    # Lcom/android/internal/org/bouncycastle/util/Memoable;

    .line 107
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;

    .line 109
    .local v0, "d":Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;
    invoke-super {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->copyIn(Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;)V

    .line 110
    return-void
.end method
