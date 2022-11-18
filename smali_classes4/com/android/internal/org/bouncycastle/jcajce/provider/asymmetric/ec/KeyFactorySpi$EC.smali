.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;
.source "KeyFactorySpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EC"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 338
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    const-string v1, "EC"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    .line 339
    return-void
.end method
