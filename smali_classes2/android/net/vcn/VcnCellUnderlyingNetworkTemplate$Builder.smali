.class public final Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
.super Ljava/lang/Object;
.source "VcnCellUnderlyingNetworkTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mAllowedNetworkPlmnIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAllowedSpecificCarrierIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMeteredMatchCriteria:I

.field private blacklist mMinEntryDownstreamBandwidthKbps:I

.field private blacklist mMinEntryUpstreamBandwidthKbps:I

.field private blacklist mMinExitDownstreamBandwidthKbps:I

.field private blacklist mMinExitUpstreamBandwidthKbps:I

.field private blacklist mOpportunisticMatchCriteria:I

.field private blacklist mRoamingMatchCriteria:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMeteredMatchCriteria:I

    .line 278
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    .line 279
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    .line 281
    iput v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mRoamingMatchCriteria:I

    .line 282
    iput v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mOpportunisticMatchCriteria:I

    .line 284
    iput v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinEntryUpstreamBandwidthKbps:I

    .line 285
    iput v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinExitUpstreamBandwidthKbps:I

    .line 286
    iput v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinEntryDownstreamBandwidthKbps:I

    .line 287
    iput v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinExitDownstreamBandwidthKbps:I

    .line 290
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;
    .locals 12

    .line 467
    new-instance v11, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;

    iget v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMeteredMatchCriteria:I

    iget v2, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinEntryUpstreamBandwidthKbps:I

    iget v3, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinExitUpstreamBandwidthKbps:I

    iget v4, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinEntryDownstreamBandwidthKbps:I

    iget v5, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinExitDownstreamBandwidthKbps:I

    iget-object v6, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    iget-object v7, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    iget v8, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mRoamingMatchCriteria:I

    iget v9, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mOpportunisticMatchCriteria:I

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;-><init>(IIIIILjava/util/Set;Ljava/util/Set;IILandroid/net/vcn/VcnCellUnderlyingNetworkTemplate-IA;)V

    return-object v11
.end method

.method public whitelist setMetered(I)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .locals 1
    .param p1, "matchCriteria"    # I

    .line 308
    const-string v0, "setMetered"

    invoke-static {p1, v0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    .line 310
    iput p1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMeteredMatchCriteria:I

    .line 311
    return-object p0
.end method

.method public whitelist setMinDownstreamBandwidthKbps(II)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .locals 0
    .param p1, "minEntryDownstreamBandwidthKbps"    # I
    .param p2, "minExitDownstreamBandwidthKbps"    # I

    .line 455
    invoke-static {p1, p2}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMinBandwidthKbps(II)V

    .line 458
    iput p1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinEntryDownstreamBandwidthKbps:I

    .line 459
    iput p2, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinExitDownstreamBandwidthKbps:I

    .line 461
    return-object p0
.end method

.method public whitelist setMinUpstreamBandwidthKbps(II)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .locals 0
    .param p1, "minEntryUpstreamBandwidthKbps"    # I
    .param p2, "minExitUpstreamBandwidthKbps"    # I

    .line 417
    invoke-static {p1, p2}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMinBandwidthKbps(II)V

    .line 419
    iput p1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinEntryUpstreamBandwidthKbps:I

    .line 420
    iput p2, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinExitUpstreamBandwidthKbps:I

    .line 422
    return-object p0
.end method

.method public whitelist setOperatorPlmnIds(Ljava/util/Set;)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;"
        }
    .end annotation

    .line 329
    .local p1, "operatorPlmnIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->-$$Nest$smvalidatePlmnIds(Ljava/util/Set;)V

    .line 331
    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 332
    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 333
    return-object p0
.end method

.method public whitelist setOpportunistic(I)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .locals 1
    .param p1, "matchCriteria"    # I

    .line 381
    const-string v0, "setOpportunistic"

    invoke-static {p1, v0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    .line 383
    iput p1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mOpportunisticMatchCriteria:I

    .line 384
    return-object p0
.end method

.method public whitelist setRoaming(I)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .locals 1
    .param p1, "matchCriteria"    # I

    .line 366
    const-string v0, "setRoaming"

    invoke-static {p1, v0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    .line 368
    iput p1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mRoamingMatchCriteria:I

    .line 369
    return-object p0
.end method

.method public whitelist setSimSpecificCarrierIds(Ljava/util/Set;)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;"
        }
    .end annotation

    .line 346
    .local p1, "simSpecificCarrierIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const-string v0, "simSpecificCarrierIds is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 348
    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 349
    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 350
    return-object p0
.end method
