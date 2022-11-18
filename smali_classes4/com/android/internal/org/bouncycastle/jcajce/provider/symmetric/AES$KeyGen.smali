.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$KeyGen;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGen"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 423
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$KeyGen;-><init>(I)V

    .line 424
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 2
    .param p1, "keySize"    # I

    .line 428
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;-><init>()V

    const-string v1, "AES"

    invoke-direct {p0, v1, p1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;-><init>(Ljava/lang/String;ILcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;)V

    .line 429
    return-void
.end method
