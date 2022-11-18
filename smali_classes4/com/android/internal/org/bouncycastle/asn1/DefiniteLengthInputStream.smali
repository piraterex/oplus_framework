.class Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;
.super Lcom/android/internal/org/bouncycastle/asn1/LimitedInputStream;
.source "DefiniteLengthInputStream.java"


# static fields
.field private static final blacklist EMPTY_BYTES:[B


# instance fields
.field private final blacklist _originalLength:I

.field private blacklist _remaining:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->EMPTY_BYTES:[B

    return-void
.end method

.method constructor blacklist <init>(Ljava/io/InputStream;II)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "length"    # I
    .param p3, "limit"    # I

    .line 27
    invoke-direct {p0, p1, p3}, Lcom/android/internal/org/bouncycastle/asn1/LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 29
    if-ltz p2, :cond_1

    .line 34
    iput p2, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_originalLength:I

    .line 35
    iput p2, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    .line 37
    if-nez p2, :cond_0

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->setParentEofDetect(Z)V

    .line 41
    :cond_0
    return-void

    .line 31
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "negative lengths not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method blacklist getRemaining()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    return v0
.end method

.method public whitelist test-api read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-nez v0, :cond_0

    .line 53
    const/4 v0, -0x1

    return v0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 58
    .local v0, "b":I
    if-ltz v0, :cond_2

    .line 63
    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-nez v1, :cond_1

    .line 65
    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->setParentEofDetect(Z)V

    .line 68
    :cond_1
    return v0

    .line 60
    :cond_2
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEF length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_originalLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " object truncated by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api read([BII)I
    .locals 5
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-nez v0, :cond_0

    .line 76
    const/4 v0, -0x1

    return v0

    .line 79
    :cond_0
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 80
    .local v0, "toRead":I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 82
    .local v1, "numRead":I
    if-ltz v1, :cond_2

    .line 87
    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-nez v2, :cond_1

    .line 89
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->setParentEofDetect(Z)V

    .line 92
    :cond_1
    return v1

    .line 84
    :cond_2
    new-instance v2, Ljava/io/EOFException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEF length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_originalLength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " object truncated by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method blacklist readAllIntoByteArray([B)V
    .locals 4
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    array-length v1, p1

    if-ne v0, v1, :cond_3

    .line 103
    if-nez v0, :cond_0

    .line 105
    return-void

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->getLimit()I

    move-result v0

    .line 110
    .local v0, "limit":I
    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-ge v1, v0, :cond_2

    .line 115
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    invoke-static {v2, p1}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-nez v1, :cond_1

    .line 119
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->setParentEofDetect(Z)V

    .line 120
    return-void

    .line 117
    :cond_1
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEF length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_originalLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " object truncated by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "corrupted stream - out of bounds length found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    .end local v0    # "limit":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer length not right for data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist toByteArray()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-nez v0, :cond_0

    .line 127
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->EMPTY_BYTES:[B

    return-object v0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->getLimit()I

    move-result v0

    .line 132
    .local v0, "limit":I
    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-ge v1, v0, :cond_2

    .line 137
    new-array v2, v1, [B

    .line 138
    .local v2, "bytes":[B
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    invoke-static {v3, v2}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-nez v1, :cond_1

    .line 142
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->setParentEofDetect(Z)V

    .line 143
    return-object v2

    .line 140
    :cond_1
    new-instance v1, Ljava/io/EOFException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEF length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_originalLength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " object truncated by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    .end local v2    # "bytes":[B
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "corrupted stream - out of bounds length found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
