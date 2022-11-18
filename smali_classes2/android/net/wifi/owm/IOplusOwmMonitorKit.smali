.class public interface abstract Landroid/net/wifi/owm/IOplusOwmMonitorKit;
.super Ljava/lang/Object;
.source "IOplusOwmMonitorKit.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final whitelist BTC_EVT:I = 0xf00001a

.field public static final whitelist DEFAULT:Landroid/net/wifi/owm/IOplusOwmMonitorKit;

.field public static final whitelist DHCP_FAIL_EVT:I = 0xf000004

.field public static final whitelist DHCP_NAK_EVT:I = 0xf000017

.field public static final whitelist DHCP_OFFER_EVT:I = 0xf000005

.field public static final whitelist DNS_DUR_FAIL_EVT:I = 0xf000010

.field public static final whitelist DNS_HIJACK_EVT:I = 0xf00000e

.field public static final whitelist DUAL_STA_ACT_EVT:I = 0xf00000d

.field public static final whitelist DUP_DHCP_SERV_EVT:I = 0xf000013

.field public static final whitelist EVENT_BASE:I = 0xf000000

.field public static final whitelist GAME_HIGH_LATENCY_EVT:I = 0xf000016

.field public static final whitelist GATEWAY_HIGH_LATENCY_EVT:I = 0xf000015

.field public static final whitelist GATEWAY_UNREACH_EVT:I = 0xf000014

.field public static final whitelist ICMP_ERR_CODE_DST_HOST_UNKNOWN:I = 0x7

.field public static final whitelist ICMP_ERR_CODE_DST_NET_UNKNOWN:I = 0x6

.field public static final whitelist ICMP_ERR_CODE_FRAGMENT_NEED:I = 0x4

.field public static final whitelist ICMP_ERR_CODE_HOST_UNREACHABLE:I = 0x1

.field public static final whitelist ICMP_ERR_CODE_NET_UNREACHABLE:I = 0x0

.field public static final whitelist ICMP_ERR_CODE_OTHERS:I = 0x8

.field public static final whitelist ICMP_ERR_CODE_PORT_UNREACHABLE:I = 0x3

.field public static final whitelist ICMP_ERR_CODE_PROTO_UNREACHABLE:I = 0x2

.field public static final whitelist ICMP_ERR_CODE_SRC_ROUTINT_FAIL:I = 0x5

.field public static final whitelist ICMP_ERR_EVT:I = 0xf000008

.field public static final whitelist ICMP_UNREACHABLE_BURST_EVT:I = 0xf000018

.field public static final whitelist IPV4_RTO_EVT:I = 0xf000012

.field public static final whitelist IPV6_RTO_EVT:I = 0xf000009

.field public static final whitelist IP_SUCC_EVT:I = 0xf00000b

.field public static final whitelist L2_STUCK_EVT:I = 0xf00000a

.field public static final whitelist L2_STUCK_TYPE_RX:I = 0x2

.field public static final whitelist L2_STUCK_TYPE_TX:I = 0x1

.field public static final whitelist L2_STUCK_TYPE_TX_RX:I = 0x3

.field public static final whitelist L2_STUCK_TYPE_UNKNOWN:I = 0x0

.field public static final whitelist MTU_PROB_NO_ENABLE_EVT:I = 0xf000007

.field public static final whitelist MULTI_GATEWAY_EVT:I = 0xf000019

.field public static final whitelist NAME:Ljava/lang/String; = "IOplusOwmMonitorKit"

.field public static final whitelist NET_DUR_SLOW_EVT:I = 0xf00000f

.field public static final whitelist NET_INVALID_EVT:I = 0xf000002

.field public static final whitelist NET_VALID_EVT:I = 0xf000003

.field public static final whitelist NUD_FAIL_EVT:I = 0xf000001

.field public static final whitelist ROAMING_EVT:I = 0xf000006

.field public static final whitelist SLA_ACT_EVT:I = 0xf00000c

.field public static final whitelist TCP_DUR_RTO_EVT:I = 0xf000010


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Landroid/net/wifi/owm/IOplusOwmMonitorKit$1;

    invoke-direct {v0}, Landroid/net/wifi/owm/IOplusOwmMonitorKit$1;-><init>()V

    sput-object v0, Landroid/net/wifi/owm/IOplusOwmMonitorKit;->DEFAULT:Landroid/net/wifi/owm/IOplusOwmMonitorKit;

    return-void
.end method


# virtual methods
.method public whitelist deregisterEventHandler(ILandroid/os/Handler;)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "handler"    # Landroid/os/Handler;

    .line 108
    return-void
.end method

.method public whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 37
    sget-object v0, Landroid/net/wifi/owm/IOplusOwmMonitorKit;->DEFAULT:Landroid/net/wifi/owm/IOplusOwmMonitorKit;

    return-object v0
.end method

.method public whitelist getDnsFailCnt(Ljava/lang/String;)I
    .locals 1
    .param p1, "ifname"    # Ljava/lang/String;

    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDnsRefuseCnt(Ljava/lang/String;)I
    .locals 1
    .param p1, "ifname"    # Ljava/lang/String;

    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDupDhcpServerState(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifname"    # Ljava/lang/String;

    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getGatewayConflictState(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "forceNewDetect"    # Z

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getRxPackages(Ljava/lang/String;)J
    .locals 2
    .param p1, "ifname"    # Ljava/lang/String;

    .line 124
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getTcpLossPackages(Ljava/lang/String;)J
    .locals 2
    .param p1, "ifname"    # Ljava/lang/String;

    .line 156
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getTcpRetryPackages(Ljava/lang/String;)J
    .locals 2
    .param p1, "ifname"    # Ljava/lang/String;

    .line 148
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getTcpRxPackages(Ljava/lang/String;)J
    .locals 2
    .param p1, "ifname"    # Ljava/lang/String;

    .line 140
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getTcpTxPackages(Ljava/lang/String;)J
    .locals 2
    .param p1, "ifname"    # Ljava/lang/String;

    .line 132
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getTxPackages(Ljava/lang/String;)J
    .locals 2
    .param p1, "ifname"    # Ljava/lang/String;

    .line 116
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getWifiGameLatencyInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getWifiNetStateInfo()Ljava/lang/String;
    .locals 1

    .line 195
    const-string v0, ""

    return-object v0
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 32
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusOwmMonitorKit:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public whitelist registerEventHandler(ILandroid/os/Handler;)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "handler"    # Landroid/os/Handler;

    .line 99
    return-void
.end method
