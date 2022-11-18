.class public Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;
.super Ljava/lang/Object;
.source "AttributeTable.java"


# instance fields
.field private blacklist attributes:Ljava/util/Hashtable;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 3
    .param p1, "v"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    .line 31
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 33
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    move-result-object v1

    .line 35
    .local v1, "a":Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getAttrType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->addAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;)V

    .line 31
    .end local v1    # "a":Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V
    .locals 3
    .param p1, "s"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    .line 42
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 44
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    move-result-object v1

    .line 46
    .local v1, "a":Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getAttrType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->addAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;)V

    .line 42
    .end local v1    # "a":Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;)V
    .locals 1
    .param p1, "attr"    # Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    .line 53
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getAttrType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->addAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;)V

    .line 54
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;)V
    .locals 1
    .param p1, "attrs"    # Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;

    .line 59
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    .line 60
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Hashtable;)V
    .locals 1
    .param p1, "attrs"    # Ljava/util/Hashtable;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    .line 25
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->copyTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    .line 26
    return-void
.end method

.method private blacklist addAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;)V
    .locals 3
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "a"    # Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    .line 66
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 76
    :cond_0
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    if-eqz v1, :cond_1

    .line 78
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 80
    .local v1, "v":Ljava/util/Vector;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 81
    invoke-virtual {v1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 85
    .end local v1    # "v":Ljava/util/Vector;
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/util/Vector;

    .line 87
    .restart local v1    # "v":Ljava/util/Vector;
    invoke-virtual {v1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 90
    :goto_0
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .end local v1    # "v":Ljava/util/Vector;
    :goto_1
    return-void
.end method

.method private blacklist copyTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 4
    .param p1, "in"    # Ljava/util/Hashtable;

    .line 205
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 206
    .local v0, "out":Ljava/util/Hashtable;
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 208
    .local v1, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 212
    .local v2, "key":Ljava/lang/Object;
    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .end local v2    # "key":Ljava/lang/Object;
    goto :goto_0

    .line 215
    :cond_0
    return-object v0
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;
    .locals 3
    .param p1, "attrType"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "attrValue"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 227
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;-><init>(Ljava/util/Hashtable;)V

    .line 229
    .local v0, "newTable":Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v2, p2}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    invoke-direct {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->addAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;)V

    .line 231
    return-object v0
.end method

.method public blacklist get(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
    .locals 3
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 103
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/Vector;

    if-eqz v1, :cond_0

    .line 107
    move-object v1, v0

    check-cast v1, Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    return-object v1

    .line 110
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    return-object v1
.end method

.method public blacklist getAll(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .locals 4
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 123
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 125
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 127
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/util/Vector;

    if-eqz v2, :cond_1

    .line 129
    move-object v2, v1

    check-cast v2, Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 131
    .local v2, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 135
    .end local v2    # "e":Ljava/util/Enumeration;
    :cond_0
    goto :goto_1

    .line 136
    :cond_1
    if-eqz v1, :cond_2

    .line 138
    move-object v2, v1

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 141
    :cond_2
    :goto_1
    return-object v0
.end method

.method public blacklist remove(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;
    .locals 2
    .param p1, "attrType"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 236
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;-><init>(Ljava/util/Hashtable;)V

    .line 238
    .local v0, "newTable":Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;
    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    return-object v0
.end method

.method public blacklist size()I
    .locals 4

    .line 146
    const/4 v0, 0x0

    .line 148
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 152
    .local v2, "o":Ljava/lang/Object;
    instance-of v3, v2, Ljava/util/Vector;

    if-eqz v3, :cond_0

    .line 154
    move-object v3, v2

    check-cast v3, Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1

    .line 158
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 160
    .end local v2    # "o":Ljava/lang/Object;
    :goto_1
    goto :goto_0

    .line 162
    .end local v1    # "en":Ljava/util/Enumeration;
    :cond_1
    return v0
.end method

.method public blacklist toASN1EncodableVector()Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .locals 5

    .line 172
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 173
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 175
    .local v1, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 179
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/util/Vector;

    if-eqz v3, :cond_1

    .line 181
    move-object v3, v2

    check-cast v3, Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    .line 183
    .local v3, "en":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 185
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    .line 187
    .end local v3    # "en":Ljava/util/Enumeration;
    :cond_0
    goto :goto_2

    .line 190
    :cond_1
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 192
    .end local v2    # "value":Ljava/lang/Object;
    :goto_2
    goto :goto_0

    .line 194
    :cond_2
    return-object v0
.end method

.method public blacklist toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;
    .locals 2

    .line 199
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public blacklist toHashtable()Ljava/util/Hashtable;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->copyTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method
