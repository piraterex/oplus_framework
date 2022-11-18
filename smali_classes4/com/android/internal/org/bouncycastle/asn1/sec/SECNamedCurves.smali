.class public Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;
.super Ljava/lang/Object;
.source "SECNamedCurves.java"


# static fields
.field static final blacklist curves:Ljava/util/Hashtable;

.field static final blacklist names:Ljava/util/Hashtable;

.field static final blacklist objIds:Ljava/util/Hashtable;

.field static blacklist secp112r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp112r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp128r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp128r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp160k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp160r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp160r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp192k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp192r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp224k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp224r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp256k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp256r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp384r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp521r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect113r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect113r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect131r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect131r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect163k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect163r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect163r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect193r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect193r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect233k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect233r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect239k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect283k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect283r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect409k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect409r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect571k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect571r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smconfigureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->configureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smconfigureCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .locals 0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->configureCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smconfigureCurveGLV(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->configureCurveGLV(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->fromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 51
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$1;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$1;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp112r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 75
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$2;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$2;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp112r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 99
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$3;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$3;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp128r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 123
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$4;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$4;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp128r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 147
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$5;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$5;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp160k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 185
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$6;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$6;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp160r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 209
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$7;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$7;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp160r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 233
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$8;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$8;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp192k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 271
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$9;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$9;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp192r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 295
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$10;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$10;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp224k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 333
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$11;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$11;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp224r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 357
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$12;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$12;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp256k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 395
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$13;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$13;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp256r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 419
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$14;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$14;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp384r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 444
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$15;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$15;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp521r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 469
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$16;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$16;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect113r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 494
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$17;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$17;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect113r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 519
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$18;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$18;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect131r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 546
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$19;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$19;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect131r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 573
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$20;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$20;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect163k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 600
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$21;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$21;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect163r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 627
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$22;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$22;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect163r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 654
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$23;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$23;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect193r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 679
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$24;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$24;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect193r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 704
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$25;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$25;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect233k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 729
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$26;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$26;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect233r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 754
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$27;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$27;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect239k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 779
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$28;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$28;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect283k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 807
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$29;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$29;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect283r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 835
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$30;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$30;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect409k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 861
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$31;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$31;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect409r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 887
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$32;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$32;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect571k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 915
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$33;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$33;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect571r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 941
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->objIds:Ljava/util/Hashtable;

    .line 942
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->curves:Ljava/util/Hashtable;

    .line 943
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->names:Ljava/util/Hashtable;

    .line 954
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp112r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp112r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp112r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 955
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp112r2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp112r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp112r2"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 956
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp128r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp128r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp128r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 957
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp128r2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp128r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp128r2"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 958
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp160k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp160k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp160k1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 959
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp160r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp160r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp160r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 960
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp160r2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp160r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp160r2"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 961
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp192k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp192k1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 962
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp192r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp192r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 963
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp224k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp224k1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 964
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp224r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp224r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 965
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp256k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp256k1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 966
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp256r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp256r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 967
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp384r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp384r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 968
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp521r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp521r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 970
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect113r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect113r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect113r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 971
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect113r2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect113r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect113r2"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 972
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect131r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect131r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect131r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 973
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect131r2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect131r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect131r2"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 974
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect163k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect163k1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 975
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect163r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect163r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 976
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163r2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect163r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect163r2"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 977
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect193r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect193r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect193r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 978
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect193r2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect193r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect193r2"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 979
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect233k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect233k1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 980
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect233r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect233r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 981
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect239k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect239k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect239k1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 982
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect283k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect283k1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 983
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect283r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect283r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 984
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect409k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect409k1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 985
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect409r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect409r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 986
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect571k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect571k1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 987
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect571r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect571r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 988
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist configureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;
    .locals 2
    .param p0, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p1, "encoding"    # Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)V

    .line 29
    .local v0, "G":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;->getPoint()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->configureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    .line 30
    return-object v0
.end method

.method private static blacklist configureCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .locals 0
    .param p0, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    .line 35
    return-object p0
.end method

.method private static blacklist configureCurveGLV(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .locals 2
    .param p0, "c"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p1, "p"    # Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    .line 40
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

.method static blacklist defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "holder"    # Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 947
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->curves:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    return-void
.end method

.method private static blacklist fromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "hex"    # Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static blacklist getByName(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 993
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->getOID(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 994
    .local v0, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->getByOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static blacklist getByOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 2
    .param p0, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1006
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->curves:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 1007
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

    .line 1028
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist getNames()Ljava/util/Enumeration;
    .locals 1

    .line 1037
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getOID(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1019
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method
