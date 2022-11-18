.class Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;
.source "X509CertificateInternal.java"


# instance fields
.field private final blacklist encoding:[B


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;[ZLjava/lang/String;[B[B)V
    .locals 0
    .param p1, "bcHelper"    # Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    .param p2, "c"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;
    .param p3, "basicConstraints"    # Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;
    .param p4, "keyUsage"    # [Z
    .param p5, "sigAlgName"    # Ljava/lang/String;
    .param p6, "sigAlgParams"    # [B
    .param p7, "encoding"    # [B

    .line 16
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;[ZLjava/lang/String;[B)V

    .line 18
    iput-object p7, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;->encoding:[B

    .line 19
    return-void
.end method


# virtual methods
.method public whitelist test-api getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;->encoding:[B

    if-eqz v0, :cond_0

    .line 28
    return-object v0

    .line 25
    :cond_0
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    invoke-direct {v0}, Ljava/security/cert/CertificateEncodingException;-><init>()V

    throw v0
.end method
