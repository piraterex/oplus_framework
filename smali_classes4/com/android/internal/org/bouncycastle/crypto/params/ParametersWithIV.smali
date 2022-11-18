.class public Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
.super Ljava/lang/Object;
.source "ParametersWithIV.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field private blacklist iv:[B

.field private blacklist parameters:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V
    .locals 2
    .param p1, "parameters"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .param p2, "iv"    # [B

    .line 19
    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[BII)V

    .line 20
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[BII)V
    .locals 2
    .param p1, "parameters"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .param p2, "iv"    # [B
    .param p3, "ivOff"    # I
    .param p4, "ivLen"    # I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-array v0, p4, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->iv:[B

    .line 29
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->parameters:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 31
    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    return-void
.end method


# virtual methods
.method public blacklist getIV()[B
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->iv:[B

    return-object v0
.end method

.method public blacklist getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->parameters:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method
