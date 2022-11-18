.class public interface abstract Landroid/util/TypedXmlPullParser;
.super Ljava/lang/Object;
.source "TypedXmlPullParser.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlPullParser;


# virtual methods
.method public abstract blacklist getAttributeBoolean(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public blacklist getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 193
    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(I)Z

    move-result v0

    return v0
.end method

.method public blacklist getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .line 322
    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 323
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return p3

    .line 325
    :cond_0
    :try_start_0
    invoke-interface {p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 326
    :catch_0
    move-exception v1

    .line 327
    .local v1, "ignored":Ljava/lang/Exception;
    return p3
.end method

.method public abstract blacklist getAttributeBytesBase64(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public blacklist getAttributeBytesBase64(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 130
    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeBytesBase64(I)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAttributeBytesBase64(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # [B

    .line 217
    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 218
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p3

    .line 220
    :cond_0
    :try_start_0
    invoke-interface {p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeBytesBase64(I)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, "ignored":Ljava/lang/Exception;
    return-object p3
.end method

.method public abstract blacklist getAttributeBytesHex(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public blacklist getAttributeBytesHex(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 121
    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeBytesHex(I)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAttributeBytesHex(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # [B

    .line 202
    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 203
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p3

    .line 205
    :cond_0
    :try_start_0
    invoke-interface {p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeBytesHex(I)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 206
    :catch_0
    move-exception v1

    .line 207
    .local v1, "ignored":Ljava/lang/Exception;
    return-object p3
.end method

.method public abstract blacklist getAttributeDouble(I)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public blacklist getAttributeDouble(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 184
    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getAttributeDouble(Ljava/lang/String;Ljava/lang/String;D)D
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # D

    .line 307
    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 308
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-wide p3

    .line 310
    :cond_0
    :try_start_0
    invoke-interface {p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeDouble(I)D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 311
    :catch_0
    move-exception v1

    .line 312
    .local v1, "ignored":Ljava/lang/Exception;
    return-wide p3
.end method

.method public abstract blacklist getAttributeFloat(I)F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public blacklist getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 175
    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeFloat(I)F

    move-result v0

    return v0
.end method

.method public blacklist getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # F

    .line 292
    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 293
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return p3

    .line 295
    :cond_0
    :try_start_0
    invoke-interface {p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeFloat(I)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 296
    :catch_0
    move-exception v1

    .line 297
    .local v1, "ignored":Ljava/lang/Exception;
    return p3
.end method

.method public blacklist getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 36
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 37
    .local v0, "namespaceNull":Z
    :goto_0
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getAttributeCount()I

    move-result v1

    .line 38
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 39
    if-nez v0, :cond_1

    invoke-interface {p0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 40
    :cond_1
    invoke-interface {p0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 41
    return v2

    .line 38
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 44
    .end local v2    # "i":I
    :cond_3
    const/4 v2, -0x1

    return v2
.end method

.method public blacklist getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 53
    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 54
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 57
    return v0

    .line 55
    :cond_0
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public abstract blacklist getAttributeInt(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public blacklist getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 139
    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v0

    return v0
.end method

.method public blacklist getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 232
    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 233
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return p3

    .line 235
    :cond_0
    :try_start_0
    invoke-interface {p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 236
    :catch_0
    move-exception v1

    .line 237
    .local v1, "ignored":Ljava/lang/Exception;
    return p3
.end method

.method public abstract blacklist getAttributeIntHex(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public blacklist getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 148
    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeIntHex(I)I

    move-result v0

    return v0
.end method

.method public blacklist getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 247
    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 248
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return p3

    .line 250
    :cond_0
    :try_start_0
    invoke-interface {p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeIntHex(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 251
    :catch_0
    move-exception v1

    .line 252
    .local v1, "ignored":Ljava/lang/Exception;
    return p3
.end method

.method public abstract blacklist getAttributeLong(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public blacklist getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 157
    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .line 262
    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 263
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-wide p3

    .line 265
    :cond_0
    :try_start_0
    invoke-interface {p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeLong(I)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 266
    :catch_0
    move-exception v1

    .line 267
    .local v1, "ignored":Ljava/lang/Exception;
    return-wide p3
.end method

.method public abstract blacklist getAttributeLongHex(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public blacklist getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 166
    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeLongHex(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .line 277
    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 278
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-wide p3

    .line 280
    :cond_0
    :try_start_0
    invoke-interface {p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeLongHex(I)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 281
    :catch_0
    move-exception v1

    .line 282
    .local v1, "ignored":Ljava/lang/Exception;
    return-wide p3
.end method
