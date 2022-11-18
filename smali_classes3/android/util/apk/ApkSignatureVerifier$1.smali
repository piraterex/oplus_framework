.class Landroid/util/apk/ApkSignatureVerifier$1;
.super Ljava/lang/Object;
.source "ApkSignatureVerifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/util/apk/ApkSignatureVerifier;->oplusVerifyV1Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$apkPath:Ljava/lang/String;

.field final synthetic blacklist val$entry:Ljava/util/zip/ZipEntry;

.field final synthetic blacklist val$input:Landroid/content/pm/parsing/result/ParseInput;

.field final synthetic blacklist val$jarFile:[Landroid/util/jar/StrictJarFile;

.field final synthetic blacklist val$lastSigs:[Landroid/content/pm/Signature;

.field final synthetic blacklist val$strictJarFiles:Landroid/util/ArrayMap;

.field final synthetic blacklist val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;


# direct methods
.method constructor blacklist <init>(Landroid/util/apk/ApkSignatureVerifier$1VerificationData;Landroid/util/ArrayMap;[Landroid/util/jar/StrictJarFile;Landroid/content/pm/parsing/result/ParseInput;Ljava/util/zip/ZipEntry;Ljava/lang/String;[Landroid/content/pm/Signature;)V
    .locals 0

    .line 566
    iput-object p1, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    iput-object p2, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$strictJarFiles:Landroid/util/ArrayMap;

    iput-object p3, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$jarFile:[Landroid/util/jar/StrictJarFile;

    iput-object p4, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$input:Landroid/content/pm/parsing/result/ParseInput;

    iput-object p5, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$entry:Ljava/util/zip/ZipEntry;

    iput-object p6, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$apkPath:Ljava/lang/String;

    iput-object p7, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$lastSigs:[Landroid/content/pm/Signature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 8

    .line 569
    :try_start_0
    iget-object v0, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    iget v0, v0, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    if-eqz v0, :cond_0

    .line 570
    const-string v0, "ApkSignatureVerifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VerifyV1 exit with exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    iget v2, v2, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    return-void

    .line 573
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, "tid":Ljava/lang/String;
    iget-object v1, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$strictJarFiles:Landroid/util/ArrayMap;

    monitor-enter v1
    :try_end_0
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    :try_start_1
    iget-object v2, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$strictJarFiles:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/jar/StrictJarFile;

    .line 577
    .local v2, "tempJarFile":Landroid/util/jar/StrictJarFile;
    if-nez v2, :cond_2

    .line 578
    iget-object v3, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    iget v3, v3, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->index:I

    invoke-static {}, Landroid/util/apk/ApkSignatureVerifier;->-$$Nest$sfgetNUMBER_OF_CORES()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 579
    iget-object v3, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    const/4 v4, 0x0

    iput v4, v3, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->index:I

    .line 581
    :cond_1
    iget-object v3, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$jarFile:[Landroid/util/jar/StrictJarFile;

    iget-object v4, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    iget v5, v4, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v4, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->index:I

    aget-object v3, v3, v5

    move-object v2, v3

    .line 582
    iget-object v3, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$strictJarFiles:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 586
    :try_start_2
    iget-object v1, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$input:Landroid/content/pm/parsing/result/ParseInput;

    iget-object v3, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$entry:Ljava/util/zip/ZipEntry;

    .line 587
    invoke-static {v1, v2, v3}, Landroid/util/apk/ApkSignatureVerifier;->-$$Nest$smloadCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 588
    .local v1, "ret":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-nez v3, :cond_5

    .line 591
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/security/cert/Certificate;

    .line 592
    .local v3, "entryCerts":[[Ljava/security/cert/Certificate;
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 598
    invoke-static {v3}, Landroid/util/apk/ApkSignatureVerifier;->-$$Nest$smconvertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v4

    .line 599
    .local v4, "entrySigs":[Landroid/content/pm/Signature;
    iget-object v5, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$lastSigs:[Landroid/content/pm/Signature;

    invoke-static {v5, v4}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v5

    if-eqz v5, :cond_3

    .end local v0    # "tid":Ljava/lang/String;
    .end local v1    # "ret":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    .end local v2    # "tempJarFile":Landroid/util/jar/StrictJarFile;
    .end local v3    # "entryCerts":[[Ljava/security/cert/Certificate;
    .end local v4    # "entrySigs":[Landroid/content/pm/Signature;
    goto/16 :goto_0

    .line 600
    .restart local v0    # "tid":Ljava/lang/String;
    .restart local v1    # "ret":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    .restart local v2    # "tempJarFile":Landroid/util/jar/StrictJarFile;
    .restart local v3    # "entryCerts":[[Ljava/security/cert/Certificate;
    .restart local v4    # "entrySigs":[Landroid/content/pm/Signature;
    :cond_3
    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$apkPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has mismatched certificates at entry "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$entry:Ljava/util/zip/ZipEntry;

    .line 601
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/util/apk/ApkSignatureVerifier$1;
    throw v5

    .line 593
    .end local v4    # "entrySigs":[Landroid/content/pm/Signature;
    .restart local p0    # "this":Landroid/util/apk/ApkSignatureVerifier$1;
    :cond_4
    new-instance v4, Landroid/util/apk/SignatureNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$apkPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has no certificates at entry "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$entry:Ljava/util/zip/ZipEntry;

    .line 594
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/util/apk/ApkSignatureVerifier$1;
    throw v4

    .line 589
    .end local v3    # "entryCerts":[[Ljava/security/cert/Certificate;
    .restart local p0    # "this":Landroid/util/apk/ApkSignatureVerifier$1;
    :cond_5
    new-instance v3, Ljava/lang/SecurityException;

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/util/apk/ApkSignatureVerifier$1;
    throw v3
    :try_end_2
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 584
    .end local v1    # "ret":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    .end local v2    # "tempJarFile":Landroid/util/jar/StrictJarFile;
    .restart local p0    # "this":Landroid/util/apk/ApkSignatureVerifier$1;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Landroid/util/apk/ApkSignatureVerifier$1;
    :try_start_4
    throw v2
    :try_end_4
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 613
    .end local v0    # "tid":Ljava/lang/String;
    .restart local p0    # "this":Landroid/util/apk/ApkSignatureVerifier$1;
    :catch_0
    move-exception v0

    .line 614
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    iget-object v1, v1, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->objWaitAll:Ljava/lang/Object;

    monitor-enter v1

    .line 615
    :try_start_5
    iget-object v2, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    const/16 v3, -0x68

    iput v3, v2, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    .line 616
    iget-object v2, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    iput-object v0, v2, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exception:Ljava/lang/Exception;

    .line 617
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2

    .line 608
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 609
    .local v0, "e":Ljava/security/GeneralSecurityException;
    iget-object v1, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    iget-object v1, v1, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->objWaitAll:Ljava/lang/Object;

    monitor-enter v1

    .line 610
    :try_start_6
    iget-object v2, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    const/16 v3, -0x69

    iput v3, v2, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    .line 611
    iget-object v2, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    iput-object v0, v2, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exception:Ljava/lang/Exception;

    .line 612
    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2

    .line 603
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catch_2
    move-exception v0

    .line 604
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    iget-object v1, v1, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->objWaitAll:Ljava/lang/Object;

    monitor-enter v1

    .line 605
    :try_start_7
    iget-object v2, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    const/16 v3, -0x67

    iput v3, v2, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    .line 606
    iget-object v2, p0, Landroid/util/apk/ApkSignatureVerifier$1;->val$vData:Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    iput-object v0, v2, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exception:Ljava/lang/Exception;

    .line 607
    monitor-exit v1

    .line 618
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 619
    :goto_1
    return-void

    .line 607
    .restart local v0    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v2

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v2
.end method
