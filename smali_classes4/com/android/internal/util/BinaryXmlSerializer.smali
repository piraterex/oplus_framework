.class public final Lcom/android/internal/util/BinaryXmlSerializer;
.super Ljava/lang/Object;
.source "BinaryXmlSerializer.java"

# interfaces
.implements Landroid/util/TypedXmlSerializer;


# static fields
.field static final blacklist ATTRIBUTE:I = 0xf

.field private static final blacklist BUFFER_SIZE:I = 0x8000

.field public static final blacklist PROTOCOL_MAGIC_VERSION_0:[B

.field static final blacklist TYPE_BOOLEAN_FALSE:I = 0xd0

.field static final blacklist TYPE_BOOLEAN_TRUE:I = 0xc0

.field static final blacklist TYPE_BYTES_BASE64:I = 0x50

.field static final blacklist TYPE_BYTES_HEX:I = 0x40

.field static final blacklist TYPE_DOUBLE:I = 0xb0

.field static final blacklist TYPE_FLOAT:I = 0xa0

.field static final blacklist TYPE_INT:I = 0x60

.field static final blacklist TYPE_INT_HEX:I = 0x70

.field static final blacklist TYPE_LONG:I = 0x80

.field static final blacklist TYPE_LONG_HEX:I = 0x90

.field static final blacklist TYPE_NULL:I = 0x10

.field static final blacklist TYPE_STRING:I = 0x20

.field static final blacklist TYPE_STRING_INTERNED:I = 0x30


# instance fields
.field private blacklist mOut:Lcom/android/internal/util/FastDataOutput;

.field private blacklist mTagCount:I

.field private blacklist mTagNames:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 72
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/util/BinaryXmlSerializer;->PROTOCOL_MAGIC_VERSION_0:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x58t
        0x0t
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagCount:I

    return-void
.end method

.method private static blacklist illegalNamespace()Ljava/lang/IllegalArgumentException;
    .locals 2

    .line 402
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Namespaces are not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist writeToken(ILjava/lang/String;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    if-eqz p2, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    or-int/lit8 v1, p1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 115
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    or-int/lit8 v1, p1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 119
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist test-api attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 207
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 208
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p3}, Lcom/android/internal/util/FastDataOutput;->writeUTF(Ljava/lang/String;)V

    .line 210
    return-object p0
.end method

.method public blacklist attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 309
    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 310
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0xcf

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 311
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    goto :goto_1

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0xdf

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 314
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 316
    :goto_1
    return-object p0
.end method

.method public blacklist attributeBytesBase64(Ljava/lang/String;Ljava/lang/String;[B)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 238
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 239
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    array-length v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeShort(I)V

    .line 241
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p3}, Lcom/android/internal/util/FastDataOutput;->write([B)V

    .line 242
    return-object p0
.end method

.method public blacklist attributeBytesHex(Ljava/lang/String;Ljava/lang/String;[B)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 227
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0x4f

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 228
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    array-length v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeShort(I)V

    .line 230
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p3}, Lcom/android/internal/util/FastDataOutput;->write([B)V

    .line 231
    return-object p0
.end method

.method public blacklist attributeDouble(Ljava/lang/String;Ljava/lang/String;D)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 299
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0xbf

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 300
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p3, p4}, Lcom/android/internal/util/FastDataOutput;->writeDouble(D)V

    .line 302
    return-object p0
.end method

.method public blacklist attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 289
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 290
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p3}, Lcom/android/internal/util/FastDataOutput;->writeFloat(F)V

    .line 292
    return-object p0
.end method

.method public blacklist attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 249
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 250
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p3}, Lcom/android/internal/util/FastDataOutput;->writeInt(I)V

    .line 252
    return-object p0
.end method

.method public blacklist attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 259
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 260
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p3}, Lcom/android/internal/util/FastDataOutput;->writeInt(I)V

    .line 262
    return-object p0
.end method

.method public blacklist attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 217
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 218
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p3}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 220
    return-object p0
.end method

.method public blacklist attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 269
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0x8f

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 270
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p3, p4}, Lcom/android/internal/util/FastDataOutput;->writeLong(J)V

    .line 272
    return-object p0
.end method

.method public blacklist attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 279
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0x9f

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 280
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p3, p4}, Lcom/android/internal/util/FastDataOutput;->writeLong(J)V

    .line 282
    return-object p0
.end method

.method public whitelist test-api cdsect(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    .line 334
    return-void
.end method

.method public whitelist test-api comment(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    .line 349
    return-void
.end method

.method public whitelist test-api docdecl(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    .line 354
    return-void
.end method

.method public whitelist test-api endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 161
    invoke-virtual {p0}, Lcom/android/internal/util/BinaryXmlSerializer;->flush()V

    .line 163
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0}, Lcom/android/internal/util/FastDataOutput;->release()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    .line 165
    return-void
.end method

.method public whitelist test-api endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 198
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagCount:I

    .line 199
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 200
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 201
    return-object p0
.end method

.method public whitelist test-api entityRef(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    .line 339
    return-void
.end method

.method public whitelist test-api flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/android/internal/util/FastDataOutput;->flush()V

    .line 144
    :cond_0
    return-void
.end method

.method public whitelist test-api getDepth()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagCount:I

    return v0
.end method

.method public whitelist test-api getFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 374
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagNames:[Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagCount:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist test-api getNamespace()Ljava/lang/String;
    .locals 1

    .line 175
    const-string v0, ""

    return-object v0
.end method

.method public whitelist test-api getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "generatePrefix"    # Z

    .line 398
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 386
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api ignorableWhitespace(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    .line 359
    return-void
.end method

.method public whitelist test-api processingInstruction(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    .line 344
    return-void
.end method

.method public whitelist test-api setFeature(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Z

    .line 364
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    return-void

    .line 368
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    if-eqz p2, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 127
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/FastDataOutput;->obtain(Ljava/io/OutputStream;)Lcom/android/internal/util/FastDataOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    .line 128
    sget-object v1, Lcom/android/internal/util/BinaryXmlSerializer;->PROTOCOL_MAGIC_VERSION_0:[B

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->write([B)V

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagCount:I

    .line 131
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagNames:[Ljava/lang/String;

    .line 132
    return-void
.end method

.method public whitelist test-api setOutput(Ljava/io/Writer;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;

    .line 136
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;

    .line 392
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 380
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "standalone"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    if-eqz p1, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 152
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 153
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 155
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 156
    return-void
.end method

.method public whitelist test-api startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/internal/util/BinaryXmlSerializer;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 186
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagCount:I

    iget-object v1, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagNames:[Ljava/lang/String;

    array-length v2, v1

    if-ne v0, v2, :cond_2

    .line 187
    shr-int/lit8 v2, v0, 0x1

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagNames:[Ljava/lang/String;

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagNames:[Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mTagCount:I

    aput-object p2, v0, v1

    .line 190
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    .line 191
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlSerializer;->mOut:Lcom/android/internal/util/FastDataOutput;

    invoke-virtual {v0, p2}, Lcom/android/internal/util/FastDataOutput;->writeInternedUTF(Ljava/lang/String;)V

    .line 192
    return-object p0
.end method

.method public whitelist test-api text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    .line 328
    return-object p0
.end method

.method public whitelist test-api text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/android/internal/util/BinaryXmlSerializer;->writeToken(ILjava/lang/String;)V

    .line 322
    return-object p0
.end method
