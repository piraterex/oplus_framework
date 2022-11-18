.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParams;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgParams"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 703
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineToString()Ljava/lang/String;
    .locals 1

    .line 708
    const-string v0, "AES IV"

    return-object v0
.end method
