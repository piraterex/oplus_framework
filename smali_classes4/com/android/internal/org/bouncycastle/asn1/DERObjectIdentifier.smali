.class public Lcom/android/internal/org/bouncycastle/asn1/DERObjectIdentifier;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
.source "DERObjectIdentifier.java"


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V
    .locals 0
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "branch"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "identifier"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method constructor blacklist <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .line 19
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    .line 20
    return-void
.end method
