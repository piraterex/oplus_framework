.class Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;
.super Ljava/io/OutputStream;
.source "BEROctetStringGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BufferedBEROctetStream"
.end annotation


# instance fields
.field private blacklist _buf:[B

.field private blacklist _derOut:Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;

.field private blacklist _off:I

.field final synthetic blacklist this$0:Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator;[B)V
    .locals 1
    .param p2, "buf"    # [B

    .line 80
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->this$0:Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 81
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    .line 83
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator;->_out:Ljava/io/OutputStream;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_derOut:Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;

    .line 84
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    if-eqz v0, :cond_0

    .line 125
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_derOut:Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z[BII)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_derOut:Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;->flushInternal()V

    .line 130
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->this$0:Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator;->writeBEREnd()V

    .line 131
    return-void
.end method

.method public whitelist test-api write(I)V
    .locals 5
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    int-to-byte v3, p1

    aput-byte v3, v0, v1

    .line 92
    array-length v1, v0

    if-ne v2, v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_derOut:Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;

    array-length v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, v0, v4, v2}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z[BII)V

    .line 95
    iput v4, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    .line 97
    :cond_0
    return-void
.end method

.method public whitelist test-api write([BII)V
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    :goto_0
    if-lez p3, :cond_1

    .line 103
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 104
    .local v0, "numToCopy":I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    .line 107
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 109
    goto :goto_1

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_derOut:Lcom/android/internal/org/bouncycastle/asn1/DEROutputStream;

    const/4 v3, 0x1

    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v1, v3, v2, v5, v4}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z[BII)V

    .line 113
    iput v5, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    .line 115
    add-int/2addr p2, v0

    .line 116
    sub-int/2addr p3, v0

    .line 117
    .end local v0    # "numToCopy":I
    goto :goto_0

    .line 118
    :cond_1
    :goto_1
    return-void
.end method
