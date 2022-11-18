.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$Version1;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
.source "BcKeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Version1"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 1131
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;-><init>(I)V

    .line 1132
    return-void
.end method
