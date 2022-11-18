.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$Mappings;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AlgorithmProvider;
.source "PBES2AlgorithmParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# static fields
.field private static final blacklist PREFIX:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 326
    const-class v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$Mappings;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 329
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AlgorithmProvider;-><init>()V

    .line 330
    return-void
.end method


# virtual methods
.method public blacklist configure(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 12
    .param p1, "provider"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;

    .line 334
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 335
    .local v0, "keySizes":[I
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    .line 336
    .local v1, "shaVariants":[I
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget v5, v0, v4

    .line 337
    .local v5, "keySize":I
    array-length v6, v1

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_0

    aget v8, v1, v7

    .line 338
    .local v8, "shaVariant":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AlgorithmParameters.PBEWithHmacSHA"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "AndAES_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$Mappings;->PREFIX:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "$PBEWithHmacSHA"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "AES"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "AlgorithmParameters"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v9, v10}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .end local v8    # "shaVariant":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 336
    .end local v5    # "keySize":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 344
    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x80
        0x100
    .end array-data

    :array_1
    .array-data 4
        0x1
        0xe0
        0x100
        0x180
        0x200
    .end array-data
.end method
