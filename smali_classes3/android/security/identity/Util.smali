.class public Landroid/security/identity/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "Util"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist computeHkdf(Ljava/lang/String;[B[B[BI)[B
    .locals 8
    .param p0, "macAlgorithm"    # Ljava/lang/String;
    .param p1, "ikm"    # [B
    .param p2, "salt"    # [B
    .param p3, "info"    # [B
    .param p4, "size"    # I

    .line 102
    const/4 v0, 0x0

    .line 104
    .local v0, "mac":Ljavax/crypto/Mac;
    :try_start_0
    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    .line 107
    nop

    .line 108
    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v1

    mul-int/lit16 v1, v1, 0xff

    if-gt p4, v1, :cond_3

    .line 112
    if-eqz p2, :cond_1

    :try_start_1
    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p2, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    goto :goto_1

    .line 116
    :cond_1
    :goto_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v2

    new-array v2, v2, [B

    invoke-direct {v1, v2, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 120
    :goto_1
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    .line 121
    .local v1, "prk":[B
    new-array v2, p4, [B

    .line 122
    .local v2, "result":[B
    const/4 v3, 0x1

    .line 123
    .local v3, "ctr":I
    const/4 v4, 0x0

    .line 124
    .local v4, "pos":I
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v5, v1, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 125
    const/4 v5, 0x0

    new-array v6, v5, [B

    .line 127
    .local v6, "digest":[B
    :goto_2
    invoke-virtual {v0, v6}, Ljavax/crypto/Mac;->update([B)V

    .line 128
    invoke-virtual {v0, p3}, Ljavax/crypto/Mac;->update([B)V

    .line 129
    int-to-byte v7, v3

    invoke-virtual {v0, v7}, Ljavax/crypto/Mac;->update(B)V

    .line 130
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v7

    move-object v6, v7

    .line 131
    array-length v7, v6

    add-int/2addr v7, v4

    if-ge v7, p4, :cond_2

    .line 132
    array-length v7, v6

    invoke-static {v6, v5, v2, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    array-length v7, v6

    add-int/2addr v4, v7

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 136
    :cond_2
    sub-int v7, p4, v4

    invoke-static {v6, v5, v2, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0

    .line 137
    nop

    .line 140
    return-object v2

    .line 141
    .end local v1    # "prk":[B
    .end local v2    # "result":[B
    .end local v3    # "ctr":I
    .end local v4    # "pos":I
    .end local v6    # "digest":[B
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Ljava/security/InvalidKeyException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error MACing"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 109
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "size too large"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :catch_1
    move-exception v1

    .line 106
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static blacklist integerCollectionToArray(Ljava/util/Collection;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 40
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 41
    .local v0, "result":[I
    const/4 v1, 0x0

    .line 42
    .local v1, "n":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 43
    .local v3, "item":I
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "n":I
    .local v4, "n":I
    aput v3, v0, v1

    .line 44
    .end local v3    # "item":I
    move v1, v4

    goto :goto_0

    .line 45
    .end local v4    # "n":I
    .restart local v1    # "n":I
    :cond_0
    return-object v0
.end method

.method static blacklist publicKeyEncodeUncompressedForm(Ljava/security/PublicKey;)[B
    .locals 6
    .param p0, "publicKey"    # Ljava/security/PublicKey;

    .line 63
    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    .line 66
    .local v0, "w":Ljava/security/spec/ECPoint;
    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Landroid/security/identity/Util;->stripLeadingZeroes([B)[B

    move-result-object v1

    .line 67
    .local v1, "x":[B
    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Landroid/security/identity/Util;->stripLeadingZeroes([B)[B

    move-result-object v2

    .line 69
    .local v2, "y":[B
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 70
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 71
    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 72
    invoke-virtual {v3, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 73
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 74
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v3

    .line 75
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unexpected IOException"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method static blacklist stripLeadingZeroes([B)[B
    .locals 6
    .param p0, "value"    # [B

    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "n":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    array-length v1, p0

    sub-int/2addr v1, v0

    .line 54
    .local v1, "newLen":I
    new-array v2, v1, [B

    .line 55
    .local v2, "ret":[B
    const/4 v3, 0x0

    .line 56
    .local v3, "m":I
    :goto_1
    array-length v4, p0

    if-ge v0, v4, :cond_1

    .line 57
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "m":I
    .local v4, "m":I
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "n":I
    .local v5, "n":I
    aget-byte v0, p0, v0

    aput-byte v0, v2, v3

    move v3, v4

    move v0, v5

    goto :goto_1

    .line 59
    .end local v4    # "m":I
    .end local v5    # "n":I
    .restart local v0    # "n":I
    .restart local v3    # "m":I
    :cond_1
    return-object v2
.end method
