.class public Lcom/android/internal/org/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;
.super Ljava/lang/Object;
.source "UserKeyingMaterialSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final blacklist userKeyingMaterial:[B


# direct methods
.method public constructor blacklist <init>([B)V
    .locals 1
    .param p1, "userKeyingMaterial"    # [B

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;->userKeyingMaterial:[B

    .line 19
    return-void
.end method


# virtual methods
.method public blacklist getUserKeyingMaterial()[B
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;->userKeyingMaterial:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
