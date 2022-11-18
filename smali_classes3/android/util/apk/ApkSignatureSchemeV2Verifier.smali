.class public Landroid/util/apk/ApkSignatureSchemeV2Verifier;
.super Ljava/lang/Object;
.source "ApkSignatureSchemeV2Verifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    }
.end annotation


# static fields
.field private static final greylist-max-o APK_SIGNATURE_SCHEME_V2_BLOCK_ID:I = 0x7109871a

.field public static final greylist-max-o SF_ATTRIBUTE_ANDROID_APK_SIGNED_ID:I = 0x2

.field private static final greylist-max-o STRIPPING_PROTECTION_ATTR_ID:I = -0x41100ff3


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;
    .locals 1
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 154
    const v0, 0x7109871a

    invoke-static {p0, v0}, Landroid/util/apk/ApkSigningBlockUtils;->findSignature(Ljava/io/RandomAccessFile;I)Landroid/util/apk/SignatureInfo;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B
    .locals 3
    .param p0, "apkPath"    # Ljava/lang/String;
    .param p1, "bufferFactory"    # Landroid/util/apk/ByteBufferFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/security/DigestException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 404
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .local v0, "apk":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v1

    .line 406
    .local v1, "signatureInfo":Landroid/util/apk/SignatureInfo;
    invoke-static {p0, p1, v1}, Landroid/util/apk/VerityBuilder;->generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;Landroid/util/apk/SignatureInfo;)[B

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 406
    return-object v2

    .line 404
    .end local v1    # "signatureInfo":Landroid/util/apk/SignatureInfo;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method static greylist-max-o getVerityRootHash(Ljava/lang/String;)[B
    .locals 4
    .param p0, "apkPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 394
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .local v0, "apk":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v1

    .line 396
    .local v1, "signatureInfo":Landroid/util/apk/SignatureInfo;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/io/RandomAccessFile;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object v2

    .line 397
    .local v2, "vSigner":Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    iget-object v3, v2, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->verityRootHash:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 397
    return-object v3

    .line 394
    .end local v1    # "signatureInfo":Landroid/util/apk/SignatureInfo;
    .end local v2    # "vSigner":Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public static greylist-max-o hasSignature(Ljava/lang/String;)Z
    .locals 3
    .param p0, "apkFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .local v0, "apk":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    const/4 v1, 0x1

    .line 86
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 85
    return v1

    .line 83
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "apkFile":Ljava/lang/String;
    :goto_0
    throw v1
    :try_end_4
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 86
    .end local v0    # "apk":Ljava/io/RandomAccessFile;
    .restart local p0    # "apkFile":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Landroid/util/apk/SignatureNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist unsafeGetCertsWithoutVerification(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;
    .locals 2
    .param p0, "apkFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object v0

    .line 117
    .local v0, "vSigner":Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    iget-object v1, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->certs:[[Ljava/security/cert/X509Certificate;

    return-object v1
.end method

.method private static greylist-max-o verify(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    .locals 9
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "signatureInfo"    # Landroid/util/apk/SignatureInfo;
    .param p2, "doVerifyIntegrity"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "signerCount":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 170
    .local v1, "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v2, "signerCerts":Ljava/util/List;, "Ljava/util/List<[Ljava/security/cert/X509Certificate;>;"
    :try_start_0
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 176
    .local v3, "certFactory":Ljava/security/cert/CertificateFactory;
    nop

    .line 179
    :try_start_1
    iget-object v4, p1, Landroid/util/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    .local v4, "signers":Ljava/nio/ByteBuffer;
    nop

    .line 183
    :goto_0
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 184
    add-int/lit8 v0, v0, 0x1

    .line 186
    :try_start_2
    invoke-static {v4}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 187
    .local v5, "signer":Ljava/nio/ByteBuffer;
    invoke-static {v5, v1, v3}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verifySigner(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;

    move-result-object v6

    .line 188
    .local v6, "certs":[Ljava/security/cert/X509Certificate;
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 193
    nop

    .end local v5    # "signer":Ljava/nio/ByteBuffer;
    .end local v6    # "certs":[Ljava/security/cert/X509Certificate;
    goto :goto_0

    .line 189
    :catch_0
    move-exception v5

    .line 190
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse/verify signer #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " block"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 196
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v5, 0x1

    if-lt v0, v5, :cond_4

    .line 200
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 204
    if-eqz p2, :cond_1

    .line 205
    invoke-static {v1, p0, p1}, Landroid/util/apk/ApkSigningBlockUtils;->verifyIntegrity(Ljava/util/Map;Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;)V

    .line 208
    :cond_1
    const/4 v5, 0x0

    .line 209
    .local v5, "verityRootHash":[B
    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 210
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 211
    .local v6, "verityDigest":[B
    nop

    .line 212
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    .line 211
    invoke-static {v6, v7, v8, p1}, Landroid/util/apk/ApkSigningBlockUtils;->parseVerityDigestAndVerifySourceLength([BJLandroid/util/apk/SignatureInfo;)[B

    move-result-object v5

    .line 215
    .end local v6    # "verityDigest":[B
    :cond_2
    new-instance v6, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    .line 216
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [[Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Ljava/security/cert/X509Certificate;

    invoke-direct {v6, v7, v5, v1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;-><init>([[Ljava/security/cert/X509Certificate;[BLjava/util/Map;)V

    .line 215
    return-object v6

    .line 201
    .end local v5    # "verityRootHash":[B
    :cond_3
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "No content digests found"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 197
    :cond_4
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "No signers found"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 180
    .end local v4    # "signers":Ljava/nio/ByteBuffer;
    :catch_1
    move-exception v4

    .line 181
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Failed to read list of signers"

    invoke-direct {v5, v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 174
    .end local v3    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 175
    .local v3, "e":Ljava/security/cert/CertificateException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static greylist-max-o verify(Ljava/io/RandomAccessFile;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    .locals 2
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "verifyIntegrity"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v0

    .line 142
    .local v0, "signatureInfo":Landroid/util/apk/SignatureInfo;
    invoke-static {p0, v0, p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    .locals 3
    .param p0, "apkFile"    # Ljava/lang/String;
    .param p1, "verifyIntegrity"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .local v0, "apk":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-static {v0, p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/io/RandomAccessFile;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 126
    return-object v1

    .line 125
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public static greylist-max-o verify(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;
    .locals 2
    .param p0, "apkFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object v0

    .line 102
    .local v0, "vSigner":Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    iget-object v1, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->certs:[[Ljava/security/cert/X509Certificate;

    return-object v1
.end method

.method private static greylist-max-o verifyAdditionalAttributes(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p0, "attrs"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 365
    invoke-static {p0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 366
    .local v0, "attr":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    .line 370
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 371
    .local v1, "id":I
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 373
    :pswitch_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lt v3, v2, :cond_1

    .line 378
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 379
    .local v2, "vers":I
    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 380
    :cond_0
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "V2 signature indicates APK is signed using APK Signature Scheme v3, but none was found. Signature stripped?"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 374
    .end local v2    # "vers":I
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "V2 Signature Scheme Stripping Protection Attribute  value too small.  Expected 4 bytes, but found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 376
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 388
    .end local v0    # "attr":Ljava/nio/ByteBuffer;
    .end local v1    # "id":I
    :goto_1
    goto :goto_0

    .line 367
    .restart local v0    # "attr":Ljava/nio/ByteBuffer;
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remaining buffer too short to contain additional attribute ID. Remaining: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 368
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 389
    .end local v0    # "attr":Ljava/nio/ByteBuffer;
    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x41100ff3
        :pswitch_0
    .end packed-switch
.end method

.method private static greylist-max-o verifySigner(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;
    .locals 26
    .param p0, "signerBlock"    # Ljava/nio/ByteBuffer;
    .param p2, "certFactory"    # Ljava/security/cert/CertificateFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/security/cert/CertificateFactory;",
            ")[",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    .local p1, "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    invoke-static/range {p0 .. p0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 225
    .local v1, "signedData":Ljava/nio/ByteBuffer;
    invoke-static/range {p0 .. p0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 226
    .local v2, "signatures":Ljava/nio/ByteBuffer;
    invoke-static/range {p0 .. p0}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v3

    .line 228
    .local v3, "publicKeyBytes":[B
    const/4 v0, 0x0

    .line 229
    .local v0, "signatureCount":I
    const/4 v4, -0x1

    .line 230
    .local v4, "bestSigAlgorithm":I
    const/4 v5, 0x0

    .line 231
    .local v5, "bestSigAlgorithmSignatureBytes":[B
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v5

    move v5, v4

    move v4, v0

    .line 232
    .end local v0    # "signatureCount":I
    .local v4, "signatureCount":I
    .local v5, "bestSigAlgorithm":I
    .local v6, "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v7, "bestSigAlgorithmSignatureBytes":[B
    :goto_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    const/16 v8, 0x8

    const/4 v9, -0x1

    if-eqz v0, :cond_4

    .line 233
    add-int/lit8 v4, v4, 0x1

    .line 235
    :try_start_0
    invoke-static {v2}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 236
    .local v0, "signature":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    if-lt v10, v8, :cond_3

    .line 239
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 240
    .local v8, "sigAlgorithm":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-static {v8}, Landroid/util/apk/ApkSigningBlockUtils;->isSupportedSignatureAlgorithm(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 242
    goto :goto_0

    .line 244
    :cond_0
    if-eq v5, v9, :cond_1

    .line 245
    invoke-static {v8, v5}, Landroid/util/apk/ApkSigningBlockUtils;->compareSignatureAlgorithm(II)I

    move-result v9

    if-lez v9, :cond_2

    .line 246
    :cond_1
    move v5, v8

    .line 247
    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v9

    move-object v7, v9

    .line 253
    .end local v0    # "signature":Ljava/nio/ByteBuffer;
    .end local v8    # "sigAlgorithm":I
    :cond_2
    goto :goto_0

    .line 237
    .restart local v0    # "signature":Ljava/nio/ByteBuffer;
    :cond_3
    new-instance v8, Ljava/lang/SecurityException;

    const-string v9, "Signature record too short"

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1    # "signedData":Ljava/nio/ByteBuffer;
    .end local v2    # "signatures":Ljava/nio/ByteBuffer;
    .end local v3    # "publicKeyBytes":[B
    .end local v4    # "signatureCount":I
    .end local v5    # "bestSigAlgorithm":I
    .end local v6    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "bestSigAlgorithmSignatureBytes":[B
    .end local p0    # "signerBlock":Ljava/nio/ByteBuffer;
    .end local p1    # "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    .end local p2    # "certFactory":Ljava/security/cert/CertificateFactory;
    throw v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .end local v0    # "signature":Ljava/nio/ByteBuffer;
    .restart local v1    # "signedData":Ljava/nio/ByteBuffer;
    .restart local v2    # "signatures":Ljava/nio/ByteBuffer;
    .restart local v3    # "publicKeyBytes":[B
    .restart local v4    # "signatureCount":I
    .restart local v5    # "bestSigAlgorithm":I
    .restart local v6    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7    # "bestSigAlgorithmSignatureBytes":[B
    .restart local p0    # "signerBlock":Ljava/nio/ByteBuffer;
    .restart local p1    # "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    .restart local p2    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to parse signature record #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 255
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    if-ne v5, v9, :cond_6

    .line 256
    if-nez v4, :cond_5

    .line 257
    new-instance v0, Ljava/lang/SecurityException;

    const-string v8, "No signatures found"

    invoke-direct {v0, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    const-string v8, "No supported signatures found"

    invoke-direct {v0, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_6
    invoke-static {v5}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmJcaKeyAlgorithm(I)Ljava/lang/String;

    move-result-object v9

    .line 264
    .local v9, "keyAlgorithm":Ljava/lang/String;
    nop

    .line 265
    invoke-static {v5}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmJcaSignatureAlgorithm(I)Landroid/util/Pair;

    move-result-object v10

    .line 266
    .local v10, "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    iget-object v0, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 267
    .local v11, "jcaSignatureAlgorithm":Ljava/lang/String;
    iget-object v0, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Ljava/security/spec/AlgorithmParameterSpec;

    .line 270
    .local v12, "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    nop

    .line 271
    :try_start_1
    invoke-static {v9}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v13, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v13, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 272
    invoke-virtual {v0, v13}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 273
    .local v0, "publicKey":Ljava/security/PublicKey;
    invoke-static {v11}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v13

    .line 274
    .local v13, "sig":Ljava/security/Signature;
    invoke-virtual {v13, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_6

    .line 275
    if-eqz v12, :cond_7

    .line 276
    :try_start_2
    invoke-virtual {v13, v12}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 280
    .end local v0    # "publicKey":Ljava/security/PublicKey;
    .end local v13    # "sig":Ljava/security/Signature;
    :catch_1
    move-exception v0

    move-object/from16 v19, v2

    move/from16 v18, v4

    move/from16 v17, v5

    move-object/from16 v22, v6

    move-object/from16 v20, v7

    goto/16 :goto_7

    .line 278
    .restart local v0    # "publicKey":Ljava/security/PublicKey;
    .restart local v13    # "sig":Ljava/security/Signature;
    :cond_7
    :goto_1
    :try_start_3
    invoke-virtual {v13, v1}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    .line 279
    invoke-virtual {v13, v7}, Ljava/security/Signature;->verify([B)Z

    move-result v14
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/security/SignatureException; {:try_start_3 .. :try_end_3} :catch_6

    move v13, v14

    .line 284
    .end local v0    # "publicKey":Ljava/security/PublicKey;
    .local v13, "sigVerified":Z
    nop

    .line 285
    if-eqz v13, :cond_11

    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, "contentDigest":[B
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 293
    invoke-static {v1}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 294
    .local v14, "digests":Ljava/nio/ByteBuffer;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v15, "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v16, 0x0

    move-object/from16 v17, v0

    .line 296
    .end local v0    # "contentDigest":[B
    .local v16, "digestCount":I
    .local v17, "contentDigest":[B
    :goto_2
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 297
    add-int/lit8 v8, v16, 0x1

    .line 299
    .end local v16    # "digestCount":I
    .local v8, "digestCount":I
    :try_start_4
    invoke-static {v14}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 300
    .local v16, "digest":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/nio/BufferUnderflowException; {:try_start_4 .. :try_end_4} :catch_3

    move-object/from16 v19, v2

    const/16 v2, 0x8

    .end local v2    # "signatures":Ljava/nio/ByteBuffer;
    .local v19, "signatures":Ljava/nio/ByteBuffer;
    if-lt v0, v2, :cond_9

    .line 303
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 304
    .local v0, "sigAlgorithm":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    if-ne v0, v5, :cond_8

    .line 306
    invoke-static/range {v16 .. v16}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    move-object/from16 v17, v2

    .line 310
    .end local v0    # "sigAlgorithm":I
    .end local v16    # "digest":Ljava/nio/ByteBuffer;
    :cond_8
    move/from16 v16, v8

    move-object/from16 v2, v19

    const/16 v8, 0x8

    goto :goto_2

    .line 308
    :catch_2
    move-exception v0

    goto :goto_3

    .line 301
    .restart local v16    # "digest":Ljava/nio/ByteBuffer;
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Record too short"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "signedData":Ljava/nio/ByteBuffer;
    .end local v3    # "publicKeyBytes":[B
    .end local v4    # "signatureCount":I
    .end local v5    # "bestSigAlgorithm":I
    .end local v6    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "bestSigAlgorithmSignatureBytes":[B
    .end local v8    # "digestCount":I
    .end local v9    # "keyAlgorithm":Ljava/lang/String;
    .end local v10    # "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    .end local v11    # "jcaSignatureAlgorithm":Ljava/lang/String;
    .end local v12    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v13    # "sigVerified":Z
    .end local v14    # "digests":Ljava/nio/ByteBuffer;
    .end local v15    # "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v17    # "contentDigest":[B
    .end local v19    # "signatures":Ljava/nio/ByteBuffer;
    .end local p0    # "signerBlock":Ljava/nio/ByteBuffer;
    .end local p1    # "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    .end local p2    # "certFactory":Ljava/security/cert/CertificateFactory;
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_5 .. :try_end_5} :catch_2

    .line 308
    .end local v16    # "digest":Ljava/nio/ByteBuffer;
    .restart local v1    # "signedData":Ljava/nio/ByteBuffer;
    .restart local v2    # "signatures":Ljava/nio/ByteBuffer;
    .restart local v3    # "publicKeyBytes":[B
    .restart local v4    # "signatureCount":I
    .restart local v5    # "bestSigAlgorithm":I
    .restart local v6    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7    # "bestSigAlgorithmSignatureBytes":[B
    .restart local v8    # "digestCount":I
    .restart local v9    # "keyAlgorithm":Ljava/lang/String;
    .restart local v10    # "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    .restart local v11    # "jcaSignatureAlgorithm":Ljava/lang/String;
    .restart local v12    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v13    # "sigVerified":Z
    .restart local v14    # "digests":Ljava/nio/ByteBuffer;
    .restart local v15    # "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v17    # "contentDigest":[B
    .restart local p0    # "signerBlock":Ljava/nio/ByteBuffer;
    .restart local p1    # "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    .restart local p2    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_3
    move-exception v0

    move-object/from16 v19, v2

    .line 309
    .end local v2    # "signatures":Ljava/nio/ByteBuffer;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v19    # "signatures":Ljava/nio/ByteBuffer;
    :goto_3
    new-instance v2, Ljava/io/IOException;

    move/from16 v18, v4

    .end local v4    # "signatureCount":I
    .local v18, "signatureCount":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v7

    .end local v7    # "bestSigAlgorithmSignatureBytes":[B
    .local v20, "bestSigAlgorithmSignatureBytes":[B
    const-string v7, "Failed to parse digest record #"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 313
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "digestCount":I
    .end local v18    # "signatureCount":I
    .end local v19    # "signatures":Ljava/nio/ByteBuffer;
    .end local v20    # "bestSigAlgorithmSignatureBytes":[B
    .restart local v2    # "signatures":Ljava/nio/ByteBuffer;
    .restart local v4    # "signatureCount":I
    .restart local v7    # "bestSigAlgorithmSignatureBytes":[B
    .local v16, "digestCount":I
    :cond_a
    move-object/from16 v19, v2

    move/from16 v18, v4

    move-object/from16 v20, v7

    .end local v2    # "signatures":Ljava/nio/ByteBuffer;
    .end local v4    # "signatureCount":I
    .end local v7    # "bestSigAlgorithmSignatureBytes":[B
    .restart local v18    # "signatureCount":I
    .restart local v19    # "signatures":Ljava/nio/ByteBuffer;
    .restart local v20    # "bestSigAlgorithmSignatureBytes":[B
    invoke-interface {v6, v15}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 317
    invoke-static {v5}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmContentDigestAlgorithm(I)I

    move-result v2

    .line 318
    .local v2, "digestAlgorithm":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v4, p1

    move-object/from16 v7, v17

    .end local v17    # "contentDigest":[B
    .local v7, "contentDigest":[B
    invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [B

    .line 319
    .local v8, "previousSignerDigest":[B
    if-eqz v8, :cond_c

    .line 320
    invoke-static {v8, v7}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_b

    move/from16 v17, v5

    goto :goto_4

    .line 321
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    move/from16 v17, v5

    .end local v5    # "bestSigAlgorithm":I
    .local v17, "bestSigAlgorithm":I
    invoke-static {v2}, Landroid/util/apk/ApkSigningBlockUtils;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " contents digest does not match the digest specified by a preceding signer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    .end local v17    # "bestSigAlgorithm":I
    .restart local v5    # "bestSigAlgorithm":I
    :cond_c
    move/from16 v17, v5

    .line 326
    .end local v5    # "bestSigAlgorithm":I
    .restart local v17    # "bestSigAlgorithm":I
    :goto_4
    invoke-static {v1}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 327
    .local v4, "certificates":Ljava/nio/ByteBuffer;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 328
    .local v5, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v0, 0x0

    .line 329
    .local v0, "certificateCount":I
    :goto_5
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v21

    if-eqz v21, :cond_d

    .line 330
    move/from16 v21, v2

    .end local v2    # "digestAlgorithm":I
    .local v21, "digestAlgorithm":I
    add-int/lit8 v2, v0, 0x1

    .line 331
    .end local v0    # "certificateCount":I
    .local v2, "certificateCount":I
    move-object/from16 v22, v6

    .end local v6    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v22, "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v4}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v6

    .line 334
    .local v6, "encodedCert":[B
    :try_start_6
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_6
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_5

    .line 335
    move-object/from16 v23, v4

    move-object/from16 v4, p2

    .end local v4    # "certificates":Ljava/nio/ByteBuffer;
    .local v23, "certificates":Ljava/nio/ByteBuffer;
    :try_start_7
    invoke-virtual {v4, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_7
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_7} :catch_4

    .line 338
    .local v0, "certificate":Ljava/security/cert/X509Certificate;
    nop

    .line 339
    new-instance v4, Landroid/util/apk/VerbatimX509Certificate;

    invoke-direct {v4, v0, v6}, Landroid/util/apk/VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    move-object v0, v4

    .line 340
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    .end local v0    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v6    # "encodedCert":[B
    move v0, v2

    move/from16 v2, v21

    move-object/from16 v6, v22

    move-object/from16 v4, v23

    goto :goto_5

    .line 336
    .restart local v6    # "encodedCert":[B
    :catch_4
    move-exception v0

    goto :goto_6

    .end local v23    # "certificates":Ljava/nio/ByteBuffer;
    .restart local v4    # "certificates":Ljava/nio/ByteBuffer;
    :catch_5
    move-exception v0

    move-object/from16 v23, v4

    .line 337
    .end local v4    # "certificates":Ljava/nio/ByteBuffer;
    .local v0, "e":Ljava/security/cert/CertificateException;
    .restart local v23    # "certificates":Ljava/nio/ByteBuffer;
    :goto_6
    new-instance v4, Ljava/lang/SecurityException;

    move-object/from16 v24, v6

    .end local v6    # "encodedCert":[B
    .local v24, "encodedCert":[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v7

    .end local v7    # "contentDigest":[B
    .local v25, "contentDigest":[B
    const-string v7, "Failed to decode certificate #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 343
    .end local v21    # "digestAlgorithm":I
    .end local v22    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v23    # "certificates":Ljava/nio/ByteBuffer;
    .end local v24    # "encodedCert":[B
    .end local v25    # "contentDigest":[B
    .local v0, "certificateCount":I
    .local v2, "digestAlgorithm":I
    .restart local v4    # "certificates":Ljava/nio/ByteBuffer;
    .local v6, "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7    # "contentDigest":[B
    :cond_d
    move/from16 v21, v2

    move-object/from16 v23, v4

    move-object/from16 v22, v6

    move-object/from16 v25, v7

    .end local v2    # "digestAlgorithm":I
    .end local v4    # "certificates":Ljava/nio/ByteBuffer;
    .end local v6    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "contentDigest":[B
    .restart local v21    # "digestAlgorithm":I
    .restart local v22    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v23    # "certificates":Ljava/nio/ByteBuffer;
    .restart local v25    # "contentDigest":[B
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    .line 346
    const/4 v2, 0x0

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 347
    .local v2, "mainCertificate":Ljava/security/cert/X509Certificate;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    .line 348
    .local v4, "certificatePublicKeyBytes":[B
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 353
    invoke-static {v1}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 354
    .local v6, "additionalAttrs":Ljava/nio/ByteBuffer;
    invoke-static {v6}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verifyAdditionalAttributes(Ljava/nio/ByteBuffer;)V

    .line 356
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/security/cert/X509Certificate;

    invoke-interface {v5, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/security/cert/X509Certificate;

    return-object v7

    .line 349
    .end local v6    # "additionalAttrs":Ljava/nio/ByteBuffer;
    :cond_e
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Public key mismatch between certificate and signature record"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 344
    .end local v2    # "mainCertificate":Ljava/security/cert/X509Certificate;
    .end local v4    # "certificatePublicKeyBytes":[B
    :cond_f
    new-instance v2, Ljava/lang/SecurityException;

    const-string v4, "No certificates listed"

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 314
    .end local v0    # "certificateCount":I
    .end local v8    # "previousSignerDigest":[B
    .end local v21    # "digestAlgorithm":I
    .end local v22    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v23    # "certificates":Ljava/nio/ByteBuffer;
    .end local v25    # "contentDigest":[B
    .local v5, "bestSigAlgorithm":I
    .local v6, "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v17, "contentDigest":[B
    :cond_10
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Signature algorithms don\'t match between digests and signatures records"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    .end local v14    # "digests":Ljava/nio/ByteBuffer;
    .end local v15    # "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v16    # "digestCount":I
    .end local v17    # "contentDigest":[B
    .end local v18    # "signatureCount":I
    .end local v19    # "signatures":Ljava/nio/ByteBuffer;
    .end local v20    # "bestSigAlgorithmSignatureBytes":[B
    .local v2, "signatures":Ljava/nio/ByteBuffer;
    .local v4, "signatureCount":I
    .local v7, "bestSigAlgorithmSignatureBytes":[B
    :cond_11
    move-object/from16 v19, v2

    move/from16 v18, v4

    .end local v2    # "signatures":Ljava/nio/ByteBuffer;
    .end local v4    # "signatureCount":I
    .restart local v18    # "signatureCount":I
    .restart local v19    # "signatures":Ljava/nio/ByteBuffer;
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " signature did not verify"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    .end local v13    # "sigVerified":Z
    .end local v18    # "signatureCount":I
    .end local v19    # "signatures":Ljava/nio/ByteBuffer;
    .restart local v2    # "signatures":Ljava/nio/ByteBuffer;
    .restart local v4    # "signatureCount":I
    :catch_6
    move-exception v0

    move-object/from16 v19, v2

    move/from16 v18, v4

    move/from16 v17, v5

    move-object/from16 v22, v6

    move-object/from16 v20, v7

    .line 282
    .end local v2    # "signatures":Ljava/nio/ByteBuffer;
    .end local v4    # "signatureCount":I
    .end local v5    # "bestSigAlgorithm":I
    .end local v6    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "bestSigAlgorithmSignatureBytes":[B
    .local v0, "e":Ljava/security/GeneralSecurityException;
    .local v17, "bestSigAlgorithm":I
    .restart local v18    # "signatureCount":I
    .restart local v19    # "signatures":Ljava/nio/ByteBuffer;
    .restart local v20    # "bestSigAlgorithmSignatureBytes":[B
    .restart local v22    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_7
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to verify "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " signature"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
