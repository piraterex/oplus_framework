.class public Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;
.super Ljava/lang/Object;
.source "GlobalConfiguration.java"


# instance fields
.field private blacklist call_screen_mode_supported:Ljava/lang/Boolean;

.field private blacklist engine_library:Landroid/audio/policy/configuration/V7_0/EngineSuffix;

.field private blacklist speaker_drc_enabled:Ljava/lang/Boolean;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 60
    new-instance v0, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;-><init>()V

    .line 61
    .local v0, "instance":Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;
    const/4 v1, 0x0

    .line 62
    .local v1, "raw":Ljava/lang/String;
    const/4 v2, 0x0

    const-string/jumbo v3, "speaker_drc_enabled"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    if-eqz v1, :cond_0

    .line 64
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 65
    .local v3, "value":Z
    invoke-virtual {v0, v3}, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->setSpeaker_drc_enabled(Z)V

    .line 67
    .end local v3    # "value":Z
    :cond_0
    const-string v3, "call_screen_mode_supported"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_1

    .line 69
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 70
    .restart local v3    # "value":Z
    invoke-virtual {v0, v3}, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->setCall_screen_mode_supported(Z)V

    .line 72
    .end local v3    # "value":Z
    :cond_1
    const-string v3, "engine_library"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    if-eqz v1, :cond_2

    .line 74
    invoke-static {v1}, Landroid/audio/policy/configuration/V7_0/EngineSuffix;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/EngineSuffix;

    move-result-object v2

    .line 75
    .local v2, "value":Landroid/audio/policy/configuration/V7_0/EngineSuffix;
    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->setEngine_library(Landroid/audio/policy/configuration/V7_0/EngineSuffix;)V

    .line 77
    .end local v2    # "value":Landroid/audio/policy/configuration/V7_0/EngineSuffix;
    :cond_2
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 78
    return-object v0
.end method


# virtual methods
.method public blacklist getCall_screen_mode_supported()Z
    .locals 1

    .line 27
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->call_screen_mode_supported:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 28
    const/4 v0, 0x0

    return v0

    .line 30
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getEngine_library()Landroid/audio/policy/configuration/V7_0/EngineSuffix;
    .locals 1

    .line 45
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->engine_library:Landroid/audio/policy/configuration/V7_0/EngineSuffix;

    return-object v0
.end method

.method public blacklist getSpeaker_drc_enabled()Z
    .locals 1

    .line 9
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->speaker_drc_enabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 10
    const/4 v0, 0x0

    return v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method blacklist hasCall_screen_mode_supported()Z
    .locals 1

    .line 34
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->call_screen_mode_supported:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    return v0

    .line 37
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasEngine_library()Z
    .locals 1

    .line 49
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->engine_library:Landroid/audio/policy/configuration/V7_0/EngineSuffix;

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x0

    return v0

    .line 52
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasSpeaker_drc_enabled()Z
    .locals 1

    .line 16
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->speaker_drc_enabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x0

    return v0

    .line 19
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setCall_screen_mode_supported(Z)V
    .locals 1
    .param p1, "call_screen_mode_supported"    # Z

    .line 41
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->call_screen_mode_supported:Ljava/lang/Boolean;

    .line 42
    return-void
.end method

.method public blacklist setEngine_library(Landroid/audio/policy/configuration/V7_0/EngineSuffix;)V
    .locals 0
    .param p1, "engine_library"    # Landroid/audio/policy/configuration/V7_0/EngineSuffix;

    .line 56
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->engine_library:Landroid/audio/policy/configuration/V7_0/EngineSuffix;

    .line 57
    return-void
.end method

.method public blacklist setSpeaker_drc_enabled(Z)V
    .locals 1
    .param p1, "speaker_drc_enabled"    # Z

    .line 23
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->speaker_drc_enabled:Ljava/lang/Boolean;

    .line 24
    return-void
.end method
