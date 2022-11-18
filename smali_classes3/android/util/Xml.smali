.class public Landroid/util/Xml;
.super Ljava/lang/Object;
.source "Xml.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/Xml$Encoding;
    }
.end annotation


# static fields
.field public static final blacklist ENABLE_BINARY_DEFAULT:Z

.field public static whitelist FEATURE_RELAXED:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 63
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#relaxed"

    sput-object v0, Landroid/util/Xml;->FEATURE_RELAXED:Ljava/lang/String;

    .line 71
    nop

    .line 72
    const-string/jumbo v0, "persist.sys.binary_xml"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/util/Xml;->ENABLE_BINARY_DEFAULT:Z

    .line 71
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    .locals 1
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 383
    instance-of v0, p0, Landroid/util/AttributeSet;

    if-eqz v0, :cond_0

    .line 384
    move-object v0, p0

    check-cast v0, Landroid/util/AttributeSet;

    goto :goto_0

    .line 385
    :cond_0
    new-instance v0, Landroid/util/XmlPullAttributes;

    invoke-direct {v0, p0}, Landroid/util/XmlPullAttributes;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 383
    :goto_0
    return-object v0
.end method

.method public static blacklist copy(Lorg/xmlpull/v1/XmlPullParser;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 6
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    .line 271
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 270
    if-nez v0, :cond_0

    .line 271
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getInputEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 275
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v0

    .line 276
    .local v0, "token":I
    packed-switch v0, :pswitch_data_0

    .line 315
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 312
    :pswitch_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->docdecl(Ljava/lang/String;)V

    .line 313
    goto/16 :goto_2

    .line 309
    :pswitch_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 310
    goto/16 :goto_2

    .line 306
    :pswitch_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->processingInstruction(Ljava/lang/String;)V

    .line 307
    goto :goto_2

    .line 303
    :pswitch_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->ignorableWhitespace(Ljava/lang/String;)V

    .line 304
    goto :goto_2

    .line 300
    :pswitch_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->entityRef(Ljava/lang/String;)V

    .line 301
    goto :goto_2

    .line 297
    :pswitch_5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    .line 298
    goto :goto_2

    .line 294
    :pswitch_6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 295
    goto :goto_2

    .line 291
    :pswitch_7
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/util/Xml;->normalizeNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 292
    goto :goto_2

    .line 284
    :pswitch_8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/util/Xml;->normalizeNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 285
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 286
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/util/Xml;->normalizeNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 287
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 286
    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 285
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 289
    .end local v2    # "i":I
    :cond_1
    goto :goto_2

    .line 281
    :pswitch_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 282
    return-void

    .line 278
    :pswitch_a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getInputEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 279
    nop

    .line 317
    .end local v0    # "token":I
    :goto_2
    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static whitelist findEncodingByName(Ljava/lang/String;)Landroid/util/Xml$Encoding;
    .locals 5
    .param p0, "encodingName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 355
    if-nez p0, :cond_0

    .line 356
    sget-object v0, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    return-object v0

    .line 359
    :cond_0
    invoke-static {}, Landroid/util/Xml$Encoding;->values()[Landroid/util/Xml$Encoding;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 360
    .local v3, "encoding":Landroid/util/Xml$Encoding;
    iget-object v4, v3, Landroid/util/Xml$Encoding;->expatName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 361
    return-object v3

    .line 359
    .end local v3    # "encoding":Landroid/util/Xml$Encoding;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 363
    :cond_2
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist newBinaryPullParser()Landroid/util/TypedXmlPullParser;
    .locals 1

    .line 149
    new-instance v0, Lcom/android/internal/util/BinaryXmlPullParser;

    invoke-direct {v0}, Lcom/android/internal/util/BinaryXmlPullParser;-><init>()V

    return-object v0
.end method

.method public static blacklist newBinarySerializer()Landroid/util/TypedXmlSerializer;
    .locals 1

    .line 228
    new-instance v0, Lcom/android/internal/util/BinaryXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/BinaryXmlSerializer;-><init>()V

    return-object v0
.end method

.method public static blacklist newFastPullParser()Landroid/util/TypedXmlPullParser;
    .locals 1

    .line 137
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist newFastSerializer()Landroid/util/TypedXmlSerializer;
    .locals 1

    .line 216
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlSerializer;)Landroid/util/TypedXmlSerializer;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 3

    .line 117
    :try_start_0
    invoke-static {}, Llibcore/util/XmlObjectFactory;->newXmlPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 118
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 119
    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    return-object v0

    .line 121
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public static whitelist newSerializer()Lorg/xmlpull/v1/XmlSerializer;
    .locals 1

    .line 202
    invoke-static {}, Llibcore/util/XmlObjectFactory;->newXmlSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist normalizeNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "namespace"    # Ljava/lang/String;

    .line 326
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 329
    :cond_0
    return-object p0

    .line 327
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Landroid/util/Xml$Encoding;
    .param p2, "contentHandler"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 105
    invoke-static {}, Llibcore/util/XmlObjectFactory;->newXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 106
    .local v0, "reader":Lorg/xml/sax/XMLReader;
    invoke-interface {v0, p2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 107
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 108
    .local v1, "source":Lorg/xml/sax/InputSource;
    iget-object v2, p1, Landroid/util/Xml$Encoding;->expatName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 109
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 110
    return-void
.end method

.method public static whitelist parse(Ljava/io/Reader;Lorg/xml/sax/ContentHandler;)V
    .locals 2
    .param p0, "in"    # Ljava/io/Reader;
    .param p1, "contentHandler"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 94
    invoke-static {}, Llibcore/util/XmlObjectFactory;->newXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 95
    .local v0, "reader":Lorg/xml/sax/XMLReader;
    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 96
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 97
    return-void
.end method

.method public static whitelist parse(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V
    .locals 3
    .param p0, "xml"    # Ljava/lang/String;
    .param p1, "contentHandler"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 80
    :try_start_0
    invoke-static {}, Llibcore/util/XmlObjectFactory;->newXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 81
    .local v0, "reader":Lorg/xml/sax/XMLReader;
    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 82
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v0    # "reader":Lorg/xml/sax/XMLReader;
    nop

    .line 86
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static blacklist resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;
    .locals 7
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 169
    .local v0, "magic":[B
    instance-of v1, p0, Ljava/io/FileInputStream;

    if-eqz v1, :cond_0

    .line 171
    :try_start_0
    move-object v1, p0

    check-cast v1, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v3, 0x0

    array-length v4, v0

    const-wide/16 v5, 0x0

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Landroid/system/Os;->pread(Ljava/io/FileDescriptor;[BIIJ)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    goto :goto_0

    .line 172
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 176
    .end local v1    # "e":Landroid/system/ErrnoException;
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-nez v1, :cond_1

    .line 177
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v1

    .line 179
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 180
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 181
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 185
    :goto_0
    sget-object v1, Lcom/android/internal/util/BinaryXmlSerializer;->PROTOCOL_MAGIC_VERSION_0:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    invoke-static {}, Landroid/util/Xml;->newBinaryPullParser()Landroid/util/TypedXmlPullParser;

    move-result-object v1

    .local v1, "xml":Landroid/util/TypedXmlPullParser;
    goto :goto_1

    .line 188
    .end local v1    # "xml":Landroid/util/TypedXmlPullParser;
    :cond_2
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Landroid/util/TypedXmlPullParser;

    move-result-object v1

    .line 191
    .restart local v1    # "xml":Landroid/util/TypedXmlPullParser;
    :goto_1
    :try_start_1
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Landroid/util/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    nop

    .line 195
    return-object v1

    .line 192
    :catch_1
    move-exception v2

    .line 193
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static blacklist resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;
    .locals 2
    .param p0, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    sget-boolean v0, Landroid/util/Xml;->ENABLE_BINARY_DEFAULT:Z

    if-eqz v0, :cond_0

    .line 249
    invoke-static {}, Landroid/util/Xml;->newBinarySerializer()Landroid/util/TypedXmlSerializer;

    move-result-object v0

    .local v0, "xml":Landroid/util/TypedXmlSerializer;
    goto :goto_0

    .line 251
    .end local v0    # "xml":Landroid/util/TypedXmlSerializer;
    :cond_0
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Landroid/util/TypedXmlSerializer;

    move-result-object v0

    .line 253
    .restart local v0    # "xml":Landroid/util/TypedXmlSerializer;
    :goto_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/util/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 254
    return-object v0
.end method
