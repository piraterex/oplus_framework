.class public Landroid/util/apk/ApkSignatureSchemeV4Verifier;
.super Ljava/lang/Object;
.source "ApkSignatureSchemeV4Verifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;
    }
.end annotation


# static fields
.field static final blacklist APK_SIGNATURE_SCHEME_DEFAULT:I = -0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist convertToContentDigestType(I)I
    .locals 3
    .param p0, "hashAlgorithm"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 204
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 205
    const/4 v0, 0x3

    return v0

    .line 207
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported hashAlgorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist extractCertificates(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;
    .locals 4
    .param p0, "apkFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 64
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV4Verifier;->extractSignature(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 65
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/incremental/V4Signature$HashingInfo;Landroid/os/incremental/V4Signature$SigningInfos;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/os/incremental/V4Signature$HashingInfo;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/os/incremental/V4Signature$SigningInfos;

    const/4 v3, -0x1

    invoke-static {p0, v1, v2, v3}, Landroid/util/apk/ApkSignatureSchemeV4Verifier;->verify(Ljava/lang/String;Landroid/os/incremental/V4Signature$HashingInfo;Landroid/os/incremental/V4Signature$SigningInfos;I)Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist extractSignature(Ljava/lang/String;)Landroid/util/Pair;
    .locals 6
    .param p0, "apkFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/os/incremental/V4Signature$HashingInfo;",
            "Landroid/os/incremental/V4Signature$SigningInfos;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "apk":Ljava/io/File;
    nop

    .line 75
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-static {v1}, Landroid/os/incremental/IncrementalManager;->unsafeGetFileSignature(Ljava/lang/String;)[B

    move-result-object v1

    .line 76
    .local v1, "signatureBytes":[B
    if-eqz v1, :cond_1

    array-length v2, v1

    if-eqz v2, :cond_1

    .line 80
    :try_start_0
    invoke-static {v1}, Landroid/os/incremental/V4Signature;->readFrom([B)Landroid/os/incremental/V4Signature;

    move-result-object v2

    .line 81
    .local v2, "signature":Landroid/os/incremental/V4Signature;
    invoke-virtual {v2}, Landroid/os/incremental/V4Signature;->isVersionSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    iget-object v3, v2, Landroid/os/incremental/V4Signature;->hashingInfo:[B

    invoke-static {v3}, Landroid/os/incremental/V4Signature$HashingInfo;->fromByteArray([B)Landroid/os/incremental/V4Signature$HashingInfo;

    move-result-object v3

    .line 87
    .local v3, "hashingInfo":Landroid/os/incremental/V4Signature$HashingInfo;
    iget-object v4, v2, Landroid/os/incremental/V4Signature;->signingInfos:[B

    invoke-static {v4}, Landroid/os/incremental/V4Signature$SigningInfos;->fromByteArray([B)Landroid/os/incremental/V4Signature$SigningInfos;

    move-result-object v4

    .line 89
    .local v4, "signingInfos":Landroid/os/incremental/V4Signature$SigningInfos;
    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5

    .line 82
    .end local v3    # "hashingInfo":Landroid/os/incremental/V4Signature$HashingInfo;
    .end local v4    # "signingInfos":Landroid/os/incremental/V4Signature$SigningInfos;
    :cond_0
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "v4 signature version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/os/incremental/V4Signature;->version:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not supported"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "apk":Ljava/io/File;
    .end local v1    # "signatureBytes":[B
    .end local p0    # "apkFile":Ljava/lang/String;
    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v2    # "signature":Landroid/os/incremental/V4Signature;
    .restart local v0    # "apk":Ljava/io/File;
    .restart local v1    # "signatureBytes":[B
    .restart local p0    # "apkFile":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 91
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Landroid/util/apk/SignatureNotFoundException;

    const-string v4, "Failed to read V4 signature."

    invoke-direct {v3, v4, v2}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 77
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    new-instance v2, Landroid/util/apk/SignatureNotFoundException;

    const-string v3, "Failed to obtain signature bytes from IncFS."

    invoke-direct {v2, v3}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static blacklist findSigningInfoForBlockId(Landroid/os/incremental/V4Signature$SigningInfos;I)Landroid/os/incremental/V4Signature$SigningInfo;
    .locals 5
    .param p0, "signingInfos"    # Landroid/os/incremental/V4Signature$SigningInfos;
    .param p1, "v3BlockId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 122
    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    const v0, -0xfac9740

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 126
    :cond_0
    iget-object v0, p0, Landroid/os/incremental/V4Signature$SigningInfos;->signingInfoBlocks:[Landroid/os/incremental/V4Signature$SigningInfoBlock;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 127
    .local v3, "signingInfoBlock":Landroid/os/incremental/V4Signature$SigningInfoBlock;
    iget v4, v3, Landroid/os/incremental/V4Signature$SigningInfoBlock;->blockId:I

    if-ne p1, v4, :cond_1

    .line 129
    :try_start_0
    iget-object v0, v3, Landroid/os/incremental/V4Signature$SigningInfoBlock;->signingInfo:[B

    invoke-static {v0}, Landroid/os/incremental/V4Signature$SigningInfo;->fromByteArray([B)Landroid/os/incremental/V4Signature$SigningInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read V4 signature block: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v3, Landroid/os/incremental/V4Signature$SigningInfoBlock;->blockId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 126
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "signingInfoBlock":Landroid/os/incremental/V4Signature$SigningInfoBlock;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find V4 signature block corresponding to V3 blockId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/os/incremental/V4Signature$SigningInfos;->signingInfo:Landroid/os/incremental/V4Signature$SigningInfo;

    return-object v0
.end method

.method public static blacklist verify(Ljava/lang/String;Landroid/os/incremental/V4Signature$HashingInfo;Landroid/os/incremental/V4Signature$SigningInfos;I)Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;
    .locals 8
    .param p0, "apkFile"    # Ljava/lang/String;
    .param p1, "hashingInfo"    # Landroid/os/incremental/V4Signature$HashingInfo;
    .param p2, "signingInfos"    # Landroid/os/incremental/V4Signature$SigningInfos;
    .param p3, "v3BlockId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 102
    invoke-static {p2, p3}, Landroid/util/apk/ApkSignatureSchemeV4Verifier;->findSigningInfoForBlockId(Landroid/os/incremental/V4Signature$SigningInfos;I)Landroid/os/incremental/V4Signature$SigningInfo;

    move-result-object v0

    .line 106
    .local v0, "signingInfo":Landroid/os/incremental/V4Signature$SigningInfo;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2, p1, v0}, Landroid/os/incremental/V4Signature;->getSignedData(JLandroid/os/incremental/V4Signature$HashingInfo;Landroid/os/incremental/V4Signature$SigningInfo;)[B

    move-result-object v1

    .line 108
    .local v1, "signedData":[B
    invoke-static {v0, v1}, Landroid/util/apk/ApkSignatureSchemeV4Verifier;->verifySigner(Landroid/os/incremental/V4Signature$SigningInfo;[B)Landroid/util/Pair;

    move-result-object v2

    .line 111
    .local v2, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/security/cert/Certificate;[B>;"
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 112
    .local v3, "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    iget v4, p1, Landroid/os/incremental/V4Signature$HashingInfo;->hashAlgorithm:I

    invoke-static {v4}, Landroid/util/apk/ApkSignatureSchemeV4Verifier;->convertToContentDigestType(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p1, Landroid/os/incremental/V4Signature$HashingInfo;->rawRootHash:[B

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v4, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/security/cert/Certificate;

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/security/cert/Certificate;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, [B

    invoke-direct {v4, v5, v6, v3}, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;-><init>([Ljava/security/cert/Certificate;[BLjava/util/Map;)V

    return-object v4
.end method

.method private static blacklist verifySigner(Landroid/os/incremental/V4Signature$SigningInfo;[B)Landroid/util/Pair;
    .locals 14
    .param p0, "signingInfo"    # Landroid/os/incremental/V4Signature$SigningInfo;
    .param p1, "signedData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/incremental/V4Signature$SigningInfo;",
            "[B)",
            "Landroid/util/Pair<",
            "Ljava/security/cert/Certificate;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 142
    iget v0, p0, Landroid/os/incremental/V4Signature$SigningInfo;->signatureAlgorithmId:I

    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->isSupportedSignatureAlgorithm(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 146
    iget v0, p0, Landroid/os/incremental/V4Signature$SigningInfo;->signatureAlgorithmId:I

    .line 147
    .local v0, "signatureAlgorithmId":I
    iget-object v1, p0, Landroid/os/incremental/V4Signature$SigningInfo;->signature:[B

    .line 148
    .local v1, "signatureBytes":[B
    iget-object v2, p0, Landroid/os/incremental/V4Signature$SigningInfo;->publicKey:[B

    .line 149
    .local v2, "publicKeyBytes":[B
    iget-object v3, p0, Landroid/os/incremental/V4Signature$SigningInfo;->certificate:[B

    .line 151
    .local v3, "encodedCert":[B
    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmJcaKeyAlgorithm(I)Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, "keyAlgorithm":Ljava/lang/String;
    nop

    .line 153
    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmJcaSignatureAlgorithm(I)Landroid/util/Pair;

    move-result-object v5

    .line 154
    .local v5, "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 155
    .local v6, "jcaSignatureAlgorithm":Ljava/lang/String;
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/security/spec/AlgorithmParameterSpec;

    .line 158
    .local v7, "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    nop

    .line 159
    :try_start_0
    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v8

    new-instance v9, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v9, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 160
    invoke-virtual {v8, v9}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v8

    .line 161
    .local v8, "publicKey":Ljava/security/PublicKey;
    invoke-static {v6}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v9

    .line 162
    .local v9, "sig":Ljava/security/Signature;
    invoke-virtual {v9, v8}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 163
    if-eqz v7, :cond_0

    .line 164
    invoke-virtual {v9, v7}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 166
    :cond_0
    invoke-virtual {v9, p1}, Ljava/security/Signature;->update([B)V

    .line 167
    invoke-virtual {v9, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v10
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2

    move v8, v10

    .line 172
    .end local v9    # "sig":Ljava/security/Signature;
    .local v8, "sigVerified":Z
    nop

    .line 173
    if-eqz v8, :cond_2

    .line 180
    :try_start_1
    const-string v9, "X.509"

    invoke-static {v9}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v9
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 183
    .local v9, "certFactory":Ljava/security/cert/CertificateFactory;
    nop

    .line 187
    :try_start_2
    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 188
    invoke-virtual {v9, v10}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 191
    .local v10, "certificate":Ljava/security/cert/X509Certificate;
    nop

    .line 192
    new-instance v11, Landroid/util/apk/VerbatimX509Certificate;

    invoke-direct {v11, v10, v3}, Landroid/util/apk/VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    move-object v10, v11

    .line 194
    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v11

    invoke-interface {v11}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v11

    .line 195
    .local v11, "certificatePublicKeyBytes":[B
    invoke-static {v2, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 200
    iget-object v12, p0, Landroid/os/incremental/V4Signature$SigningInfo;->apkDigest:[B

    invoke-static {v10, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    return-object v12

    .line 196
    :cond_1
    new-instance v12, Ljava/lang/SecurityException;

    const-string v13, "Public key mismatch between certificate and signature record"

    invoke-direct {v12, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 189
    .end local v10    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v11    # "certificatePublicKeyBytes":[B
    :catch_0
    move-exception v10

    .line 190
    .local v10, "e":Ljava/security/cert/CertificateException;
    new-instance v11, Ljava/lang/SecurityException;

    const-string v12, "Failed to decode certificate"

    invoke-direct {v11, v12, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 181
    .end local v9    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v10    # "e":Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v9

    .line 182
    .local v9, "e":Ljava/security/cert/CertificateException;
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {v10, v11, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 174
    .end local v9    # "e":Ljava/security/cert/CertificateException;
    :cond_2
    new-instance v9, Ljava/lang/SecurityException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " signature did not verify"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 168
    .end local v8    # "sigVerified":Z
    :catch_2
    move-exception v8

    .line 170
    .local v8, "e":Ljava/security/GeneralSecurityException;
    new-instance v9, Ljava/lang/SecurityException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to verify "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " signature"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 143
    .end local v0    # "signatureAlgorithmId":I
    .end local v1    # "signatureBytes":[B
    .end local v2    # "publicKeyBytes":[B
    .end local v3    # "encodedCert":[B
    .end local v4    # "keyAlgorithm":Ljava/lang/String;
    .end local v5    # "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    .end local v6    # "jcaSignatureAlgorithm":Ljava/lang/String;
    .end local v7    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v8    # "e":Ljava/security/GeneralSecurityException;
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No supported signatures found"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
