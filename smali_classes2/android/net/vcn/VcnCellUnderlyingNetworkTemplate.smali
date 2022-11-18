.class public final Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;
.super Landroid/net/vcn/VcnUnderlyingNetworkTemplate;
.source "VcnCellUnderlyingNetworkTemplate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    }
.end annotation


# static fields
.field private static final blacklist ALLOWED_NETWORK_PLMN_IDS_KEY:Ljava/lang/String; = "mAllowedNetworkPlmnIds"

.field private static final blacklist ALLOWED_SPECIFIC_CARRIER_IDS_KEY:Ljava/lang/String; = "mAllowedSpecificCarrierIds"

.field private static final blacklist DEFAULT_OPPORTUNISTIC_MATCH_CRITERIA:I = 0x0

.field private static final blacklist DEFAULT_ROAMING_MATCH_CRITERIA:I = 0x0

.field private static final blacklist OPPORTUNISTIC_MATCH_KEY:Ljava/lang/String; = "mOpportunisticMatchCriteria"

.field private static final blacklist ROAMING_MATCH_KEY:Ljava/lang/String; = "mRoamingMatchCriteria"


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

.field private final blacklist mOpportunisticMatchCriteria:I

.field private final blacklist mRoamingMatchCriteria:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smvalidatePlmnIds(Ljava/util/Set;)V
    .locals 0

    invoke-static {p0}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->validatePlmnIds(Ljava/util/Set;)V

    return-void
.end method

