.class Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;
.super Ljava/lang/Object;
.source "TunnelModeChildSessionParamsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigRequest"
.end annotation


# static fields
.field private static final blacklist IP6_PREFIX_LEN:Ljava/lang/String; = "ip6PrefixLen"

.field private static final blacklist PREFIX_LEN_UNUSED:I = -0x1

.field private static final blacklist TYPE_IPV4_ADDRESS:I = 0x1

.field private static final blacklist TYPE_IPV4_DHCP:I = 0x5

.field private static final blacklist TYPE_IPV4_DNS:I = 0x3

.field private static final blacklist TYPE_IPV4_NETMASK:I = 0x6

.field private static final blacklist TYPE_IPV6_ADDRESS:I = 0x2

.field private static final blacklist TYPE_IPV6_DNS:I = 0x4

.field private static final blacklist TYPE_KEY:Ljava/lang/String; = "type"

.field private static final blacklist VALUE_KEY:Ljava/lang/String; = "address"


# instance fields
.field public final blacklist address:Ljava/net/InetAddress;

.field public final blacklist ip6PrefixLen:I

.field public final blacklist type:I


# direct methods
.method constructor blacklist <init>(Landroid/net/ipsec/ike/TunnelModeChildSessionParams$TunnelModeChildConfigRequest;)V
    .locals 3
    .param p1, "config"    # Landroid/net/ipsec/ike/TunnelModeChildSessionParams$TunnelModeChildConfigRequest;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, -0x1

    .line 89
    .local v0, "prefixLen":I
    instance-of v1, p1, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$ConfigRequestIpv4Address;

    if-eqz v1, :cond_0

    .line 90
    const/4 v1, 0x1

    iput v1, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->type:I

    .line 91
    move-object v1, p1

    check-cast v1, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$ConfigRequestIpv4Address;

    invoke-interface {v1}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$ConfigRequestIpv4Address;->getAddress()Ljava/net/Inet4Address;

    move-result-object v1

    iput-object v1, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    goto :goto_0

    .line 92
    :cond_0
    instance-of v1, p1, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$ConfigRequestIpv6Address;

    if-eqz v1, :cond_1

    .line 93
    const/4 v1, 0x2

    iput v1, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->type:I

    .line 94
    move-object v1, p1

    check-cast v1, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$ConfigRequestIpv6Address;

    invoke-interface {v1}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$ConfigRequestIpv6Address;->getAddress()Ljava/net/Inet6Address;

    move-result-object v1

    iput-object v1, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    .line 95
    if-eqz v1, :cond_5

    .line 96
    move-object v1, p1

    check-cast v1, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$ConfigRequestIpv6Address;

    invoke-interface {v1}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$ConfigRequestIpv6Address;->getPrefixLength()I

    move-result v0

    goto :goto_0

    .line 98
    :cond_1
    instance-of v1, p1, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$ConfigRequestIpv4DnsServer;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 99
    const/4 v1, 0x3

    iput v1, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->type:I

    .line 100
    iput-object v2, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    goto :goto_0

    .line 101
    :cond_2
    instance-of v1, p1, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$ConfigRequestIpv6DnsServer;

    if-eqz v1, :cond_3

    .line 102
    const/4 v1, 0x4

    iput v1, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->type:I

    .line 103
    iput-object v2, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    goto :goto_0

    .line 104
    :cond_3
    instance-of v1, p1, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$ConfigRequestIpv4DhcpServer;

    if-eqz v1, :cond_4

    .line 105
    const/4 v1, 0x5

    iput v1, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->type:I

    .line 106
    iput-object v2, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    goto :goto_0

    .line 107
    :cond_4
    instance-of v1, p1, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$ConfigRequestIpv4Netmask;

    if-eqz v1, :cond_6

    .line 108
    const/4 v1, 0x6

    iput v1, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->type:I

    .line 109
    iput-object v2, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    .line 114
    :cond_5
    :goto_0
    iput v0, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->ip6PrefixLen:I

    .line 115
    return-void

    .line 111
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unknown TunnelModeChildConfigRequest"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method constructor blacklist <init>(Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "in"    # Landroid/os/PersistableBundle;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const-string v0, "PersistableBundle was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->type:I

    .line 121
    const-string v0, "ip6PrefixLen"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->ip6PrefixLen:I

    .line 123
    const-string v0, "address"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "addressStr":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 125
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    goto :goto_0

    .line 127
    :cond_0
    invoke-static {v0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    .line 129
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .locals 3

    .line 133
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 135
    .local v0, "result":Landroid/os/PersistableBundle;
    iget v1, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->type:I

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 136
    iget v1, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->ip6PrefixLen:I

    const-string v2, "ip6PrefixLen"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 138
    iget-object v1, p0, Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "address"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_0
    return-object v0
.end method
