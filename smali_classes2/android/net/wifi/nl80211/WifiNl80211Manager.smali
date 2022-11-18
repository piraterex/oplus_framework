.class public Landroid/net/wifi/nl80211/WifiNl80211Manager;
.super Ljava/lang/Object;
.source "WifiNl80211Manager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/WifiNl80211Manager$OemSecurityType;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameError;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$TxPacketCounters;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanRequestCallback;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanResultType;
    }
.end annotation


# static fields
.field private static final blacklist EID_WAPI:I = 0x44

.field private static final blacklist MAX_SSID_LEN:I = 0x20

.field private static final blacklist RSNE_VERSION:S = 0x1s

.field public static final whitelist SCANNING_PARAM_ENABLE_6GHZ_RNR:Ljava/lang/String; = "android.net.wifi.nl80211.SCANNING_PARAM_ENABLE_6GHZ_RNR"

.field public static final whitelist SCAN_TYPE_PNO_SCAN:I = 0x1

.field public static final whitelist SCAN_TYPE_SINGLE_SCAN:I = 0x0

.field public static final whitelist SEND_MGMT_FRAME_ERROR_ALREADY_STARTED:I = 0x5

.field public static final whitelist SEND_MGMT_FRAME_ERROR_MCS_UNSUPPORTED:I = 0x2

.field public static final whitelist SEND_MGMT_FRAME_ERROR_NO_ACK:I = 0x3

.field public static final whitelist SEND_MGMT_FRAME_ERROR_TIMEOUT:I = 0x4

.field public static final whitelist SEND_MGMT_FRAME_ERROR_UNKNOWN:I = 0x1

.field private static final blacklist SEND_MGMT_FRAME_TIMEOUT_MS:I = 0x3e8

.field private static final blacklist TAG:Ljava/lang/String; = "WifiNl80211Manager"

.field private static final blacklist TIMEOUT_ALARM_TAG:Ljava/lang/String; = "WifiNl80211Manager Send Management Frame Timeout"

.field private static final blacklist WAPI_AKM_CERT:I = 0x1721400

.field private static final blacklist WAPI_AKM_PSK:I = 0x2721400

.field private static final blacklist WPA_CIPHER_SMS4:I = 0x1721400


# instance fields
.field private blacklist mAlarmManager:Landroid/app/AlarmManager;

.field private blacklist mApInterfaceListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/nl80211/IApInterfaceEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mApInterfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/nl80211/IApInterface;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mClientInterfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/nl80211/IClientInterface;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDeathEventHandler:Ljava/lang/Runnable;

.field private blacklist mEventHandler:Landroid/os/Handler;

.field private blacklist mPnoScanEventHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/nl80211/IPnoScanEvent;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mScanEventHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/nl80211/IScanEvent;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSendMgmtFrameInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mVerboseLoggingEnabled:Z

.field private blacklist mWificond:Landroid/net/wifi/nl80211/IWificond;

.field private blacklist mWificondEventHandler:Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;

