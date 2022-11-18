.class public Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "GeneralSubtree.java"


# static fields
.field private static final blacklist ZERO:Ljava/math/BigInteger;


# instance fields
.field private blacklist base:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

.field private blacklist maximum:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field private blacklist minimum:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 36
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;->ZERO:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 46
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;->base:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    .line 49
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 92
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :pswitch_0
    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 72
    .local v1, "oMin":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    if-nez v3, :cond_1

    .line 76
    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 80
    .end local v1    # "oMin":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 81
    .local v1, "oMax":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 85
    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;->maximum:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 88
    .end local v1    # "oMax":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    goto :goto_0

    .line 83
    .restart local v1    # "oMax":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad tag number for \'maximum\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    .local v1, "oMin":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad tag number for \'minimum\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    .end local v1    # "oMin":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    :pswitch_1
    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 55
    .local v1, "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad tag number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 65
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :pswitch_2
    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;->maximum:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 62
    goto :goto_0

    .line 58
    :pswitch_3
    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 59
    goto :goto_0

    .line 52
    .end local v1    # "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    :pswitch_4
    nop

    .line 94
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V
    .locals 1
    .param p1, "base"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 136
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "base"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .param p2, "minimum"    # Ljava/math/BigInteger;
    .param p3, "maximum"    # Ljava/math/BigInteger;

    .line 117
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;->base:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    .line 119
    if-eqz p3, :cond_0

    .line 121
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;->maximum:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 123
    :cond_0
    if-nez p2, :cond_1

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    goto :goto_0

    .line 129
    :cond_1
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 131
    :goto_0
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;
    .locals 2
    .param p0, "o"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 142
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 148
    if-nez p0, :cond_0

    .line 150
    const/4 v0, 0x0

    return-object v0

    .line 153
    :cond_0
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    if-eqz v0, :cond_1

    .line 155
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    return-object v0

    .line 158
    :cond_1
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getBase()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;->base:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public blacklist getMaximum()Ljava/math/BigInteger;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;->maximum:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-nez v0, :cond_0

    .line 180
    const/4 v0, 0x0

    return-object v0

    .line 183
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMinimum()Ljava/math/BigInteger;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-nez v0, :cond_0

    .line 170
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;->ZERO:Ljava/math/BigInteger;

    return-object v0

    .line 173
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 204
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 206
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;->base:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 208
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->hasValue(Ljava/math/BigInteger;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, v2, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;->maximum:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_1

    .line 215
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 218
    :cond_1
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
