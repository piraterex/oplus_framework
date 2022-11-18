.class public Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "X962Parameters.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private blacklist params:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Null;)V
    .locals 1
    .param p1, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Null;

    .line 70
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 71
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 72
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1
    .param p1, "namedCurve"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 64
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 65
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 66
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V
    .locals 1
    .param p1, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 75
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 76
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 77
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;)V
    .locals 1
    .param p1, "ecParameters"    # Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    .line 58
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 59
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 60
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    .locals 1
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 53
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;

    .line 24
    if-eqz p0, :cond_3

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    if-eqz v0, :cond_1

    .line 31
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V

    return-object v0

    .line 34
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    .line 38
    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    move-object v1, p0

    check-cast v1, [B

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 40
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to parse encoded data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown object in getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_3
    :goto_0
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    return-object v0
.end method


# virtual methods
.method public blacklist getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    return-object v0
.end method

.method public blacklist isImplicitlyCA()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Null;

    return v0
.end method

.method public blacklist isNamedCurve()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    return-object v0
.end method
