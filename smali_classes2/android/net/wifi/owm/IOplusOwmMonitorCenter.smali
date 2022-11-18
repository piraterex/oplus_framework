.class public interface abstract Landroid/net/wifi/owm/IOplusOwmMonitorCenter;
.super Ljava/lang/Object;
.source "IOplusOwmMonitorCenter.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final whitelist DEFAULT:Landroid/net/wifi/owm/IOplusOwmMonitorCenter;

.field public static final whitelist DUMP_ARG:Ljava/lang/String; = "OwmStat"

.field public static final whitelist NAME:Ljava/lang/String; = "IOplusOwmMonitorCenter"

.field public static final whitelist OPLUS_OWM_FEATURE_BASE:I = 0x0

.field public static final whitelist OPLUS_WIFI_BANDWIDTH:I = 0x9

.field public static final whitelist OPLUS_WIFI_DATALIMIT:I = 0xc

.field public static final whitelist OPLUS_WIFI_DIS_OPT:I = 0xa

.field public static final whitelist OPLUS_WIFI_DUAL_STA:I = 0x1

.field public static final whitelist OPLUS_WIFI_MTU_PROB:I = 0xb

.field public static final whitelist OPLUS_WIFI_PRIVATE_DNS:I = 0x5

.field public static final whitelist OPLUS_WIFI_QPOWER:I = 0x8

.field public static final whitelist OPLUS_WIFI_SELFCURE:I = 0xe

.field public static final whitelist OPLUS_WIFI_SLA:I = 0x2

.field public static final whitelist OPLUS_WIFI_SMARTGEAR:I = 0x7

.field public static final whitelist OPLUS_WIFI_STATIC_ARP:I = 0x6

.field public static final whitelist OPLUS_WIFI_STATIC_IP:I = 0x4

.field public static final whitelist OPLUS_WIFI_VPN_STATUS:I = 0xd

.field public static final whitelist OPLUS_WIFI_WN_S:I = 0x3


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Landroid/net/wifi/owm/IOplusOwmMonitorCenter$1;

    invoke-direct {v0}, Landroid/net/wifi/owm/IOplusOwmMonitorCenter$1;-><init>()V

    sput-object v0, Landroid/net/wifi/owm/IOplusOwmMonitorCenter;->DEFAULT:Landroid/net/wifi/owm/IOplusOwmMonitorCenter;

    return-void
.end method


