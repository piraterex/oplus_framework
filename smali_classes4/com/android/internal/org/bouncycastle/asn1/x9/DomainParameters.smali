.class public Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "DomainParameters.java"


# instance fields
.field private final blacklist g:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field private final blacklist j:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field private final blacklist p:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field private final blacklist q:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field private final blacklist validationParams:Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 108
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 109
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_2

    .line 114
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 115
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->p:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 116
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->g:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 117
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->q:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 119
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->getNext(Ljava/util/Enumeration;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    .line 121
    .local v1, "next":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    instance-of v3, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v3, :cond_0

    .line 123
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->j:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 124
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->getNext(Ljava/util/Enumeration;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    goto :goto_0

    .line 128
    :cond_0
    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->j:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 131
    :goto_0
    if-eqz v1, :cond_1

    .line 133
    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->validationParams:Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;

    goto :goto_1

    .line 137
    :cond_1
    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->validationParams:Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;

    .line 139
    :goto_1
    return-void

    .line 111
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

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;)V
    .locals 2
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "q"    # Ljava/math/BigInteger;
    .param p4, "j"    # Ljava/math/BigInteger;
    .param p5, "validationParams"    # Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;

    .line 78
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 79
    if-eqz p1, :cond_3

    .line 83
    if-eqz p2, :cond_2

    .line 87
    if-eqz p3, :cond_1

    .line 92
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->p:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 93
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->g:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 94
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->q:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 96
    if-eqz p4, :cond_0

    .line 98
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->j:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    goto :goto_0

    .line 102
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->j:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 104
    :goto_0
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->validationParams:Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;

    .line 105
    return-void

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'q\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'g\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'p\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;
    .locals 1
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 44
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 55
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;

    if-eqz v0, :cond_0

    .line 57
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;

    return-object v0

    .line 59
    :cond_0
    if-eqz p0, :cond_1

    .line 61
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 64
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist getNext(Ljava/util/Enumeration;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p0, "e"    # Ljava/util/Enumeration;

    .line 143
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
.method public blacklist getG()Ljava/math/BigInteger;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->g:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getJ()Ljava/math/BigInteger;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->j:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-nez v0, :cond_0

    .line 185
    const/4 v0, 0x0

    return-object v0

    .line 188
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getP()Ljava/math/BigInteger;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->p:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getQ()Ljava/math/BigInteger;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->q:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getValidationParams()Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->validationParams:Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 208
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 209
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->p:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 210
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->g:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 211
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->q:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 213
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->j:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->validationParams:Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;

    if-eqz v1, :cond_1

    .line 220
    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 223
    :cond_1
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
