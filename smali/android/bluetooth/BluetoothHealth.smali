.class public final Landroid/bluetooth/BluetoothHealth;
.super Ljava/lang/Object;
.source "BluetoothHealth.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist APP_CONFIG_REGISTRATION_FAILURE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist APP_CONFIG_REGISTRATION_SUCCESS:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist APP_CONFIG_UNREGISTRATION_FAILURE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist APP_CONFIG_UNREGISTRATION_SUCCESS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CHANNEL_TYPE_RELIABLE:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CHANNEL_TYPE_STREAMING:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SINK_ROLE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SOURCE_ROLE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STATE_CHANNEL_CONNECTED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STATE_CHANNEL_CONNECTING:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STATE_CHANNEL_DISCONNECTED:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STATE_CHANNEL_DISCONNECTING:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "BluetoothHealth"


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist connectChannelToSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 185
    const-string v0, "BluetoothHealth"

    const-string v1, "connectChannelToSource(): BluetoothHealth is deprecated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .param p3, "channelId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 212
    const-string v0, "BluetoothHealth"

    const-string v1, "disconnectChannel(): BluetoothHealth is deprecated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 283
    const-string v0, "BluetoothHealth"

    const-string v1, "getConnectedDevices(): BluetoothHealth is deprecated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 261
    const-string v0, "BluetoothHealth"

    const-string v1, "getConnectionState(): BluetoothHealth is deprecated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 2
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 309
    const-string v0, "BluetoothHealth"

    const-string v1, "getDevicesMatchingConnectionStates(): BluetoothHealth is deprecated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public whitelist getMainChannelFd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 239
    const-string v0, "BluetoothHealth"

    const-string v1, "getMainChannelFd(): BluetoothHealth is deprecated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist registerSinkAppConfiguration(Ljava/lang/String;ILandroid/bluetooth/BluetoothHealthCallback;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dataType"    # I
    .param p3, "callback"    # Landroid/bluetooth/BluetoothHealthCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 137
    const-string v0, "BluetoothHealth"

    const-string/jumbo v1, "registerSinkAppConfiguration(): BluetoothHealth is deprecated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    .locals 2
    .param p1, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    const-string v0, "BluetoothHealth"

    const-string/jumbo v1, "unregisterAppConfiguration(): BluetoothHealth is deprecated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v0, 0x0

    return v0
.end method
