.class public Lcom/android/internal/org/bouncycastle/asn1/x9/DHValidationParms;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "DHValidationParms.java"


# instance fields
.field private blacklist pgenCounter:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field private blacklist seed:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 57
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHValidationParms;->seed:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHValidationParms;->pgenCounter:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 65
    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/DERBitString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V
    .locals 2
    .param p1, "seed"    # Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    .param p2, "pgenCounter"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 42
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 43
    if-eqz p1, :cond_1

    .line 47
    if-eqz p2, :cond_0

    .line 52
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHValidationParms;->seed:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 53
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHValidationParms;->pgenCounter:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 54
    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'pgenCounter\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'seed\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x9/DHValidationParms;
    .locals 1
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 24
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/DHValidationParms;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/DHValidationParms;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/DHValidationParms;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 29
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHValidationParms;

    if-eqz v0, :cond_0

    .line 31
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHValidationParms;

    return-object v0

    .line 33
    :cond_0
    if-eqz p0, :cond_1

    .line 35
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHValidationParms;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/DHValidationParms;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 38
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getPgenCounter()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHValidationParms;->pgenCounter:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public blacklist getSeed()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHValidationParms;->seed:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 79
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 80
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHValidationParms;->seed:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 81
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHValidationParms;->pgenCounter:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 82
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
