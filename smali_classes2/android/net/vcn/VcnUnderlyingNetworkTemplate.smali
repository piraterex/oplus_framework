.class public abstract Landroid/net/vcn/VcnUnderlyingNetworkTemplate;
.super Ljava/lang/Object;
.source "VcnUnderlyingNetworkTemplate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/vcn/VcnUnderlyingNetworkTemplate$MatchCriteria;
    }
.end annotation


# static fields
.field static final blacklist DEFAULT_METERED_MATCH_CRITERIA:I = 0x0

.field public static final blacklist DEFAULT_MIN_BANDWIDTH_KBPS:I = 0x0

.field public static final whitelist MATCH_ANY:I = 0x0

.field private static final blacklist MATCH_CRITERIA_TO_STRING_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist MATCH_FORBIDDEN:I = 0x2

.field public static final whitelist MATCH_REQUIRED:I = 0x1

.field static final blacklist METERED_MATCH_KEY:Ljava/lang/String; = "mMeteredMatchCriteria"

.field static final blacklist MIN_ENTRY_DOWNSTREAM_BANDWIDTH_KBPS_KEY:Ljava/lang/String; = "mMinEntryDownstreamBandwidthKbps"

.field static final blacklist MIN_ENTRY_UPSTREAM_BANDWIDTH_KBPS_KEY:Ljava/lang/String; = "mMinEntryUpstreamBandwidthKbps"

.field static final blacklist MIN_EXIT_DOWNSTREAM_BANDWIDTH_KBPS_KEY:Ljava/lang/String; = "mMinExitDownstreamBandwidthKbps"

.field static final blacklist MIN_EXIT_UPSTREAM_BANDWIDTH_KBPS_KEY:Ljava/lang/String; = "mMinExitUpstreamBandwidthKbps"

.field static final blacklist NETWORK_PRIORITY_TYPE_CELL:I = 0x2

.field private static final blacklist NETWORK_PRIORITY_TYPE_KEY:Ljava/lang/String; = "mNetworkPriorityType"

.field static final blacklist NETWORK_PRIORITY_TYPE_WIFI:I = 0x1


# instance fields
.field private final blacklist mMeteredMatchCriteria:I

.field private final blacklist mMinEntryDownstreamBandwidthKbps:I

.field private final blacklist mMinEntryUpstreamBandwidthKbps:I

.field private final blacklist mMinExitDownstreamBandwidthKbps:I

.field private final blacklist mMinExitUpstreamBandwidthKbps:I

.field private final blacklist mNetworkPriorityType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->MATCH_CRITERIA_TO_STRING_MAP:Landroid/util/SparseArray;

    .line 78
    const/4 v1, 0x0

    const-string v2, "MATCH_ANY"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    const/4 v1, 0x1

    const-string v2, "MATCH_REQUIRED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    const/4 v1, 0x2

    const-string v2, "MATCH_FORBIDDEN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    return-void
.end method

