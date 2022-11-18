.class public Lcom/android/internal/org/bouncycastle/asn1/x9/ECNamedCurveTable;
.super Ljava/lang/Object;
.source "ECNamedCurveTable.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist addEnumeration(Ljava/util/Vector;Ljava/util/Enumeration;)V
    .locals 1
    .param p0, "v"    # Ljava/util/Vector;
    .param p1, "e"    # Ljava/util/Enumeration;

    .line 253
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 257
    :cond_0
    return-void
.end method

.method public static blacklist getByName(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 35
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->getByName(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 37
    .local v0, "ecP":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v0, :cond_0

    .line 39
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->getByName(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 42
    :cond_0
    if-nez v0, :cond_1

    .line 44
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTNamedCurves;->getByName(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 71
    :cond_1
    return-object v0
.end method

.method public static blacklist getByOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 1
    .param p0, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 191
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->getByOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 193
    .local v0, "ecP":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v0, :cond_0

    .line 195
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->getByOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 224
    :cond_0
    return-object v0
.end method

.method public static blacklist getName(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 1
    .param p0, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 137
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->getName(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 141
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->getName(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 144
    :cond_0
    if-nez v0, :cond_1

    .line 146
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTNamedCurves;->getName(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_1
    return-object v0
.end method

.method public static blacklist getNames()Ljava/util/Enumeration;
    .locals 2

    .line 234
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 236
    .local v0, "v":Ljava/util/Vector;
    invoke-static {}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->getNames()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/ECNamedCurveTable;->addEnumeration(Ljava/util/Vector;Ljava/util/Enumeration;)V

    .line 237
    invoke-static {}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->getNames()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/ECNamedCurveTable;->addEnumeration(Ljava/util/Vector;Ljava/util/Enumeration;)V

    .line 238
    invoke-static {}, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTNamedCurves;->getNames()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/ECNamedCurveTable;->addEnumeration(Ljava/util/Vector;Ljava/util/Enumeration;)V

    .line 246
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getOID(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 83
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->getOID(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 85
    .local v0, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v0, :cond_0

    .line 87
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->getOID(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 90
    :cond_0
    if-nez v0, :cond_1

    .line 92
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTNamedCurves;->getOID(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 124
    :cond_1
    return-object v0
.end method
