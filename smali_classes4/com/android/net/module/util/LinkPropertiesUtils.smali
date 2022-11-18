.class public final Lcom/android/net/module/util/LinkPropertiesUtils;
.super Ljava/lang/Object;
.source "LinkPropertiesUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/net/module/util/LinkPropertiesUtils$CompareOrUpdateResult;,
        Lcom/android/net/module/util/LinkPropertiesUtils$CompareResult;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist compareAddresses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Lcom/android/net/module/util/LinkPropertiesUtils$CompareResult;
    .locals 3
    .param p0, "left"    # Landroid/net/LinkProperties;
    .param p1, "right"    # Landroid/net/LinkProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            "Landroid/net/LinkProperties;",
            ")",
            "Lcom/android/net/module/util/LinkPropertiesUtils$CompareResult<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation

    .line 145
    new-instance v0, Lcom/android/net/module/util/LinkPropertiesUtils$CompareResult;

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 146
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v1

    :cond_1
    invoke-direct {v0, v2, v1}, Lcom/android/net/module/util/LinkPropertiesUtils$CompareResult;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 145
    return-object v0
.end method

.method public static blacklist isIdenticalAddresses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z
    .locals 4
    .param p0, "left"    # Landroid/net/LinkProperties;
    .param p1, "right"    # Landroid/net/LinkProperties;

    .line 158
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v0

    .line 159
    .local v0, "leftAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v1

    .line 160
    .local v1, "rightAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 161
    invoke-interface {v0, v1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 160
    :goto_0
    return v2
.end method

.method public static blacklist isIdenticalDnses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z
    .locals 7
    .param p0, "left"    # Landroid/net/LinkProperties;
    .param p1, "right"    # Landroid/net/LinkProperties;

    .line 173
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v0

    .line 174
    .local v0, "leftDnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v1

    .line 176
    .local v1, "rightDnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "leftDomains":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "rightDomains":Ljava/lang/String;
    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 179
    if-eqz v3, :cond_1

    return v4

    .line 181
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    return v4

    .line 183
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 184
    invoke-interface {v0, v1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    goto :goto_0

    :cond_2
    nop

    .line 183
    :goto_0
    return v4
.end method

.method public static blacklist isIdenticalHttpProxy(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z
    .locals 2
    .param p0, "left"    # Landroid/net/LinkProperties;
    .param p1, "right"    # Landroid/net/LinkProperties;

    .line 196
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isIdenticalInterfaceName(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z
    .locals 2
    .param p0, "left"    # Landroid/net/LinkProperties;
    .param p1, "right"    # Landroid/net/LinkProperties;

    .line 208
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isIdenticalRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z
    .locals 4
    .param p0, "left"    # Landroid/net/LinkProperties;
    .param p1, "right"    # Landroid/net/LinkProperties;

    .line 220
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v0

    .line 221
    .local v0, "leftRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v1

    .line 222
    .local v1, "rightRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 223
    invoke-interface {v0, v1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 222
    :goto_0
    return v2
.end method
