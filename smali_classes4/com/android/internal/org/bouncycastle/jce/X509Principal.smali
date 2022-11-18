.class public Lcom/android/internal/org/bouncycastle/jce/X509Principal;
.super Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;
.source "X509Principal.java"

# interfaces
.implements Ljava/security/Principal;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V
    .locals 1
    .param p1, "name"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 69
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 70
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;)V
    .locals 1
    .param p1, "name"    # Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;

    .line 60
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 61
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "dirName"    # Ljava/lang/String;

    .line 113
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Hashtable;)V
    .locals 0
    .param p1, "attributes"    # Ljava/util/Hashtable;

    .line 80
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/util/Hashtable;)V

    .line 81
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Vector;Ljava/util/Hashtable;)V
    .locals 0
    .param p1, "ordering"    # Ljava/util/Vector;
    .param p2, "attributes"    # Ljava/util/Hashtable;

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    .line 94
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 0
    .param p1, "oids"    # Ljava/util/Vector;
    .param p2, "values"    # Ljava/util/Vector;

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 104
    return-void
.end method

.method public constructor blacklist <init>(ZLjava/lang/String;)V
    .locals 0
    .param p1, "reverse"    # Z
    .param p2, "dirName"    # Ljava/lang/String;

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/lang/String;)V

    .line 128
    return-void
.end method

.method public constructor blacklist <init>(ZLjava/util/Hashtable;Ljava/lang/String;)V
    .locals 0
    .param p1, "reverse"    # Z
    .param p2, "lookUp"    # Ljava/util/Hashtable;
    .param p3, "dirName"    # Ljava/lang/String;

    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/X509Principal;->readSequence(Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 52
    return-void
.end method

.method private static blacklist readSequence(Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .locals 4
    .param p0, "aIn"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 38
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not an ASN.1 Sequence: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist getEncoded()[B
    .locals 3

    .line 160
    :try_start_0
    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/jce/X509Principal;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 162
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .locals 1

    .line 150
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/X509Principal;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
