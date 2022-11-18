.class public abstract Lcom/android/internal/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;
.super Ljava/lang/Object;
.source "AbstractX500NameStyle.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist calcHashCode(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I
    .locals 2
    .param p1, "enc"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 49
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->canonicalString(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method public static blacklist copyHashTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 4
    .param p0, "paramsMap"    # Ljava/util/Hashtable;

    .line 35
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 37
    .local v0, "newTable":Ljava/util/Hashtable;
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 38
    .local v1, "keys":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 41
    .local v2, "key":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .end local v2    # "key":Ljava/lang/Object;
    goto :goto_0

    .line 44
    :cond_0
    return-object v0
.end method

.method private blacklist foundMatch(ZLcom/android/internal/org/bouncycastle/asn1/x500/RDN;[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)Z
    .locals 4
    .param p1, "reverse"    # Z
    .param p2, "rdn"    # Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    .param p3, "possRDNs"    # [Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    .line 164
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 166
    array-length v2, p3

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 168
    aget-object v3, p3, v2

    if-eqz v3, :cond_0

    aget-object v3, p3, v2

    invoke-virtual {p0, p2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->rdnAreEqual(Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    aput-object v0, p3, v2

    .line 171
    return v1

    .line 166
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_1
    goto :goto_2

    .line 177
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v3, p3

    if-eq v2, v3, :cond_4

    .line 179
    aget-object v3, p3, v2

    if-eqz v3, :cond_3

    aget-object v3, p3, v2

    invoke-virtual {p0, p2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->rdnAreEqual(Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 181
    aput-object v0, p3, v2

    .line 182
    return v1

    .line 177
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 187
    .end local v2    # "i":I
    :cond_4
    :goto_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist areEqual(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)Z
    .locals 7
    .param p1, "name1"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .param p2, "name2"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 136
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    move-result-object v0

    .line 137
    .local v0, "rdns1":[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    move-result-object v1

    .line 139
    .local v1, "rdns2":[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    array-length v2, v0

    array-length v3, v1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    .line 141
    return v4

    .line 144
    :cond_0
    const/4 v2, 0x0

    .line 146
    .local v2, "reverse":Z
    aget-object v3, v0, v4

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    aget-object v3, v1, v4

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 148
    aget-object v3, v0, v4

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    aget-object v6, v1, v4

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    xor-int/2addr v3, v5

    move v2, v3

    .line 151
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v0

    if-eq v3, v6, :cond_3

    .line 153
    aget-object v6, v0, v3

    invoke-direct {p0, v2, v6, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->foundMatch(ZLcom/android/internal/org/bouncycastle/asn1/x500/RDN;[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 155
    return v4

    .line 151
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    .end local v3    # "i":I
    :cond_3
    return v5
.end method

.method public blacklist calculateHashCode(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)I
    .locals 6
    .param p1, "name"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "hashCodeValue":I
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    move-result-object v1

    .line 59
    .local v1, "rdns":[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-eq v2, v3, :cond_2

    .line 61
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->isMultiValued()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    .line 65
    .local v3, "atv":[Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v5, v3

    if-eq v4, v5, :cond_0

    .line 67
    aget-object v5, v3, v4

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    move-result v5

    xor-int/2addr v0, v5

    .line 68
    aget-object v5, v3, v4

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->calcHashCode(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result v5

    xor-int/2addr v0, v5

    .line 65
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 70
    .end local v3    # "atv":[Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .end local v4    # "j":I
    :cond_0
    goto :goto_2

    .line 73
    :cond_1
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    .line 74
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->calcHashCode(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result v3

    xor-int/2addr v0, v3

    .line 59
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    .end local v2    # "i":I
    :cond_2
    return v0
.end method

.method protected blacklist encodeStringValue(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "value"    # Ljava/lang/String;

    .line 131
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected blacklist rdnAreEqual(Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)Z
    .locals 1
    .param p1, "rdn1"    # Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    .param p2, "rdn2"    # Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    .line 192
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->rDNAreEqual(Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)Z

    move-result v0

    return v0
.end method

.method public blacklist stringToValue(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 4
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "value"    # Ljava/lang/String;

    .line 98
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x23

    if-ne v0, v3, :cond_0

    .line 102
    :try_start_0
    invoke-static {p2, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->valueFromHexString(Ljava/lang/String;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 104
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t recode value for oid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5c

    if-ne v0, v2, :cond_1

    .line 112
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 115
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->encodeStringValue(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method
