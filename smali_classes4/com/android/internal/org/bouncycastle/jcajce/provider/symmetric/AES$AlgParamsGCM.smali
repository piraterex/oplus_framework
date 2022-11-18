.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgParamsGCM"
.end annotation


# instance fields
.field private blacklist gcmParams:Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 715
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGetEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 757
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api engineGetEncoded(Ljava/lang/String;)[B
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 763
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;->getEncoded()[B

    move-result-object v0

    return-object v0

    .line 765
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "unknown format specified"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 3
    .param p1, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 723
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->isGcmSpec(Ljava/security/spec/AlgorithmParameterSpec;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->extractGcmParameters(Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;

    goto :goto_0

    .line 727
    :cond_0
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;

    if-eqz v0, :cond_1

    .line 729
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;->getNonce()[B

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;->getMacSizeInBits()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;-><init>([BI)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;

    .line 735
    :goto_0
    return-void

    .line 733
    :cond_1
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlgorithmParameterSpec class not recognized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineInit([B)V
    .locals 1
    .param p1, "params"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 740
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;

    .line 741
    return-void
.end method

.method protected whitelist test-api engineInit([BLjava/lang/String;)V
    .locals 2
    .param p1, "params"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 746
    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;

    .line 752
    return-void

    .line 748
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "unknown format specified"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineToString()Ljava/lang/String;
    .locals 1

    .line 773
    const-string v0, "GCM"

    return-object v0
.end method

.method protected blacklist localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 3
    .param p1, "paramSpec"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 779
    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    if-eq p1, v0, :cond_3

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->isGcmSpec(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 787
    :cond_0
    const-class v0, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;

    if-ne p1, v0, :cond_1

    .line 789
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;->getNonce()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;->getIcvLen()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;-><init>([BI)V

    return-object v0

    .line 791
    :cond_1
    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    if-ne p1, v0, :cond_2

    .line 793
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;->getNonce()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object v0

    .line 796
    :cond_2
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlgorithmParameterSpec not recognized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 781
    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->gcmSpecExists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 783
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->extractGcmSpec(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    return-object v0

    .line 785
    :cond_4
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;->getNonce()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/cms/GCMParameters;->getIcvLen()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;-><init>([BI)V

    return-object v0
.end method
