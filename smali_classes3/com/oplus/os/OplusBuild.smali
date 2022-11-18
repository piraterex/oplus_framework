.class public Lcom/oplus/os/OplusBuild;
.super Ljava/lang/Object;
.source "OplusBuild.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/os/OplusBuild$OsdkVersionCodes;,
        Lcom/oplus/os/OplusBuild$VERSION;
    }
.end annotation


# static fields
.field public static final whitelist MARKET:Ljava/lang/String;

.field public static final whitelist OplusOS_11_0:I = 0x13

.field public static final whitelist OplusOS_11_1:I = 0x14

.field public static final whitelist OplusOS_11_2:I = 0x15

.field public static final whitelist OplusOS_11_3:I = 0x16

.field public static final whitelist OplusOS_12_0:I = 0x17

.field public static final whitelist OplusOS_12_1:I = 0x18

.field public static final whitelist OplusOS_12_2:I = 0x19

.field public static final whitelist OplusOS_13_0:I = 0x1a

.field public static final whitelist OplusOS_13_1:I = 0x1b

.field public static final whitelist OplusOS_1_0:I = 0x1

.field public static final whitelist OplusOS_1_2:I = 0x2

.field public static final whitelist OplusOS_1_4:I = 0x3

.field public static final whitelist OplusOS_2_0:I = 0x4

.field public static final whitelist OplusOS_2_1:I = 0x5

.field public static final whitelist OplusOS_3_0:I = 0x6

.field public static final whitelist OplusOS_3_1:I = 0x7

.field public static final whitelist OplusOS_3_2:I = 0x8

.field public static final whitelist OplusOS_5_0:I = 0x9

.field public static final whitelist OplusOS_5_1:I = 0xa

.field public static final whitelist OplusOS_5_2:I = 0xb

.field public static final whitelist OplusOS_6_0:I = 0xc

.field public static final whitelist OplusOS_6_1:I = 0xd

.field public static final whitelist OplusOS_6_2:I = 0xe

.field public static final whitelist OplusOS_6_7:I = 0xf

.field public static final whitelist OplusOS_7_0:I = 0x10

.field public static final whitelist OplusOS_7_1:I = 0x11

.field public static final whitelist OplusOS_7_2:I = 0x12

.field private static final blacklist SECURE_SETTINGS_BLUETOOTH_NAME:Ljava/lang/String; = "bluetooth_name"

.field public static final whitelist UNKNOWN:I

.field private static final blacklist VERSIONS:[Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetVersionProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/oplus/os/OplusBuild;->getVersionProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 29

    .line 177
    const-string/jumbo v0, "ro.vendor.oplus.market.name"

    invoke-static {v0}, Lcom/oplus/os/OplusBuild;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/os/OplusBuild;->MARKET:Ljava/lang/String;

    .line 179
    const-string v1, "V1.0"

    const-string v2, "V1.2"

    const-string v3, "V1.4"

    const-string v4, "V2.0"

    const-string v5, "V2.1"

    const-string v6, "V3.0"

    const-string v7, "V3.1"

    const-string v8, "V3.2"

    const-string v9, "V5.0"

    const-string v10, "V5.1"

    const-string v11, "V5.2"

    const-string v12, "V6.0"

    const-string v13, "V6.1"

    const-string v14, "V6.2"

    const-string v15, "V6.7"

    const-string v16, "V7"

    const-string v17, "V7.1"

    const-string v18, "V7.2"

    const-string v19, "V11"

    const-string v20, "V11.1"

    const-string v21, "V11.2"

    const-string v22, "V11.3"

    const-string v23, "V12"

    const-string v24, "V12.1"

    const-string v25, "V12.2"

    const-string v26, "V13"

    const-string v27, "V13.1"

    const/16 v28, 0x0

    filled-new-array/range {v1 .. v28}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/os/OplusBuild;->VERSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getDeviceName()Ljava/lang/String;
    .locals 1

    .line 232
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist getDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    return-object v0

    .line 240
    :cond_0
    const-string/jumbo v1, "ro.vendor.oplus.market.name"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 242
    invoke-static {p0, v0}, Lcom/oplus/os/OplusBuild;->putDeviceName(Landroid/content/Context;Ljava/lang/String;)V

    .line 243
    return-object v0

    .line 245
    :cond_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v1
.end method

.method public static whitelist getOplusOSVERSION()I
    .locals 5

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "V"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/oplus/os/OplusBuild$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "osVersion":Ljava/lang/String;
    sget-object v1, Lcom/oplus/os/OplusBuild;->VERSIONS:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 219
    sget-object v2, Lcom/oplus/os/OplusBuild$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/oplus/os/OplusBuild$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v3, Lcom/oplus/os/OplusBuild;->VERSIONS:[Ljava/lang/String;

    aget-object v4, v3, v1

    .line 220
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, v3, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 221
    :cond_0
    add-int/lit8 v2, v1, 0x1

    return v2

    .line 218
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 224
    .end local v1    # "i":I
    :cond_2
    const/16 v1, 0x18

    return v1
.end method

.method private static blacklist getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "property"    # Ljava/lang/String;

    .line 278
    const-string/jumbo v0, "unknown"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getVersionProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "property"    # Ljava/lang/String;

    .line 282
    sget-object v0, Landroid/os/OplusPropertyList;->VERSION_CONFIDENTIAL:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/OplusPropertyList;->BUILD_VERSION_OPLUSROM_CONFIDENTIAL:Ljava/lang/String;

    .line 283
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    sget-object v0, Landroid/os/OplusPropertyList;->BUILD_VERSION_OPLUSROM_CONFIDENTIAL:Ljava/lang/String;

    return-object v0

    .line 285
    :cond_0
    sget-object v0, Landroid/os/OplusPropertyList;->VERSION_CONFIDENTIAL:Ljava/lang/String;

    const-string v3, "false"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/OplusPropertyList;->BUILD_VERSION_OPLUSROM_CONFIDENTIAL:Ljava/lang/String;

    .line 286
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/OplusPropertyList;->VERSION_UPGRADE_DECRYPT_CONFIG:Ljava/lang/String;

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    sget-object v0, Landroid/os/OplusPropertyList;->BUILD_VERSION_OPLUSROM_CONFIDENTIAL:Ljava/lang/String;

    return-object v0

    .line 290
    :cond_1
    const-string/jumbo v0, "unknown"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist putDeviceName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceName"    # Ljava/lang/String;

    .line 250
    if-eqz p1, :cond_0

    .line 251
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 253
    :cond_0
    return-void
.end method

.method public static whitelist setDeviceName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceName"    # Ljava/lang/String;

    .line 256
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    invoke-static {p0, p1}, Lcom/oplus/os/OplusBuild;->putDeviceName(Landroid/content/Context;Ljava/lang/String;)V

    .line 258
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 259
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    const-string/jumbo v1, "wifip2p"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 261
    .local v1, "wifiP2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    if-eqz v1, :cond_0

    .line 262
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    .line 263
    .local v2, "channel":Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    if-eqz v2, :cond_0

    .line 264
    invoke-virtual {v1, v2, p1, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    nop

    .line 270
    .end local v1    # "wifiP2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    .end local v2    # "channel":Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 271
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 272
    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    .line 275
    .end local v0    # "wifiManager":Landroid/net/wifi/WifiManager;
    .end local v1    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_1
    return-void
.end method

.method public static whitelist setDeviceName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 228
    const/4 v0, 0x1

    return v0
.end method