.field private blacklist mWificondScanners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/nl80211/IWifiScannerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAlarmManager(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Landroid/app/AlarmManager;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEventHandler(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mEventHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSendMgmtFrameInProgress(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mSendMgmtFrameInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mVerboseLoggingEnabled:Z

    return p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mVerboseLoggingEnabled:Z

    .line 123
    new-instance v1, Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;

    invoke-direct {v1, p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager;)V

    iput-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificondEventHandler:Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;

    .line 124
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mClientInterfaces:Ljava/util/HashMap;

    .line 125
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mApInterfaces:Ljava/util/HashMap;

    .line 126
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificondScanners:Ljava/util/HashMap;

    .line 127
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mScanEventHandlers:Ljava/util/HashMap;

    .line 128
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mPnoScanEventHandlers:Ljava/util/HashMap;

    .line 129
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mApInterfaceListeners:Ljava/util/HashMap;

    .line 134
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mSendMgmtFrameInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 417
    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 418
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mEventHandler:Landroid/os/Handler;

    .line 419
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/net/wifi/nl80211/IWificond;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wificond"    # Landroid/net/wifi/nl80211/IWificond;

    .line 424
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;-><init>(Landroid/content/Context;)V

    .line 425
    iput-object p2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    .line 426
    return-void
.end method

.method private blacklist clearState()V
    .locals 2

    .line 1458
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mClientInterfaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1459
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificondScanners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1460
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mPnoScanEventHandlers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1461
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mScanEventHandlers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1462
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mApInterfaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1463
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mApInterfaceListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1464
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mSendMgmtFrameInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1465
    return-void
.end method

.method private blacklist getApInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IApInterface;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1274
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mApInterfaces:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/nl80211/IApInterface;

    return-object v0
.end method

.method private blacklist getClientInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IClientInterface;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 885
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mClientInterfaces:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/nl80211/IClientInterface;

    return-object v0
.end method

.method private static blacklist getScanType(I)I
    .locals 3
    .param p0, "scanType"    # I

    .line 1022
    packed-switch p0, :pswitch_data_0

    .line 1030
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid scan type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1028
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 1026
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 1024
    :pswitch_2
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist getScannerImpl(Ljava/lang/String;)Landroid/net/wifi/nl80211/IWifiScannerImpl;
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 953
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificondScanners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/nl80211/IWifiScannerImpl;

    return-object v0
.end method

.method static synthetic blacklist lambda$sendMgmtFrame$2(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;)V
    .locals 1
    .param p0, "callback"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;

    .line 1424
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;->onFailure(I)V

    return-void
.end method

.method static synthetic blacklist lambda$sendMgmtFrame$3(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;)V
    .locals 1
    .param p0, "callback"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;

    .line 1432
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;->onFailure(I)V

    return-void
.end method

.method static synthetic blacklist lambda$sendMgmtFrame$4(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;)V
    .locals 1
    .param p0, "callback"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;

    .line 1438
    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;->onFailure(I)V

    return-void
.end method

.method public static whitelist parseOemSecurityTypeElement(II[B)Landroid/net/wifi/nl80211/WifiNl80211Manager$OemSecurityType;
    .locals 1
    .param p0, "id"    # I
    .param p1, "idExt"    # I
    .param p2, "bytes"    # [B

    .line 1623
    packed-switch p0, :pswitch_data_0

    .line 1628
    const/4 v0, 0x0

    return-object v0

    .line 1625
    :pswitch_0
    invoke-static {p2}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->parseWapiElement([B)Landroid/net/wifi/nl80211/WifiNl80211Manager$OemSecurityType;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist parseWapiCipher(I)I
    .locals 2
    .param p0, "cipher"    # I

    .line 1549
    packed-switch p0, :pswitch_data_0

    .line 1553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown WAPI cipher suite: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1554
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1553
    const-string v1, "IE_Capabilities"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    const/4 v0, 0x0

    return v0

    .line 1551
    :pswitch_0
    const/4 v0, 0x5

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1721400
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist parseWapiElement([B)Landroid/net/wifi/nl80211/WifiNl80211Manager$OemSecurityType;
    .locals 12
    .param p0, "bytes"    # [B

    .line 1485
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 1487
    return-object v1

    .line 1489
    :cond_0
    const/4 v0, 0x0

    .line 1490
    .local v0, "protocol":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1491
    .local v2, "wapiKeyManagement":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1492
    .local v3, "wapiPairwiseCipher":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 1493
    .local v4, "groupCipher":I
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 1496
    .local v5, "buf":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 1497
    .local v6, "version":S
    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    .line 1499
    return-object v1

    .line 1503
    :cond_1
    const/4 v0, 0x4

    .line 1507
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    .line 1509
    .local v7, "akmCount":S
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/16 v9, 0xd

    if-ge v8, v7, :cond_2

    .line 1510
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 1511
    .local v10, "akm":I
    sparse-switch v10, :sswitch_data_0

    goto :goto_1

    .line 1513
    :sswitch_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1514
    goto :goto_1

    .line 1516
    :sswitch_1
    const/16 v9, 0xe

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1517
    nop

    .line 1509
    .end local v10    # "akm":I
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1524
    .end local v8    # "i":I
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1525
    const-string v8, "WifiNl80211Manager"

    const-string v10, "parseWapiElement() set Default AKM to KEY_MGMT_WAPI_PSK"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1530
    :cond_3
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    .line 1532
    .local v8, "cipherCount":S
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v8, :cond_4

    .line 1533
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 1534
    .local v10, "cipher":I
    invoke-static {v10}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->parseWapiCipher(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1532
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1538
    .end local v9    # "i":I
    .end local v10    # "cipher":I
    :cond_4
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 1539
    .local v9, "cipher":I
    invoke-static {v9}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->parseWapiCipher(I)I

    move-result v10

    move v4, v10

    .line 1540
    new-instance v10, Landroid/net/wifi/nl80211/WifiNl80211Manager$OemSecurityType;

    invoke-direct {v10, v0, v2, v3, v4}, Landroid/net/wifi/nl80211/WifiNl80211Manager$OemSecurityType;-><init>(ILjava/util/List;Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    .line 1542
    .end local v6    # "version":S
    .end local v7    # "akmCount":S
    .end local v8    # "cipherCount":S
    .end local v9    # "cipher":I
    :catch_0
    move-exception v6

    .line 1543
    .local v6, "e":Ljava/nio/BufferUnderflowException;
    const-string v7, "IE_Capabilities"

    const-string v8, "Couldn\'t parse WAPI IE, buffer underflow"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    .end local v6    # "e":Ljava/nio/BufferUnderflowException;
    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x1721400 -> :sswitch_1
        0x2721400 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist retrieveWificondAndRegisterForDeath()Z
    .locals 6

    .line 650
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    const/4 v1, 0x1

    const-string v2, "WifiNl80211Manager"

    if-eqz v0, :cond_1

    .line 651
    iget-boolean v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 652
    const-string v0, "Wificond handle already retrieved"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_0
    return v1

    .line 657
    :cond_1
    const-string/jumbo v0, "wifinl80211"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 658
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/wifi/nl80211/IWificond$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IWificond;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    .line 659
    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 660
    const-string v1, "Failed to get reference to wificond"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    return v4

    .line 664
    :cond_2
    :try_start_0
    invoke-interface {v3}, Landroid/net/wifi/nl80211/IWificond;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    new-instance v5, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda6;

    invoke-direct {v5, p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda6;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager;)V

    invoke-interface {v3, v5, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 665
    iget-object v3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    iget-object v5, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificondEventHandler:Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;

    invoke-interface {v3, v5}, Landroid/net/wifi/nl80211/IWificond;->registerWificondEventCallback(Landroid/net/wifi/nl80211/IWificondEventCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    nop

    .line 671
    return v1

    .line 666
    :catch_0
    move-exception v1

    .line 667
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to register death notification for wificond"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    return v4
.end method


# virtual methods
.method public whitelist abortScan(Ljava/lang/String;)V
    .locals 4
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1211
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getScannerImpl(Ljava/lang/String;)Landroid/net/wifi/nl80211/IWifiScannerImpl;

    move-result-object v0

    .line 1212
    .local v0, "scannerImpl":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    const-string v1, "WifiNl80211Manager"

    if-nez v0, :cond_0

    .line 1213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No valid wificond scanner interface handler for iface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    return-void

    .line 1217
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->abortScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1220
    goto :goto_0

    .line 1218
    :catch_0
    move-exception v2

    .line 1219
    .local v2, "e1":Landroid/os/RemoteException;
    const-string v3, "Failed to request abortScan due to remote exception"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    .end local v2    # "e1":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist binderDied()V
    .locals 2

    .line 611
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mEventHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda3;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 621
    return-void
.end method

.method public whitelist enableVerboseLogging(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 628
    iput-boolean p1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mVerboseLoggingEnabled:Z

    .line 629
    return-void
.end method

.method public whitelist getChannelsMhzForBand(I)[I
    .locals 6
    .param p1, "band"    # I

    .line 1238
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    const/4 v1, 0x0

    const-string v2, "WifiNl80211Manager"

    if-nez v0, :cond_0

    .line 1239
    const-string v0, "getChannelsMhzForBand: mWificond binder is null! Did wificond die?"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    new-array v0, v1, [I

    return-object v0

    .line 1242
    :cond_0
    const/4 v3, 0x0

    .line 1244
    .local v3, "result":[I
    sparse-switch p1, :sswitch_data_0

    .line 1261
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto :goto_1

    .line 1258
    :sswitch_0
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWificond;->getAvailable60gChannels()[I

    move-result-object v0

    .line 1259
    .end local v3    # "result":[I
    .local v0, "result":[I
    move-object v3, v0

    goto :goto_0

    .line 1255
    .end local v0    # "result":[I
    .restart local v3    # "result":[I
    :sswitch_1
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWificond;->getAvailable6gChannels()[I

    move-result-object v0

    .line 1256
    .end local v3    # "result":[I
    .restart local v0    # "result":[I
    move-object v3, v0

    goto :goto_0

    .line 1252
    .end local v0    # "result":[I
    .restart local v3    # "result":[I
    :sswitch_2
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWificond;->getAvailableDFSChannels()[I

    move-result-object v0

    .line 1253
    .end local v3    # "result":[I
    .restart local v0    # "result":[I
    move-object v3, v0

    goto :goto_0

    .line 1249
    .end local v0    # "result":[I
    .restart local v3    # "result":[I
    :sswitch_3
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWificond;->getAvailable5gNonDFSChannels()[I

    move-result-object v0

    .line 1250
    .end local v3    # "result":[I
    .restart local v0    # "result":[I
    move-object v3, v0

    goto :goto_0

    .line 1246
    .end local v0    # "result":[I
    .restart local v3    # "result":[I
    :sswitch_4
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWificond;->getAvailable2gChannels()[I

    move-result-object v0

    .line 1247
    .end local v3    # "result":[I
    .restart local v0    # "result":[I
    move-object v3, v0

    .line 1265
    .end local v0    # "result":[I
    .restart local v3    # "result":[I
    :goto_0
    goto :goto_2

    .line 1261
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unsupported band "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "result":[I
    .end local p0    # "this":Landroid/net/wifi/nl80211/WifiNl80211Manager;
    .end local p1    # "band":I
    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1263
    .restart local v3    # "result":[I
    .restart local p0    # "this":Landroid/net/wifi/nl80211/WifiNl80211Manager;
    .restart local p1    # "band":I
    :catch_0
    move-exception v0

    .line 1264
    .local v0, "e1":Landroid/os/RemoteException;
    const-string v4, "Failed to request getChannelsForBand due to remote exception"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    .end local v0    # "e1":Landroid/os/RemoteException;
    :goto_2
    if-nez v3, :cond_1

    .line 1267
    new-array v3, v1, [I

    .line 1269
    :cond_1
    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x4 -> :sswitch_2
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist getDeviceWiphyCapabilities(Ljava/lang/String;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1288
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1289
    const-string v0, "WifiNl80211Manager"

    const-string v2, "getDeviceWiphyCapabilities: mWificond binder is null! Did wificond die?"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    return-object v1

    .line 1294
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/net/wifi/nl80211/IWificond;->getDeviceWiphyCapabilities(Ljava/lang/String;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1295
    :catch_0
    move-exception v0

    .line 1296
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public whitelist getMaxSsidsPerScan(Ljava/lang/String;)I
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1005
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getScannerImpl(Ljava/lang/String;)Landroid/net/wifi/nl80211/IWifiScannerImpl;

    move-result-object v0

    .line 1006
    .local v0, "scannerImpl":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    const/4 v1, 0x0

    const-string v2, "WifiNl80211Manager"

    if-nez v0, :cond_0

    .line 1007
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid wificond scanner interface handler for iface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    return v1

    .line 1011
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->getMaxSsidsPerScan()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1012
    :catch_0
    move-exception v3

    .line 1013
    .local v3, "e1":Landroid/os/RemoteException;
    const-string v4, "Failed to getMaxSsidsPerScan"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    .end local v3    # "e1":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist getScanResults(Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "scanType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/net/wifi/nl80211/NativeScanResult;",
            ">;"
        }
    .end annotation

    .line 974
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getScannerImpl(Ljava/lang/String;)Landroid/net/wifi/nl80211/IWifiScannerImpl;

    move-result-object v0

    .line 975
    .local v0, "scannerImpl":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    const-string v1, "WifiNl80211Manager"

    if-nez v0, :cond_0

    .line 976
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No valid wificond scanner interface handler for iface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 979
    :cond_0
    const/4 v2, 0x0

    .line 981
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/nl80211/NativeScanResult;>;"
    if-nez p2, :cond_1

    .line 982
    :try_start_0
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->getScanResults()[Landroid/net/wifi/nl80211/NativeScanResult;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 984
    :cond_1
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->getPnoScanResults()[Landroid/net/wifi/nl80211/NativeScanResult;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 988
    :goto_0
    goto :goto_1

    .line 986
    :catch_0
    move-exception v3

    .line 987
    .local v3, "e1":Landroid/os/RemoteException;
    const-string v4, "Failed to create ScanDetail ArrayList"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    .end local v3    # "e1":Landroid/os/RemoteException;
    :goto_1
    if-nez v2, :cond_2

    .line 990
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 992
    :cond_2
    iget-boolean v3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mVerboseLoggingEnabled:Z

    if-eqz v3, :cond_3

    .line 993
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " scan results from wificond"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :cond_3
    return-object v2
.end method

.method public whitelist getTxPacketCounters(Ljava/lang/String;)Landroid/net/wifi/nl80211/WifiNl80211Manager$TxPacketCounters;
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 931
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getClientInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IClientInterface;

    move-result-object v0

    .line 932
    .local v0, "iface":Landroid/net/wifi/nl80211/IClientInterface;
    const/4 v1, 0x0

    const-string v2, "WifiNl80211Manager"

    if-nez v0, :cond_0

    .line 933
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid wificond client interface handler for iface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    return-object v1

    .line 939
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IClientInterface;->getPacketCounters()[I

    move-result-object v3

    .line 940
    .local v3, "resultArray":[I
    if-eqz v3, :cond_2

    array-length v4, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    goto :goto_0

    .line 947
    :cond_1
    nop

    .line 948
    new-instance v1, Landroid/net/wifi/nl80211/WifiNl80211Manager$TxPacketCounters;

    const/4 v2, 0x0

    aget v2, v3, v2

    const/4 v4, 0x1

    aget v4, v3, v4

    invoke-direct {v1, v2, v4}, Landroid/net/wifi/nl80211/WifiNl80211Manager$TxPacketCounters;-><init>(II)V

    return-object v1

    .line 941
    :cond_2
    :goto_0
    :try_start_1
    const-string v4, "Invalid signal poll result from wificond"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 942
    return-object v1

    .line 944
    .end local v3    # "resultArray":[I
    :catch_0
    move-exception v3

    .line 945
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Failed to do signal polling due to remote exception"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    return-object v1
.end method

.method public blacklist getWificondEventHandler()Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;
    .locals 1

    .line 431
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificondEventHandler:Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;

    return-object v0
.end method

.method synthetic blacklist lambda$binderDied$0$android-net-wifi-nl80211-WifiNl80211Manager()V
    .locals 2

    .line 612
    const-string v0, "WifiNl80211Manager"

    const-string v1, "Wificond died!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-direct {p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->clearState()V

    .line 616
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    .line 617
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mDeathEventHandler:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 618
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 620
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$retrieveWificondAndRegisterForDeath$1$android-net-wifi-nl80211-WifiNl80211Manager()V
    .locals 0

    .line 664
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->binderDied()V

    return-void
.end method

.method public whitelist notifyCountryCodeChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "newCountryCode"    # Ljava/lang/String;

    .line 1338
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    if-nez v0, :cond_0

    .line 1339
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Wificond service doesn\'t exist!"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1342
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWificond;->notifyCountryCodeChanged()V

    .line 1343
    const-string v0, "WifiNl80211Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive country code change to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1346
    goto :goto_0

    .line 1344
    :catch_0
    move-exception v0

    .line 1345
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1347
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist registerApCallback(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1371
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getApInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IApInterface;

    move-result-object v0

    .line 1372
    .local v0, "iface":Landroid/net/wifi/nl80211/IApInterface;
    const/4 v1, 0x0

    const-string v2, "WifiNl80211Manager"

    if-nez v0, :cond_0

    .line 1373
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid ap interface handler for iface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    return v1

    .line 1377
    :cond_0
    if-eqz p3, :cond_3

    if-nez p2, :cond_1

    goto :goto_0

    .line 1383
    :cond_1
    :try_start_0
    new-instance v3, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;

    invoke-direct {v3, p0, p2, p3}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager;Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;)V

    .line 1385
    .local v3, "wificondCallback":Landroid/net/wifi/nl80211/IApInterfaceEventCallback;
    iget-object v4, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mApInterfaceListeners:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1386
    invoke-interface {v0, v3}, Landroid/net/wifi/nl80211/IApInterface;->registerCallback(Landroid/net/wifi/nl80211/IApInterfaceEventCallback;)Z

    move-result v4

    .line 1387
    .local v4, "success":Z
    if-nez v4, :cond_2

    .line 1388
    const-string v5, "Failed to register ap callback."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1389
    return v1

    .line 1394
    .end local v3    # "wificondCallback":Landroid/net/wifi/nl80211/IApInterfaceEventCallback;
    .end local v4    # "success":Z
    :cond_2
    nop

    .line 1395
    const/4 v1, 0x1

    return v1

    .line 1391
    :catch_0
    move-exception v3

    .line 1392
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in registering AP callback: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    return v1

    .line 1378
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    const-string v3, "registerApCallback called with a null callback"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    return v1
.end method

.method public whitelist registerCountryCodeChangedListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;)Z
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;

    .line 1309
    invoke-direct {p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->retrieveWificondAndRegisterForDeath()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1310
    const/4 v0, 0x0

    return v0

    .line 1312
    :cond_0
    const-string v0, "WifiNl80211Manager"

    const-string v1, "registerCountryCodeEventListener called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificondEventHandler:Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;->registerCountryCodeChangedListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;)V

    .line 1314
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist sendMgmtFrame(Ljava/lang/String;[BILjava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;)V
    .locals 7
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "frame"    # [B
    .param p3, "mcs"    # I
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;

    .line 1417
    const-string v0, "WifiNl80211Manager"

    if-eqz p5, :cond_4

    if-nez p4, :cond_0

    goto :goto_1

    .line 1422
    :cond_0
    if-nez p2, :cond_1

    .line 1423
    const-string v1, "frame cannot be null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    new-instance v0, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p5}, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;)V

    invoke-interface {p4, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1425
    return-void

    .line 1429
    :cond_1
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getClientInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IClientInterface;

    move-result-object v1

    .line 1430
    .local v1, "clientInterface":Landroid/net/wifi/nl80211/IClientInterface;
    if-nez v1, :cond_2

    .line 1431
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No valid wificond client interface handler for iface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    new-instance v0, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p5}, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;)V

    invoke-interface {p4, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1433
    return-void

    .line 1436
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mSendMgmtFrameInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1437
    const-string v2, "An existing management frame transmission is in progress!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    new-instance v0, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p5}, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda2;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;)V

    invoke-interface {p4, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1439
    return-void

    .line 1442
    :cond_3
    new-instance v2, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;

    invoke-direct {v2, p0, p4, p5}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager;Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;)V

    .line 1444
    .local v2, "sendMgmtFrameEvent":Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;
    :try_start_0
    invoke-interface {v1, p2, v2, p3}, Landroid/net/wifi/nl80211/IClientInterface;->SendMgmtFrame([BLandroid/net/wifi/nl80211/ISendMgmtFrameEvent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1450
    goto :goto_0

    .line 1445
    :catch_0
    move-exception v3

    .line 1446
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while starting link probe: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    invoke-virtual {v2, v4}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->OnFailure(I)V

    .line 1451
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1418
    .end local v1    # "clientInterface":Landroid/net/wifi/nl80211/IClientInterface;
    .end local v2    # "sendMgmtFrameEvent":Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;
    :cond_4
    :goto_1
    const-string v1, "callback cannot be null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    return-void
.end method

.method public whitelist setOnServiceDeadCallback(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "deathEventHandler"    # Ljava/lang/Runnable;

    .line 639
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mDeathEventHandler:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 640
    const-string v0, "WifiNl80211Manager"

    const-string v1, "Death handler already present"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_0
    iput-object p1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mDeathEventHandler:Ljava/lang/Runnable;

    .line 643
    return-void
.end method

.method public whitelist setupInterfaceForClientMode(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "scanCallback"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;
    .param p4, "pnoScanCallback"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting up interface for client mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiNl80211Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    invoke-direct {p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->retrieveWificondAndRegisterForDeath()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 688
    return v2

    .line 691
    :cond_0
    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    if-nez p2, :cond_1

    goto :goto_1

    .line 696
    :cond_1
    const/4 v0, 0x0

    .line 698
    .local v0, "clientInterface":Landroid/net/wifi/nl80211/IClientInterface;
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    invoke-interface {v3, p1}, Landroid/net/wifi/nl80211/IWificond;->createClientInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IClientInterface;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v3

    .line 702
    nop

    .line 704
    if-nez v0, :cond_2

    .line 705
    const-string v3, "Could not get IClientInterface instance from wificond"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    return v2

    .line 708
    :cond_2
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IClientInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 711
    iget-object v3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mClientInterfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    :try_start_1
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IClientInterface;->getWifiScannerImpl()Landroid/net/wifi/nl80211/IWifiScannerImpl;

    move-result-object v3

    .line 714
    .local v3, "wificondScanner":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    if-nez v3, :cond_3

    .line 715
    const-string v4, "Failed to get WificondScannerImpl"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    return v2

    .line 718
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificondScanners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    invoke-interface {v3}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 720
    new-instance v2, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;

    invoke-direct {v2, p0, p2, p3}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager;Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;)V

    .line 721
    .local v2, "scanEventHandler":Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;
    iget-object v4, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mScanEventHandlers:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    invoke-interface {v3, v2}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->subscribeScanEvents(Landroid/net/wifi/nl80211/IScanEvent;)V

    .line 723
    new-instance v4, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;

    invoke-direct {v4, p0, p2, p4}, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager;Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;)V

    .line 725
    .local v4, "pnoScanEventHandler":Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;
    iget-object v5, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mPnoScanEventHandlers:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    invoke-interface {v3, v4}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->subscribePnoScanEvents(Landroid/net/wifi/nl80211/IPnoScanEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 729
    .end local v2    # "scanEventHandler":Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;
    .end local v3    # "wificondScanner":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    .end local v4    # "pnoScanEventHandler":Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;
    goto :goto_0

    .line 727
    :catch_0
    move-exception v2

    .line 728
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to refresh wificond scanner due to remote exception"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 699
    :catch_1
    move-exception v3

    .line 700
    .local v3, "e1":Landroid/os/RemoteException;
    const-string v4, "Failed to get IClientInterface due to remote exception"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    return v2

    .line 692
    .end local v0    # "clientInterface":Landroid/net/wifi/nl80211/IClientInterface;
    .end local v3    # "e1":Landroid/os/RemoteException;
    :cond_4
    :goto_1
    const-string v0, "setupInterfaceForClientMode invoked with null callbacks"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    return v2
.end method

.method public whitelist setupInterfaceForSoftApMode(Ljava/lang/String;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting up interface for soft ap mode for iface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiNl80211Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    invoke-direct {p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->retrieveWificondAndRegisterForDeath()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 791
    return v2

    .line 794
    :cond_0
    const/4 v0, 0x0

    .line 796
    .local v0, "apInterface":Landroid/net/wifi/nl80211/IApInterface;
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    invoke-interface {v3, p1}, Landroid/net/wifi/nl80211/IWificond;->createApInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IApInterface;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 800
    nop

    .line 802
    if-nez v0, :cond_1

    .line 803
    const-string v3, "Could not get IApInterface instance from wificond"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    return v2

    .line 806
    :cond_1
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IApInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 809
    iget-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mApInterfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    const/4 v1, 0x1

    return v1

    .line 797
    :catch_0
    move-exception v3

    .line 798
    .local v3, "e1":Landroid/os/RemoteException;
    const-string v4, "Failed to get IApInterface due to remote exception"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    return v2
.end method

.method public whitelist signalPoll(Ljava/lang/String;)Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;
    .locals 7
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 900
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getClientInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IClientInterface;

    move-result-object v0

    .line 901
    .local v0, "iface":Landroid/net/wifi/nl80211/IClientInterface;
    const/4 v1, 0x0

    const-string v2, "WifiNl80211Manager"

    if-nez v0, :cond_0

    .line 902
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid wificond client interface handler for iface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    return-object v1

    .line 908
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IClientInterface;->signalPoll()[I

    move-result-object v3

    .line 909
    .local v3, "resultArray":[I
    if-eqz v3, :cond_2

    array-length v4, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    goto :goto_0

    .line 916
    :cond_1
    nop

    .line 917
    new-instance v1, Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;

    const/4 v2, 0x0

    aget v2, v3, v2

    const/4 v4, 0x1

    aget v4, v3, v4

    const/4 v5, 0x3

    aget v5, v3, v5

    const/4 v6, 0x2

    aget v6, v3, v6

    invoke-direct {v1, v2, v4, v5, v6}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;-><init>(IIII)V

    return-object v1

    .line 910
    :cond_2
    :goto_0
    :try_start_1
    const-string v4, "Invalid signal poll result from wificond"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 911
    return-object v1

    .line 913
    .end local v3    # "resultArray":[I
    :catch_0
    move-exception v3

    .line 914
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Failed to do signal polling due to remote exception"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    return-object v1
.end method

.method public whitelist startPnoScan(Ljava/lang/String;Landroid/net/wifi/nl80211/PnoSettings;Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanRequestCallback;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "pnoSettings"    # Landroid/net/wifi/nl80211/PnoSettings;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanRequestCallback;

    .line 1148
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getScannerImpl(Ljava/lang/String;)Landroid/net/wifi/nl80211/IWifiScannerImpl;

    move-result-object v0

    .line 1149
    .local v0, "scannerImpl":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    const/4 v1, 0x0

    const-string v2, "WifiNl80211Manager"

    if-nez v0, :cond_0

    .line 1150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid wificond scanner interface handler for iface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    return v1

    .line 1154
    :cond_0
    if-eqz p4, :cond_3

    if-nez p3, :cond_1

    goto :goto_1

    .line 1160
    :cond_1
    :try_start_0
    invoke-interface {v0, p2}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->startPnoScan(Landroid/net/wifi/nl80211/PnoSettings;)Z

    move-result v3

    .line 1161
    .local v3, "success":Z
    if-eqz v3, :cond_2

    .line 1162
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda4;

    invoke-direct {v4, p4}, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda4;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanRequestCallback;)V

    invoke-interface {p3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1164
    :cond_2
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda5;

    invoke-direct {v4, p4}, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda5;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanRequestCallback;)V

    invoke-interface {p3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1166
    :goto_0
    return v3

    .line 1167
    .end local v3    # "success":Z
    :catch_0
    move-exception v3

    .line 1168
    .local v3, "e1":Landroid/os/RemoteException;
    const-string v4, "Failed to start pno scan due to remote exception"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    .end local v3    # "e1":Landroid/os/RemoteException;
    return v1

    .line 1155
    :cond_3
    :goto_1
    const-string v3, "startPnoScan called with a null callback"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    return v1
.end method

.method public whitelist startScan(Ljava/lang/String;ILjava/util/Set;Ljava/util/List;)Z
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "scanType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "[B>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1040
    .local p3, "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p4, "hiddenNetworkSSIDs":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->startScan(Ljava/lang/String;ILjava/util/Set;Ljava/util/List;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public whitelist startScan(Ljava/lang/String;ILjava/util/Set;Ljava/util/List;Landroid/os/Bundle;)Z
    .locals 9
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "scanType"    # I
    .param p5, "extraScanningParams"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "[B>;",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    .line 1070
    .local p3, "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p4, "hiddenNetworkSSIDs":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getScannerImpl(Ljava/lang/String;)Landroid/net/wifi/nl80211/IWifiScannerImpl;

    move-result-object v0

    .line 1071
    .local v0, "scannerImpl":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    const/4 v1, 0x0

    const-string v2, "WifiNl80211Manager"

    if-nez v0, :cond_0

    .line 1072
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid wificond scanner interface handler for iface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    return v1

    .line 1075
    :cond_0
    new-instance v3, Landroid/net/wifi/nl80211/SingleScanSettings;

    invoke-direct {v3}, Landroid/net/wifi/nl80211/SingleScanSettings;-><init>()V

    .line 1077
    .local v3, "settings":Landroid/net/wifi/nl80211/SingleScanSettings;
    :try_start_0
    invoke-static {p2}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getScanType(I)I

    move-result v4

    iput v4, v3, Landroid/net/wifi/nl80211/SingleScanSettings;->scanType:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1081
    nop

    .line 1082
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroid/net/wifi/nl80211/SingleScanSettings;->channelSettings:Ljava/util/ArrayList;

    .line 1083
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroid/net/wifi/nl80211/SingleScanSettings;->hiddenNetworks:Ljava/util/ArrayList;

    .line 1084
    if-eqz p5, :cond_1

    .line 1085
    const-string v4, "android.net.wifi.nl80211.SCANNING_PARAM_ENABLE_6GHZ_RNR"

    invoke-virtual {p5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Landroid/net/wifi/nl80211/SingleScanSettings;->enable6GhzRnr:Z

    .line 1088
    :cond_1
    if-eqz p3, :cond_2

    .line 1089
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1090
    .local v5, "freq":Ljava/lang/Integer;
    new-instance v6, Landroid/net/wifi/nl80211/ChannelSettings;

    invoke-direct {v6}, Landroid/net/wifi/nl80211/ChannelSettings;-><init>()V

    .line 1091
    .local v6, "channel":Landroid/net/wifi/nl80211/ChannelSettings;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v6, Landroid/net/wifi/nl80211/ChannelSettings;->frequency:I

    .line 1092
    iget-object v7, v3, Landroid/net/wifi/nl80211/SingleScanSettings;->channelSettings:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1093
    .end local v5    # "freq":Ljava/lang/Integer;
    .end local v6    # "channel":Landroid/net/wifi/nl80211/ChannelSettings;
    goto :goto_0

    .line 1095
    :cond_2
    if-eqz p4, :cond_5

    .line 1096
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 1097
    .local v5, "ssid":[B
    new-instance v6, Landroid/net/wifi/nl80211/HiddenNetwork;

    invoke-direct {v6}, Landroid/net/wifi/nl80211/HiddenNetwork;-><init>()V

    .line 1098
    .local v6, "network":Landroid/net/wifi/nl80211/HiddenNetwork;
    iput-object v5, v6, Landroid/net/wifi/nl80211/HiddenNetwork;->ssid:[B

    .line 1103
    iget-object v7, v6, Landroid/net/wifi/nl80211/HiddenNetwork;->ssid:[B

    array-length v7, v7

    const/16 v8, 0x20

    if-le v7, v8, :cond_3

    .line 1104
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Too long after conversion, skip "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Landroid/net/wifi/nl80211/HiddenNetwork;->ssid:[B

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Landroid/net/wifi/nl80211/HiddenNetwork;->ssid:[B

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    goto :goto_1

    .line 1111
    :cond_3
    iget-object v7, v3, Landroid/net/wifi/nl80211/SingleScanSettings;->hiddenNetworks:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1112
    iget-object v7, v3, Landroid/net/wifi/nl80211/SingleScanSettings;->hiddenNetworks:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1114
    .end local v5    # "ssid":[B
    .end local v6    # "network":Landroid/net/wifi/nl80211/HiddenNetwork;
    :cond_4
    goto :goto_1

    .line 1118
    :cond_5
    :try_start_1
    invoke-interface {v0, v3}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->scan(Landroid/net/wifi/nl80211/SingleScanSettings;)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    .line 1119
    :catch_0
    move-exception v4

    .line 1120
    .local v4, "e1":Landroid/os/RemoteException;
    const-string v5, "Failed to request scan due to remote exception"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    .end local v4    # "e1":Landroid/os/RemoteException;
    return v1

    .line 1078
    :catch_1
    move-exception v4

    .line 1079
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "Invalid scan type "

    invoke-static {v2, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1080
    return v1
.end method

.method public whitelist stopPnoScan(Ljava/lang/String;)Z
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1186
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getScannerImpl(Ljava/lang/String;)Landroid/net/wifi/nl80211/IWifiScannerImpl;

    move-result-object v0

    .line 1187
    .local v0, "scannerImpl":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    const/4 v1, 0x0

    const-string v2, "WifiNl80211Manager"

    if-nez v0, :cond_0

    .line 1188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid wificond scanner interface handler for iface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    return v1

    .line 1192
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->stopPnoScan()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1193
    :catch_0
    move-exception v3

    .line 1194
    .local v3, "e1":Landroid/os/RemoteException;
    const-string v4, "Failed to stop pno scan due to remote exception"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    .end local v3    # "e1":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist tearDownClientInterface(Ljava/lang/String;)Z
    .locals 4
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 743
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getClientInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IClientInterface;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "WifiNl80211Manager"

    if-nez v0, :cond_0

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No valid wificond client interface handler for iface="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    return v1

    .line 748
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificondScanners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/nl80211/IWifiScannerImpl;

    .line 749
    .local v0, "scannerImpl":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    if-eqz v0, :cond_1

    .line 750
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->unsubscribeScanEvents()V

    .line 751
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->unsubscribePnoScanEvents()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 756
    .end local v0    # "scannerImpl":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    :cond_1
    nop

    .line 758
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    if-nez v0, :cond_2

    .line 759
    const-string v0, "tearDownClientInterface: mWificond binder is null! Did wificond die?"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    return v1

    .line 765
    :cond_2
    :try_start_1
    invoke-interface {v0, p1}, Landroid/net/wifi/nl80211/IWificond;->tearDownClientInterface(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 769
    .local v0, "success":Z
    nop

    .line 770
    if-nez v0, :cond_3

    .line 771
    const-string v3, "Failed to teardown client interface"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    return v1

    .line 775
    :cond_3
    iget-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mClientInterfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    iget-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificondScanners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    iget-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mScanEventHandlers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    iget-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mPnoScanEventHandlers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    const/4 v1, 0x1

    return v1

    .line 766
    .end local v0    # "success":Z
    :catch_0
    move-exception v0

    .line 767
    .local v0, "e1":Landroid/os/RemoteException;
    const-string v3, "Failed to teardown client interface due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    return v1

    .line 753
    .end local v0    # "e1":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 754
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to unsubscribe wificond scanner due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    return v1
.end method

.method public whitelist tearDownInterfaces()Z
    .locals 5

    .line 854
    const-string v0, "WifiNl80211Manager"

    const-string v1, "tearing down interfaces in wificond"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-direct {p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->retrieveWificondAndRegisterForDeath()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 858
    return v2

    .line 863
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    if-nez v1, :cond_1

    .line 864
    const-string v1, "Reference to wifiCond is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    return v2

    .line 869
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificondScanners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 870
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/nl80211/IWifiScannerImpl;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/nl80211/IWifiScannerImpl;

    invoke-interface {v4}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->unsubscribeScanEvents()V

    .line 871
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/nl80211/IWifiScannerImpl;

    invoke-interface {v4}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->unsubscribePnoScanEvents()V

    .line 872
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/nl80211/IWifiScannerImpl;>;"
    goto :goto_0

    .line 873
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    invoke-interface {v1}, Landroid/net/wifi/nl80211/IWificond;->tearDownInterfaces()V

    .line 874
    invoke-direct {p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->clearState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    const/4 v0, 0x1

    return v0

    .line 876
    :catch_0
    move-exception v1

    .line 877
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to tear down interfaces due to remote exception"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    .end local v1    # "e":Landroid/os/RemoteException;
    return v2
.end method

.method public whitelist tearDownSoftApInterface(Ljava/lang/String;)Z
    .locals 4
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 822
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getApInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IApInterface;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "WifiNl80211Manager"

    if-nez v0, :cond_0

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No valid wificond ap interface handler for iface="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    return v1

    .line 827
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    if-nez v0, :cond_1

    .line 828
    const-string v0, "tearDownSoftApInterface: mWificond binder is null! Did wificond die?"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    return v1

    .line 834
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Landroid/net/wifi/nl80211/IWificond;->tearDownApInterface(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    .local v0, "success":Z
    nop

    .line 839
    if-nez v0, :cond_2

    .line 840
    const-string v3, "Failed to teardown AP interface"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    return v1

    .line 843
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mApInterfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    iget-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mApInterfaceListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    const/4 v1, 0x1

    return v1

    .line 835
    .end local v0    # "success":Z
    :catch_0
    move-exception v0

    .line 836
    .local v0, "e1":Landroid/os/RemoteException;
    const-string v3, "Failed to teardown AP interface due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    return v1
.end method

.method public whitelist unregisterCountryCodeChangedListener(Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;

    .line 1324
    const-string v0, "WifiNl80211Manager"

    const-string/jumbo v1, "unregisterCountryCodeEventListener called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificondEventHandler:Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;

    invoke-virtual {v0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;->unregisterCountryCodeChangedListener(Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;)V

    .line 1326
    return-void
.end method
