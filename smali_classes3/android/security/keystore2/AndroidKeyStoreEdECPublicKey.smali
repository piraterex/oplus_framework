.class public Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;
.super Landroid/security/keystore2/AndroidKeyStorePublicKey;
.source "AndroidKeyStoreEdECPublicKey.java"

# interfaces
.implements Ljava/security/interfaces/EdECPublicKey;


# static fields
.field private static final blacklist DER_KEY_PREFIX:[B

.field private static final blacklist ED25519_KEY_SIZE_BYTES:I = 0x20


# instance fields
.field private blacklist mEncodedKey:[B

.field private blacklist mPoint:Ljava/security/spec/EdECPoint;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 48
    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->DER_KEY_PREFIX:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x2at
        0x30t
        0x5t
        0x6t
        0x3t
        0x2bt
        0x65t
        0x70t
        0x3t
        0x21t
        0x0t
    .end array-data
.end method

.method public constructor blacklist <init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;[B)V
    .locals 6
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "metadata"    # Landroid/system/keystore2/KeyMetadata;
    .param p3, "algorithm"    # Ljava/lang/String;
    .param p4, "iSecurityLevel"    # Landroid/security/KeyStoreSecurityLevel;
    .param p5, "encodedKey"    # [B

    .line 73
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/security/keystore2/AndroidKeyStorePublicKey;-><init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;[BLjava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V

    .line 74
    iput-object p5, p0, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->mEncodedKey:[B

    .line 76
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->DER_KEY_PREFIX:[B

    invoke-static {v0, p5}, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->matchesPreamble([B[B)I

    move-result v0

    .line 77
    .local v0, "preambleLength":I
    if-eqz v0, :cond_0

    .line 81
    array-length v1, p5

    .line 82
    invoke-static {p5, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 81
    invoke-static {v1}, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->pointFromKeyByteArray([B)Ljava/security/spec/EdECPoint;

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->mPoint:Ljava/security/spec/EdECPoint;

    .line 83
    return-void

    .line 78
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Key size is not correct size"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist matchesPreamble([B[B)I
    .locals 3
    .param p0, "preamble"    # [B
    .param p1, "encoded"    # [B

    .line 106
    array-length v0, p1

    array-length v1, p0

    add-int/lit8 v1, v1, 0x20

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 107
    return v2

    .line 109
    :cond_0
    array-length v0, p0

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Arrays;->compare([B[B)I

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    return v2

    .line 112
    :cond_1
    array-length v0, p0

    return v0
.end method

.method private static blacklist pointFromKeyByteArray([B)Ljava/security/spec/EdECPoint;
    .locals 4
    .param p0, "coordinates"    # [B

    .line 116
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 121
    .local v0, "isOdd":Z
    :goto_0
    array-length v2, p0

    sub-int/2addr v2, v1

    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0x7f

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    .line 123
    invoke-static {p0}, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->reverse([B)V

    .line 125
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object v1, v2

    .line 126
    .local v1, "y":Ljava/math/BigInteger;
    new-instance v2, Ljava/security/spec/EdECPoint;

    invoke-direct {v2, v0, v1}, Ljava/security/spec/EdECPoint;-><init>(ZLjava/math/BigInteger;)V

    return-object v2
.end method

.method private static blacklist reverse([B)V
    .locals 4
    .param p0, "coordinateArray"    # [B

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "start":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 132
    .local v1, "end":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 133
    aget-byte v2, p0, v0

    .line 134
    .local v2, "tmp":B
    aget-byte v3, p0, v1

    aput-byte v3, p0, v0

    .line 135
    aput-byte v2, p0, v1

    .line 136
    add-int/lit8 v0, v0, 0x1

    .line 137
    nop

    .end local v2    # "tmp":B
    add-int/lit8 v1, v1, -0x1

    .line 138
    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist test-api getEncoded()[B
    .locals 1

    .line 143
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->mEncodedKey:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist test-api getParams()Ljava/security/spec/NamedParameterSpec;
    .locals 1

    .line 97
    sget-object v0, Ljava/security/spec/NamedParameterSpec;->ED25519:Ljava/security/spec/NamedParameterSpec;

    return-object v0
.end method

.method public whitelist test-api getPoint()Ljava/security/spec/EdECPoint;
    .locals 1

    .line 102
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->mPoint:Ljava/security/spec/EdECPoint;

    return-object v0
.end method

.method blacklist getPrivateKey()Landroid/security/keystore2/AndroidKeyStorePrivateKey;
    .locals 8

    .line 87
    new-instance v7, Landroid/security/keystore2/AndroidKeyStoreEdECPrivateKey;

    .line 88
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v1

    .line 89
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->getKeyIdDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    iget-wide v2, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 90
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->getAuthorizations()[Landroid/system/keystore2/Authorization;

    move-result-object v4

    .line 92
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;->getSecurityLevel()Landroid/security/KeyStoreSecurityLevel;

    move-result-object v6

    const-string v5, "EdDSA"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/security/keystore2/AndroidKeyStoreEdECPrivateKey;-><init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V

    .line 87
    return-object v7
.end method
