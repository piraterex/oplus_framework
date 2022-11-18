.class public Lcom/android/apex/XmlParser;
.super Ljava/lang/Object;
.source "XmlParser.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist readApexInfo(Ljava/io/InputStream;)Lcom/android/apex/ApexInfo;
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 19
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 20
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 21
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 22
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 23
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 24
    .local v2, "tagName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 25
    .local v3, "raw":Ljava/lang/String;
    const-string v4, "apex-info"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 26
    invoke-static {v0}, Lcom/android/apex/ApexInfo;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/apex/ApexInfo;

    move-result-object v1

    .line 27
    .local v1, "value":Lcom/android/apex/ApexInfo;
    return-object v1

    .line 29
    .end local v1    # "value":Lcom/android/apex/ApexInfo;
    :cond_0
    return-object v1
.end method

.method public static blacklist readApexInfoList(Ljava/io/InputStream;)Lcom/android/apex/ApexInfoList;
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 5
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 6
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 7
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 8
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 9
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 10
    .local v2, "tagName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 11
    .local v3, "raw":Ljava/lang/String;
    const-string v4, "apex-info-list"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 12
    invoke-static {v0}, Lcom/android/apex/ApexInfoList;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/apex/ApexInfoList;

    move-result-object v1

    .line 13
    .local v1, "value":Lcom/android/apex/ApexInfoList;
    return-object v1

    .line 15
    .end local v1    # "value":Lcom/android/apex/ApexInfoList;
    :cond_0
    return-object v1
.end method

.method public static blacklist readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    const-string v0, ""

    .line 34
    .local v0, "result":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 35
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 38
    :cond_0
    return-object v0
.end method

.method public static blacklist skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 45
    const/4 v0, 0x1

    .line 46
    .local v0, "depth":I
    :goto_0
    if-eqz v0, :cond_0

    .line 47
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 49
    :pswitch_0
    add-int/lit8 v0, v0, -0x1

    .line 50
    goto :goto_1

    .line 52
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 53
    :goto_1
    goto :goto_0

    .line 56
    :cond_0
    return-void

    .line 43
    .end local v0    # "depth":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
