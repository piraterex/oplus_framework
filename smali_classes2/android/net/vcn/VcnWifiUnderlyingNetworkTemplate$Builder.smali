.class public final Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;
.super Ljava/lang/Object;
.source "VcnWifiUnderlyingNetworkTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mMeteredMatchCriteria:I

.field private blacklist mMinEntryDownstreamBandwidthKbps:I

.field private blacklist mMinEntryUpstreamBandwidthKbps:I

.field private blacklist mMinExitDownstreamBandwidthKbps:I

.field private blacklist mMinExitUpstreamBandwidthKbps:I

.field private final blacklist mSsids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMeteredMatchCriteria:I

    .line 168
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mSsids:Ljava/util/Set;

    .line 170
    iput v0, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMinEntryUpstreamBandwidthKbps:I

    .line 171
    iput v0, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMinExitUpstreamBandwidthKbps:I

    .line 172
    iput v0, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMinEntryDownstreamBandwidthKbps:I

    .line 173
    iput v0, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMinExitDownstreamBandwidthKbps:I

    .line 176
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;
    .locals 9

    .line 295
    new-instance v8, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;

    iget v1, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMeteredMatchCriteria:I

    iget v2, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMinEntryUpstreamBandwidthKbps:I

    iget v3, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMinExitUpstreamBandwidthKbps:I

    iget v4, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMinEntryDownstreamBandwidthKbps:I

    iget v5, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMinExitDownstreamBandwidthKbps:I

    iget-object v6, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mSsids:Ljava/util/Set;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;-><init>(IIIIILjava/util/Set;Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate-IA;)V

    return-object v8
.end method

.method public whitelist setMetered(I)Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;
    .locals 1
    .param p1, "matchCriteria"    # I

    .line 194
    const-string v0, "setMetered"

    invoke-static {p1, v0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    .line 196
    iput p1, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMeteredMatchCriteria:I

    .line 197
    return-object p0
.end method

.method public whitelist setMinDownstreamBandwidthKbps(II)Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;
    .locals 0
    .param p1, "minEntryDownstreamBandwidthKbps"    # I
    .param p2, "minExitDownstreamBandwidthKbps"    # I

    .line 283
    invoke-static {p1, p2}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMinBandwidthKbps(II)V

    .line 286
    iput p1, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMinEntryDownstreamBandwidthKbps:I

    .line 287
    iput p2, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMinExitDownstreamBandwidthKbps:I

    .line 289
    return-object p0
.end method

.method public whitelist setMinUpstreamBandwidthKbps(II)Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;
    .locals 0
    .param p1, "minEntryUpstreamBandwidthKbps"    # I
    .param p2, "minExitUpstreamBandwidthKbps"    # I

    .line 245
    invoke-static {p1, p2}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMinBandwidthKbps(II)V

    .line 247
    iput p1, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMinEntryUpstreamBandwidthKbps:I

    .line 248
    iput p2, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMinExitUpstreamBandwidthKbps:I

    .line 250
    return-object p0
.end method

.method public whitelist setSsids(Ljava/util/Set;)Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;"
        }
    .end annotation

    .line 208
    .local p1, "ssids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->-$$Nest$smvalidateSsids(Ljava/util/Set;)V

    .line 210
    iget-object v0, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mSsids:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 211
    iget-object v0, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mSsids:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 212
    return-object p0
.end method
