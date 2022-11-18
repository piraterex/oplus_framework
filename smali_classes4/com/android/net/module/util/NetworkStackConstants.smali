.class public final Lcom/android/net/module/util/NetworkStackConstants;
.super Ljava/lang/Object;
.source "NetworkStackConstants.java"


# static fields
.field public static final blacklist ARP_ETHER_IPV4_LEN:I = 0x2a

.field public static final blacklist ARP_HWTYPE_ETHER:I = 0x1

.field public static final blacklist ARP_HWTYPE_RESERVED_HI:I = 0xffff

.field public static final blacklist ARP_HWTYPE_RESERVED_LO:I = 0x0

.field public static final blacklist ARP_PAYLOAD_LEN:I = 0x1c

.field public static final blacklist ARP_REPLY:I = 0x2

.field public static final blacklist ARP_REQUEST:I = 0x1

.field public static final blacklist DHCP4_CLIENT_PORT:I = 0x44

.field public static final blacklist ETHER_ADDR_LEN:I = 0x6

.field public static final blacklist ETHER_BROADCAST:[B

.field public static final blacklist ETHER_DST_ADDR_OFFSET:I = 0x0

.field public static final blacklist ETHER_HEADER_LEN:I = 0xe

.field public static final blacklist ETHER_MTU:I = 0x5dc

.field public static final blacklist ETHER_SRC_ADDR_OFFSET:I = 0x6

.field public static final blacklist ETHER_TYPE_ARP:I = 0x806

.field public static final blacklist ETHER_TYPE_IPV4:I = 0x800

.field public static final blacklist ETHER_TYPE_IPV6:I = 0x86dd

.field public static final blacklist ETHER_TYPE_LENGTH:I = 0x2

.field public static final blacklist ETHER_TYPE_OFFSET:I = 0xc

.field public static final blacklist ICMPV6_CHECKSUM_OFFSET:I = 0x2

.field public static final blacklist ICMPV6_ECHO_REPLY_TYPE:I = 0x81

.field public static final blacklist ICMPV6_ECHO_REQUEST_TYPE:I = 0x80

.field public static final blacklist ICMPV6_HEADER_MIN_LEN:I = 0x4

.field public static final blacklist ICMPV6_NA_HEADER_LEN:I = 0x18

.field public static final blacklist ICMPV6_ND_OPTION_LENGTH_SCALING_FACTOR:I = 0x8

.field public static final blacklist ICMPV6_ND_OPTION_MIN_LENGTH:I = 0x8

.field public static final blacklist ICMPV6_ND_OPTION_MTU:I = 0x5

.field public static final blacklist ICMPV6_ND_OPTION_PIO:I = 0x3

.field public static final blacklist ICMPV6_ND_OPTION_PREF64:I = 0x26

.field public static final blacklist ICMPV6_ND_OPTION_RDNSS:I = 0x19

.field public static final blacklist ICMPV6_ND_OPTION_SLLA:I = 0x1

.field public static final blacklist ICMPV6_ND_OPTION_TLLA:I = 0x2

.field public static final blacklist ICMPV6_NEIGHBOR_ADVERTISEMENT:I = 0x88

.field public static final blacklist ICMPV6_NEIGHBOR_SOLICITATION:I = 0x87

.field public static final blacklist ICMPV6_NS_HEADER_LEN:I = 0x18

.field public static final blacklist ICMPV6_RA_HEADER_LEN:I = 0x10

.field public static final blacklist ICMPV6_ROUTER_ADVERTISEMENT:I = 0x86

.field public static final blacklist ICMPV6_ROUTER_SOLICITATION:I = 0x85

.field public static final blacklist ICMPV6_RS_HEADER_LEN:I = 0x8

.field public static final blacklist INFINITE_LEASE:I = -0x1

.field public static final blacklist IPV4_ADDR_ALL:Ljava/net/Inet4Address;

.field public static final blacklist IPV4_ADDR_ANY:Ljava/net/Inet4Address;

.field public static final blacklist IPV4_ADDR_BITS:I = 0x20

.field public static final blacklist IPV4_ADDR_LEN:I = 0x4

.field public static final blacklist IPV4_CHECKSUM_OFFSET:I = 0xa

.field public static final blacklist IPV4_CONFLICT_ANNOUNCE_NUM:I = 0x2

.field public static final blacklist IPV4_CONFLICT_PROBE_NUM:I = 0x3

.field public static final blacklist IPV4_DST_ADDR_OFFSET:I = 0x10

.field public static final blacklist IPV4_FLAGS_OFFSET:I = 0x6

.field public static final blacklist IPV4_FRAGMENT_MASK:I = 0x1fff

.field public static final blacklist IPV4_HEADER_MIN_LEN:I = 0x14

.field public static final blacklist IPV4_IHL_MASK:I = 0xf

.field public static final blacklist IPV4_LENGTH_OFFSET:I = 0x2

.field public static final blacklist IPV4_MAX_MTU:I = 0xffff

.field public static final blacklist IPV4_MIN_MTU:I = 0x44

.field public static final blacklist IPV4_PROTOCOL_OFFSET:I = 0x9

.field public static final blacklist IPV4_SRC_ADDR_OFFSET:I = 0xc

.field public static final blacklist IPV6_ADDR_ALL_HOSTS_MULTICAST:Ljava/net/Inet6Address;

.field public static final blacklist IPV6_ADDR_ALL_NODES_MULTICAST:Ljava/net/Inet6Address;

.field public static final blacklist IPV6_ADDR_ALL_ROUTERS_MULTICAST:Ljava/net/Inet6Address;

.field public static final blacklist IPV6_ADDR_ANY:Ljava/net/Inet6Address;

.field public static final blacklist IPV6_ADDR_LEN:I = 0x10

.field public static final blacklist IPV6_DST_ADDR_OFFSET:I = 0x18

.field public static final blacklist IPV6_HEADER_LEN:I = 0x28

.field public static final blacklist IPV6_LEN_OFFSET:I = 0x4

.field public static final blacklist IPV6_MIN_MTU:I = 0x500

.field public static final blacklist IPV6_PROTOCOL_OFFSET:I = 0x6

.field public static final blacklist IPV6_SRC_ADDR_OFFSET:I = 0x8

.field public static final blacklist NEIGHBOR_ADVERTISEMENT_FLAG_OVERRIDE:I = 0x20000000

.field public static final blacklist NEIGHBOR_ADVERTISEMENT_FLAG_ROUTER:I = -0x80000000

.field public static final blacklist NEIGHBOR_ADVERTISEMENT_FLAG_SOLICITED:I = 0x40000000

.field public static final blacklist PIO_FLAG_AUTONOMOUS:B = 0x40t

.field public static final blacklist PIO_FLAG_ON_LINK:B = -0x80t

.field public static final blacklist ROUTER_ADVERTISEMENT_FLAG_MANAGED_ADDRESS:B = -0x80t

.field public static final blacklist ROUTER_ADVERTISEMENT_FLAG_OTHER:B = 0x40t

.field public static final blacklist TAG_SYSTEM_DHCP:I = -0x1ff

.field public static final blacklist TAG_SYSTEM_DHCP_SERVER:I = -0x1fd

.field public static final blacklist TAG_SYSTEM_DNS:I = -0x7e

.field public static final blacklist TAG_SYSTEM_NEIGHBOR:I = -0x1fe

.field public static final blacklist TAG_SYSTEM_PROBE:I = -0x7f

.field public static final blacklist TCPHDR_ACK:B = 0x10t

.field public static final blacklist TCPHDR_FIN:B = 0x1t

.field public static final blacklist TCPHDR_PSH:B = 0x8t

.field public static final blacklist TCPHDR_RST:B = 0x4t

.field public static final blacklist TCPHDR_SYN:B = 0x2t

.field public static final blacklist TCPHDR_URG:B = 0x20t

.field public static final blacklist TCP_CHECKSUM_OFFSET:I = 0x10

.field public static final blacklist TCP_HEADER_MIN_LEN:I = 0x14

.field public static final blacklist UDP_CHECKSUM_OFFSET:I = 0x6

.field public static final blacklist UDP_HEADER_LEN:I = 0x8

.field public static final blacklist UDP_LENGTH_OFFSET:I = 0x4

.field public static final blacklist VENDOR_SPECIFIC_IE_ID:I = 0xdd


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 52
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/net/module/util/NetworkStackConstants;->ETHER_BROADCAST:[B

    .line 100
    const/4 v0, -0x1

    invoke-static {v0, v0, v0, v0}, Lcom/android/net/module/util/NetworkStackConstants;->makeInet4Address(BBBB)Ljava/net/Inet4Address;

    move-result-object v0

    sput-object v0, Lcom/android/net/module/util/NetworkStackConstants;->IPV4_ADDR_ALL:Ljava/net/Inet4Address;

    .line 102
    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Lcom/android/net/module/util/NetworkStackConstants;->makeInet4Address(BBBB)Ljava/net/Inet4Address;

    move-result-object v0

    sput-object v0, Lcom/android/net/module/util/NetworkStackConstants;->IPV4_ADDR_ANY:Ljava/net/Inet4Address;

    .line 104
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/android/net/module/util/NetworkStackConstants;->makeInet6Address([B)Ljava/net/Inet6Address;

    move-result-object v0

    sput-object v0, Lcom/android/net/module/util/NetworkStackConstants;->IPV6_ADDR_ANY:Ljava/net/Inet6Address;

    .line 122
    nop

    .line 123
    const-string v0, "ff02::1"

    invoke-static {v0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    sput-object v0, Lcom/android/net/module/util/NetworkStackConstants;->IPV6_ADDR_ALL_NODES_MULTICAST:Ljava/net/Inet6Address;

    .line 124
    nop

    .line 125
    const-string v0, "ff02::2"

    invoke-static {v0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    sput-object v0, Lcom/android/net/module/util/NetworkStackConstants;->IPV6_ADDR_ALL_ROUTERS_MULTICAST:Ljava/net/Inet6Address;

    .line 126
    nop

    .line 127
    const-string v0, "ff02::3"

    invoke-static {v0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    sput-object v0, Lcom/android/net/module/util/NetworkStackConstants;->IPV6_ADDR_ALL_HOSTS_MULTICAST:Ljava/net/Inet6Address;

    .line 126
    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .locals 2

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This class is not to be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist makeInet4Address(BBBB)Ljava/net/Inet4Address;
    .locals 3
    .param p0, "b1"    # B
    .param p1, "b2"    # B
    .param p2, "b3"    # B
    .param p3, "b4"    # B

    .line 241
    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    const/4 v1, 0x2

    aput-byte p2, v0, v1

    const/4 v1, 0x3

    aput-byte p3, v0, v1

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "addr must be 4 bytes: this should never happen"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist makeInet6Address([B)Ljava/net/Inet6Address;
    .locals 3
    .param p0, "bytes"    # [B

    .line 252
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "addr must be 16 bytes: this should never happen"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
