.class public Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "Extensions.java"


# instance fields
.field private blacklist extensions:Ljava/util/Hashtable;

.field private blacklist ordering:Ljava/util/Vector;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 74
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    .line 32
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    .line 75
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 77
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v1

    .line 81
    .local v1, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 88
    .end local v1    # "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    goto :goto_0

    .line 83
    .restart local v1    # "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "repeated extension found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    .end local v1    # "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    :cond_1
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;)V
    .locals 2
    .param p1, "extension"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    .line 98
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    .line 32
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    .line 99
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;)V
    .locals 4
    .param p1, "extensions"    # [Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    .line 110
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    .line 32
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    .line 111
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 113
    aget-object v1, p1, v0

    .line 115
    .local v1, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 116
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .end local v1    # "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist getExtension(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    .locals 1
    .param p0, "extensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 36
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private blacklist getExtensionOIDs(Z)[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 4
    .param p1, "isCritical"    # Z

    .line 224
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 226
    .local v0, "oidVec":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 228
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 230
    .local v2, "oid":Ljava/lang/Object;
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v3

    if-ne v3, p1, :cond_0

    .line 232
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 226
    .end local v2    # "oid":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->toOidArray(Ljava/util/Vector;)[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getExtensionParsedValue(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p0, "extensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 41
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .locals 1
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 48
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 54
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_0

    .line 56
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    return-object v0

    .line 58
    :cond_0
    if-eqz p0, :cond_1

    .line 60
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 63
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist toOidArray(Ljava/util/Vector;)[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 3
    .param p1, "oidVec"    # Ljava/util/Vector;

    .line 241
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 243
    .local v0, "oids":[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 245
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v2, v0, v1

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public blacklist equivalent(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Z
    .locals 5
    .param p1, "other"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 187
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    iget-object v1, p1, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 189
    return v2

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 194
    .local v0, "e1":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 196
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 198
    .local v1, "key":Ljava/lang/Object;
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 200
    return v2

    .line 202
    .end local v1    # "key":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 204
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist getCriticalExtensionOIDs()[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 219
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtensionOIDs(Z)[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    .locals 1
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 137
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    return-object v0
.end method

.method public blacklist getExtensionOIDs()[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->toOidArray(Ljava/util/Vector;)[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExtensionParsedValue(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 2
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v0

    .line 150
    .local v0, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getParsedValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    return-object v1

    .line 155
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getNonCriticalExtensionOIDs()[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 214
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtensionOIDs(Z)[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public blacklist oids()Ljava/util/Enumeration;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 170
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 172
    .local v0, "vec":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 173
    .local v1, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 176
    .local v2, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    .line 178
    .local v3, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 179
    .end local v2    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v3    # "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    goto :goto_0

    .line 181
    :cond_0
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v2
.end method