# virtual methods
.method public whitelist addArpDetectResultRecord(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "ifname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 81
    .local p2, "arpResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    return-void
.end method

.method public whitelist addConnL2StatsRecord(Ljava/lang/String;IIII)V
    .locals 0
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "radioOnTimeMs"    # I
    .param p3, "ccaBusyTimeMs"    # I
    .param p4, "txPer"    # I
    .param p5, "dataStallType"    # I

    .line 76
    return-void
.end method

.method public whitelist addConnWifiInfoRecord(Ljava/lang/String;Landroid/net/wifi/WifiInfo;JJJ)V
    .locals 0
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "curWifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p3, "txSuccess"    # J
    .param p5, "txRetries"    # J
    .param p7, "rxSuccess"    # J

    .line 75
    return-void
.end method

.method public whitelist addDataStallReportedFromFirmwareRecord(Ljava/lang/String;I)V
    .locals 0
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "errCode"    # I

    .line 107
    return-void
.end method

.method public whitelist addDhcpFailRecord(Ljava/lang/String;)V
    .locals 0
    .param p1, "ifname"    # Ljava/lang/String;

    .line 79
    return-void
.end method

.method public whitelist addDhcpSuccRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "ipAddr"    # Ljava/lang/String;
    .param p3, "gateway"    # Ljava/lang/String;

    .line 78
    return-void
.end method

.method public whitelist addDnsRecord(IIILjava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "errCode"    # I
    .param p2, "latencyMs"    # I
    .param p3, "netId"    # I
    .param p4, "hostname"    # Ljava/lang/String;
    .param p5, "ipAddresses"    # [Ljava/lang/String;

    .line 96
    return-void
.end method

.method public whitelist addGameFrontInState(ZLjava/lang/String;)V
    .locals 0
    .param p1, "isFrontIn"    # Z
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 92
    return-void
.end method

.method public whitelist addGameLatencyRecord(Ljava/lang/String;I)V
    .locals 0
    .param p1, "gamePkgName"    # Ljava/lang/String;
    .param p2, "rtt"    # I

    .line 93
    return-void
.end method

.method public whitelist addGamePlayingState(Z)V
    .locals 0
    .param p1, "isPlaying"    # Z

    .line 94
    return-void
.end method

.method public whitelist addIpConflictRecord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "conflictIp"    # Ljava/lang/String;

    .line 80
    return-void
.end method

.method public whitelist addIpVersionRecord(Ljava/lang/String;Landroid/net/LinkProperties;)V
    .locals 0
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "lp"    # Landroid/net/LinkProperties;

    .line 88
    return-void
.end method

.method public whitelist addIpv4RtoRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "srcAddr"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .line 90
    return-void
.end method

.method public whitelist addIpv6RtoRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "srcAddr"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .line 89
    return-void
.end method

.method public whitelist addNetScoreRecord(Ljava/lang/String;I)V
    .locals 0
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "score"    # I

    .line 84
    return-void
.end method

.method public whitelist addNetValidRecord(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "valid"    # Z

    .line 85
    return-void
.end method

.method public whitelist addNudFailRecord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "nudMsg"    # Ljava/lang/String;

    .line 86
    return-void
.end method

.method public whitelist addOplusFeatureActivedRecord(Ljava/lang/String;II)V
    .locals 0
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "featureId"    # I
    .param p3, "actState"    # I

    .line 114
    return-void
.end method

.method public whitelist addOplusFeatureActivedRecord(Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "featureId"    # I
    .param p3, "isActived"    # Z

    .line 113
    return-void
.end method

.method public whitelist addOplusWifiSelfCureOngoingRecord(Z)V
    .locals 0
    .param p1, "isOngoing"    # Z

    .line 120
    return-void
.end method

.method public whitelist addPrimaryClientIfname(Ljava/lang/String;)V
    .locals 0
    .param p1, "ifname"    # Ljava/lang/String;

    .line 74
    return-void
.end method

.method public whitelist addRoamingRecord(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "isSucced"    # Z
    .param p3, "lastBssid"    # Ljava/lang/String;

    .line 77
    return-void
.end method

.method public whitelist addRouterInfoRecord(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "connApName"    # Ljava/lang/String;
    .param p3, "isConnSoftAp"    # Z
    .param p4, "isConn1x1IotAp"    # Z

    .line 103
    return-void
.end method

.method public whitelist addTcpRttRecord(I)V
    .locals 0
    .param p1, "rttMs"    # I

    .line 100
    return-void
.end method

.method public whitelist addTcpRttRecord([J)V
    .locals 0
    .param p1, "data"    # [J

    .line 99
    return-void
.end method

.method public whitelist addTcpStatRecord(IJJJJ)V
    .locals 0
    .param p1, "netId"    # I
    .param p2, "newSendPkg"    # J
    .param p4, "newRecvPkg"    # J
    .param p6, "newRetryPkg"    # J
    .param p8, "newLossPkg"    # J

    .line 98
    return-void
.end method

.method public whitelist addTcpSyncRecord(IIIILjava/lang/String;)V
    .locals 0
    .param p1, "netId"    # I
    .param p2, "uid"    # I
    .param p3, "errCode"    # I
    .param p4, "latency"    # I
    .param p5, "ipAddr"    # Ljava/lang/String;

    .line 97
    return-void
.end method

.method public whitelist addUidNetPolicyRecord(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 87
    return-void
.end method

.method public whitelist addWifiAssistantSwitchRecord(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "isSwitched"    # Z

    .line 123
    return-void
.end method

.method public whitelist addWifiScanEventRecord()V
    .locals 0

    .line 110
    return-void
.end method

.method public whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 126
    return-void
.end method

.method public whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 45
    sget-object v0, Landroid/net/wifi/owm/IOplusOwmMonitorCenter;->DEFAULT:Landroid/net/wifi/owm/IOplusOwmMonitorCenter;

    return-object v0
.end method

.method public whitelist getOwmNetMonitorEnabled()Z
    .locals 1

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPrimaryClientIfname()Ljava/lang/String;
    .locals 1

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 40
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusOwmMonitorCenter:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public whitelist notifyVideoStutterToWifi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 117
    return-void
.end method
