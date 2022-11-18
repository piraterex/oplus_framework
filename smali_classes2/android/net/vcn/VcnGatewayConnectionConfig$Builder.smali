.class public final Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;
.super Ljava/lang/Object;
.source "VcnGatewayConnectionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/VcnGatewayConnectionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mExposedCapabilities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mGatewayConnectionName:Ljava/lang/String;

.field private blacklist mMaxMtu:I

.field private blacklist mRetryIntervalsMs:[J

.field private final blacklist mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

.field private final blacklist mUnderlyingNetworkTemplates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/vcn/VcnUnderlyingNetworkTemplate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Landroid/net/ipsec/ike/IkeTunnelConnectionParams;)V
    .locals 2
    .param p1, "gatewayConnectionName"    # Ljava/lang/String;
    .param p2, "tunnelConnectionParams"    # Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mExposedCapabilities:Ljava/util/Set;

    .line 466
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Landroid/net/vcn/VcnGatewayConnectionConfig;->DEFAULT_UNDERLYING_NETWORK_TEMPLATES:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mUnderlyingNetworkTemplates:Ljava/util/List;

    .line 470
    invoke-static {}, Landroid/net/vcn/VcnGatewayConnectionConfig;->-$$Nest$sfgetDEFAULT_RETRY_INTERVALS_MS()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mRetryIntervalsMs:[J

    .line 471
    const/16 v0, 0x5dc

    iput v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mMaxMtu:I

    .line 494
    const-string v0, "gatewayConnectionName was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 495
    const-string/jumbo v0, "tunnelConnectionParams was null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 496
    invoke-virtual {p2}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getIkeSessionParams()Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/ipsec/ike/IkeSessionParams;->hasIkeOption(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iput-object p1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mGatewayConnectionName:Ljava/lang/String;

    .line 502
    iput-object p2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 503
    return-void

    .line 497
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MOBIKE must be configured for the provided IkeSessionParams"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addExposedCapability(I)Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;
    .locals 2
    .param p1, "exposedCapability"    # I

    .line 516
    invoke-static {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->-$$Nest$smcheckValidCapability(I)V

    .line 518
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mExposedCapabilities:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 519
    return-object p0
.end method

.method public whitelist build()Landroid/net/vcn/VcnGatewayConnectionConfig;
    .locals 9

    .line 637
    new-instance v8, Landroid/net/vcn/VcnGatewayConnectionConfig;

    iget-object v1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mGatewayConnectionName:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    iget-object v3, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mExposedCapabilities:Ljava/util/Set;

    iget-object v4, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mUnderlyingNetworkTemplates:Ljava/util/List;

    iget-object v5, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mRetryIntervalsMs:[J

    iget v6, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mMaxMtu:I

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/net/vcn/VcnGatewayConnectionConfig;-><init>(Ljava/lang/String;Landroid/net/ipsec/ike/IkeTunnelConnectionParams;Ljava/util/Set;Ljava/util/List;[JILandroid/net/vcn/VcnGatewayConnectionConfig-IA;)V

    return-object v8
.end method

.method public whitelist removeExposedCapability(I)Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;
    .locals 2
    .param p1, "exposedCapability"    # I

    .line 534
    invoke-static {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->-$$Nest$smcheckValidCapability(I)V

    .line 536
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mExposedCapabilities:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 537
    return-object p0
.end method

.method public whitelist setMaxMtu(I)Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;
    .locals 2
    .param p1, "maxMtu"    # I

    .line 623
    const/16 v0, 0x500

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "maxMtu must be at least IPv6 min MTU (1280)"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 626
    iput p1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mMaxMtu:I

    .line 627
    return-object p0
.end method

.method public whitelist setRetryIntervalsMillis([J)Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;
    .locals 0
    .param p1, "retryIntervalsMs"    # [J

    .line 602
    invoke-static {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->-$$Nest$smvalidateRetryInterval([J)V

    .line 604
    iput-object p1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mRetryIntervalsMs:[J

    .line 605
    return-object p0
.end method

.method public whitelist setVcnUnderlyingNetworkPriorities(Ljava/util/List;)Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/vcn/VcnUnderlyingNetworkTemplate;",
            ">;)",
            "Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;"
        }
    .end annotation

    .line 564
    .local p1, "underlyingNetworkTemplates":Ljava/util/List;, "Ljava/util/List<Landroid/net/vcn/VcnUnderlyingNetworkTemplate;>;"
    invoke-static {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->-$$Nest$smvalidateNetworkTemplateList(Ljava/util/List;)V

    .line 566
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mUnderlyingNetworkTemplates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 568
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mUnderlyingNetworkTemplates:Ljava/util/List;

    sget-object v1, Landroid/net/vcn/VcnGatewayConnectionConfig;->DEFAULT_UNDERLYING_NETWORK_TEMPLATES:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 571
    :cond_0
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mUnderlyingNetworkTemplates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 574
    :goto_0
    return-object p0
.end method
