.class public Landroid/audio/policy/configuration/V7_0/Routes$Route;
.super Ljava/lang/Object;
.source "Routes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/audio/policy/configuration/V7_0/Routes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Route"
.end annotation


# instance fields
.field private blacklist sink:Ljava/lang/String;

.field private blacklist sources:Ljava/lang/String;

.field private blacklist type:Landroid/audio/policy/configuration/V7_0/MixType;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Routes$Route;
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 55
    new-instance v0, Landroid/audio/policy/configuration/V7_0/Routes$Route;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/Routes$Route;-><init>()V

    .line 56
    .local v0, "instance":Landroid/audio/policy/configuration/V7_0/Routes$Route;
    const/4 v1, 0x0

    .line 57
    .local v1, "raw":Ljava/lang/String;
    const/4 v2, 0x0

    const-string/jumbo v3, "type"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    if-eqz v1, :cond_0

    .line 59
    invoke-static {v1}, Landroid/audio/policy/configuration/V7_0/MixType;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/MixType;

    move-result-object v3

    .line 60
    .local v3, "value":Landroid/audio/policy/configuration/V7_0/MixType;
    invoke-virtual {v0, v3}, Landroid/audio/policy/configuration/V7_0/Routes$Route;->setType(Landroid/audio/policy/configuration/V7_0/MixType;)V

    .line 62
    .end local v3    # "value":Landroid/audio/policy/configuration/V7_0/MixType;
    :cond_0
    const-string/jumbo v3, "sink"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    if-eqz v1, :cond_1

    .line 64
    move-object v3, v1

    .line 65
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/audio/policy/configuration/V7_0/Routes$Route;->setSink(Ljava/lang/String;)V

    .line 67
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "sources"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_2

    .line 69
    move-object v2, v1

    .line 70
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Routes$Route;->setSources(Ljava/lang/String;)V

    .line 72
    .end local v2    # "value":Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 73
    return-object v0
.end method


# virtual methods
.method public blacklist getSink()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Routes$Route;->sink:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSources()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Routes$Route;->sources:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()Landroid/audio/policy/configuration/V7_0/MixType;
    .locals 1

    .line 10
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Routes$Route;->type:Landroid/audio/policy/configuration/V7_0/MixType;

    return-object v0
.end method

.method blacklist hasSink()Z
    .locals 1

    .line 29
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Routes$Route;->sink:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x0

    return v0

    .line 32
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasSources()Z
    .locals 1

    .line 44
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Routes$Route;->sources:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    return v0

    .line 47
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasType()Z
    .locals 1

    .line 14
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Routes$Route;->type:Landroid/audio/policy/configuration/V7_0/MixType;

    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x0

    return v0

    .line 17
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setSink(Ljava/lang/String;)V
    .locals 0
    .param p1, "sink"    # Ljava/lang/String;

    .line 36
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Routes$Route;->sink:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public blacklist setSources(Ljava/lang/String;)V
    .locals 0
    .param p1, "sources"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Routes$Route;->sources:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public blacklist setType(Landroid/audio/policy/configuration/V7_0/MixType;)V
    .locals 0
    .param p1, "type"    # Landroid/audio/policy/configuration/V7_0/MixType;

    .line 21
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Routes$Route;->type:Landroid/audio/policy/configuration/V7_0/MixType;

    .line 22
    return-void
.end method
