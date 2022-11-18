.class public Lcom/android/apex/ApexInfo;
.super Ljava/lang/Object;
.source "ApexInfo.java"


# instance fields
.field private blacklist isActive:Ljava/lang/Boolean;

.field private blacklist isFactory:Ljava/lang/Boolean;

.field private blacklist lastUpdateMillis:Ljava/lang/Long;

.field private blacklist moduleName:Ljava/lang/String;

.field private blacklist modulePath:Ljava/lang/String;

.field private blacklist preinstalledModulePath:Ljava/lang/String;

.field private blacklist provideSharedApexLibs:Ljava/lang/Boolean;

.field private blacklist versionCode:Ljava/lang/Long;

.field private blacklist versionName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/apex/ApexInfo;
    .locals 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 165
    new-instance v0, Lcom/android/apex/ApexInfo;

    invoke-direct {v0}, Lcom/android/apex/ApexInfo;-><init>()V

    .line 166
    .local v0, "instance":Lcom/android/apex/ApexInfo;
    const/4 v1, 0x0

    .line 167
    .local v1, "raw":Ljava/lang/String;
    const/4 v2, 0x0

    const-string/jumbo v3, "moduleName"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    if-eqz v1, :cond_0

    .line 169
    move-object v3, v1

    .line 170
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/android/apex/ApexInfo;->setModuleName(Ljava/lang/String;)V

    .line 172
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "modulePath"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    if-eqz v1, :cond_1

    .line 174
    move-object v3, v1

    .line 175
    .restart local v3    # "value":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/android/apex/ApexInfo;->setModulePath(Ljava/lang/String;)V

    .line 177
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "preinstalledModulePath"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    if-eqz v1, :cond_2

    .line 179
    move-object v3, v1

    .line 180
    .restart local v3    # "value":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/android/apex/ApexInfo;->setPreinstalledModulePath(Ljava/lang/String;)V

    .line 182
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "versionCode"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    if-eqz v1, :cond_3

    .line 184
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 185
    .local v3, "value":J
    invoke-virtual {v0, v3, v4}, Lcom/android/apex/ApexInfo;->setVersionCode(J)V

    .line 187
    .end local v3    # "value":J
    :cond_3
    const-string/jumbo v3, "versionName"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    if-eqz v1, :cond_4

    .line 189
    move-object v3, v1

    .line 190
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/android/apex/ApexInfo;->setVersionName(Ljava/lang/String;)V

    .line 192
    .end local v3    # "value":Ljava/lang/String;
    :cond_4
    const-string v3, "isFactory"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    if-eqz v1, :cond_5

    .line 194
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 195
    .local v3, "value":Z
    invoke-virtual {v0, v3}, Lcom/android/apex/ApexInfo;->setIsFactory(Z)V

    .line 197
    .end local v3    # "value":Z
    :cond_5
    const-string v3, "isActive"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    if-eqz v1, :cond_6

    .line 199
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 200
    .restart local v3    # "value":Z
    invoke-virtual {v0, v3}, Lcom/android/apex/ApexInfo;->setIsActive(Z)V

    .line 202
    .end local v3    # "value":Z
    :cond_6
    const-string/jumbo v3, "lastUpdateMillis"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    if-eqz v1, :cond_7

    .line 204
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 205
    .local v3, "value":J
    invoke-virtual {v0, v3, v4}, Lcom/android/apex/ApexInfo;->setLastUpdateMillis(J)V

    .line 207
    .end local v3    # "value":J
    :cond_7
    const-string/jumbo v3, "provideSharedApexLibs"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    if-eqz v1, :cond_8

    .line 209
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 210
    .local v2, "value":Z
    invoke-virtual {v0, v2}, Lcom/android/apex/ApexInfo;->setProvideSharedApexLibs(Z)V

    .line 212
    .end local v2    # "value":Z
    :cond_8
    invoke-static {p0}, Lcom/android/apex/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 213
    return-object v0
.end method


