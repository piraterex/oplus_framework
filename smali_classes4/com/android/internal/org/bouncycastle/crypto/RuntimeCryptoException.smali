.class public Lcom/android/internal/org/bouncycastle/crypto/RuntimeCryptoException;
.super Ljava/lang/RuntimeException;
.source "RuntimeCryptoException.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 16
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method
