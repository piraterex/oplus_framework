.class public Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
.super Ljava/lang/Object;
.source "KeyParameter.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field private blacklist key:[B


# direct methods
.method public constructor blacklist <init>([B)V
    .locals 2
    .param p1, "key"    # [B

    .line 17
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 18
    return-void
.end method

.method public constructor blacklist <init>([BII)V
    .locals 2
    .param p1, "key"    # [B
    .param p2, "keyOff"    # I
    .param p3, "keyLen"    # I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->key:[B

    .line 27
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    return-void
.end method


# virtual methods
.method public blacklist getKey()[B
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->key:[B

    return-object v0
.end method
