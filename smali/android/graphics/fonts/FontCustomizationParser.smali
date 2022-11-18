.class public Landroid/graphics/fonts/FontCustomizationParser;
.super Ljava/lang/Object;
.source "FontCustomizationParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/fonts/FontCustomizationParser$Result;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Landroid/graphics/fonts/FontCustomizationParser$Result;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "fontDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)",
            "Landroid/graphics/fonts/FontCustomizationParser$Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    .local p2, "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 83
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 84
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 85
    invoke-static {v0, p1, p2}, Landroid/graphics/fonts/FontCustomizationParser;->readFamilies(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;)Landroid/graphics/fonts/FontCustomizationParser$Result;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist readFamilies(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;)Landroid/graphics/fonts/FontCustomizationParser$Result;
    .locals 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "fontDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)",
            "Landroid/graphics/fonts/FontCustomizationParser$Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    .local p2, "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v0, "families":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$FontFamily;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v1, "aliases":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Alias;>;"
    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "fonts-modification"

    invoke-interface {p0, v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 112
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    .line 113
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v2, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "tag":Ljava/lang/String;
    const-string v4, "family"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 116
    invoke-static {p0, p1, v0, p2}, Landroid/graphics/fonts/FontCustomizationParser;->readFamily(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    goto :goto_1

    .line 117
    :cond_1
    const-string v4, "alias"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 118
    invoke-static {p0}, Landroid/graphics/FontListParser;->readAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/text/FontConfig$Alias;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 120
    :cond_2
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 122
    .end local v3    # "tag":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 123
    :cond_3
    new-instance v2, Landroid/graphics/fonts/FontCustomizationParser$Result;

    invoke-static {v0}, Landroid/graphics/fonts/FontCustomizationParser;->validateAndTransformToMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/fonts/FontCustomizationParser$Result;-><init>(Ljava/util/Map;Ljava/util/List;)V

    return-object v2
.end method

.method private static blacklist readFamily(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "fontDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$FontFamily;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    .local p2, "out":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$FontFamily;>;"
    .local p3, "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    const/4 v0, 0x0

    const-string v1, "customizationType"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "customizationType":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 136
    const-string/jumbo v1, "new-named-family"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    const/4 v1, 0x0

    invoke-static {p0, p1, p3, v1}, Landroid/graphics/FontListParser;->readFamily(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$FontFamily;

    move-result-object v1

    .line 139
    .local v1, "fontFamily":Landroid/text/FontConfig$FontFamily;
    if-eqz v1, :cond_0

    .line 140
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    .end local v1    # "fontFamily":Landroid/text/FontConfig$FontFamily;
    :cond_0
    nop

    .line 145
    return-void

    .line 143
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown customizationType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "customizationType must be specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist validateAndTransformToMap(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$FontFamily;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/text/FontConfig$FontFamily;",
            ">;"
        }
    .end annotation

    .line 89
    .local p0, "families":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$FontFamily;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v0, "namedFamily":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/text/FontConfig$FontFamily;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 91
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/FontConfig$FontFamily;

    .line 92
    .local v2, "family":Landroid/text/FontConfig$FontFamily;
    invoke-virtual {v2}, Landroid/text/FontConfig$FontFamily;->getName()Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 96
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 90
    .end local v2    # "family":Landroid/text/FontConfig$FontFamily;
    .end local v3    # "name":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .restart local v2    # "family":Landroid/text/FontConfig$FontFamily;
    .restart local v3    # "name":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "new-named-family requires unique name attribute"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 94
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "new-named-family requires name attribute"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 101
    .end local v1    # "i":I
    .end local v2    # "family":Landroid/text/FontConfig$FontFamily;
    .end local v3    # "name":Ljava/lang/String;
    :cond_2
    return-object v0
.end method
