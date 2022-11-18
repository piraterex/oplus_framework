.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$GCM;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GCM"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 3

    .line 144
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/modes/AEADBlockCipher;)V

    .line 147
    :try_start_0
    const-string v0, "GCM"

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$GCM;->engineSetMode(Ljava/lang/String;)V

    .line 148
    const-string v0, "NoPadding"

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$GCM;->engineSetPadding(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    nop

    .line 154
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not set mode or padding for GCM mode"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
