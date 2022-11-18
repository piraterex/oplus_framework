.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$CFB;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CFB"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 4

    .line 120
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;-><init>()V

    const/16 v3, 0x80

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {p0, v0, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;I)V

    .line 121
    return-void
.end method
