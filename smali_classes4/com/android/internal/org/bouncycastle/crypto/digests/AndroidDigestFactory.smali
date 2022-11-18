.class public final Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;
.super Ljava/lang/Object;
.source "AndroidDigestFactory.java"


# static fields
.field private static final blacklist BC:Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

.field private static final blacklist CONSCRYPT:Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactoryBouncyCastle;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactoryBouncyCastle;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->BC:Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    .line 36
    const-string v0, "AndroidOpenSSL"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactoryOpenSSL;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactoryOpenSSL;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->CONSCRYPT:Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    goto :goto_0

    .line 39
    :cond_0
    const-string/jumbo v0, "java.vendor"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->CONSCRYPT:Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    .line 44
    :goto_0
    return-void

    .line 40
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Provider AndroidOpenSSL must exist"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getMD5()Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .locals 1

    .line 47
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->CONSCRYPT:Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    if-eqz v0, :cond_0

    .line 49
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;->getMD5()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 50
    :catch_0
    move-exception v0

    .line 54
    :cond_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->BC:Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;->getMD5()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSHA1()Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .locals 1

    .line 58
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->CONSCRYPT:Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    if-eqz v0, :cond_0

    .line 60
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;->getSHA1()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 61
    :catch_0
    move-exception v0

    .line 65
    :cond_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->BC:Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;->getSHA1()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSHA224()Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .locals 1

    .line 69
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->CONSCRYPT:Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    if-eqz v0, :cond_0

    .line 71
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;->getSHA224()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 72
    :catch_0
    move-exception v0

    .line 76
    :cond_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->BC:Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;->getSHA224()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSHA256()Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .locals 1

    .line 80
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->CONSCRYPT:Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    if-eqz v0, :cond_0

    .line 82
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;->getSHA256()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 87
    :cond_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->BC:Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;->getSHA256()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSHA384()Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .locals 1

    .line 91
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->CONSCRYPT:Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    if-eqz v0, :cond_0

    .line 93
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;->getSHA384()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 94
    :catch_0
    move-exception v0

    .line 98
    :cond_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->BC:Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;->getSHA384()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSHA512()Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .locals 1

    .line 102
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->CONSCRYPT:Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    if-eqz v0, :cond_0

    .line 104
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;->getSHA512()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 105
    :catch_0
    move-exception v0

    .line 109
    :cond_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->BC:Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;->getSHA512()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v0

    return-object v0
.end method
