.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;
.super Ljava/lang/Object;
.source "GcmSpecUtil.java"


# static fields
.field static final blacklist gcmSpecClass:Ljava/lang/Class;

.field static final blacklist iv:Ljava/lang/reflect/Method;

.field static final blacklist tLen:Ljava/lang/reflect/Method;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 24
    const-class v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;

    const-string/jumbo v1, "javax.crypto.spec.GCMParameterSpec"

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/ClassUtil;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    .line 31
    if-eqz v0, :cond_0

    .line 33
    const-string v0, "getTLen"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->extractMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->tLen:Ljava/lang/reflect/Method;

    .line 34
    const-string v0, "getIV"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->extractMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->iv:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->tLen:Ljava/lang/reflect/Method;

    .line 39
    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->iv:Ljava/lang/reflect/Method;

    .line 41
    :goto_0
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist extractAeadParameters(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;
    .locals 3
    .param p0, "keyParam"    # Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 102
    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$2;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$2;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 111
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "Cannot process GCMParameterSpec."

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist extractGcmParameters(Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;
    .locals 3
    .param p0, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 122
    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$3;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$3;-><init>(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 131
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/spec/InvalidParameterSpecException;

    const-string v2, "Cannot process GCMParameterSpec"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist extractGcmSpec(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 7
    .param p0, "spec"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 82
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;

    move-result-object v0

    .line 83
    .local v0, "gcmParams":Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;
    sget-object v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

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

    .line 85
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

    .line 91
    .end local v0    # "gcmParams":Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v0

    .line 93
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

    .line 87
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/security/spec/InvalidParameterSpecException;

    const-string v2, "No constructor found!"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist extractMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 47
    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$1;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/security/PrivilegedActionException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist gcmSpecExists()Z
    .locals 1

    .line 64
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isGcmSpec(Ljava/lang/Class;)Z
    .locals 1
    .param p0, "paramSpecClass"    # Ljava/lang/Class;

    .line 74
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isGcmSpec(Ljava/security/spec/AlgorithmParameterSpec;)Z
    .locals 1
    .param p0, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;

    .line 69
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

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
