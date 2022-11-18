.class Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$3;
.super Ljava/lang/Object;
.source "GcmSpecUtil.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->extractGcmParameters(Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$paramSpec:Ljava/security/spec/AlgorithmParameterSpec;


# direct methods
.method constructor blacklist <init>(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$3;->val$paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 127
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;

    sget-object v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->iv:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$3;->val$paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    sget-object v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->tLen:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$3;->val$paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;-><init>([BI)V

    return-object v0
.end method