.method constructor blacklist <init>(IIIIII)V
    .locals 0
    .param p1, "networkPriorityType"    # I
    .param p2, "meteredMatchCriteria"    # I
    .param p3, "minEntryUpstreamBandwidthKbps"    # I
    .param p4, "minExitUpstreamBandwidthKbps"    # I
    .param p5, "minEntryDownstreamBandwidthKbps"    # I
    .param p6, "minExitDownstreamBandwidthKbps"    # I

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput p1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mNetworkPriorityType:I

    .line 127
    iput p2, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMeteredMatchCriteria:I

    .line 128
    iput p3, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryUpstreamBandwidthKbps:I

    .line 129
    iput p4, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitUpstreamBandwidthKbps:I

    .line 130
    iput p5, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryDownstreamBandwidthKbps:I

    .line 131
    iput p6, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitDownstreamBandwidthKbps:I

    .line 132
    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/vcn/VcnUnderlyingNetworkTemplate;
    .locals 4
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 164
    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 166
    const-string v0, "mNetworkPriorityType"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 167
    .local v0, "networkPriorityType":I
    packed-switch v0, :pswitch_data_0

    .line 173
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid networkPriorityType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :pswitch_0
    invoke-static {p0}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;

    move-result-object v1

    return-object v1

    .line 169
    :pswitch_1
    invoke-static {p0}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static blacklist getMatchCriteriaString(I)Ljava/lang/String;
    .locals 1
    .param p0, "matchCriteria"    # I

    .line 226
    sget-object v0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->MATCH_CRITERIA_TO_STRING_MAP:Landroid/util/SparseArray;

    invoke-static {v0, p0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->getNameString(Landroid/util/SparseArray;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getNameString(Landroid/util/SparseArray;I)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 221
    .local p0, "toStringMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static blacklist validateMatchCriteria(ILjava/lang/String;)V
    .locals 3
    .param p0, "matchCriteria"    # I
    .param p1, "matchingCapability"    # Ljava/lang/String;

    .line 136
    sget-object v0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->MATCH_CRITERIA_TO_STRING_MAP:Landroid/util/SparseArray;

    .line 137
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid matching criteria: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 139
    return-void
.end method

.method static blacklist validateMinBandwidthKbps(II)V
    .locals 4
    .param p0, "minEntryBandwidth"    # I
    .param p1, "minExitBandwidth"    # I

    .line 143
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Invalid minEntryBandwidth, must be >= 0"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 145
    if-ltz p1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const-string v3, "Invalid minExitBandwidth, must be >= 0"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 147
    if-lt p0, p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    const-string v1, "Minimum entry bandwidth must be >= exit bandwidth"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 150
    return-void
.end method


# virtual methods
.method public blacklist dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 241
    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMeteredMatchCriteria:I

    if-eqz v0, :cond_0

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMeteredMatchCriteria: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMeteredMatchCriteria:I

    invoke-static {v1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->getMatchCriteriaString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 244
    :cond_0
    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryUpstreamBandwidthKbps:I

    if-eqz v0, :cond_1

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMinEntryUpstreamBandwidthKbps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryUpstreamBandwidthKbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 247
    :cond_1
    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitUpstreamBandwidthKbps:I

    if-eqz v0, :cond_2

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMinExitUpstreamBandwidthKbps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitUpstreamBandwidthKbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 250
    :cond_2
    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryDownstreamBandwidthKbps:I

    if-eqz v0, :cond_3

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMinEntryDownstreamBandwidthKbps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryDownstreamBandwidthKbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 253
    :cond_3
    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitDownstreamBandwidthKbps:I

    if-eqz v0, :cond_4

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMinExitDownstreamBandwidthKbps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitDownstreamBandwidthKbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 256
    :cond_4
    invoke-virtual {p0, p1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->dumpTransportSpecificFields(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 258
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 259
    return-void
.end method

.method abstract blacklist dumpTransportSpecificFields(Lcom/android/internal/util/IndentingPrintWriter;)V
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 206
    instance-of v0, p1, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 207
    return v1

    .line 210
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;

    .line 211
    .local v0, "rhs":Landroid/net/vcn/VcnUnderlyingNetworkTemplate;
    iget v2, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mNetworkPriorityType:I

    iget v3, v0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mNetworkPriorityType:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMeteredMatchCriteria:I

    iget v3, v0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMeteredMatchCriteria:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryUpstreamBandwidthKbps:I

    iget v3, v0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryUpstreamBandwidthKbps:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitUpstreamBandwidthKbps:I

    iget v3, v0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitUpstreamBandwidthKbps:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryDownstreamBandwidthKbps:I

    iget v3, v0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryDownstreamBandwidthKbps:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitDownstreamBandwidthKbps:I

    iget v3, v0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitDownstreamBandwidthKbps:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public whitelist getMetered()I
    .locals 1

    .line 268
    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMeteredMatchCriteria:I

    return v0
.end method

.method public whitelist getMinEntryDownstreamBandwidthKbps()I
    .locals 1

    .line 298
    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryDownstreamBandwidthKbps:I

    return v0
.end method

.method public whitelist getMinEntryUpstreamBandwidthKbps()I
    .locals 1

    .line 278
    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryUpstreamBandwidthKbps:I

    return v0
.end method

.method public whitelist getMinExitDownstreamBandwidthKbps()I
    .locals 1

    .line 308
    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitDownstreamBandwidthKbps:I

    return v0
.end method

.method public whitelist getMinExitUpstreamBandwidthKbps()I
    .locals 1

    .line 288
    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitUpstreamBandwidthKbps:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 195
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mNetworkPriorityType:I

    .line 196
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMeteredMatchCriteria:I

    .line 197
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryUpstreamBandwidthKbps:I

    .line 198
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitUpstreamBandwidthKbps:I

    .line 199
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryDownstreamBandwidthKbps:I

    .line 200
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitDownstreamBandwidthKbps:I

    .line 201
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 195
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .locals 3

    .line 181
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 183
    .local v0, "result":Landroid/os/PersistableBundle;
    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mNetworkPriorityType:I

    const-string v2, "mNetworkPriorityType"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 184
    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMeteredMatchCriteria:I

    const-string v2, "mMeteredMatchCriteria"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 185
    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryUpstreamBandwidthKbps:I

    const-string v2, "mMinEntryUpstreamBandwidthKbps"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 186
    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitUpstreamBandwidthKbps:I

    const-string v2, "mMinExitUpstreamBandwidthKbps"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 187
    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryDownstreamBandwidthKbps:I

    const-string v2, "mMinEntryDownstreamBandwidthKbps"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 188
    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitDownstreamBandwidthKbps:I

    const-string v2, "mMinExitDownstreamBandwidthKbps"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 190
    return-object v0
.end method

.method protected blacklist validate()V
    .locals 2

    .line 154
    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMeteredMatchCriteria:I

    const-string v1, "mMeteredMatchCriteria"

    invoke-static {v0, v1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    .line 155
    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryUpstreamBandwidthKbps:I

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitUpstreamBandwidthKbps:I

    invoke-static {v0, v1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMinBandwidthKbps(II)V

    .line 156
    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryDownstreamBandwidthKbps:I

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitDownstreamBandwidthKbps:I

    invoke-static {v0, v1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMinBandwidthKbps(II)V

    .line 157
    return-void
.end method
