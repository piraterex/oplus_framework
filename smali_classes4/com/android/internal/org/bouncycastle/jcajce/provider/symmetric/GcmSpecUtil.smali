.class Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/GcmSpecUtil;
.super Ljava/lang/Object;
.source "GcmSpecUtil.java"


# static fields
.field static final blacklist gcmSpecClass:Ljava/lang/Class;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 16
    const-class v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/GcmSpecUtil;

    const-string/jumbo v1, "javax.crypto.spec.GCMParameterSpec"

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/ClassUtil;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist extractGcmParameters(Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;
    .locals 5
    .param p0, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 58
    :try_start_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    const-string v1, "getTLen"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 59
    .local v1, "tLen":Ljava/lang/reflect/Method;
    const-string v3, "getIV"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 61
    .local v0, "iv":Ljava/lang/reflect/Method;
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    invoke-direct {v3, v4, v2}, Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;-><init>([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 63
    .end local v0    # "iv":Ljava/lang/reflect/Method;
    .end local v1    # "tLen":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/spec/InvalidParameterSpecException;

    const-string v2, "Cannot process GCMParameterSpec"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static blacklist extractGcmSpec(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 7
    .param p0, "spec"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 38
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;

    move-result-object v0

    .line 39
    .local v0, "gcmParams":Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;
    sget-object v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, [B

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 41
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;->getIcvLen()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;->getNonce()[B

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 47
    .end local v0    # "gcmParams":Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Construction failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/security/spec/InvalidParameterSpecException;

    const-string v2, "No constructor found!"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static blacklist gcmSpecExists()Z
    .locals 1

    .line 20
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static blacklist isGcmSpec(Ljava/lang/Class;)Z
    .locals 1
    .param p0, "paramSpecClass"    # Ljava/lang/Class;

    .line 30
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static blacklist isGcmSpec(Ljava/security/spec/AlgorithmParameterSpec;)Z
    .locals 1
    .param p0, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;

    .line 25
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
