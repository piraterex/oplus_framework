.class public final Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;
.super Landroid/net/vcn/VcnUnderlyingNetworkTemplate;
.source "VcnWifiUnderlyingNetworkTemplate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;
    }
.end annotation


# static fields
.field private static final blacklist SSIDS_KEY:Ljava/lang/String; = "mSsids"


# instance fields
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
.method static bridge synthetic blacklist -$$Nest$smvalidateSsids(Ljava/util/Set;)V
    .locals 0

    invoke-static {p0}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->validateSsids(Ljava/util/Set;)V

    return-void
.end method

.method private constructor blacklist <init>(IIIIILjava/util/Set;)V
    .locals 7
    .param p1, "meteredMatchCriteria"    # I
    .param p2, "minEntryUpstreamBandwidthKbps"    # I
    .param p3, "minExitUpstreamBandwidthKbps"    # I
    .param p4, "minEntryDownstreamBandwidthKbps"    # I
    .param p5, "minExitDownstreamBandwidthKbps"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p6, "ssids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;-><init>(IIIIII)V

    .line 62
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->mSsids:Ljava/util/Set;

    .line 64
    invoke-virtual {p0}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->validate()V

    .line 65
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIILjava/util/Set;Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;-><init>(IIIIILjava/util/Set;)V

    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;
    .locals 14
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 87
    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    const-string v0, "mMeteredMatchCriteria"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 91
    .local v0, "meteredMatchCriteria":I
    nop

    .line 92
    const-string v1, "mMinEntryUpstreamBandwidthKbps"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 93
    .local v8, "minEntryUpstreamBandwidthKbps":I
    nop

    .line 94
    const-string v1, "mMinExitUpstreamBandwidthKbps"

    invoke-virtual {p0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 95
    .local v9, "minExitUpstreamBandwidthKbps":I
    nop

    .line 96
    const-string v1, "mMinEntryDownstreamBandwidthKbps"

    invoke-virtual {p0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 97
    .local v10, "minEntryDownstreamBandwidthKbps":I
    nop

    .line 98
    const-string v1, "mMinExitDownstreamBandwidthKbps"

    invoke-virtual {p0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 100
    .local v11, "minExitDownstreamBandwidthKbps":I
    const-string v1, "mSsids"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v12

    .line 101
    .local v12, "ssidsBundle":Landroid/os/PersistableBundle;
    const-string v1, "ssidsBundle is null"

    invoke-static {v12, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    new-instance v7, Landroid/util/ArraySet;

    sget-object v1, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->STRING_DESERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;

    .line 104
    invoke-static {v12, v1}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v7, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 105
    .local v7, "ssids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v13, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;

    move-object v1, v13

    move v2, v0

    move v3, v8

    move v4, v9

    move v5, v10

    move v6, v11

    invoke-direct/range {v1 .. v7}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;-><init>(IIIIILjava/util/Set;)V

    return-object v13
.end method

.method private static blacklist validateSsids(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p0, "ssids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "ssids is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 78
    .local v1, "ssid":Ljava/lang/String;
    const-string v2, "found null value ssid"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    .end local v1    # "ssid":Ljava/lang/String;
    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method


# virtual methods
.method blacklist dumpTransportSpecificFields(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 150
    iget-object v0, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->mSsids:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSsids: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->mSsids:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 153
    :cond_0
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 135
    invoke-super {p0, p1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 136
    return v1

    .line 139
    :cond_0
    instance-of v0, p1, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;

    if-nez v0, :cond_1

    .line 140
    return v1

    .line 143
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;

    .line 144
    .local v0, "rhs":Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;
    iget-object v1, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->mSsids:Ljava/util/Set;

    iget-object v2, v0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->mSsids:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getSsids()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->mSsids:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 130
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-super {p0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->mSsids:Ljava/util/Set;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .locals 3

    .line 119
    invoke-super {p0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 121
    .local v0, "result":Landroid/os/PersistableBundle;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->mSsids:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v2, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->STRING_SERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;

    .line 122
    invoke-static {v1, v2}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->fromList(Ljava/util/List;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 123
    .local v1, "ssidsBundle":Landroid/os/PersistableBundle;
    const-string v2, "mSsids"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 125
    return-object v0
.end method

.method protected blacklist validate()V
    .locals 1

    .line 70
    invoke-super {p0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validate()V

    .line 71
    iget-object v0, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->mSsids:Ljava/util/Set;

    invoke-static {v0}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->validateSsids(Ljava/util/Set;)V

    .line 72
    return-void
.end method
