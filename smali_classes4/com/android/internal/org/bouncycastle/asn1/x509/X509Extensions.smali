.class public Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "X509Extensions.java"


# static fields
.field public static final blacklist AuditIdentity:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist AuthorityInfoAccess:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist AuthorityKeyIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist BasicConstraints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist BiometricInfo:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist CRLDistributionPoints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist CRLNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist CertificateIssuer:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist CertificatePolicies:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist DeltaCRLIndicator:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist ExtendedKeyUsage:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist FreshestCRL:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist InhibitAnyPolicy:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist InstructionCode:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist InvalidityDate:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist IssuerAlternativeName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist IssuingDistributionPoint:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist KeyUsage:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist LogoType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist NameConstraints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist NoRevAvail:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist PolicyConstraints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist PolicyMappings:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist PrivateKeyUsagePeriod:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist QCStatements:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist ReasonCode:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist SubjectAlternativeName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist SubjectDirectoryAttributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist SubjectInfoAccess:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist SubjectKeyIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist TargetInformation:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field private blacklist extensions:Ljava/util/Hashtable;

.field private blacklist ordering:Ljava/util/Vector;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.9"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->SubjectDirectoryAttributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 35
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.14"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->SubjectKeyIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 41
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.15"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->KeyUsage:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 47
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.16"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->PrivateKeyUsagePeriod:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 53
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.17"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->SubjectAlternativeName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 59
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.18"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->IssuerAlternativeName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 65
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.19"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->BasicConstraints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 71
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.20"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->CRLNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 77
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.21"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->ReasonCode:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 83
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.23"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->InstructionCode:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 89
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.24"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->InvalidityDate:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 95
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.27"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->DeltaCRLIndicator:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 101
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.28"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 107
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.29"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->CertificateIssuer:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 113
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.30"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->NameConstraints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 119
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.31"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->CRLDistributionPoints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 125
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.32"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->CertificatePolicies:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 131
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.33"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->PolicyMappings:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 137
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.35"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->AuthorityKeyIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 143
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.36"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->PolicyConstraints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 149
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.37"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->ExtendedKeyUsage:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 155
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.46"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->FreshestCRL:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 161
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.54"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->InhibitAnyPolicy:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 167
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.1"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->AuthorityInfoAccess:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 173
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.11"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->SubjectInfoAccess:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 179
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.12"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->LogoType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 185
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.2"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->BiometricInfo:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 191
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.3"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->QCStatements:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 197
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.4"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->AuditIdentity:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 203
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.56"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->NoRevAvail:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 209
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.55"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->TargetInformation:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 8
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 254
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 211
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    .line 212
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->ordering:Ljava/util/Vector;

    .line 255
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 257
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 259
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    .line 261
    .local v1, "s":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v2, v3, :cond_0

    .line 263
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v1, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extension;

    invoke-virtual {v1, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v4

    invoke-virtual {v1, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v5

    invoke-direct {v7, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extension;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V

    invoke-virtual {v2, v3, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 265
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 267
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v1, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extension;

    invoke-virtual {v1, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extension;-><init>(ZLcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V

    invoke-virtual {v2, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :goto_1
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v1, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 275
    .end local v1    # "s":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    goto :goto_0

    .line 271
    .restart local v1    # "s":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad sequence size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 276
    .end local v1    # "s":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :cond_2
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Hashtable;)V
    .locals 1
    .param p1, "extensions"    # Ljava/util/Hashtable;

    .line 286
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    .line 287
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Vector;Ljava/util/Hashtable;)V
    .locals 4
    .param p1, "ordering"    # Ljava/util/Vector;
    .param p2, "extensions"    # Ljava/util/Hashtable;

    .line 298
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 211
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    .line 212
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->ordering:Ljava/util/Vector;

    .line 301
    if-nez p1, :cond_0

    .line 303
    invoke-virtual {p2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    goto :goto_0

    .line 307
    .end local v0    # "e":Ljava/util/Enumeration;
    :cond_0
    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 310
    .restart local v0    # "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->ordering:Ljava/util/Vector;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 315
    :cond_1
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 317
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 319
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    .line 320
    .local v1, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {p2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extension;

    .line 322
    .local v2, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extension;
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .end local v1    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v2    # "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extension;
    goto :goto_1

    .line 324
    :cond_2
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 5
    .param p1, "objectIDs"    # Ljava/util/Vector;
    .param p2, "values"    # Ljava/util/Vector;

    .line 336
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 211
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    .line 212
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->ordering:Ljava/util/Vector;

    .line 337
    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 339
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->ordering:Ljava/util/Vector;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 344
    :cond_0
    const/4 v1, 0x0

    .line 346
    .local v1, "count":I
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 348
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 350
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 351
    .local v2, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {p2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extension;

    .line 353
    .local v3, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extension;
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v4, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    nop

    .end local v2    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v3    # "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extension;
    add-int/lit8 v1, v1, 0x1

    .line 355
    goto :goto_1

    .line 356
    :cond_1
    return-void
.end method

.method private blacklist getExtensionOIDs(Z)[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 4
    .param p1, "isCritical"    # Z

    .line 455
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 457
    .local v0, "oidVec":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 459
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 461
    .local v2, "oid":Ljava/lang/Object;
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extension;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v3

    if-ne v3, p1, :cond_0

    .line 463
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 457
    .end local v2    # "oid":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 467
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->toOidArray(Ljava/util/Vector;)[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;
    .locals 1
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 218
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 224
    if-eqz p0, :cond_4

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 231
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 234
    :cond_1
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_2

    .line 236
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 239
    :cond_2
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_3

    .line 241
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v0

    return-object v0

    .line 244
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

    .line 226
    :cond_4
    :goto_0
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;

    return-object v0
.end method

.method private blacklist toOidArray(Ljava/util/Vector;)[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 3
    .param p1, "oidVec"    # Ljava/util/Vector;

    .line 472
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 474
    .local v0, "oids":[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 476
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v2, v0, v1

    .line 474
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 478
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public blacklist equivalent(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;)Z
    .locals 5
    .param p1, "other"    # Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;

    .line 418
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    iget-object v1, p1, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 420
    return v2

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 425
    .local v0, "e1":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 427
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 429
    .local v1, "key":Ljava/lang/Object;
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 431
    return v2

    .line 433
    .end local v1    # "key":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 435
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist getCriticalExtensionOIDs()[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 450
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->getExtensionOIDs(Z)[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extension;
    .locals 1
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 375
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extension;

    return-object v0
.end method

.method public blacklist getExtensionOIDs()[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->ordering:Ljava/util/Vector;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->toOidArray(Ljava/util/Vector;)[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNonCriticalExtensionOIDs()[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 445
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->getExtensionOIDs(Z)[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public blacklist oids()Ljava/util/Enumeration;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 6

    .line 390
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 392
    .local v0, "vec":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 393
    .local v1, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 395
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 397
    .local v2, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 398
    .local v3, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extension;

    .line 400
    .local v4, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extension;
    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 402
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 404
    sget-object v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    invoke-virtual {v2, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 407
    :cond_0
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extension;->getValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 409
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 410
    .end local v2    # "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v3    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v4    # "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extension;
    goto :goto_0

    .line 412
    :cond_1
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v2
.end method
