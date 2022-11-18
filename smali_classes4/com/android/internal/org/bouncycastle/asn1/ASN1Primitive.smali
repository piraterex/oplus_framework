.class public abstract Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "ASN1Primitive.java"


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 16
    return-void
.end method

.method public static blacklist fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 42
    .local v0, "aIn":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 44
    .local v1, "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->available()I

    move-result v2

    if-nez v2, :cond_0

    .line 49
    return-object v1

    .line 46
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Extra data detected in stream"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "aIn":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    .end local p0    # "data":[B
    throw v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v1    # "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .restart local v0    # "aIn":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    .restart local p0    # "data":[B
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "cannot recognise object in stream"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method abstract blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
.end method

.method abstract blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public blacklist encodeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->create(Ljava/io/OutputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V

    .line 21
    return-void
.end method

.method public blacklist encodeTo(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->create(Ljava/io/OutputStream;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V

    .line 26
    return-void
.end method

.method abstract blacklist encodedLength()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final blacklist equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Z
    .locals 1
    .param p1, "other"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 69
    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final blacklist equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 1
    .param p1, "other"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 74
    if-eq p0, p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 59
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 61
    return v0

    .line 64
    :cond_0
    instance-of v1, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract whitelist test-api hashCode()I
.end method

.method abstract blacklist isConstructed()Z
.end method

.method public final blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    .line 79
    return-object p0
.end method

.method blacklist toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    .line 89
    return-object p0
.end method

.method blacklist toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    .line 99
    return-object p0
.end method
