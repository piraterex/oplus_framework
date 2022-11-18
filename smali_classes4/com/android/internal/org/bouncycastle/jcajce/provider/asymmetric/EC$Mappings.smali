.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/EC$Mappings;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source "EC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/EC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public blacklist configure(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 0
    .param p1, "provider"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;

    .line 283
    return-void
.end method
