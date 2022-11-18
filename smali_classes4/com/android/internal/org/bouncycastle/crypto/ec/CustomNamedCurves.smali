.class public Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;
.super Ljava/lang/Object;
.source "CustomNamedCurves.java"


# static fields
.field static final blacklist nameToCurve:Ljava/util/Hashtable;

.field static final blacklist nameToOID:Ljava/util/Hashtable;

.field static final blacklist names:Ljava/util/Vector;

.field static final blacklist oidToCurve:Ljava/util/Hashtable;

.field static final blacklist oidToName:Ljava/util/Hashtable;

.field static blacklist secp192k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp192r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp224k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp224r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp256k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp256r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp384r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp521r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smconfigureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->configureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smconfigureCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .locals 0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->configureCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smconfigureCurveGLV(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->configureCurveGLV(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 189
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves$1;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves$1;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp192k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 217
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves$2;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves$2;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp192r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 232
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves$3;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves$3;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp224k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 260
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves$4;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves$4;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp224r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 275
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves$5;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves$5;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp256k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 303
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves$6;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves$6;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp256r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 318
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves$7;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves$7;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp384r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 334
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves$8;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves$8;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp521r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 643
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    .line 644
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToOID:Ljava/util/Hashtable;

    .line 645
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->oidToCurve:Ljava/util/Hashtable;

    .line 646
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->oidToName:Ljava/util/Hashtable;

    .line 647
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->names:Ljava/util/Vector;

    .line 694
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp192k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp192k1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 695
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp192r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp192r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 696
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp224k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp224k1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 697
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp224r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp224r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 698
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp256k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp256k1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 699
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp256r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp256r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 700
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp384r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp384r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 701
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp521r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp521r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 740
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "P-192"

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 741
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "P-224"

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 742
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "P-256"

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 743
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "P-384"

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 744
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "P-521"

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 745
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist configureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;
    .locals 2
    .param p0, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p1, "encoding"    # Ljava/lang/String;

    .line 68
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)V

    .line 69
    .local v0, "G":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;->getPoint()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->configureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    .line 70
    return-object v0
.end method

.method private static blacklist configureCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .locals 0
    .param p0, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    .line 75
    return-object p0
.end method

.method private static blacklist configureCurveGLV(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .locals 2
    .param p0, "c"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p1, "p"    # Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    .line 80
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->configure()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;

    move-result-object v0

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;->setEndomorphism(Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;->create()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    return-object v0
.end method

.method static blacklist defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "holder"    # Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 651
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->names:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 652
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 653
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    return-void
.end method

.method static blacklist defineCurveAlias(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 668
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->oidToCurve:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 669
    .local v0, "curve":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 674
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 675
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToOID:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    return-void

    .line 671
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method static blacklist defineCurveWithOID(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "holder"    # Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 658
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->names:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 659
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->oidToName:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->oidToCurve:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 662
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToOID:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    return-void
.end method

.method public static blacklist getByName(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 749
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 750
    .local v0, "holder":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static blacklist getByOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 2
    .param p0, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 762
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->oidToCurve:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 763
    .local v0, "holder":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static blacklist getName(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 1
    .param p0, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 782
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->oidToName:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist getNames()Ljava/util/Enumeration;
    .locals 1

    .line 790
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->names:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getOID(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 774
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToOID:Ljava/util/Hashtable;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method
