.class public Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;
.super Lcom/android/internal/org/bouncycastle/jcajce/util/ProviderJcaJceHelper;
.source "BCJcaJceHelper.java"


# static fields
.field private static volatile blacklist bcProvider:Ljava/security/Provider;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 41
    invoke-static {}, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;->getBouncyCastleProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    .line 42
    return-void
.end method

.method private static declared-synchronized blacklist getBouncyCastleProvider()Ljava/security/Provider;
    .locals 3

    const-class v0, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;

    monitor-enter v0

    .line 20
    :try_start_0
    const-string v1, "BC"

    invoke-static {v1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    .line 23
    .local v1, "system":Ljava/security/Provider;
    instance-of v2, v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 25
    monitor-exit v0

    return-object v1

    .line 27
    :cond_0
    :try_start_1
    sget-object v2, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;->bcProvider:Ljava/security/Provider;

    if-eqz v2, :cond_1

    .line 29
    sget-object v2, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;->bcProvider:Ljava/security/Provider;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v2

    .line 33
    :cond_1
    :try_start_2
    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    sput-object v2, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;->bcProvider:Ljava/security/Provider;

    .line 35
    sget-object v2, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;->bcProvider:Ljava/security/Provider;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v2

    .line 19
    .end local v1    # "system":Ljava/security/Provider;
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
