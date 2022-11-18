.class public Lcom/android/internal/org/bouncycastle/asn1/nist/NISTNamedCurves;
.super Ljava/lang/Object;
.source "NISTNamedCurves.java"


# static fields
.field static final blacklist names:Ljava/util/Hashtable;

.field static final blacklist objIds:Ljava/util/Hashtable;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    .line 20
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTNamedCurves;->names:Ljava/util/Hashtable;

    .line 30
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "B-571"

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 31
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "B-409"

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 32
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "B-283"

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 33
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "B-233"

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 34
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163r2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "B-163"

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 35
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "K-571"

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 36
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "K-409"

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 37
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "K-283"

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 38
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "K-233"

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 39
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "K-163"

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 40
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "P-521"

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 41
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "P-384"

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 42
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "P-256"

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 43
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "P-224"

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 44
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "P-192"

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 45
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 24
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTNamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public static blacklist getByName(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 50
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 52
    .local v0, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-eqz v0, :cond_0

    .line 54
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTNamedCurves;->getByOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    return-object v1

    .line 57
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getByOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 1
    .param p0, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 69
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->getByOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getName(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 1
    .param p0, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 90
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTNamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist getNames()Ljava/util/Enumeration;
    .locals 1

    .line 99
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getOID(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 81
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method
