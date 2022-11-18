.class public Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "Extension.java"


# static fields
.field public static final blacklist auditIdentity:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist authorityInfoAccess:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist authorityKeyIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist basicConstraints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist biometricInfo:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist cRLDistributionPoints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist cRLNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist certificateIssuer:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist certificatePolicies:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist deltaCRLIndicator:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist expiredCertsOnCRL:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist extendedKeyUsage:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist freshestCRL:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist inhibitAnyPolicy:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist instructionCode:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist invalidityDate:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist issuerAlternativeName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist issuingDistributionPoint:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist keyUsage:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist logoType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist nameConstraints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist noRevAvail:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist policyConstraints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist policyMappings:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist privateKeyUsagePeriod:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist qCStatements:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist reasonCode:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist subjectAlternativeName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist subjectDirectoryAttributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist subjectInfoAccess:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist subjectKeyIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist targetInformation:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field private blacklist critical:Z

.field private blacklist extnId:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private blacklist value:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.9"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->subjectDirectoryAttributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 32
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.14"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->subjectKeyIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 37
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.15"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->keyUsage:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 42
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.16"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->privateKeyUsagePeriod:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 47
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.17"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 52
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.18"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->issuerAlternativeName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 57
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.19"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->basicConstraints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 62
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.20"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->cRLNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 67
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.21"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->reasonCode:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 72
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.23"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->instructionCode:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 77
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.24"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->invalidityDate:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 82
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.27"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 87
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.28"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 92
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.29"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->certificateIssuer:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 97
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.30"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->nameConstraints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 102
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.31"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 107
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.32"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->certificatePolicies:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 112
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.33"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->policyMappings:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 117
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.35"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 122
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.36"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->policyConstraints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 127
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.37"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->extendedKeyUsage:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 132
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.46"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->freshestCRL:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 137
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.54"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->inhibitAnyPolicy:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 142
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.1"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->authorityInfoAccess:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 147
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.11"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->subjectInfoAccess:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 152
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.12"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->logoType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 157
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.2"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->biometricInfo:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 162
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.3"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->qCStatements:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 167
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.4"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->auditIdentity:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 172
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.56"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->noRevAvail:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 177
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.55"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->targetInformation:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 182
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.60"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->expiredCertsOnCRL:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V
    .locals 1
    .param p1, "extnId"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "critical"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;
    .param p3, "value"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 200
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V

    .line 201
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V
    .locals 0
    .param p1, "extnId"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "critical"    # Z
    .param p3, "value"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 229
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 230
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->extnId:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 231
    iput-boolean p2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->critical:Z

    .line 232
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 233
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V
    .locals 1
    .param p1, "extnId"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "critical"    # Z
    .param p3, "value"    # [B

    .line 215
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p3}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V

    .line 216
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 254
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 255
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 257
    invoke-virtual {p1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->extnId:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 258
    iput-boolean v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->critical:Z

    .line 259
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    goto :goto_0

    .line 261
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    .line 263
    invoke-virtual {p1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->extnId:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 264
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->critical:Z

    .line 265
    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_1
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

.method private static blacklist convertValueToObject(Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4
    .param p0, "ext"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 360
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 362
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t convert extension: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist create(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    .locals 2
    .param p0, "extnId"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p1, "critical"    # Z
    .param p2, "value"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    invoke-interface {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 275
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    if-eqz v0, :cond_0

    .line 277
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    return-object v0

    .line 279
    :cond_0
    if-eqz p0, :cond_1

    .line 281
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 284
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 320
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 322
    return v1

    .line 325
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    .line 327
    .local v0, "other":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 328
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 329
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 327
    :goto_0
    return v1
.end method

.method public blacklist getExtnId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->extnId:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public blacklist getExtnValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public blacklist getParsedValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 304
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->convertValueToObject(Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 309
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    not-int v0, v0

    return v0
.end method

.method public blacklist isCritical()Z
    .locals 1

    .line 294
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->critical:Z

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 334
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 336
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->extnId:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 338
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->critical:Z

    if-eqz v1, :cond_0

    .line 340
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 343
    :cond_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 345
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
