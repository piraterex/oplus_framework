.class public Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateIssuer;
.super Ljava/lang/Object;
.source "AttributeCertificateIssuer.java"

# interfaces
.implements Ljava/security/cert/CertSelector;
.implements Lcom/android/internal/org/bouncycastle/util/Selector;


# instance fields
.field final blacklist form:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;)V
    .locals 1
    .param p1, "issuer"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 41
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jce/X509Principal;)V
    .locals 3
    .param p1, "principal"    # Lcom/android/internal/org/bouncycastle/jce/X509Principal;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/V2Form;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v2, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;)V

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/V2Form;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 52
    return-void
.end method

.method public constructor blacklist <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 2
    .param p1, "principal"    # Ljavax/security/auth/x500/X500Principal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/X509Principal;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jce/X509Principal;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateIssuer;-><init>(Lcom/android/internal/org/bouncycastle/jce/X509Principal;)V

    .line 47
    return-void
.end method

.method private blacklist getNames()[Ljava/lang/Object;
    .locals 7

    .line 58
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/x509/V2Form;

    if-eqz v1, :cond_0

    .line 60
    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/V2Form;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/V2Form;->getIssuerName()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    .local v0, "name":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    goto :goto_0

    .line 64
    .end local v0    # "name":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    :cond_0
    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 67
    .restart local v0    # "name":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    .line 69
    .local v1, "names":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    .local v2, "l":Ljava/util/List;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v1

    if-eq v3, v4, :cond_2

    .line 73
    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 77
    :try_start_0
    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    aget-object v5, v1, v3

    .line 78
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    .line 77
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    goto :goto_2

    .line 80
    :catch_0
    move-exception v4

    .line 82
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "badly formed Name object"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 71
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 87
    .end local v3    # "i":I
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method private blacklist matchesDN(Ljavax/security/auth/x500/X500Principal;Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)Z
    .locals 5
    .param p1, "subject"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "targets"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 114
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    .line 116
    .local v0, "names":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_2

    .line 118
    aget-object v2, v0, v1

    .line 120
    .local v2, "gn":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 124
    :try_start_0
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-virtual {v3, p1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 126
    const/4 v3, 0x1

    return v3

    .line 131
    :cond_0
    goto :goto_1

    .line 129
    :catch_0
    move-exception v3

    .line 116
    .end local v2    # "gn":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .locals 2

    .line 140
    new-instance v0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateIssuer;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateIssuer;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 181
    if-ne p1, p0, :cond_0

    .line 183
    const/4 v0, 0x1

    return v0

    .line 186
    :cond_0
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateIssuer;

    if-nez v0, :cond_1

    .line 188
    const/4 v0, 0x0

    return v0

    .line 191
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateIssuer;

    .line 193
    .local v0, "other":Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateIssuer;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist getPrincipals()[Ljava/security/Principal;
    .locals 4

    .line 98
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateIssuer;->getNames()[Ljava/lang/Object;

    move-result-object v0

    .line 99
    .local v0, "p":[Ljava/lang/Object;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v1, "l":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-eq v2, v3, :cond_1

    .line 103
    aget-object v3, v0, v2

    instance-of v3, v3, Ljava/security/Principal;

    if-eqz v3, :cond_0

    .line 105
    aget-object v3, v0, v2

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    .end local v2    # "i":I
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/Principal;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/Principal;

    return-object v2
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist match(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 203
    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    .line 205
    const/4 v0, 0x0

    return v0

    .line 208
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/security/cert/Certificate;

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateIssuer;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api match(Ljava/security/cert/Certificate;)Z
    .locals 6
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .line 145
    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 147
    return v1

    .line 150
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 152
    .local v0, "x509Cert":Ljava/security/cert/X509Certificate;
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v3, v2, Lcom/android/internal/org/bouncycastle/asn1/x509/V2Form;

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 154
    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/x509/V2Form;

    .line 155
    .local v2, "issuer":Lcom/android/internal/org/bouncycastle/asn1/x509/V2Form;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/V2Form;->getBaseCertificateID()Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 157
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/V2Form;->getBaseCertificateID()Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;->getSerial()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->hasValue(Ljava/math/BigInteger;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/V2Form;->getBaseCertificateID()Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateIssuer;->matchesDN(Ljavax/security/auth/x500/X500Principal;Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    nop

    .line 157
    :goto_0
    return v1

    .line 161
    :cond_2
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/V2Form;->getIssuerName()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    .line 162
    .local v3, "name":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateIssuer;->matchesDN(Ljavax/security/auth/x500/X500Principal;Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 164
    return v4

    .line 166
    .end local v2    # "issuer":Lcom/android/internal/org/bouncycastle/asn1/x509/V2Form;
    .end local v3    # "name":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    :cond_3
    goto :goto_1

    .line 169
    :cond_4
    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 170
    .local v2, "name":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateIssuer;->matchesDN(Ljavax/security/auth/x500/X500Principal;Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 172
    return v4

    .line 176
    .end local v2    # "name":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    :cond_5
    :goto_1
    return v1
.end method
