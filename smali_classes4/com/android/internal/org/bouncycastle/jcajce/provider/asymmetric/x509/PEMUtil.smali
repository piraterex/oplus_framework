.class Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;
.super Ljava/lang/Object;
.source "PEMUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;
    }
.end annotation


# instance fields
.field private final blacklist _supportedBoundaries:[Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;

    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries-IA;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "X509 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries-IA;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;

    const-string v3, "PKCS7"

    invoke-direct {v1, p0, v3, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries-IA;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->_supportedBoundaries:[Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;

    .line 46
    return-void
.end method

.method private blacklist getBoundaries(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;
    .locals 3
    .param p1, "line"    # Ljava/lang/String;

    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->_supportedBoundaries:[Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;

    array-length v2, v1

    if-eq v0, v2, :cond_2

    .line 104
    aget-object v1, v1, v0

    .line 106
    .local v1, "boundary":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;
    invoke-virtual {v1, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;->isTheExpectedHeader(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;->isTheExpectedFooter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 102
    .end local v1    # "boundary":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    .restart local v1    # "boundary":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;
    :cond_1
    :goto_1
    return-object v1

    .line 112
    .end local v0    # "i":I
    .end local v1    # "boundary":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist readLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 55
    .local v0, "l":Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    move v2, v1

    .local v2, "c":I
    const/16 v3, 0xa

    const/16 v4, 0xd

    if-eq v1, v4, :cond_1

    if-eq v2, v3, :cond_1

    if-ltz v2, :cond_1

    .line 57
    int-to-char v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 60
    :cond_1
    if-ltz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    :cond_2
    if-gez v2, :cond_4

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 67
    const/4 v1, 0x0

    return-object v1

    .line 69
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 73
    :cond_4
    if-ne v2, v4, :cond_6

    .line 76
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    .line 77
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    move v2, v4

    if-ne v4, v3, :cond_5

    .line 79
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    .line 82
    :cond_5
    if-lez v2, :cond_6

    .line 84
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 88
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method blacklist readPEMObject(Ljava/io/InputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 122
    .local v0, "pemBuf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 124
    .local v1, "header":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 126
    invoke-direct {p0, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->getBoundaries(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;

    move-result-object v1

    .line 127
    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;->isTheExpectedHeader(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 129
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v4, "malformed PEM data: found footer where header was expected"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 133
    .end local v3    # "line":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_8

    .line 138
    const/4 v2, 0x0

    .line 140
    .local v2, "footer":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;
    :goto_1
    if-nez v2, :cond_5

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 142
    invoke-direct {p0, v4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil;->getBoundaries(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;

    move-result-object v2

    .line 143
    if-eqz v2, :cond_4

    .line 145
    invoke-virtual {v1, v4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;->isTheExpectedFooter(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 147
    :cond_3
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v5, "malformed PEM data: header/footer mismatch"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 152
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 156
    .end local v4    # "line":Ljava/lang/String;
    :cond_5
    if-eqz v2, :cond_7

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-eqz v3, :cond_6

    .line 165
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 167
    :catch_0
    move-exception v3

    .line 169
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "malformed PEM data encountered"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 173
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_6
    const/4 v3, 0x0

    return-object v3

    .line 158
    :cond_7
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "malformed PEM data: no footer found"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 135
    .end local v2    # "footer":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;
    :cond_8
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "malformed PEM data: no header found"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
