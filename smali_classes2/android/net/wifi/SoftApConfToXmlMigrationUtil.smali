.class public final Landroid/net/wifi/SoftApConfToXmlMigrationUtil;
.super Ljava/lang/Object;
.source "SoftApConfToXmlMigrationUtil.java"


# static fields
.field private static final blacklist CONFIG_STORE_DATA_VERSION:I = 0x3

.field private static final blacklist LEGACY_AP_CONFIG_FILE:Ljava/lang/String; = "softap.conf"

.field private static final blacklist LEGACY_WIFI_STORE_DIRECTORY_NAME:Ljava/lang/String; = "wifi"

.field private static final blacklist TAG:Ljava/lang/String; = "SoftApConfToXmlMigrationUtil"

.field private static final blacklist WIFICONFIG_AP_BAND_2GHZ:I = 0x0

.field private static final blacklist WIFICONFIG_AP_BAND_5GHZ:I = 0x1

.field private static final blacklist WIFICONFIG_AP_BAND_ANY:I = -0x1

.field private static final blacklist XML_TAG_ALLOWED_CLIENT_LIST:Ljava/lang/String; = "AllowedClientList"

.field private static final blacklist XML_TAG_AP_BAND:Ljava/lang/String; = "ApBand"

.field private static final blacklist XML_TAG_AUTO_SHUTDOWN_ENABLED:Ljava/lang/String; = "AutoShutdownEnabled"

.field private static final blacklist XML_TAG_BLOCKED_CLIENT_LIST:Ljava/lang/String; = "BlockedClientList"

.field private static final blacklist XML_TAG_BSSID:Ljava/lang/String; = "Bssid"

.field private static final blacklist XML_TAG_CHANNEL:Ljava/lang/String; = "Channel"

.field private static final blacklist XML_TAG_CLIENT_CONTROL_BY_USER:Ljava/lang/String; = "ClientControlByUser"

.field public static final blacklist XML_TAG_CLIENT_MACADDRESS:Ljava/lang/String; = "ClientMacAddress"

.field private static final blacklist XML_TAG_DOCUMENT_HEADER:Ljava/lang/String; = "WifiConfigStoreData"

.field private static final blacklist XML_TAG_HIDDEN_SSID:Ljava/lang/String; = "HiddenSSID"

.field private static final blacklist XML_TAG_MAX_NUMBER_OF_CLIENTS:Ljava/lang/String; = "MaxNumberOfClients"

.field private static final blacklist XML_TAG_PASSPHRASE:Ljava/lang/String; = "Passphrase"

.field private static final blacklist XML_TAG_SECTION_HEADER_SOFTAP:Ljava/lang/String; = "SoftAp"

.field private static final blacklist XML_TAG_SECURITY_TYPE:Ljava/lang/String; = "SecurityType"

.field private static final blacklist XML_TAG_SHUTDOWN_TIMEOUT_MILLIS:Ljava/lang/String; = "ShutdownTimeoutMillis"

.field private static final blacklist XML_TAG_SSID:Ljava/lang/String; = "SSID"

