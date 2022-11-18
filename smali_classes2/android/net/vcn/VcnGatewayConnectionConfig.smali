.class public final Landroid/net/vcn/VcnGatewayConnectionConfig;
.super Ljava/lang/Object;
.source "VcnGatewayConnectionConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;,
        Landroid/net/vcn/VcnGatewayConnectionConfig$VcnSupportedCapability;
    }
.end annotation


# static fields
.field public static final blacklist ALLOWED_CAPABILITIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_MAX_MTU:I = 0x5dc

.field private static final blacklist DEFAULT_RETRY_INTERVALS_MS:[J

.field public static final blacklist DEFAULT_UNDERLYING_NETWORK_TEMPLATES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/vcn/VcnUnderlyingNetworkTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist EXPOSED_CAPABILITIES_KEY:Ljava/lang/String; = "mExposedCapabilities"

.field private static final blacklist GATEWAY_CONNECTION_NAME_KEY:Ljava/lang/String; = "mGatewayConnectionName"

.field private static final blacklist MAX_MTU_KEY:Ljava/lang/String; = "mMaxMtu"

.field private static final blacklist MAX_RETRY_INTERVAL_COUNT:I = 0xa

.field private static final blacklist MINIMUM_REPEATING_RETRY_INTERVAL_MS:J

.field static final blacklist MIN_MTU_V6:I = 0x500

.field private static final blacklist RETRY_INTERVAL_MS_KEY:Ljava/lang/String; = "mRetryIntervalsMs"

.field private static final blacklist TUNNEL_CONNECTION_PARAMS_KEY:Ljava/lang/String; = "mTunnelConnectionParams"

.field public static final blacklist UNDERLYING_NETWORK_TEMPLATES_KEY:Ljava/lang/String; = "mUnderlyingNetworkTemplates"


# instance fields
.field private final blacklist mExposedCapabilities:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mGatewayConnectionName:Ljava/lang/String;

.field private final blacklist mMaxMtu:I

.field private final blacklist mRetryIntervalsMs:[J

.field private blacklist mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

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
.method static bridge synthetic blacklist -$$Nest$sfgetDEFAULT_RETRY_INTERVALS_MS()[J
    .locals 1

    sget-object v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->DEFAULT_RETRY_INTERVALS_MS:[J

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckValidCapability(I)V
    .locals 0

    invoke-static {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->checkValidCapability(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smvalidateNetworkTemplateList(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->validateNetworkTemplateList(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smvalidateRetryInterval([J)V
    .locals 0

    invoke-static {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->validateRetryInterval([J)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 16

    .line 96
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 97
    .local v0, "allowedCaps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    const/16 v8, 0x9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    const/16 v8, 0xc

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    const/16 v8, 0x17

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v8

    sput-object v8, Landroid/net/vcn/VcnGatewayConnectionConfig;->ALLOWED_CAPABILITIES:Ljava/util/Set;

    .line 150
    .end local v0    # "allowedCaps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0xf

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    sput-wide v10, Landroid/net/vcn/VcnGatewayConnectionConfig;->MINIMUM_REPEATING_RETRY_INTERVAL_MS:J

    .line 152
    new-array v0, v7, [J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 154
    const-wide/16 v10, 0x1

    invoke-virtual {v7, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    aput-wide v12, v0, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 155
    const-wide/16 v12, 0x2

    invoke-virtual {v1, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    aput-wide v12, v0, v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 156
    const-wide/16 v12, 0x5

    invoke-virtual {v1, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    aput-wide v14, v0, v3

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 157
    const-wide/16 v14, 0x1e

    invoke-virtual {v1, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    aput-wide v14, v0, v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 158
    invoke-virtual {v1, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    aput-wide v3, v0, v5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 159
    invoke-virtual {v1, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    aput-wide v3, v0, v6

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 160
    invoke-virtual {v1, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    const/4 v1, 0x6

    aput-wide v3, v0, v1

    sput-object v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->DEFAULT_RETRY_INTERVALS_MS:[J

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->DEFAULT_UNDERLYING_NETWORK_TEMPLATES:Ljava/util/List;

    .line 169
    new-instance v1, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;

    invoke-direct {v1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;-><init>()V

    .line 171
    invoke-virtual {v1, v2}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->setOpportunistic(I)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;

    move-result-object v1

    .line 172
    invoke-virtual {v1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->build()Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;

    move-result-object v1

    .line 169
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v1, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;

    invoke-direct {v1}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;-><init>()V

    .line 176
    invoke-virtual {v1}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->build()Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;

    move-result-object v1

    .line 174
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v1, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;

    invoke-direct {v1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;-><init>()V

    .line 180
    invoke-virtual {v1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->build()Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;

    move-result-object v1

    .line 178
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PersistableBundle;)V
    .locals 5
    .param p1, "in"    # Landroid/os/PersistableBundle;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    nop

    .line 232
    const-string v0, "mTunnelConnectionParams"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 233
    .local v0, "tunnelConnectionParamsBundle":Landroid/os/PersistableBundle;
    const-string/jumbo v1, "tunnelConnectionParamsBundle was null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 236
    nop

    .line 237
    const-string v1, "mExposedCapabilities"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 238
    .local v1, "exposedCapsBundle":Landroid/os/PersistableBundle;
    const-string v2, "mGatewayConnectionName"

    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayConnectionName:Ljava/lang/String;

    .line 239
    nop

    .line 240
    invoke-static {v0}, Landroid/net/vcn/persistablebundleutils/TunnelConnectionParamsUtils;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-result-object v2

    iput-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 241
    new-instance v2, Ljava/util/TreeSet;

    sget-object v3, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->INTEGER_DESERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;

    invoke-static {v1, v3}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    .line 244
    nop

    .line 245
    const-string v2, "mUnderlyingNetworkTemplates"

    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 247
    .local v2, "networkTemplatesBundle":Landroid/os/PersistableBundle;
    if-nez v2, :cond_0

    .line 251
    new-instance v3, Ljava/util/ArrayList;

    sget-object v4, Landroid/net/vcn/VcnGatewayConnectionConfig;->DEFAULT_UNDERLYING_NETWORK_TEMPLATES:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    goto :goto_0

    .line 253
    :cond_0
    new-instance v3, Landroid/net/vcn/VcnGatewayConnectionConfig$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Landroid/net/vcn/VcnGatewayConnectionConfig$$ExternalSyntheticLambda1;-><init>()V

    .line 254
    invoke-static {v2, v3}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    .line 259
    :goto_0
    const-string v3, "mRetryIntervalsMs"

    invoke-virtual {p1, v3}, Landroid/os/PersistableBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v3

    iput-object v3, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    .line 260
    const-string v3, "mMaxMtu"

    invoke-virtual {p1, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMaxMtu:I

    .line 262
    invoke-direct {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->validate()V

    .line 263
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Landroid/net/ipsec/ike/IkeTunnelConnectionParams;Ljava/util/Set;Ljava/util/List;[JI)V
    .locals 2
    .param p1, "gatewayConnectionName"    # Ljava/lang/String;
    .param p2, "tunnelConnectionParams"    # Landroid/net/ipsec/ike/IkeTunnelConnectionParams;
    .param p5, "retryIntervalsMs"    # [J
    .param p6, "maxMtu"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/ipsec/ike/IkeTunnelConnectionParams;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/vcn/VcnUnderlyingNetworkTemplate;",
            ">;[JI)V"
        }
    .end annotation

    .line 211
    .local p3, "exposedCapabilities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p4, "underlyingNetworkTemplates":Ljava/util/List;, "Ljava/util/List<Landroid/net/vcn/VcnUnderlyingNetworkTemplate;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayConnectionName:Ljava/lang/String;

    .line 213
    iput-object p2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 214
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p3}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    .line 215
    iput-object p5, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    .line 216
    iput p6, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMaxMtu:I

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    .line 219
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    sget-object v1, Landroid/net/vcn/VcnGatewayConnectionConfig;->DEFAULT_UNDERLYING_NETWORK_TEMPLATES:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 223
    :cond_0
    invoke-direct {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->validate()V

    .line 224
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/net/ipsec/ike/IkeTunnelConnectionParams;Ljava/util/Set;Ljava/util/List;[JILandroid/net/vcn/VcnGatewayConnectionConfig-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/net/vcn/VcnGatewayConnectionConfig;-><init>(Ljava/lang/String;Landroid/net/ipsec/ike/IkeTunnelConnectionParams;Ljava/util/Set;Ljava/util/List;[JI)V

    return-void
.end method

.method private static blacklist checkValidCapability(I)V
    .locals 3
    .param p0, "capability"    # I

    .line 285
    sget-object v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->ALLOWED_CAPABILITIES:Ljava/util/Set;

    .line 286
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkCapability "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 288
    return-void
.end method

.method private blacklist validate()V
    .locals 5

    .line 266
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayConnectionName:Ljava/lang/String;

    const-string v1, "gatewayConnectionName was null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 267
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    const-string/jumbo v1, "tunnel connection parameter was null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 269
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 270
    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 269
    :goto_0
    const-string v3, "exposedCapsBundle was null or empty"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 272
    invoke-virtual {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getAllExposedCapabilities()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 273
    .local v3, "cap":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/net/vcn/VcnGatewayConnectionConfig;->checkValidCapability(I)V

    .line 274
    .end local v3    # "cap":Ljava/lang/Integer;
    goto :goto_1

    .line 276
    :cond_1
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    invoke-static {v0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->validateNetworkTemplateList(Ljava/util/List;)V

    .line 277
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    const-string v3, "retryIntervalsMs was null"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 278
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    invoke-static {v0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->validateRetryInterval([J)V

    .line 280
    iget v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMaxMtu:I

    const/16 v3, 0x500

    if-lt v0, v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    const-string v0, "maxMtu must be at least IPv6 min MTU (1280)"

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 282
    return-void
.end method

.method private static blacklist validateNetworkTemplateList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/vcn/VcnUnderlyingNetworkTemplate;",
            ">;)V"
        }
    .end annotation

    .line 307
    .local p0, "networkPriorityRules":Ljava/util/List;, "Ljava/util/List<Landroid/net/vcn/VcnUnderlyingNetworkTemplate;>;"
    const-string v0, "networkPriorityRules is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 309
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 310
    .local v0, "existingRules":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/vcn/VcnUnderlyingNetworkTemplate;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;

    .line 311
    .local v2, "rule":Landroid/net/vcn/VcnUnderlyingNetworkTemplate;
    const-string v3, "Found null value VcnUnderlyingNetworkTemplate"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 312
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 315
    .end local v2    # "rule":Landroid/net/vcn/VcnUnderlyingNetworkTemplate;
    goto :goto_0

    .line 313
    .restart local v2    # "rule":Landroid/net/vcn/VcnUnderlyingNetworkTemplate;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Found duplicate VcnUnderlyingNetworkTemplate"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 316
    .end local v2    # "rule":Landroid/net/vcn/VcnUnderlyingNetworkTemplate;
    :cond_1
    return-void
.end method

.method private static blacklist validateRetryInterval([J)V
    .locals 5
    .param p0, "retryIntervalsMs"    # [J

    .line 291
    const/4 v0, 0x1

    if-eqz p0, :cond_0

    array-length v1, p0

    if-lez v1, :cond_0

    array-length v1, p0

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "retryIntervalsMs was null, empty or exceed max interval count"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 297
    array-length v1, p0

    sub-int/2addr v1, v0

    aget-wide v0, p0, v1

    .line 298
    .local v0, "repeatingInterval":J
    sget-wide v2, Landroid/net/vcn/VcnGatewayConnectionConfig;->MINIMUM_REPEATING_RETRY_INTERVAL_MS:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 303
    return-void

    .line 299
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Repeating retry interval was too short, must be a minimum of 15 minutes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 445
    instance-of v0, p1, Landroid/net/vcn/VcnGatewayConnectionConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 446
    return v1

    .line 449
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 450
    .local v0, "rhs":Landroid/net/vcn/VcnGatewayConnectionConfig;
    iget-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayConnectionName:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayConnectionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    iget-object v3, v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 451
    invoke-virtual {v2, v3}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    iget-object v3, v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    .line 452
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    iget-object v3, v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    .line 453
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    iget-object v3, v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    .line 454
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMaxMtu:I

    iget v3, v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMaxMtu:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 450
    :goto_0
    return v1
.end method

.method public blacklist getAllExposedCapabilities()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 368
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getExposedCapabilities()[I
    .locals 2

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getGatewayConnectionName()Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayConnectionName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMaxMtu()I
    .locals 1

    .line 398
    iget v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMaxMtu:I

    return v0
.end method

.method public whitelist getRetryIntervalsMillis()[J
    .locals 2

    .line 388
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;
    .locals 1

    .line 339
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    return-object v0
.end method

.method public whitelist getVcnUnderlyingNetworkPriorities()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/vcn/VcnUnderlyingNetworkTemplate;",
            ">;"
        }
    .end annotation

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 434
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayConnectionName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    .line 439
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMaxMtu:I

    .line 440
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 434
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .locals 6

    .line 409
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 411
    .local v0, "result":Landroid/os/PersistableBundle;
    iget-object v1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 412
    invoke-static {v1}, Landroid/net/vcn/persistablebundleutils/TunnelConnectionParamsUtils;->toPersistableBundle(Landroid/net/ipsec/ike/IkeTunnelConnectionParams;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 413
    .local v1, "tunnelConnectionParamsBundle":Landroid/os/PersistableBundle;
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v3, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->INTEGER_SERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;

    .line 414
    invoke-static {v2, v3}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->fromList(Ljava/util/List;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 417
    .local v2, "exposedCapsBundle":Landroid/os/PersistableBundle;
    iget-object v3, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    new-instance v4, Landroid/net/vcn/VcnGatewayConnectionConfig$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Landroid/net/vcn/VcnGatewayConnectionConfig$$ExternalSyntheticLambda0;-><init>()V

    .line 418
    invoke-static {v3, v4}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->fromList(Ljava/util/List;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 422
    .local v3, "networkTemplatesBundle":Landroid/os/PersistableBundle;
    iget-object v4, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayConnectionName:Ljava/lang/String;

    const-string v5, "mGatewayConnectionName"

    invoke-virtual {v0, v5, v4}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v4, "mTunnelConnectionParams"

    invoke-virtual {v0, v4, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 424
    const-string v4, "mExposedCapabilities"

    invoke-virtual {v0, v4, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 425
    const-string v4, "mUnderlyingNetworkTemplates"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 426
    iget-object v4, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    const-string v5, "mRetryIntervalsMs"

    invoke-virtual {v0, v5, v4}, Landroid/os/PersistableBundle;->putLongArray(Ljava/lang/String;[J)V

    .line 427
    iget v4, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMaxMtu:I

    const-string v5, "mMaxMtu"

    invoke-virtual {v0, v5, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 429
    return-object v0
.end method
