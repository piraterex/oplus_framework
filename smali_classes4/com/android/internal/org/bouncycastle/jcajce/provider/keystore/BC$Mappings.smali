.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/BC$Mappings;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source "BC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/BC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public blacklist configure(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;

    .line 26
    const-string v0, "KeyStore.BKS"

    const-string v1, "com.android.internal.org.bouncycastle.jcajce.provider.keystore.bc.BcKeyStoreSpi$Std"

    invoke-interface {p1, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v0, "KeyStore.BouncyCastle"

    const-string v1, "com.android.internal.org.bouncycastle.jcajce.provider.keystore.bc.BcKeyStoreSpi$BouncyCastleStore"

    invoke-interface {p1, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v0, "Alg.Alias.KeyStore.UBER"

    const-string v1, "BouncyCastle"

    invoke-interface {p1, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v0, "Alg.Alias.KeyStore.BOUNCYCASTLE"

    invoke-interface {p1, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v0, "Alg.Alias.KeyStore.bouncycastle"

    invoke-interface {p1, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method
