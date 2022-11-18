.class public Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "SafeBag.java"


# instance fields
.field private blacklist bagAttributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

.field private blacklist bagId:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private blacklist bagValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 28
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;->bagId:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 30
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;->bagValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;->bagAttributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 32
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V
    .locals 0
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .param p3, "bagAttributes"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 38
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;->bagId:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 40
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;->bagValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 41
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;->bagAttributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 42
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 62
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;->bagId:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;->bagValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 65
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 67
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;->bagAttributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 69
    :cond_0
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 47
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;

    if-eqz v0, :cond_0

    .line 49
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;

    return-object v0

    .line 52
    :cond_0
    if-eqz p0, :cond_1

    .line 54
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 57
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getBagAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;->bagAttributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public blacklist getBagId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;->bagId:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public blacklist getBagValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;->bagValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 88
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 90
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;->bagId:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 91
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;->bagValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 93
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;->bagAttributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 98
    :cond_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
