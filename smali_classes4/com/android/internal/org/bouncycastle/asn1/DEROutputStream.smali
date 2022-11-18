.class public Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
.source "DEROutputStream.java"


# direct methods
.method public constructor blacklist <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "os"    # Ljava/io/OutputStream;

    .line 18
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 19
    return-void
.end method


# virtual methods
.method blacklist getDERSubStream()Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;
    .locals 0

    .line 28
    return-object p0
.end method

.method blacklist getDLSubStream()Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .locals 0

    .line 33
    return-object p0
.end method

.method blacklist writePrimitive(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Z)V
    .locals 1
    .param p1, "primitive"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    .line 24
    return-void
.end method