.field private static final blacklist XML_TAG_VERSION:Ljava/lang/String; = "Version"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist convert()Ljava/io/InputStream;
    .locals 4

    .line 265
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/net/wifi/SoftApConfToXmlMigrationUtil;->getLegacyWifiSharedDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "softap.conf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 266
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 268
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 271
    nop

    .line 272
    nop

    .line 273
    invoke-static {v1}, Landroid/net/wifi/SoftApConfToXmlMigrationUtil;->convert(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v2

    return-object v2

    .line 269
    :catch_0
    move-exception v2

    .line 270
    .local v2, "e":Ljava/io/FileNotFoundException;
    const/4 v3, 0x0

    return-object v3
.end method

.method public static blacklist convert(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 3
    .param p0, "fis"    # Ljava/io/InputStream;

    .line 250
    invoke-static {p0}, Landroid/net/wifi/SoftApConfToXmlMigrationUtil;->loadFromLegacyFile(Ljava/io/InputStream;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    .line 251
    .local v0, "softApConf":Landroid/net/wifi/SoftApConfiguration;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 253
    :cond_0
    invoke-static {v0}, Landroid/net/wifi/SoftApConfToXmlMigrationUtil;->convertConfToXml(Landroid/net/wifi/SoftApConfiguration;)[B

    move-result-object v2

    .line 254
    .local v2, "xmlBytes":[B
    if-nez v2, :cond_1

    return-object v1

    .line 256
    :cond_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1
.end method

.method private static blacklist convertConfToXml(Landroid/net/wifi/SoftApConfiguration;)[B
    .locals 11
    .param p0, "softApConf"    # Landroid/net/wifi/SoftApConfiguration;

    .line 187
    const-string v0, "AllowedClientList"

    const-string v1, "BlockedClientList"

    const-string v2, "SoftAp"

    const-string v3, "WifiConfigStoreData"

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 188
    .local v5, "out":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 189
    .local v6, "outputStream":Ljava/io/ByteArrayOutputStream;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 192
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 193
    invoke-interface {v5, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 194
    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "Version"

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 195
    invoke-interface {v5, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 198
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SSID"

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 199
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBssid()Landroid/net/MacAddress;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 200
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBssid()Landroid/net/MacAddress;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Bssid"

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 202
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "ApBand"

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 203
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getChannel()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "Channel"

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 204
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "HiddenSSID"

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 205
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "SecurityType"

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 206
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v7

    if-eqz v7, :cond_1

    .line 207
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Passphrase"

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 209
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getMaxNumberOfClients()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "MaxNumberOfClients"

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 211
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->isClientControlByUserEnabled()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "ClientControlByUser"

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 213
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->isAutoShutdownEnabled()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "AutoShutdownEnabled"

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 215
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getShutdownTimeoutMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "ShutdownTimeoutMillis"

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 217
    invoke-interface {v5, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBlockedClientList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "ClientMacAddress"

    if-eqz v8, :cond_2

    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/MacAddress;

    .line 219
    .local v8, "mac":Landroid/net/MacAddress;
    invoke-virtual {v8}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 220
    .end local v8    # "mac":Landroid/net/MacAddress;
    goto :goto_0

    .line 221
    :cond_2
    invoke-interface {v5, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 222
    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 223
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getAllowedClientList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/MacAddress;

    .line 224
    .local v7, "mac":Landroid/net/MacAddress;
    invoke-virtual {v7}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 225
    .end local v7    # "mac":Landroid/net/MacAddress;
    goto :goto_1

    .line 226
    :cond_3
    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 229
    invoke-interface {v5, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 230
    invoke-interface {v5, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 231
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 233
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 234
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "outputStream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SoftApConfToXmlMigrationUtil"

    const-string v2, "Failed to convert softap conf to XML"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    return-object v4
.end method

.method public static blacklist convertWifiConfigBandToSoftApConfigBand(I)I
    .locals 1
    .param p0, "wifiConfigBand"    # I

    .line 95
    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    .line 103
    return v0

    .line 99
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 97
    :pswitch_1
    return v0

    .line 101
    :pswitch_2
    const/4 v0, 0x3

    return v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist getLegacyWifiSharedDirectory()Ljava/io/File;
    .locals 3

    .line 70
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataMiscDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "wifi"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static blacklist loadFromLegacyFile(Ljava/io/InputStream;)Landroid/net/wifi/SoftApConfiguration;
    .locals 11
    .param p0, "fis"    # Ljava/io/InputStream;

    .line 112
    const-string v0, "Error closing hotspot configuration during read"

    const-string v1, "SoftApConfToXmlMigrationUtil"

    const/4 v2, 0x0

    .line 113
    .local v2, "config":Landroid/net/wifi/SoftApConfiguration;
    const/4 v3, 0x0

    .line 115
    .local v3, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v4, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v4}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>()V

    .line 116
    .local v4, "configBuilder":Landroid/net/wifi/SoftApConfiguration$Builder;
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v5

    .line 118
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 119
    .local v5, "version":I
    const/4 v6, 0x1

    if-lt v5, v6, :cond_5

    const/4 v7, 0x3

    if-le v5, v7, :cond_0

    goto :goto_2

    .line 123
    :cond_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 125
    const/4 v8, 0x2

    if-lt v5, v8, :cond_2

    .line 126
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 127
    .local v8, "band":I
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 128
    .local v9, "channel":I
    if-nez v9, :cond_1

    .line 129
    nop

    .line 130
    invoke-static {v8}, Landroid/net/wifi/SoftApConfToXmlMigrationUtil;->convertWifiConfigBandToSoftApConfigBand(I)I

    move-result v10

    .line 129
    invoke-virtual {v4, v10}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_0

    .line 132
    :cond_1
    nop

    .line 133
    invoke-static {v8}, Landroid/net/wifi/SoftApConfToXmlMigrationUtil;->convertWifiConfigBandToSoftApConfigBand(I)I

    move-result v10

    .line 132
    invoke-virtual {v4, v9, v10}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 136
    .end local v8    # "band":I
    .end local v9    # "channel":I
    :cond_2
    :goto_0
    if-lt v5, v7, :cond_3

    .line 137
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/net/wifi/SoftApConfiguration$Builder;->setHiddenSsid(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 139
    :cond_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 140
    .local v7, "authType":I
    const/4 v8, 0x4

    if-ne v7, v8, :cond_4

    .line 141
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v6}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 144
    :cond_4
    invoke-virtual {v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v6

    .line 152
    .end local v4    # "configBuilder":Landroid/net/wifi/SoftApConfiguration$Builder;
    .end local v5    # "version":I
    .end local v7    # "authType":I
    nop

    .line 154
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 157
    :goto_1
    goto :goto_4

    .line 155
    :catch_0
    move-exception v4

    .line 156
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 120
    .local v4, "configBuilder":Landroid/net/wifi/SoftApConfiguration$Builder;
    .restart local v5    # "version":I
    :cond_5
    :goto_2
    :try_start_2
    const-string v6, "Bad version on hotspot configuration file"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    const/4 v6, 0x0

    .line 152
    nop

    .line 154
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 157
    goto :goto_3

    .line 155
    :catch_1
    move-exception v7

    .line 156
    .local v7, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    .end local v7    # "e":Ljava/io/IOException;
    :goto_3
    return-object v6

    .line 152
    .end local v4    # "configBuilder":Landroid/net/wifi/SoftApConfiguration$Builder;
    .end local v5    # "version":I
    :catchall_0
    move-exception v4

    goto :goto_5

    .line 148
    :catch_2
    move-exception v4

    .line 149
    .local v4, "ie":Ljava/lang/IllegalArgumentException;
    :try_start_4
    const-string v5, "Invalid hotspot configuration "

    invoke-static {v1, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 150
    const/4 v2, 0x0

    .line 152
    .end local v4    # "ie":Ljava/lang/IllegalArgumentException;
    if-eqz v3, :cond_6

    .line 154
    :try_start_5
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 145
    :catch_3
    move-exception v4

    .line 146
    .local v4, "e":Ljava/io/IOException;
    :try_start_6
    const-string v5, "Error reading hotspot configuration "

    invoke-static {v1, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 147
    const/4 v2, 0x0

    .line 152
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_6

    .line 154
    :try_start_7
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    .line 161
    :cond_6
    :goto_4
    return-object v2

    .line 152
    :goto_5
    if-eqz v3, :cond_7

    .line 154
    :try_start_8
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 157
    goto :goto_6

    .line 155
    :catch_4
    move-exception v5

    .line 156
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    .end local v5    # "e":Ljava/io/IOException;
    :cond_7
    :goto_6
    throw v4
.end method

.method public static blacklist remove()V
    .locals 3

    .line 281
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/net/wifi/SoftApConfToXmlMigrationUtil;->getLegacyWifiSharedDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "softap.conf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 282
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 283
    return-void
.end method
