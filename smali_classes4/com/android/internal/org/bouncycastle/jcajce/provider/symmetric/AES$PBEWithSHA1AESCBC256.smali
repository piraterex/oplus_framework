.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHA1AESCBC256;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithSHA1AESCBC256"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 6

    .line 369
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;-><init>()V

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x100

    const/16 v5, 0x10

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;IIII)V

    .line 370
    return-void
.end method
