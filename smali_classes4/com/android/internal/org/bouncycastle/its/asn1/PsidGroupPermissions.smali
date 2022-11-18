.class public Lcom/android/internal/org/bouncycastle/its/asn1/PsidGroupPermissions;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "PsidGroupPermissions.java"


# instance fields
.field private final blacklist chainLengthRange:Ljava/math/BigInteger;

.field private final blacklist eeType:Ljava/lang/Object;

.field private final blacklist minChainLength:Ljava/math/BigInteger;

.field private final blacklist subjectPermissions:Lcom/android/internal/org/bouncycastle/its/asn1/SubjectPermissions;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 31
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/its/asn1/SubjectPermissions;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/SubjectPermissions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidGroupPermissions;->subjectPermissions:Lcom/android/internal/org/bouncycastle/its/asn1/SubjectPermissions;

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidGroupPermissions;->minChainLength:Ljava/math/BigInteger;

    .line 39
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidGroupPermissions;->chainLengthRange:Ljava/math/BigInteger;

    .line 40
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/its/asn1/EndEntityType;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/EndEntityType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidGroupPermissions;->eeType:Ljava/lang/Object;

    .line 41
    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sequence not length 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/PsidGroupPermissions;
    .locals 2
    .param p0, "src"    # Ljava/lang/Object;

    .line 45
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidGroupPermissions;

    if-eqz v0, :cond_0

    .line 47
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidGroupPermissions;

    return-object v0

    .line 49
    :cond_0
    if-eqz p0, :cond_1

    .line 51
    new-instance v0, Lcom/android/internal/org/bouncycastle/its/asn1/PsidGroupPermissions;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/its/asn1/PsidGroupPermissions;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 54
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method
