.class public Lcom/android/internal/org/bouncycastle/asn1/x9/DHDomainParameters;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "DHDomainParameters.java"


# instance fields
.field private blacklist g:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field private blacklist j:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field private blacklist p:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field private blacklist q:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field private blacklist validationParms:Lcom/android/internal/org/bouncycastle/asn1/x9/DHValidationParms;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;Lcom/android/internal/org/bouncycastle/asn1/x9/DHValidationParms;)V
    .locals 2
    .param p1, "p"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .param p2, "g"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .param p3, "q"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .param p4, "j"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .param p5, "validationParms"    # Lcom/android/internal/org/bouncycastle/asn1/x9/DHValidationParms;

    .line 72
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 73
    if-eqz p1, :cond_2

    .line 77
    if-eqz p2, :cond_1

    .line 81
    if-eqz p3, :cond_0

    .line 86
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHDomainParameters;->p:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 87
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHDomainParameters;->g:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 88
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHDomainParameters;->q:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 89
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHDomainParameters;->j:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 90
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHDomainParameters;->validationParms:Lcom/android/internal/org/bouncycastle/asn1/x9/DHValidationParms;

    .line 91
    return-void

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'q\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'g\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'p\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 94
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 95
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_2

    .line 100
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 101
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHDomainParameters;->p:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 102
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHDomainParameters;->g:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 103
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHDomainParameters;->q:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 105
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/DHDomainParameters;->getNext(Ljava/util/Enumeration;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    .line 107
    .local v1, "next":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_0

    .line 109
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHDomainParameters;->j:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 110
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/DHDomainParameters;->getNext(Ljava/util/Enumeration;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    .line 113
    :cond_0
    if-eqz v1, :cond_1

    .line 115
    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/DHValidationParms;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/DHValidationParms;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHDomainParameters;->validationParms:Lcom/android/internal/org/bouncycastle/asn1/x9/DHValidationParms;

    .line 117
    :cond_1
    return-void

    .line 97
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v1    # "next":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :cond_2
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

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/x9/DHValidationParms;)V
    .locals 2
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "q"    # Ljava/math/BigInteger;
    .param p4, "j"    # Ljava/math/BigInteger;
    .param p5, "validationParms"    # Lcom/android/internal/org/bouncycastle/asn1/x9/DHValidationParms;

    .line 49
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 50
    if-eqz p1, :cond_2

    .line 54
    if-eqz p2, :cond_1

    .line 58
    if-eqz p3, :cond_0

    .line 63
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHDomainParameters;->p:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 64
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHDomainParameters;->g:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 65
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHDomainParameters;->q:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 66
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHDomainParameters;->j:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 67
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHDomainParameters;->validationParms:Lcom/android/internal/org/bouncycastle/asn1/x9/DHValidationParms;

    .line 68
    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'q\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'g\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'p\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x9/DHDomainParameters;
    .locals 1
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 28
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/DHDomainParameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/DHDomainParameters;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/DHDomainParameters;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 33
    if-eqz p0, :cond_2

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHDomainParameters;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 40
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHDomainParameters;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/DHDomainParameters;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 43
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DHDomainParameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_2
    :goto_0
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHDomainParameters;

    return-object v0
.end method

.method private static blacklist getNext(Ljava/util/Enumeration;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p0, "e"    # Ljava/util/Enumeration;

    .line 121
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public blacklist getG()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHDomainParameters;->g:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public blacklist getJ()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHDomainParameters;->j:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public blacklist getP()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHDomainParameters;->p:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public blacklist getQ()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHDomainParameters;->q:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public blacklist getValidationParms()Lcom/android/internal/org/bouncycastle/asn1/x9/DHValidationParms;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHDomainParameters;->validationParms:Lcom/android/internal/org/bouncycastle/asn1/x9/DHValidationParms;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 151
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 152
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHDomainParameters;->p:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 153
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHDomainParameters;->g:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 154
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHDomainParameters;->q:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 156
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHDomainParameters;->j:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DHDomainParameters;->validationParms:Lcom/android/internal/org/bouncycastle/asn1/x9/DHValidationParms;

    if-eqz v1, :cond_1

    .line 163
    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 166
    :cond_1
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
