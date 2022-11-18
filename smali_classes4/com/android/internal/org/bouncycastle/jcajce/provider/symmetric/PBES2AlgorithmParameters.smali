.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters;
.super Ljava/lang/Object;
.source "PBES2AlgorithmParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$Mappings;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$PBEWithHmacSHA512AES256AlgorithmParameters;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$PBEWithHmacSHA384AES256AlgorithmParameters;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$PBEWithHmacSHA256AES256AlgorithmParameters;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$PBEWithHmacSHA224AES256AlgorithmParameters;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$PBEWithHmacSHA1AES256AlgorithmParameters;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$PBEWithHmacSHA512AES128AlgorithmParameters;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$PBEWithHmacSHA384AES128AlgorithmParameters;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$PBEWithHmacSHA256AES128AlgorithmParameters;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$PBEWithHmacSHA224AES128AlgorithmParameters;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$PBEWithHmacSHA1AES128AlgorithmParameters;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;
    }
.end annotation


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreatePBEParameterSpec([BI[B)Ljavax/crypto/spec/PBEParameterSpec;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters;->createPBEParameterSpec([BI[B)Ljavax/crypto/spec/PBEParameterSpec;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method private static blacklist createPBEParameterSpec([BI[B)Ljavax/crypto/spec/PBEParameterSpec;
    .locals 7
    .param p0, "salt"    # [B
    .param p1, "iterationCount"    # I
    .param p2, "iv"    # [B

    .line 354
    :try_start_0
    const-class v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters;

    .line 355
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "javax.crypto.spec.PBEParameterSpec"

    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 357
    .local v0, "pbeParameterSpecClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljavax/crypto/spec/PBEParameterSpec;>;"
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, [B

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Ljava/security/spec/AlgorithmParameterSpec;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 358
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 360
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljavax/crypto/spec/PBEParameterSpec;>;"
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    aput-object v3, v1, v6

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/spec/PBEParameterSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 361
    .end local v0    # "pbeParameterSpecClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljavax/crypto/spec/PBEParameterSpec;>;"
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljavax/crypto/spec/PBEParameterSpec;>;"
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Requested creation PBES2 parameters in an SDK that doesn\'t support them"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
