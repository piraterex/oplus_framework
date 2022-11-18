.class public final Lcom/android/net/module/util/NetUtils;
.super Ljava/lang/Object;
.source "NetUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addressTypeMatches(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z
    .locals 1
    .param p0, "left"    # Ljava/net/InetAddress;
    .param p1, "right"    # Ljava/net/InetAddress;

    .line 41
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/net/Inet4Address;

    if-nez v0, :cond_1

    :cond_0
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_2

    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;
    .locals 6
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "prefixLength"    # I

    .line 86
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 87
    .local v0, "array":[B
    invoke-static {v0, p1}, Lcom/android/net/module/util/NetUtils;->maskRawAddress([BI)V

    .line 89
    const/4 v1, 0x0

    .line 91
    .local v1, "netPart":Ljava/net/InetAddress;
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 94
    nop

    .line 95
    return-object v1

    .line 92
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e":Ljava/net/UnknownHostException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNetworkPart error - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static blacklist maskRawAddress([BI)V
    .locals 4
    .param p0, "array"    # [B
    .param p1, "prefixLength"    # I

    .line 102
    if-ltz p1, :cond_2

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    if-gt p1, v0, :cond_2

    .line 107
    div-int/lit8 v0, p1, 0x8

    .line 108
    .local v0, "offset":I
    rem-int/lit8 v1, p1, 0x8

    .line 109
    .local v1, "remainder":I
    const/16 v2, 0xff

    rsub-int/lit8 v3, v1, 0x8

    shl-int/2addr v2, v3

    int-to-byte v2, v2

    .line 111
    .local v2, "mask":B
    array-length v3, p0

    if-ge v0, v3, :cond_0

    aget-byte v3, p0, v0

    and-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    .line 113
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 115
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 116
    const/4 v3, 0x0

    aput-byte v3, p0, v0

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_1
    return-void

    .line 103
    .end local v0    # "offset":I
    .end local v1    # "remainder":I
    .end local v2    # "mask":B
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IP address with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes has invalid prefix length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;
    .locals 6
    .param p1, "dest"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/RouteInfo;",
            ">;",
            "Ljava/net/InetAddress;",
            ")",
            "Landroid/net/RouteInfo;"
        }
    .end annotation

    .line 57
    .local p0, "routes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    .line 59
    :cond_0
    const/4 v1, 0x0

    .line 62
    .local v1, "bestRoute":Landroid/net/RouteInfo;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 63
    .local v3, "route":Landroid/net/RouteInfo;
    invoke-virtual {v3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/android/net/module/util/NetUtils;->addressTypeMatches(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 64
    if-eqz v1, :cond_1

    .line 65
    invoke-virtual {v1}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v4

    .line 66
    invoke-virtual {v3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 67
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v3, p1}, Landroid/net/RouteInfo;->matches(Ljava/net/InetAddress;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v1, v3

    .line 71
    .end local v3    # "route":Landroid/net/RouteInfo;
    :cond_2
    goto :goto_0

    .line 73
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 74
    return-object v1

    .line 76
    :cond_4
    return-object v0

    .line 57
    .end local v1    # "bestRoute":Landroid/net/RouteInfo;
    :cond_5
    :goto_1
    return-object v0
.end method
