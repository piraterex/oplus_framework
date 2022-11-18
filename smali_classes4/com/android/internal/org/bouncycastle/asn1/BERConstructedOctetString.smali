.class public Lcom/android/internal/org/bouncycastle/asn1/BERConstructedOctetString;
.super Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;
.source "BERConstructedOctetString.java"


# static fields
.field private static final blacklist MAX_LENGTH:I = 0x3e8


# instance fields
.field private blacklist octs:Ljava/util/Vector;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 87
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/BERConstructedOctetString;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V

    .line 88
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V
    .locals 1
    .param p1, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 69
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/BERConstructedOctetString;->toByteArray(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;-><init>([B)V

    .line 70
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Vector;)V
    .locals 1
    .param p1, "octs"    # Ljava/util/Vector;

    .line 61
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/BERConstructedOctetString;->toBytes(Ljava/util/Vector;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;-><init>([B)V

    .line 63
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/BERConstructedOctetString;->octs:Ljava/util/Vector;

    .line 64
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .locals 0
    .param p1, "string"    # [B

    .line 55
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;-><init>([B)V

    .line 56
    return-void
.end method

.method public static blacklist fromSequence(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;
    .locals 3
    .param p0, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 136
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 137
    .local v0, "v":Ljava/util/Vector;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .line 139
    .local v1, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 144
    :cond_0
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/BERConstructedOctetString;

    invoke-direct {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/BERConstructedOctetString;-><init>(Ljava/util/Vector;)V

    return-object v2
.end method

.method private blacklist generateOcts()Ljava/util/Vector;
    .locals 7

    .line 110
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 111
    .local v0, "vec":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 115
    add-int/lit16 v2, v1, 0x3e8

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    array-length v3, v3

    if-le v2, v3, :cond_0

    .line 117
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    array-length v2, v2

    .local v2, "end":I
    goto :goto_1

    .line 121
    .end local v2    # "end":I
    :cond_0
    add-int/lit16 v2, v1, 0x3e8

    .line 124
    .restart local v2    # "end":I
    :goto_1
    sub-int v3, v2, v1

    new-array v3, v3, [B

    .line 126
    .local v3, "nStr":[B
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    const/4 v5, 0x0

    array-length v6, v3

    invoke-static {v4, v1, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v3}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 111
    .end local v2    # "end":I
    .end local v3    # "nStr":[B
    add-int/lit16 v1, v1, 0x3e8

    goto :goto_0

    .line 131
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private static blacklist toByteArray(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)[B
    .locals 3
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 76
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unable to encode object"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist toBytes(Ljava/util/Vector;)[B
    .locals 6
    .param p0, "octs"    # Ljava/util/Vector;

    .line 24
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 26
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 30
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    .line 32
    .local v2, "o":Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v2    # "o":Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;
    nop

    .line 26
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    :catch_0
    move-exception v2

    .line 40
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception converting octets "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 34
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 36
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " found in input should only contain DEROctetString"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 44
    .end local v1    # "i":I
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist getObjects()Ljava/util/Enumeration;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERConstructedOctetString;->octs:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/BERConstructedOctetString;->generateOcts()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0

    .line 105
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOctets()[B
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    return-object v0
.end method