.method private constructor blacklist <init>(IIIIILjava/util/Set;Ljava/util/Set;II)V
    .locals 8
    .param p1, "meteredMatchCriteria"    # I
    .param p2, "minEntryUpstreamBandwidthKbps"    # I
    .param p3, "minExitUpstreamBandwidthKbps"    # I
    .param p4, "minEntryDownstreamBandwidthKbps"    # I
    .param p5, "minExitDownstreamBandwidthKbps"    # I
    .param p8, "roamingMatchCriteria"    # I
    .param p9, "opportunisticMatchCriteria"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .line 77
    .local p6, "allowedNetworkPlmnIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p7, "allowedSpecificCarrierIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move-object v7, p0

    const/4 v1, 0x2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;-><init>(IIIIII)V

    .line 84
    new-instance v0, Landroid/util/ArraySet;

    move-object v1, p6

    invoke-direct {v0, p6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, v7, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    .line 85
    new-instance v0, Landroid/util/ArraySet;

    move-object v2, p7

    invoke-direct {v0, p7}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, v7, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    .line 86
    move/from16 v0, p8

    iput v0, v7, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mRoamingMatchCriteria:I

    .line 87
    move/from16 v3, p9

    iput v3, v7, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mOpportunisticMatchCriteria:I

    .line 89
    invoke-virtual {p0}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->validate()V

    .line 90
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIILjava/util/Set;Ljava/util/Set;IILandroid/net/vcn/VcnCellUnderlyingNetworkTemplate-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;-><init>(IIIIILjava/util/Set;Ljava/util/Set;II)V

    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;
    .locals 21
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 121
    move-object/from16 v0, p0

    const-string v1, "PersistableBundle is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    const-string v1, "mMeteredMatchCriteria"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 125
    .local v1, "meteredMatchCriteria":I
    nop

    .line 126
    const-string v2, "mMinEntryUpstreamBandwidthKbps"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 127
    .local v12, "minEntryUpstreamBandwidthKbps":I
    nop

    .line 128
    const-string v2, "mMinExitUpstreamBandwidthKbps"

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 129
    .local v13, "minExitUpstreamBandwidthKbps":I
    nop

    .line 130
    const-string v2, "mMinEntryDownstreamBandwidthKbps"

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 131
    .local v14, "minEntryDownstreamBandwidthKbps":I
    nop

    .line 132
    const-string v2, "mMinExitDownstreamBandwidthKbps"

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 134
    .local v15, "minExitDownstreamBandwidthKbps":I
    nop

    .line 135
    const-string v2, "mAllowedNetworkPlmnIds"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v11

    .line 136
    .local v11, "plmnIdsBundle":Landroid/os/PersistableBundle;
    const-string v2, "plmnIdsBundle is null"

    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    new-instance v8, Landroid/util/ArraySet;

    sget-object v2, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->STRING_DESERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;

    .line 139
    invoke-static {v11, v2}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v8, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 141
    .local v8, "allowedNetworkPlmnIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 142
    const-string v2, "mAllowedSpecificCarrierIds"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v10

    .line 143
    .local v10, "specificCarrierIdsBundle":Landroid/os/PersistableBundle;
    const-string v2, "specificCarrierIdsBundle is null"

    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    new-instance v9, Landroid/util/ArraySet;

    sget-object v2, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->INTEGER_DESERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;

    .line 146
    invoke-static {v10, v2}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v9, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 149
    .local v9, "allowedSpecificCarrierIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const-string v2, "mRoamingMatchCriteria"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 150
    .local v16, "roamingMatchCriteria":I
    const-string v2, "mOpportunisticMatchCriteria"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 152
    .local v17, "opportunisticMatchCriteria":I
    new-instance v18, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;

    move-object/from16 v2, v18

    move v3, v1

    move v4, v12

    move v5, v13

    move v6, v14

    move v7, v15

    move-object/from16 v19, v10

    .end local v10    # "specificCarrierIdsBundle":Landroid/os/PersistableBundle;
    .local v19, "specificCarrierIdsBundle":Landroid/os/PersistableBundle;
    move/from16 v10, v16

    move-object/from16 v20, v11

    .end local v11    # "plmnIdsBundle":Landroid/os/PersistableBundle;
    .local v20, "plmnIdsBundle":Landroid/os/PersistableBundle;
    move/from16 v11, v17

    invoke-direct/range {v2 .. v11}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;-><init>(IIIIILjava/util/Set;Ljava/util/Set;II)V

    return-object v18
.end method

.method private static blacklist validatePlmnIds(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 103
    .local p0, "matchingOperatorPlmnIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "matchingOperatorPlmnIds is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 108
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    :cond_0
    const-string v2, "[0-9]+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    goto :goto_0

    .line 111
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found invalid PLMN ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    .end local v1    # "id":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method blacklist dumpTransportSpecificFields(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 258
    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAllowedNetworkPlmnIds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 261
    :cond_0
    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAllowedSpecificCarrierIds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 264
    :cond_1
    iget v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mRoamingMatchCriteria:I

    if-eqz v0, :cond_2

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRoamingMatchCriteria: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mRoamingMatchCriteria:I

    invoke-static {v1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->getMatchCriteriaString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 267
    :cond_2
    iget v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mOpportunisticMatchCriteria:I

    if-eqz v0, :cond_3

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOpportunisticMatchCriteria: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mOpportunisticMatchCriteria:I

    .line 270
    invoke-static {v1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->getMatchCriteriaString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 272
    :cond_3
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 240
    invoke-super {p0, p1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 241
    return v1

    .line 244
    :cond_0
    instance-of v0, p1, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;

    if-nez v0, :cond_1

    .line 245
    return v1

    .line 248
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;

    .line 249
    .local v0, "rhs":Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;
    iget-object v2, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    iget-object v3, v0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    iget-object v3, v0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    .line 250
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mRoamingMatchCriteria:I

    iget v3, v0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mRoamingMatchCriteria:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mOpportunisticMatchCriteria:I

    iget v3, v0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mOpportunisticMatchCriteria:I

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 249
    :goto_0
    return v1
.end method

.method public whitelist getOperatorPlmnIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getOpportunistic()I
    .locals 1

    .line 225
    iget v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mOpportunisticMatchCriteria:I

    return v0
.end method

.method public whitelist getRoaming()I
    .locals 1

    .line 215
    iget v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mRoamingMatchCriteria:I

    return v0
.end method

.method public whitelist getSimSpecificCarrierIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 230
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 231
    invoke-super {p0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mRoamingMatchCriteria:I

    .line 234
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mOpportunisticMatchCriteria:I

    .line 235
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 230
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .locals 5

    .line 169
    invoke-super {p0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 171
    .local v0, "result":Landroid/os/PersistableBundle;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v2, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->STRING_SERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;

    .line 172
    invoke-static {v1, v2}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->fromList(Ljava/util/List;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 174
    .local v1, "plmnIdsBundle":Landroid/os/PersistableBundle;
    const-string v2, "mAllowedNetworkPlmnIds"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 176
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v3, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->INTEGER_SERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;

    .line 177
    invoke-static {v2, v3}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->fromList(Ljava/util/List;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 179
    .local v2, "specificCarrierIdsBundle":Landroid/os/PersistableBundle;
    const-string v3, "mAllowedSpecificCarrierIds"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 181
    iget v3, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mRoamingMatchCriteria:I

    const-string v4, "mRoamingMatchCriteria"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 182
    iget v3, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mOpportunisticMatchCriteria:I

    const-string v4, "mOpportunisticMatchCriteria"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 184
    return-object v0
.end method

.method protected blacklist validate()V
    .locals 2

    .line 95
    invoke-super {p0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validate()V

    .line 96
    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    invoke-static {v0}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->validatePlmnIds(Ljava/util/Set;)V

    .line 97
    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    const-string v1, "matchingCarrierIds is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    iget v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mRoamingMatchCriteria:I

    const-string v1, "mRoamingMatchCriteria"

    invoke-static {v0, v1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    .line 99
    iget v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mOpportunisticMatchCriteria:I

    const-string v1, "mOpportunisticMatchCriteria"

    invoke-static {v0, v1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    .line 100
    return-void
.end method
