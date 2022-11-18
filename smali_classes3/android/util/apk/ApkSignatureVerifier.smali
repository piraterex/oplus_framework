.class public Landroid/util/apk/ApkSignatureVerifier;
.super Ljava/lang/Object;
.source "ApkSignatureVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;,
        Landroid/util/apk/ApkSignatureVerifier$Result;
    }
.end annotation


# static fields
.field private static final blacklist APK_SIGNATURE_VERIFIER_SOC_EXT:Landroid/util/apk/IApkSignatureVerifierSocExt;

.field private static final blacklist NUMBER_OF_CORES:I

.field private static final blacklist TAG:Ljava/lang/String; = "ApkSignatureVerifier"

.field private static final greylist-max-o sBuffer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field

.field public static blacklist sOnScanDataApp:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetNUMBER_OF_CORES()I
    .locals 1

    sget v0, Landroid/util/apk/ApkSignatureVerifier;->NUMBER_OF_CORES:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smconvertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;
    .locals 0

    invoke-static {p0}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smloadCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/util/apk/ApkSignatureVerifier;->loadCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Landroid/util/apk/ApkSignatureVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 83
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    :goto_0
    sput v1, Landroid/util/apk/ApkSignatureVerifier;->NUMBER_OF_CORES:I

    .line 88
    const-class v0, Landroid/util/apk/IApkSignatureVerifierSocExt;

    .line 89
    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/apk/IApkSignatureVerifierSocExt;

    sput-object v0, Landroid/util/apk/ApkSignatureVerifier;->APK_SIGNATURE_VERIFIER_SOC_EXT:Landroid/util/apk/IApkSignatureVerifierSocExt;

    .line 94
    const/4 v0, 0x0

    sput-boolean v0, Landroid/util/apk/ApkSignatureVerifier;->sOnScanDataApp:Z

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o closeQuietly(Landroid/util/jar/StrictJarFile;)V
    .locals 1
    .param p0, "jarFile"    # Landroid/util/jar/StrictJarFile;

    .line 716
    if-eqz p0, :cond_0

    .line 718
    :try_start_0
    invoke-virtual {p0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    goto :goto_0

    .line 719
    :catch_0
    move-exception v0

    .line 722
    :cond_0
    :goto_0
    return-void
.end method

.method private static greylist-max-o convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;
    .locals 4
    .param p0, "certs"    # [[Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 708
    array-length v0, p0

    new-array v0, v0, [Landroid/content/pm/Signature;

    .line 709
    .local v0, "res":[Landroid/content/pm/Signature;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 710
    new-instance v2, Landroid/content/pm/Signature;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>([Ljava/security/cert/Certificate;)V

    aput-object v2, v0, v1

    .line 709
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 712
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static greylist-max-o generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B
    .locals 1
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

    .line 787
    :try_start_0
    invoke-static {p0, p1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B

    move-result-object v0
    :try_end_0
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 788
    :catch_0
    move-exception v0

    .line 791
    invoke-static {p0, p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getMinimumSignatureSchemeVersionForTargetSdk(I)I
    .locals 2
    .param p0, "targetSdk"    # I

    .line 729
    const/4 v0, 0x1

    const/16 v1, 0x1e

    if-lt p0, v1, :cond_1

    .line 734
    sget-boolean v1, Landroid/util/apk/ApkSignatureVerifier;->sOnScanDataApp:Z

    if-eqz v1, :cond_0

    .line 735
    return v0

    .line 737
    :cond_0
    const/4 v0, 0x2

    return v0

    .line 741
    :cond_1
    return v0
.end method

.method public static greylist-max-o getVerityRootHash(Ljava/lang/String;)[B
    .locals 2
    .param p0, "apkPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 765
    :try_start_0
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->getVerityRootHash(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 766
    :catch_0
    move-exception v0

    .line 770
    :try_start_1
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getVerityRootHash(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_1
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 771
    :catch_1
    move-exception v0

    .line 772
    .local v0, "e":Landroid/util/apk/SignatureNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist loadCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 5
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "jarFile"    # Landroid/util/jar/StrictJarFile;
    .param p2, "entry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/util/jar/StrictJarFile;",
            "Ljava/util/zip/ZipEntry;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "[[",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 669
    const/4 v0, 0x0

    .line 673
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 674
    invoke-static {v0}, Landroid/util/apk/ApkSignatureVerifier;->readFullyIgnoringContents(Ljava/io/InputStream;)V

    .line 675
    invoke-virtual {p1, p2}, Landroid/util/jar/StrictJarFile;->getCertificateChains(Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 675
    return-object v1

    .line 680
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 676
    :catch_0
    move-exception v1

    .line 677
    .local v1, "e":Ljava/lang/Exception;
    const/16 v2, -0x66

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 678
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 677
    invoke-interface {p0, v2, v3, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 680
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 677
    return-object v2

    .line 680
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 681
    throw v1
.end method

.method private static blacklist oplusVerifyV1Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;
    .locals 28
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "verifyFull"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;",
            ">;"
        }
    .end annotation

    .line 492
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    const/4 v12, 0x1

    if-eqz v11, :cond_0

    sget v0, Landroid/util/apk/ApkSignatureVerifier;->NUMBER_OF_CORES:I

    goto :goto_0

    :cond_0
    move v0, v12

    :goto_0
    move v13, v0

    .line 493
    .local v13, "objectNumber":I
    new-array v14, v13, [Landroid/util/jar/StrictJarFile;

    .line 494
    .local v14, "jarFile":[Landroid/util/jar/StrictJarFile;
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 499
    .local v3, "strictJarFiles":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/jar/StrictJarFile;>;"
    const/16 v15, -0x67

    const-wide/32 v7, 0x40000

    :try_start_0
    const-string/jumbo v0, "strictJarFileCtor"

    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 503
    sget-object v0, Landroid/util/apk/ApkSignatureVerifier;->APK_SIGNATURE_VERIFIER_SOC_EXT:Landroid/util/apk/IApkSignatureVerifierSocExt;

    invoke-interface {v0, v11}, Landroid/util/apk/IApkSignatureVerifierSocExt;->hintPackageInstallBoost(Z)V

    .line 507
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v13, :cond_1

    .line 508
    new-instance v1, Landroid/util/jar/StrictJarFile;

    invoke-direct {v1, v10, v12, v11}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V

    aput-object v1, v14, v0

    .line 507
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 513
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 517
    .local v5, "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    const/16 v16, 0x0

    aget-object v0, v14, v16

    const-string v1, "AndroidManifest.xml"

    invoke-virtual {v0, v1}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    move-object v4, v0

    .line 519
    .local v4, "manifestEntry":Ljava/util/zip/ZipEntry;
    if-nez v4, :cond_3

    .line 520
    const/16 v0, -0x65

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no manifest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 656
    sget-object v1, Landroid/util/apk/ApkSignatureVerifier;->APK_SIGNATURE_VERIFIER_SOC_EXT:Landroid/util/apk/IApkSignatureVerifierSocExt;

    invoke-interface {v1}, Landroid/util/apk/IApkSignatureVerifierSocExt;->releasePackageInstallBoost()V

    .line 658
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 659
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 660
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v13, :cond_2

    .line 661
    aget-object v2, v14, v1

    invoke-static {v2}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 660
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 520
    .end local v1    # "i":I
    :cond_2
    return-object v0

    .line 523
    :cond_3
    :try_start_1
    aget-object v0, v14, v16

    .line 524
    invoke-static {v9, v0, v4}, Landroid/util/apk/ApkSignatureVerifier;->loadCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object v2, v0

    .line 525
    .local v2, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 526
    invoke-interface {v9, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 656
    sget-object v1, Landroid/util/apk/ApkSignatureVerifier;->APK_SIGNATURE_VERIFIER_SOC_EXT:Landroid/util/apk/IApkSignatureVerifierSocExt;

    invoke-interface {v1}, Landroid/util/apk/IApkSignatureVerifierSocExt;->releasePackageInstallBoost()V

    .line 658
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 659
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 660
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v13, :cond_4

    .line 661
    aget-object v6, v14, v1

    invoke-static {v6}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 660
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 526
    .end local v1    # "i":I
    :cond_4
    return-object v0

    .line 528
    :cond_5
    :try_start_2
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/security/cert/Certificate;

    move-object/from16 v17, v0

    .line 529
    .local v17, "lastCerts":[[Ljava/security/cert/Certificate;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has no certificates at entry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AndroidManifest.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v15, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 656
    sget-object v1, Landroid/util/apk/ApkSignatureVerifier;->APK_SIGNATURE_VERIFIER_SOC_EXT:Landroid/util/apk/IApkSignatureVerifierSocExt;

    invoke-interface {v1}, Landroid/util/apk/IApkSignatureVerifierSocExt;->releasePackageInstallBoost()V

    .line 658
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 659
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 660
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v13, :cond_6

    .line 661
    aget-object v6, v14, v1

    invoke-static {v6}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 660
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 530
    .end local v1    # "i":I
    :cond_6
    return-object v0

    .line 534
    :cond_7
    :try_start_3
    invoke-static/range {v17 .. v17}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v0

    move-object v1, v0

    .line 537
    .local v1, "lastSigs":[Landroid/content/pm/Signature;
    if-eqz v11, :cond_12

    .line 538
    aget-object v0, v14, v16

    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v18, v0

    .line 539
    .local v18, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 540
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 541
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_5

    .line 543
    :cond_8
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 544
    .local v6, "entryName":Ljava/lang/String;
    :try_start_4
    const-string v7, "META-INF/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-wide/32 v7, 0x40000

    goto :goto_5

    .line 545
    :cond_9
    const-string v7, "AndroidManifest.xml"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-wide/32 v7, 0x40000

    goto :goto_5

    .line 547
    :cond_a
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    const-wide/32 v7, 0x40000

    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v6    # "entryName":Ljava/lang/String;
    goto :goto_5

    .line 557
    :cond_b
    new-instance v0, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    invoke-direct {v0}, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;-><init>()V

    move-object v8, v0

    .line 558
    .local v8, "vData":Landroid/util/apk/ApkSignatureVerifier$1VerificationData;
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v8, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->objWaitAll:Ljava/lang/Object;

    .line 559
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v23, Landroid/util/apk/ApkSignatureVerifier;->NUMBER_OF_CORES:I

    const-wide/16 v24, 0x1

    sget-object v26, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v27, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v27 .. v27}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object/from16 v21, v0

    move/from16 v22, v23

    invoke-direct/range {v21 .. v27}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    move-object v7, v0

    .line 565
    .local v7, "verificationExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    .line 566
    .local v6, "entry":Ljava/util/zip/ZipEntry;
    new-instance v21, Landroid/util/apk/ApkSignatureVerifier$1;
    :try_end_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v22, v1

    .end local v1    # "lastSigs":[Landroid/content/pm/Signature;
    .local v22, "lastSigs":[Landroid/content/pm/Signature;
    move-object/from16 v1, v21

    move-object/from16 v23, v2

    .end local v2    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    .local v23, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    move-object v2, v8

    move-object/from16 v24, v4

    .end local v4    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .local v24, "manifestEntry":Ljava/util/zip/ZipEntry;
    move-object v4, v14

    move-object/from16 v25, v5

    .end local v5    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .local v25, "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    move-object/from16 v5, p0

    move-object v15, v7

    const-wide/32 v19, 0x40000

    .end local v7    # "verificationExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    .local v15, "verificationExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    move-object/from16 v7, p1

    move-object v12, v8

    .end local v8    # "vData":Landroid/util/apk/ApkSignatureVerifier$1VerificationData;
    .local v12, "vData":Landroid/util/apk/ApkSignatureVerifier$1VerificationData;
    move-object/from16 v8, v22

    :try_start_5
    invoke-direct/range {v1 .. v8}, Landroid/util/apk/ApkSignatureVerifier$1;-><init>(Landroid/util/apk/ApkSignatureVerifier$1VerificationData;Landroid/util/ArrayMap;[Landroid/util/jar/StrictJarFile;Landroid/content/pm/parsing/result/ParseInput;Ljava/util/zip/ZipEntry;Ljava/lang/String;[Landroid/content/pm/Signature;)V

    move-object/from16 v1, v21

    .line 620
    .local v1, "verifyTask":Ljava/lang/Runnable;
    iget-object v2, v12, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->objWaitAll:Ljava/lang/Object;

    monitor-enter v2
    :try_end_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 621
    :try_start_6
    iget v4, v12, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    if-nez v4, :cond_c

    .line 622
    invoke-virtual {v15, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 624
    :cond_c
    monitor-exit v2

    .line 625
    .end local v1    # "verifyTask":Ljava/lang/Runnable;
    .end local v6    # "entry":Ljava/util/zip/ZipEntry;
    move-object v8, v12

    move-object v7, v15

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v4, v24

    move-object/from16 v5, v25

    const/4 v12, 0x1

    const/16 v15, -0x67

    goto :goto_6

    .line 624
    .restart local v1    # "verifyTask":Ljava/lang/Runnable;
    .restart local v6    # "entry":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v3    # "strictJarFiles":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/jar/StrictJarFile;>;"
    .end local v13    # "objectNumber":I
    .end local v14    # "jarFile":[Landroid/util/jar/StrictJarFile;
    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "apkPath":Ljava/lang/String;
    .end local p2    # "verifyFull":Z
    :try_start_7
    throw v0

    .line 626
    .end local v6    # "entry":Ljava/util/zip/ZipEntry;
    .end local v12    # "vData":Landroid/util/apk/ApkSignatureVerifier$1VerificationData;
    .end local v15    # "verificationExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local v22    # "lastSigs":[Landroid/content/pm/Signature;
    .end local v23    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    .end local v24    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v25    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .local v1, "lastSigs":[Landroid/content/pm/Signature;
    .restart local v2    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    .restart local v3    # "strictJarFiles":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/jar/StrictJarFile;>;"
    .restart local v4    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .restart local v5    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .restart local v7    # "verificationExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    .restart local v8    # "vData":Landroid/util/apk/ApkSignatureVerifier$1VerificationData;
    .restart local v13    # "objectNumber":I
    .restart local v14    # "jarFile":[Landroid/util/jar/StrictJarFile;
    .restart local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "apkPath":Ljava/lang/String;
    .restart local p2    # "verifyFull":Z
    :cond_d
    move-object/from16 v22, v1

    move-object/from16 v23, v2

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object v15, v7

    move-object v12, v8

    const-wide/32 v19, 0x40000

    .end local v1    # "lastSigs":[Landroid/content/pm/Signature;
    .end local v2    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    .end local v4    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v5    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .end local v7    # "verificationExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local v8    # "vData":Landroid/util/apk/ApkSignatureVerifier$1VerificationData;
    .restart local v12    # "vData":Landroid/util/apk/ApkSignatureVerifier$1VerificationData;
    .restart local v15    # "verificationExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    .restart local v22    # "lastSigs":[Landroid/content/pm/Signature;
    .restart local v23    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    .restart local v24    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .restart local v25    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    const/4 v1, 0x1

    iput-boolean v1, v12, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->wait:Z

    .line 627
    invoke-virtual {v15}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 628
    :goto_7
    iget-boolean v0, v12, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->wait:Z
    :try_end_7
    .catch Ljava/security/GeneralSecurityException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v0, :cond_10

    .line 630
    :try_start_8
    iget v0, v12, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    if-eqz v0, :cond_e

    iget-boolean v0, v12, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->shutDown:Z

    if-nez v0, :cond_e

    .line 631
    const-string v0, "ApkSignatureVerifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "verifyV1 Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v12, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    invoke-virtual {v15}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 633
    const/4 v1, 0x1

    iput-boolean v1, v12, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->shutDown:Z

    .line 635
    :cond_e
    const-wide/16 v0, 0x32

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v15, v0, v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v1, 0x1

    goto :goto_8

    :cond_f
    move/from16 v1, v16

    :goto_8
    iput-boolean v1, v12, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->wait:Z
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 639
    goto :goto_7

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_9
    const-string v1, "ApkSignatureVerifier"

    const-string v2, "VerifyV1 interrupted while awaiting all threads done..."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    nop

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_7

    .line 641
    :cond_10
    iget v0, v12, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    if-eqz v0, :cond_13

    .line 642
    iget v0, v12, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to collect certificates from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v12, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exception:Ljava/lang/Exception;

    invoke-interface {v9, v0, v1, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_9
    .catch Ljava/security/GeneralSecurityException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 656
    sget-object v1, Landroid/util/apk/ApkSignatureVerifier;->APK_SIGNATURE_VERIFIER_SOC_EXT:Landroid/util/apk/IApkSignatureVerifierSocExt;

    invoke-interface {v1}, Landroid/util/apk/IApkSignatureVerifierSocExt;->releasePackageInstallBoost()V

    .line 658
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 659
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    .line 660
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v13, :cond_11

    .line 661
    aget-object v2, v14, v1

    invoke-static {v2}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 660
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 642
    .end local v1    # "i":I
    :cond_11
    return-object v0

    .line 656
    .end local v12    # "vData":Landroid/util/apk/ApkSignatureVerifier$1VerificationData;
    .end local v15    # "verificationExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local v17    # "lastCerts":[[Ljava/security/cert/Certificate;
    .end local v18    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    .end local v22    # "lastSigs":[Landroid/content/pm/Signature;
    .end local v23    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    .end local v24    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v25    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :catchall_1
    move-exception v0

    const-wide/32 v19, 0x40000

    goto/16 :goto_f

    .line 650
    :catch_1
    move-exception v0

    const-wide/32 v19, 0x40000

    goto :goto_b

    .line 647
    :catch_2
    move-exception v0

    const-wide/32 v19, 0x40000

    goto/16 :goto_d

    .line 537
    .local v1, "lastSigs":[Landroid/content/pm/Signature;
    .restart local v2    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    .restart local v4    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .restart local v5    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .restart local v17    # "lastCerts":[[Ljava/security/cert/Certificate;
    :cond_12
    move-object/from16 v22, v1

    move-object/from16 v23, v2

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-wide/from16 v19, v7

    .line 645
    .end local v1    # "lastSigs":[Landroid/content/pm/Signature;
    .end local v2    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    .end local v4    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v5    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .restart local v22    # "lastSigs":[Landroid/content/pm/Signature;
    .restart local v23    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    .restart local v24    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .restart local v25    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :cond_13
    :try_start_a
    new-instance v0, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    new-instance v1, Landroid/content/pm/SigningDetails;

    move-object/from16 v2, v22

    const/4 v4, 0x1

    .end local v22    # "lastSigs":[Landroid/content/pm/Signature;
    .local v2, "lastSigs":[Landroid/content/pm/Signature;
    invoke-direct {v1, v2, v4}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I)V

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;-><init>(Landroid/content/pm/SigningDetails;Ljava/util/Map;)V

    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_a
    .catch Ljava/security/GeneralSecurityException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 656
    sget-object v1, Landroid/util/apk/ApkSignatureVerifier;->APK_SIGNATURE_VERIFIER_SOC_EXT:Landroid/util/apk/IApkSignatureVerifierSocExt;

    invoke-interface {v1}, Landroid/util/apk/IApkSignatureVerifierSocExt;->releasePackageInstallBoost()V

    .line 658
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 659
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    .line 660
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v13, :cond_14

    .line 661
    aget-object v4, v14, v1

    invoke-static {v4}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 660
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 645
    .end local v1    # "i":I
    :cond_14
    return-object v0

    .line 650
    .end local v2    # "lastSigs":[Landroid/content/pm/Signature;
    .end local v17    # "lastCerts":[[Ljava/security/cert/Certificate;
    .end local v23    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    .end local v24    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v25    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :catch_3
    move-exception v0

    goto :goto_b

    .line 647
    :catch_4
    move-exception v0

    goto :goto_d

    .line 656
    :catchall_2
    move-exception v0

    move-wide/from16 v19, v7

    goto :goto_f

    .line 650
    :catch_5
    move-exception v0

    move-wide/from16 v19, v7

    .line 651
    .local v0, "e":Ljava/lang/Exception;
    :goto_b
    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to collect certificates from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x67

    invoke-interface {v9, v2, v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 656
    sget-object v2, Landroid/util/apk/ApkSignatureVerifier;->APK_SIGNATURE_VERIFIER_SOC_EXT:Landroid/util/apk/IApkSignatureVerifierSocExt;

    invoke-interface {v2}, Landroid/util/apk/IApkSignatureVerifierSocExt;->releasePackageInstallBoost()V

    .line 658
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 659
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    .line 660
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v13, :cond_15

    .line 661
    aget-object v4, v14, v2

    invoke-static {v4}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 660
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 651
    .end local v2    # "i":I
    :cond_15
    return-object v1

    .line 647
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v0

    move-wide/from16 v19, v7

    .line 648
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_d
    const/16 v1, -0x69

    :try_start_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to collect certificates from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v1, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 656
    sget-object v2, Landroid/util/apk/ApkSignatureVerifier;->APK_SIGNATURE_VERIFIER_SOC_EXT:Landroid/util/apk/IApkSignatureVerifierSocExt;

    invoke-interface {v2}, Landroid/util/apk/IApkSignatureVerifierSocExt;->releasePackageInstallBoost()V

    .line 658
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 659
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    .line 660
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_e
    if-ge v2, v13, :cond_16

    .line 661
    aget-object v4, v14, v2

    invoke-static {v4}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 660
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 648
    .end local v2    # "i":I
    :cond_16
    return-object v1

    .line 656
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catchall_3
    move-exception v0

    :goto_f
    sget-object v1, Landroid/util/apk/ApkSignatureVerifier;->APK_SIGNATURE_VERIFIER_SOC_EXT:Landroid/util/apk/IApkSignatureVerifierSocExt;

    invoke-interface {v1}, Landroid/util/apk/IApkSignatureVerifierSocExt;->releasePackageInstallBoost()V

    .line 658
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 659
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    .line 660
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_10
    if-ge v1, v13, :cond_17

    .line 661
    aget-object v2, v14, v1

    invoke-static {v2}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 660
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 663
    .end local v1    # "i":I
    :cond_17
    throw v0
.end method

.method private static greylist-max-o readFullyIgnoringContents(Ljava/io/InputStream;)V
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 685
    sget-object v0, Landroid/util/apk/ApkSignatureVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 686
    .local v0, "buffer":[B
    if-nez v0, :cond_0

    .line 687
    const/16 v1, 0x1000

    new-array v0, v1, [B

    .line 690
    :cond_0
    const/4 v1, 0x0

    .line 691
    .local v1, "n":I
    const/4 v2, 0x0

    .line 692
    .local v2, "count":I
    :goto_0
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {p0, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    move v1, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 693
    add-int/2addr v2, v1

    goto :goto_0

    .line 696
    :cond_1
    sget-object v3, Landroid/util/apk/ApkSignatureVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 697
    return-void
.end method

.method public static blacklist unsafeGetCertsWithoutVerification(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 1
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "minSignatureSchemeVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    .line 112
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/util/apk/ApkSignatureVerifier;->verifySignatures(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist verify(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 1
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "minSignatureSchemeVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    .line 102
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/util/apk/ApkSignatureVerifier;->verifySignatures(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist verifySignatures(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .locals 2
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "minSignatureSchemeVersion"    # I
    .param p3, "verifyFull"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    .line 122
    nop

    .line 123
    invoke-static {p0, p1, p2, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifySignaturesInternal(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 124
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 127
    :cond_0
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    iget-object v1, v1, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;->signingDetails:Landroid/content/pm/SigningDetails;

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist verifySignaturesInternal(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .locals 5
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "minSignatureSchemeVersion"    # I
    .param p3, "verifyFull"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;",
            ">;"
        }
    .end annotation

    .line 141
    const-string v0, " or newer for package "

    const-string v1, "No signature found in package of version "

    const/4 v2, 0x4

    const/16 v3, -0x67

    if-le p2, v2, :cond_0

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 150
    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV4Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_0
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 151
    :catch_0
    move-exception v4

    .line 153
    .local v4, "e":Landroid/util/apk/SignatureNotFoundException;
    if-lt p2, v2, :cond_1

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No APK Signature Scheme v4 signature in package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v3, v0, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 159
    .end local v4    # "e":Landroid/util/apk/SignatureNotFoundException;
    :cond_1
    const/4 v2, 0x3

    if-le p2, v2, :cond_2

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 166
    :cond_2
    invoke-static {p0, p1, p2, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV3AndBelowSignatures(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist verifyV1Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;
    .locals 20
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "verifyFull"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;",
            ">;"
        }
    .end annotation

    .line 396
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const-string v4, "Failed to collect certificates from "

    const-string v0, "AndroidManifest.xml"

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    sget v6, Landroid/util/apk/ApkSignatureVerifier;->NUMBER_OF_CORES:I

    if-le v6, v5, :cond_0

    .line 397
    invoke-static/range {p0 .. p2}, Landroid/util/apk/ApkSignatureVerifier;->oplusVerifyV1Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 400
    :cond_0
    const/4 v6, 0x0

    .line 406
    .local v6, "jarFile":Landroid/util/jar/StrictJarFile;
    const/16 v7, -0x67

    const-wide/32 v8, 0x40000

    :try_start_0
    const-string/jumbo v10, "strictJarFileCtor"

    invoke-static {v8, v9, v10}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 410
    new-instance v10, Landroid/util/jar/StrictJarFile;

    invoke-direct {v10, v2, v5, v3}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V

    move-object v6, v10

    .line 414
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .local v10, "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    invoke-virtual {v6, v0}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v11
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    .local v11, "manifestEntry":Ljava/util/zip/ZipEntry;
    const-string v12, "Package "

    if-nez v11, :cond_1

    .line 421
    const/16 v0, -0x65

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " has no manifest"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v0, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 484
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 485
    invoke-static {v6}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 421
    return-object v0

    .line 424
    :cond_1
    nop

    .line 425
    :try_start_2
    invoke-static {v1, v6, v11}, Landroid/util/apk/ApkSignatureVerifier;->loadCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v13

    .line 426
    .local v13, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    invoke-interface {v13}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 427
    invoke-interface {v1, v13}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 484
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 485
    invoke-static {v6}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 427
    return-object v0

    .line 429
    :cond_2
    :try_start_3
    invoke-interface {v13}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[Ljava/security/cert/Certificate;

    .line 430
    .local v14, "lastCerts":[[Ljava/security/cert/Certificate;
    invoke-static {v14}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v15
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v5, " has no certificates at entry "

    if-eqz v15, :cond_3

    .line 431
    :try_start_4
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v7, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 484
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 485
    invoke-static {v6}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 431
    return-object v0

    .line 435
    :cond_3
    :try_start_5
    invoke-static {v14}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v15

    .line 438
    .local v15, "lastSigs":[Landroid/content/pm/Signature;
    if-eqz v3, :cond_b

    .line 439
    invoke-virtual {v6}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 440
    .local v16, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 441
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/zip/ZipEntry;

    move-object/from16 v18, v17

    .line 442
    .local v18, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_4

    goto :goto_0

    .line 444
    :cond_4
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v19, v17

    .line 445
    .local v19, "entryName":Ljava/lang/String;
    const-string v7, "META-INF/"

    move-object/from16 v8, v19

    .end local v19    # "entryName":Ljava/lang/String;
    .local v8, "entryName":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v7, -0x67

    const-wide/32 v8, 0x40000

    goto :goto_0

    .line 446
    :cond_5
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, -0x67

    const-wide/32 v8, 0x40000

    goto :goto_0

    .line 448
    :cond_6
    move-object/from16 v7, v18

    .end local v18    # "entry":Ljava/util/zip/ZipEntry;
    .local v7, "entry":Ljava/util/zip/ZipEntry;
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    const/16 v7, -0x67

    const-wide/32 v8, 0x40000

    .end local v7    # "entry":Ljava/util/zip/ZipEntry;
    .end local v8    # "entryName":Ljava/lang/String;
    goto :goto_0

    .line 451
    :cond_7
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/zip/ZipEntry;

    .line 453
    .restart local v7    # "entry":Ljava/util/zip/ZipEntry;
    nop

    .line 454
    invoke-static {v1, v6, v7}, Landroid/util/apk/ApkSignatureVerifier;->loadCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v8

    .line 455
    .local v8, "ret":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    invoke-interface {v8}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 456
    invoke-interface {v1, v8}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 484
    const-wide/32 v4, 0x40000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 485
    invoke-static {v6}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 456
    return-object v0

    .line 458
    :cond_8
    :try_start_6
    invoke-interface {v8}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[Ljava/security/cert/Certificate;

    .line 459
    .local v9, "entryCerts":[[Ljava/security/cert/Certificate;
    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 462
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 460
    const/16 v5, -0x67

    invoke-interface {v1, v5, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/GeneralSecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 484
    const-wide/32 v4, 0x40000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 485
    invoke-static {v6}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 460
    return-object v0

    .line 466
    :cond_9
    :try_start_7
    invoke-static {v9}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v18

    move-object/from16 v19, v18

    .line 467
    .local v19, "entrySigs":[Landroid/content/pm/Signature;
    move-object/from16 v18, v0

    move-object/from16 v0, v19

    .end local v19    # "entrySigs":[Landroid/content/pm/Signature;
    .local v0, "entrySigs":[Landroid/content/pm/Signature;
    invoke-static {v15, v0}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v19

    if-nez v19, :cond_a

    .line 468
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " has mismatched certificates at entry "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 471
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 468
    const/16 v12, -0x68

    invoke-interface {v1, v12, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_7
    .catch Ljava/security/GeneralSecurityException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 484
    const-wide/32 v17, 0x40000

    invoke-static/range {v17 .. v18}, Landroid/os/Trace;->traceEnd(J)V

    .line 485
    invoke-static {v6}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 468
    return-object v4

    .line 473
    .end local v0    # "entrySigs":[Landroid/content/pm/Signature;
    .end local v7    # "entry":Ljava/util/zip/ZipEntry;
    .end local v8    # "ret":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    .end local v9    # "entryCerts":[[Ljava/security/cert/Certificate;
    :cond_a
    move-object/from16 v0, v18

    goto/16 :goto_1

    .line 475
    .end local v16    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    :cond_b
    :try_start_8
    new-instance v0, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    new-instance v5, Landroid/content/pm/SigningDetails;

    const/4 v7, 0x1

    invoke-direct {v5, v15, v7}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I)V

    const/4 v7, 0x0

    invoke-direct {v0, v5, v7}, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;-><init>(Landroid/content/pm/SigningDetails;Ljava/util/Map;)V

    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_8
    .catch Ljava/security/GeneralSecurityException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 484
    const-wide/32 v4, 0x40000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 485
    invoke-static {v6}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 475
    return-object v0

    .line 484
    .end local v10    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .end local v11    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v13    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    .end local v14    # "lastCerts":[[Ljava/security/cert/Certificate;
    .end local v15    # "lastSigs":[Landroid/content/pm/Signature;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Ljava/lang/Exception;
    :try_start_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, -0x67

    invoke-interface {v1, v5, v4, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 484
    const-wide/32 v7, 0x40000

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 485
    invoke-static {v6}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 481
    return-object v4

    .line 477
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 478
    .local v0, "e":Ljava/security/GeneralSecurityException;
    const/16 v5, -0x69

    :try_start_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v5, v4, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 484
    const-wide/32 v7, 0x40000

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 485
    invoke-static {v6}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 478
    return-object v4

    .line 484
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :goto_2
    const-wide/32 v4, 0x40000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 485
    invoke-static {v6}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 486
    throw v0
.end method

.method private static blacklist verifyV2Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;
    .locals 8
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "verifyFull"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 368
    if-eqz p2, :cond_0

    const-string/jumbo v0, "verifyV2"

    goto :goto_0

    :cond_0
    const-string v0, "certsOnlyV2"

    :goto_0
    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 370
    nop

    .line 371
    :try_start_0
    invoke-static {p1, p2}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object v0

    .line 372
    .local v0, "vSigner":Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    iget-object v3, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->certs:[[Ljava/security/cert/X509Certificate;

    .line 373
    .local v3, "signerCerts":[[Ljava/security/cert/Certificate;
    invoke-static {v3}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v4

    .line 374
    .local v4, "signerSigs":[Landroid/content/pm/Signature;
    new-instance v5, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    new-instance v6, Landroid/content/pm/SigningDetails;

    const/4 v7, 0x2

    invoke-direct {v6, v4, v7}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I)V

    iget-object v7, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    invoke-direct {v5, v6, v7}, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;-><init>(Landroid/content/pm/SigningDetails;Ljava/util/Map;)V

    invoke-interface {p0, v5}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5
    :try_end_0
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 374
    return-object v5

    .line 384
    .end local v0    # "vSigner":Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    .end local v3    # "signerCerts":[[Ljava/security/cert/Certificate;
    .end local v4    # "signerSigs":[Landroid/content/pm/Signature;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 378
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Exception;
    const/16 v3, -0x67

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to collect certificates from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " using APK Signature Scheme v2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v3, v4, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 380
    return-object v3

    .line 376
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 377
    .local v0, "e":Landroid/util/apk/SignatureNotFoundException;
    nop

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "apkPath":Ljava/lang/String;
    .end local p2    # "verifyFull":Z
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 384
    .end local v0    # "e":Landroid/util/apk/SignatureNotFoundException;
    .restart local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "apkPath":Ljava/lang/String;
    .restart local p2    # "verifyFull":Z
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 385
    throw v0
.end method

.method private static blacklist verifyV3AndBelowSignatures(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .locals 5
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "minSignatureSchemeVersion"    # I
    .param p3, "verifyFull"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;",
            ">;"
        }
    .end annotation

    .line 174
    :try_start_0
    invoke-static {p0, p1, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV3Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_0
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 175
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Landroid/util/apk/SignatureNotFoundException;
    const/4 v1, 0x3

    const/16 v2, -0x67

    if-lt p2, v1, :cond_0

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No APK Signature Scheme v3 signature in package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 184
    .end local v0    # "e":Landroid/util/apk/SignatureNotFoundException;
    :cond_0
    const-string v0, " or newer for package "

    const-string v1, "No signature found in package of version "

    const/4 v3, 0x2

    if-le p2, v3, :cond_1

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 193
    :cond_1
    :try_start_1
    invoke-static {p0, p1, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV2Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_1
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 194
    :catch_1
    move-exception v4

    .line 196
    .local v4, "e":Landroid/util/apk/SignatureNotFoundException;
    if-lt p2, v3, :cond_2

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No APK Signature Scheme v2 signature in package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 203
    .end local v4    # "e":Landroid/util/apk/SignatureNotFoundException;
    :cond_2
    const/4 v3, 0x1

    if-le p2, v3, :cond_3

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 211
    :cond_3
    invoke-static {p0, p1, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV1Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist verifyV3Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;
    .locals 9
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "verifyFull"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 327
    if-eqz p2, :cond_0

    const-string/jumbo v0, "verifyV3"

    goto :goto_0

    :cond_0
    const-string v0, "certsOnlyV3"

    :goto_0
    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 330
    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {p1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v0

    goto :goto_1

    .line 331
    :cond_1
    invoke-static {p1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->unsafeGetCertsWithoutVerification(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v0

    :goto_1
    nop

    .line 333
    .local v0, "vSigner":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    const/4 v3, 0x1

    new-array v3, v3, [[Ljava/security/cert/Certificate;

    const/4 v4, 0x0

    iget-object v5, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->certs:[Ljava/security/cert/X509Certificate;

    aput-object v5, v3, v4

    .line 334
    .local v3, "signerCerts":[[Ljava/security/cert/Certificate;
    invoke-static {v3}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v4

    .line 335
    .local v4, "signerSigs":[Landroid/content/pm/Signature;
    const/4 v5, 0x0

    .line 336
    .local v5, "pastSignerSigs":[Landroid/content/pm/Signature;
    iget-object v6, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    if-eqz v6, :cond_2

    .line 338
    iget-object v6, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v6, v6, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Landroid/content/pm/Signature;

    move-object v5, v6

    .line 339
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v7, v5

    if-ge v6, v7, :cond_2

    .line 340
    new-instance v7, Landroid/content/pm/Signature;

    iget-object v8, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v8, v8, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v7, v5, v6

    .line 341
    aget-object v7, v5, v6

    iget-object v8, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v8, v8, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->flagsList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/pm/Signature;->setFlags(I)V

    .line 339
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 344
    .end local v6    # "i":I
    :cond_2
    new-instance v6, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    new-instance v7, Landroid/content/pm/SigningDetails;

    const/4 v8, 0x3

    invoke-direct {v7, v4, v8, v5}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;)V

    iget-object v8, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    invoke-direct {v6, v7, v8}, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;-><init>(Landroid/content/pm/SigningDetails;Ljava/util/Map;)V

    invoke-interface {p0, v6}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6
    :try_end_0
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 344
    return-object v6

    .line 355
    .end local v0    # "vSigner":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .end local v3    # "signerCerts":[[Ljava/security/cert/Certificate;
    .end local v4    # "signerSigs":[Landroid/content/pm/Signature;
    .end local v5    # "pastSignerSigs":[Landroid/content/pm/Signature;
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 349
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/Exception;
    const/16 v3, -0x67

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to collect certificates from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " using APK Signature Scheme v3"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v3, v4, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 351
    return-object v3

    .line 347
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 348
    .local v0, "e":Landroid/util/apk/SignatureNotFoundException;
    nop

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "apkPath":Ljava/lang/String;
    .end local p2    # "verifyFull":Z
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 355
    .end local v0    # "e":Landroid/util/apk/SignatureNotFoundException;
    .restart local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "apkPath":Ljava/lang/String;
    .restart local p2    # "verifyFull":Z
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 356
    throw v0
.end method

.method private static blacklist verifyV4Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .locals 18
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "minSignatureSchemeVersion"    # I
    .param p3, "verifyFull"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 224
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz p3, :cond_0

    const-string/jumbo v0, "verifyV4"

    goto :goto_0

    :cond_0
    const-string v0, "certsOnlyV4"

    :goto_0
    const-wide/32 v3, 0x40000

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 226
    nop

    .line 227
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/util/apk/ApkSignatureSchemeV4Verifier;->extractSignature(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    move-object v5, v0

    .line 228
    .local v5, "v4Pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/incremental/V4Signature$HashingInfo;Landroid/os/incremental/V4Signature$SigningInfos;>;"
    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/os/incremental/V4Signature$HashingInfo;

    move-object v6, v0

    .line 229
    .local v6, "hashingInfo":Landroid/os/incremental/V4Signature$HashingInfo;
    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/os/incremental/V4Signature$SigningInfos;

    move-object v7, v0

    .line 231
    .local v7, "signingInfos":Landroid/os/incremental/V4Signature$SigningInfos;
    const/4 v8, 0x0

    .line 232
    .local v8, "pastSignerSigs":[Landroid/content/pm/Signature;
    const/4 v9, 0x0

    .line 233
    .local v9, "nonstreamingDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    const/4 v10, 0x0

    .line 235
    .local v10, "nonstreamingCerts":[[Ljava/security/cert/Certificate;
    const/4 v11, -0x1

    .line 238
    .local v11, "v3BlockId":I
    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez p3, :cond_1

    iget-object v0, v7, Landroid/os/incremental/V4Signature$SigningInfos;->signingInfoBlocks:[Landroid/os/incremental/V4Signature$SigningInfoBlock;

    array-length v0, v0
    :try_end_0
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_3

    .line 242
    :cond_1
    nop

    .line 243
    :try_start_1
    invoke-static/range {p1 .. p1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->unsafeGetCertsWithoutVerification(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v0

    .line 244
    .local v0, "v3Signer":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    iget-object v14, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    move-object v9, v14

    .line 245
    new-array v14, v13, [[Ljava/security/cert/Certificate;

    iget-object v15, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->certs:[Ljava/security/cert/X509Certificate;

    aput-object v15, v14, v12

    move-object v10, v14

    .line 246
    iget-object v14, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    if-eqz v14, :cond_2

    .line 248
    iget-object v14, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v14, v14, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [Landroid/content/pm/Signature;

    move-object v8, v14

    .line 249
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    array-length v15, v8

    if-ge v14, v15, :cond_2

    .line 250
    new-instance v15, Landroid/content/pm/Signature;

    iget-object v3, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v3, v3, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    .line 251
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    invoke-direct {v15, v3}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v15, v8, v14

    .line 252
    aget-object v3, v8, v14

    iget-object v4, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v4, v4, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->flagsList:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->setFlags(I)V

    .line 249
    add-int/lit8 v14, v14, 0x1

    const-wide/32 v3, 0x40000

    goto :goto_1

    .line 255
    .end local v14    # "i":I
    :cond_2
    iget v3, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->blockId:I
    :try_end_1
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v11, v3

    .line 267
    .end local v0    # "v3Signer":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    goto :goto_2

    .line 256
    :catch_0
    move-exception v0

    move-object v3, v0

    .line 258
    .local v3, "e":Landroid/util/apk/SignatureNotFoundException;
    nop

    .line 259
    :try_start_2
    invoke-static {v2, v12}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object v0

    .line 260
    .local v0, "v2Signer":Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    iget-object v4, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    move-object v9, v4

    .line 261
    iget-object v4, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->certs:[[Ljava/security/cert/X509Certificate;
    :try_end_2
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v10, v4

    .line 266
    .end local v0    # "v2Signer":Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    nop

    .line 270
    .end local v3    # "e":Landroid/util/apk/SignatureNotFoundException;
    :cond_3
    :goto_2
    nop

    .line 271
    :try_start_3
    invoke-static {v2, v6, v7, v11}, Landroid/util/apk/ApkSignatureSchemeV4Verifier;->verify(Ljava/lang/String;Landroid/os/incremental/V4Signature$HashingInfo;Landroid/os/incremental/V4Signature$SigningInfos;I)Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;

    move-result-object v0

    .line 273
    .local v0, "vSigner":Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;
    new-array v3, v13, [[Ljava/security/cert/Certificate;

    iget-object v4, v0, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->certs:[Ljava/security/cert/Certificate;

    aput-object v4, v3, v12

    .line 274
    .local v3, "signerCerts":[[Ljava/security/cert/Certificate;
    invoke-static {v3}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v4

    .line 276
    .local v4, "signerSigs":[Landroid/content/pm/Signature;
    if-eqz p3, :cond_a

    .line 277
    invoke-static {v10}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v12

    .line 278
    .local v12, "nonstreamingSigs":[Landroid/content/pm/Signature;
    array-length v13, v12

    array-length v14, v4

    if-ne v13, v14, :cond_9

    .line 283
    const/4 v13, 0x0

    .local v13, "i":I
    array-length v14, v4

    .local v14, "size":I
    :goto_3
    if-ge v13, v14, :cond_5

    .line 284
    aget-object v15, v12, v13

    move-object/from16 v16, v3

    .end local v3    # "signerCerts":[[Ljava/security/cert/Certificate;
    .local v16, "signerCerts":[[Ljava/security/cert/Certificate;
    aget-object v3, v4, v13

    invoke-virtual {v15, v3}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 283
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v16

    goto :goto_3

    .line 285
    :cond_4
    new-instance v3, Ljava/lang/SecurityException;

    const-string v15, "V4 signature certificate does not match V2/V3"

    invoke-direct {v3, v15}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "apkPath":Ljava/lang/String;
    .end local p2    # "minSignatureSchemeVersion":I
    .end local p3    # "verifyFull":Z
    throw v3

    .line 283
    .end local v16    # "signerCerts":[[Ljava/security/cert/Certificate;
    .restart local v3    # "signerCerts":[[Ljava/security/cert/Certificate;
    .restart local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "apkPath":Ljava/lang/String;
    .restart local p2    # "minSignatureSchemeVersion":I
    .restart local p3    # "verifyFull":Z
    :cond_5
    move-object/from16 v16, v3

    .line 290
    .end local v3    # "signerCerts":[[Ljava/security/cert/Certificate;
    .end local v13    # "i":I
    .end local v14    # "size":I
    .restart local v16    # "signerCerts":[[Ljava/security/cert/Certificate;
    const/4 v3, 0x0

    .line 291
    .local v3, "found":Z
    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    .line 292
    .local v14, "nonstreamingDigest":[B
    iget-object v15, v0, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->apkDigest:[B

    move/from16 v17, v3

    .end local v3    # "found":Z
    .local v17, "found":Z
    iget-object v3, v0, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->apkDigest:[B

    array-length v3, v3

    invoke-static {v15, v14, v3}, Lcom/android/internal/util/ArrayUtils;->equals([B[BI)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 294
    const/4 v3, 0x1

    .line 295
    .end local v17    # "found":Z
    .restart local v3    # "found":Z
    goto :goto_5

    .line 297
    .end local v3    # "found":Z
    .end local v14    # "nonstreamingDigest":[B
    .restart local v17    # "found":Z
    :cond_6
    move/from16 v3, v17

    goto :goto_4

    .line 291
    .end local v17    # "found":Z
    .restart local v3    # "found":Z
    :cond_7
    move/from16 v17, v3

    .line 298
    :goto_5
    if-eqz v3, :cond_8

    goto :goto_6

    .line 299
    :cond_8
    new-instance v13, Ljava/lang/SecurityException;

    const-string v14, "APK digest in V4 signature does not match V2/V3"

    invoke-direct {v13, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "apkPath":Ljava/lang/String;
    .end local p2    # "minSignatureSchemeVersion":I
    .end local p3    # "verifyFull":Z
    throw v13

    .line 279
    .end local v16    # "signerCerts":[[Ljava/security/cert/Certificate;
    .local v3, "signerCerts":[[Ljava/security/cert/Certificate;
    .restart local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "apkPath":Ljava/lang/String;
    .restart local p2    # "minSignatureSchemeVersion":I
    .restart local p3    # "verifyFull":Z
    :cond_9
    move-object/from16 v16, v3

    .end local v3    # "signerCerts":[[Ljava/security/cert/Certificate;
    .restart local v16    # "signerCerts":[[Ljava/security/cert/Certificate;
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid number of certificates: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v12

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "apkPath":Ljava/lang/String;
    .end local p2    # "minSignatureSchemeVersion":I
    .end local p3    # "verifyFull":Z
    throw v3

    .line 276
    .end local v12    # "nonstreamingSigs":[Landroid/content/pm/Signature;
    .end local v16    # "signerCerts":[[Ljava/security/cert/Certificate;
    .restart local v3    # "signerCerts":[[Ljava/security/cert/Certificate;
    .restart local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "apkPath":Ljava/lang/String;
    .restart local p2    # "minSignatureSchemeVersion":I
    .restart local p3    # "verifyFull":Z
    :cond_a
    move-object/from16 v16, v3

    .line 303
    .end local v3    # "signerCerts":[[Ljava/security/cert/Certificate;
    .restart local v16    # "signerCerts":[[Ljava/security/cert/Certificate;
    :goto_6
    new-instance v3, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    new-instance v12, Landroid/content/pm/SigningDetails;

    const/4 v13, 0x4

    invoke-direct {v12, v4, v13, v8}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;)V

    iget-object v13, v0, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    invoke-direct {v3, v12, v13}, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;-><init>(Landroid/content/pm/SigningDetails;Ljava/util/Map;)V

    invoke-interface {v1, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_3
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 314
    const-wide/32 v12, 0x40000

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 303
    return-object v3

    .line 262
    .end local v0    # "vSigner":Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;
    .end local v4    # "signerSigs":[Landroid/content/pm/Signature;
    .end local v16    # "signerCerts":[[Ljava/security/cert/Certificate;
    .local v3, "e":Landroid/util/apk/SignatureNotFoundException;
    :catch_1
    move-exception v0

    .line 263
    .local v0, "ee":Landroid/util/apk/SignatureNotFoundException;
    :try_start_4
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "V4 verification failed to collect V2/V3 certificates from : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v12, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "apkPath":Ljava/lang/String;
    .end local p2    # "minSignatureSchemeVersion":I
    .end local p3    # "verifyFull":Z
    throw v4
    :try_end_4
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 314
    .end local v0    # "ee":Landroid/util/apk/SignatureNotFoundException;
    .end local v3    # "e":Landroid/util/apk/SignatureNotFoundException;
    .end local v5    # "v4Pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/incremental/V4Signature$HashingInfo;Landroid/os/incremental/V4Signature$SigningInfos;>;"
    .end local v6    # "hashingInfo":Landroid/os/incremental/V4Signature$HashingInfo;
    .end local v7    # "signingInfos":Landroid/os/incremental/V4Signature$SigningInfos;
    .end local v8    # "pastSignerSigs":[Landroid/content/pm/Signature;
    .end local v9    # "nonstreamingDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    .end local v10    # "nonstreamingCerts":[[Ljava/security/cert/Certificate;
    .end local v11    # "v3BlockId":I
    .restart local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "apkPath":Ljava/lang/String;
    .restart local p2    # "minSignatureSchemeVersion":I
    .restart local p3    # "verifyFull":Z
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 308
    :catch_2
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Exception;
    const/16 v3, -0x67

    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to collect certificates from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " using APK Signature Scheme v4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 314
    const-wide/32 v4, 0x40000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 310
    return-object v3

    .line 306
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 307
    .local v0, "e":Landroid/util/apk/SignatureNotFoundException;
    nop

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "apkPath":Ljava/lang/String;
    .end local p2    # "minSignatureSchemeVersion":I
    .end local p3    # "verifyFull":Z
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 314
    .end local v0    # "e":Landroid/util/apk/SignatureNotFoundException;
    .restart local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "apkPath":Ljava/lang/String;
    .restart local p2    # "minSignatureSchemeVersion":I
    .restart local p3    # "verifyFull":Z
    :goto_7
    const-wide/32 v3, 0x40000

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 315
    throw v0
.end method
