.class public final Landroid/net/vcn/VcnConfig;
.super Ljava/lang/Object;
.source "VcnConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/vcn/VcnConfig$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/vcn/VcnConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist GATEWAY_CONNECTION_CONFIGS_KEY:Ljava/lang/String; = "mGatewayConnectionConfigs"

.field private static final blacklist IS_TEST_MODE_PROFILE_KEY:Ljava/lang/String; = "mIsTestModeProfile"

.field private static final blacklist PACKAGE_NAME_KEY:Ljava/lang/String; = "mPackageName"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mGatewayConnectionConfigs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/vcn/VcnGatewayConnectionConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIsTestModeProfile:Z

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 47
    const-class v0, Landroid/net/vcn/VcnConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/vcn/VcnConfig;->TAG:Ljava/lang/String;

    .line 172
    new-instance v0, Landroid/net/vcn/VcnConfig$1;

    invoke-direct {v0}, Landroid/net/vcn/VcnConfig$1;-><init>()V

    sput-object v0, Landroid/net/vcn/VcnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PersistableBundle;)V
    .locals 3
    .param p1, "in"    # Landroid/os/PersistableBundle;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string v0, "mPackageName"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vcn/VcnConfig;->mPackageName:Ljava/lang/String;

    .line 79
    nop

    .line 80
    const-string v0, "mGatewayConnectionConfigs"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 81
    .local v0, "gatewayConnectionConfigsBundle":Landroid/os/PersistableBundle;
    new-instance v1, Landroid/util/ArraySet;

    new-instance v2, Landroid/net/vcn/VcnConfig$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/net/vcn/VcnConfig$$ExternalSyntheticLambda1;-><init>()V

    .line 83
    invoke-static {v0, v2}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/net/vcn/VcnConfig;->mGatewayConnectionConfigs:Ljava/util/Set;

    .line 85
    const-string v1, "mIsTestModeProfile"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/net/vcn/VcnConfig;->mIsTestModeProfile:Z

    .line 87
    invoke-direct {p0}, Landroid/net/vcn/VcnConfig;->validate()V

    .line 88
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/util/Set;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "isTestModeProfile"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/net/vcn/VcnGatewayConnectionConfig;",
            ">;Z)V"
        }
    .end annotation

    .line 61
    .local p2, "gatewayConnectionConfigs":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/vcn/VcnGatewayConnectionConfig;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/net/vcn/VcnConfig;->mPackageName:Ljava/lang/String;

    .line 63
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 64
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vcn/VcnConfig;->mGatewayConnectionConfigs:Ljava/util/Set;

    .line 65
    iput-boolean p3, p0, Landroid/net/vcn/VcnConfig;->mIsTestModeProfile:Z

    .line 67
    invoke-direct {p0}, Landroid/net/vcn/VcnConfig;->validate()V

    .line 68
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/util/Set;ZLandroid/net/vcn/VcnConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/net/vcn/VcnConfig;-><init>(Ljava/lang/String;Ljava/util/Set;Z)V

    return-void
.end method

.method private blacklist validate()V
    .locals 2

    .line 91
    iget-object v0, p0, Landroid/net/vcn/VcnConfig;->mPackageName:Ljava/lang/String;

    const-string v1, "packageName was null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Landroid/net/vcn/VcnConfig;->mGatewayConnectionConfigs:Ljava/util/Set;

    const-string v1, "gatewayConnectionConfigs was empty"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkCollectionNotEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 94
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 149
    instance-of v0, p1, Landroid/net/vcn/VcnConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 150
    return v1

    .line 153
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/net/vcn/VcnConfig;

    .line 154
    .local v0, "rhs":Landroid/net/vcn/VcnConfig;
    iget-object v2, p0, Landroid/net/vcn/VcnConfig;->mPackageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/vcn/VcnConfig;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/vcn/VcnConfig;->mGatewayConnectionConfigs:Ljava/util/Set;

    iget-object v3, v0, Landroid/net/vcn/VcnConfig;->mGatewayConnectionConfigs:Ljava/util/Set;

    .line 155
    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/net/vcn/VcnConfig;->mIsTestModeProfile:Z

    iget-boolean v3, v0, Landroid/net/vcn/VcnConfig;->mIsTestModeProfile:Z

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 154
    :goto_0
    return v1
.end method

.method public whitelist getGatewayConnectionConfigs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/net/vcn/VcnGatewayConnectionConfig;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Landroid/net/vcn/VcnConfig;->mGatewayConnectionConfigs:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getProvisioningPackageName()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Landroid/net/vcn/VcnConfig;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 144
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/vcn/VcnConfig;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/vcn/VcnConfig;->mGatewayConnectionConfigs:Ljava/util/Set;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/vcn/VcnConfig;->mIsTestModeProfile:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isTestModeProfile()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Landroid/net/vcn/VcnConfig;->mIsTestModeProfile:Z

    return v0
.end method

.method public blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .locals 4

    .line 128
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 130
    .local v0, "result":Landroid/os/PersistableBundle;
    iget-object v1, p0, Landroid/net/vcn/VcnConfig;->mPackageName:Ljava/lang/String;

    const-string v2, "mPackageName"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/net/vcn/VcnConfig;->mGatewayConnectionConfigs:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Landroid/net/vcn/VcnConfig$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/net/vcn/VcnConfig$$ExternalSyntheticLambda0;-><init>()V

    .line 133
    invoke-static {v1, v2}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->fromList(Ljava/util/List;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 136
    .local v1, "gatewayConnectionConfigsBundle":Landroid/os/PersistableBundle;
    const-string v2, "mGatewayConnectionConfigs"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 137
    iget-boolean v2, p0, Landroid/net/vcn/VcnConfig;->mIsTestModeProfile:Z

    const-string v3, "mIsTestModeProfile"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 139
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 168
    invoke-virtual {p0}, Landroid/net/vcn/VcnConfig;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 169
    return-void
.end method
