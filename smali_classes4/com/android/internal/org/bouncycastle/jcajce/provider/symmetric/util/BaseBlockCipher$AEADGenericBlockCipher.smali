.class Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;
.super Ljava/lang/Object;
.source "BaseBlockCipher.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AEADGenericBlockCipher"
.end annotation


# static fields
.field private static final blacklist aeadBadTagConstructor:Ljava/lang/reflect/Constructor;


# instance fields
.field private blacklist cipher:Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetcipher(Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;)Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 1461
    const-class v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;

    const-string/jumbo v1, "javax.crypto.AEADBadTagException"

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/ClassUtil;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1462
    .local v0, "aeadBadTagClass":Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 1464
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->findExceptionConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->aeadBadTagConstructor:Ljava/lang/reflect/Constructor;

    goto :goto_0

    .line 1468
    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->aeadBadTagConstructor:Ljava/lang/reflect/Constructor;

    .line 1470
    .end local v0    # "aeadBadTagClass":Ljava/lang/Class;
    :goto_0
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;)V
    .locals 0
    .param p1, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;

    .line 1487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1488
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;

    .line 1489
    return-void
.end method

.method private static blacklist findExceptionConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 1476
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1478
    :catch_0
    move-exception v0

    .line 1480
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .locals 6
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 1554
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;->doFinal([BI)I

    move-result v0
    :try_end_0
    .catch Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1556
    :catch_0
    move-exception v0

    .line 1558
    .local v0, "e":Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
    sget-object v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->aeadBadTagConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_0

    .line 1560
    const/4 v2, 0x0

    .line 1563
    .local v2, "aeadBadTag":Ljavax/crypto/BadPaddingException;
    const/4 v3, 0x1

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1564
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/BadPaddingException;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v1

    .line 1569
    goto :goto_0

    .line 1566
    :catch_1
    move-exception v1

    .line 1570
    :goto_0
    if-eqz v2, :cond_0

    .line 1572
    throw v2

    .line 1575
    .end local v2    # "aeadBadTag":Ljavax/crypto/BadPaddingException;
    :cond_0
    new-instance v1, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .locals 2

    .line 1499
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;

    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/AEADBlockCipher;

    if-eqz v1, :cond_0

    .line 1501
    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/AEADBlockCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1504
    :cond_0
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOutputSize(I)I
    .locals 1
    .param p1, "len"    # I

    .line 1524
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;

    invoke-interface {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;->getOutputSize(I)I

    move-result v0

    return v0
.end method

.method public blacklist getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .locals 2

    .line 1514
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;

    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/AEADBlockCipher;

    if-eqz v1, :cond_0

    .line 1516
    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/AEADBlockCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    return-object v0

    .line 1519
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUpdateOutputSize(I)I
    .locals 1
    .param p1, "len"    # I

    .line 1529
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;

    invoke-interface {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;->getUpdateOutputSize(I)I

    move-result v0

    return v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .locals 1
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1494
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 1495
    return-void
.end method

.method public blacklist processByte(B[BI)I
    .locals 1
    .param p1, "in"    # B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 1540
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;->processByte(B[BI)I

    move-result v0

    return v0
.end method

.method public blacklist processBytes([BII[BI)I
    .locals 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 1546
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;->processBytes([BII[BI)I

    move-result v0

    return v0
.end method

.method public blacklist updateAAD([BII)V
    .locals 1
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 1534
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;->processAADBytes([BII)V

    .line 1535
    return-void
.end method

.method public blacklist wrapOnNoPadding()Z
    .locals 1

    .line 1509
    const/4 v0, 0x0

    return v0
.end method