# virtual methods
.method public blacklist getIsActive()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->isActive:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x0

    return v0

    .line 114
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getIsFactory()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->isFactory:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x0

    return v0

    .line 96
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getLastUpdateMillis()J
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->lastUpdateMillis:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 130
    const-wide/16 v0, 0x0

    return-wide v0

    .line 132
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getModuleName()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->moduleName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getModulePath()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->modulePath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPreinstalledModulePath()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->preinstalledModulePath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getProvideSharedApexLibs()Z
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->provideSharedApexLibs:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x0

    return v0

    .line 150
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getVersionCode()J
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->versionCode:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 61
    const-wide/16 v0, 0x0

    return-wide v0

    .line 63
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getVersionName()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method blacklist hasIsActive()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->isActive:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    return v0

    .line 121
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasIsFactory()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->isFactory:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x0

    return v0

    .line 103
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasLastUpdateMillis()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->lastUpdateMillis:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x0

    return v0

    .line 139
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasModuleName()Z
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->moduleName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x0

    return v0

    .line 22
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasModulePath()Z
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->modulePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    return v0

    .line 37
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasPreinstalledModulePath()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->preinstalledModulePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x0

    return v0

    .line 52
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasProvideSharedApexLibs()Z
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->provideSharedApexLibs:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x0

    return v0

    .line 157
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasVersionCode()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->versionCode:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 68
    const/4 v0, 0x0

    return v0

    .line 70
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasVersionName()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/apex/ApexInfo;->versionName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    return v0

    .line 85
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setIsActive(Z)V
    .locals 1
    .param p1, "isActive"    # Z

    .line 125
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apex/ApexInfo;->isActive:Ljava/lang/Boolean;

    .line 126
    return-void
.end method

.method public blacklist setIsFactory(Z)V
    .locals 1
    .param p1, "isFactory"    # Z

    .line 107
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apex/ApexInfo;->isFactory:Ljava/lang/Boolean;

    .line 108
    return-void
.end method

.method public blacklist setLastUpdateMillis(J)V
    .locals 1
    .param p1, "lastUpdateMillis"    # J

    .line 143
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apex/ApexInfo;->lastUpdateMillis:Ljava/lang/Long;

    .line 144
    return-void
.end method

.method public blacklist setModuleName(Ljava/lang/String;)V
    .locals 0
    .param p1, "moduleName"    # Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/android/apex/ApexInfo;->moduleName:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public blacklist setModulePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "modulePath"    # Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/android/apex/ApexInfo;->modulePath:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public blacklist setPreinstalledModulePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "preinstalledModulePath"    # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/android/apex/ApexInfo;->preinstalledModulePath:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public blacklist setProvideSharedApexLibs(Z)V
    .locals 1
    .param p1, "provideSharedApexLibs"    # Z

    .line 161
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apex/ApexInfo;->provideSharedApexLibs:Ljava/lang/Boolean;

    .line 162
    return-void
.end method

.method public blacklist setVersionCode(J)V
    .locals 1
    .param p1, "versionCode"    # J

    .line 74
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apex/ApexInfo;->versionCode:Ljava/lang/Long;

    .line 75
    return-void
.end method

.method public blacklist setVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionName"    # Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/android/apex/ApexInfo;->versionName:Ljava/lang/String;

    .line 90
    return-void
.end method

.method blacklist write(Lcom/android/apex/XmlWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "out"    # Lcom/android/apex/XmlWriter;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->hasModuleName()Z

    move-result v0

    const-string v1, "\""

    if-eqz v0, :cond_0

    .line 219
    const-string v0, " moduleName=\""

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->getModuleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p1, v1}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->hasModulePath()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    const-string v0, " modulePath=\""

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->getModulePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p1, v1}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 228
    :cond_1
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->hasPreinstalledModulePath()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    const-string v0, " preinstalledModulePath=\""

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->getPreinstalledModulePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p1, v1}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 233
    :cond_2
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->hasVersionCode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    const-string v0, " versionCode=\""

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->getVersionCode()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p1, v1}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 238
    :cond_3
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->hasVersionName()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 239
    const-string v0, " versionName=\""

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p1, v1}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 243
    :cond_4
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->hasIsFactory()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 244
    const-string v0, " isFactory=\""

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->getIsFactory()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p1, v1}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 248
    :cond_5
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->hasIsActive()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 249
    const-string v0, " isActive=\""

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->getIsActive()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p1, v1}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 253
    :cond_6
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->hasLastUpdateMillis()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 254
    const-string v0, " lastUpdateMillis=\""

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->getLastUpdateMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p1, v1}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 258
    :cond_7
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->hasProvideSharedApexLibs()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 259
    const-string v0, " provideSharedApexLibs=\""

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->getProvideSharedApexLibs()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p1, v1}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 263
    :cond_8
    const-string v0, ">\n"

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "</"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 265
    return-void
.end method
