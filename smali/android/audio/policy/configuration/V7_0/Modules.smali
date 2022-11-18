.class public Landroid/audio/policy/configuration/V7_0/Modules;
.super Ljava/lang/Object;
.source "Modules.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/audio/policy/configuration/V7_0/Modules$Module;
    }
.end annotation


# instance fields
.field private blacklist module:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/Modules$Module;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Modules;
    .locals 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 174
    new-instance v0, Landroid/audio/policy/configuration/V7_0/Modules;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/Modules;-><init>()V

    .line 175
    .local v0, "instance":Landroid/audio/policy/configuration/V7_0/Modules;
    const/4 v1, 0x0

    .line 176
    .local v1, "raw":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 178
    .local v2, "outerDepth":I
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_2

    if-eq v4, v6, :cond_2

    .line 180
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "module"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 183
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/Modules$Module;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Modules$Module;

    move-result-object v5

    .line 184
    .local v5, "value":Landroid/audio/policy/configuration/V7_0/Modules$Module;
    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/Modules;->getModule()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    .end local v5    # "value":Landroid/audio/policy/configuration/V7_0/Modules$Module;
    goto :goto_1

    .line 186
    :cond_1
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 188
    .end local v3    # "tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 189
    :cond_2
    if-ne v4, v6, :cond_3

    .line 192
    return-object v0

    .line 190
    :cond_3
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "Modules is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public blacklist getModule()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/Modules$Module;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Modules;->module:Ljava/util/List;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Modules;->module:Ljava/util/List;

    .line 170
    :cond_0
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Modules;->module:Ljava/util/List;

    return-object v0
.end method
