.class Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves$1;
.super Ljava/util/HashMap;
.source "SSHNamedCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 30
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "nistp256"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "nistp384"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "nistp521"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "nistk163"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "nistp192"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "nistp224"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "nistk233"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "nistb233"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "nistk283"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "nistk409"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "nistb409"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "nistt571"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method
