.class public final Landroid/net/vcn/VcnNetworkPolicyResult;
.super Ljava/lang/Object;
.source "VcnNetworkPolicyResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/vcn/VcnNetworkPolicyResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mIsTearDownRequested:Z

.field private final blacklist mNetworkCapabilities:Landroid/net/NetworkCapabilities;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 114
    new-instance v0, Landroid/net/vcn/VcnNetworkPolicyResult$1;

    invoke-direct {v0}, Landroid/net/vcn/VcnNetworkPolicyResult$1;-><init>()V

    sput-object v0, Landroid/net/vcn/VcnNetworkPolicyResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ZLandroid/net/NetworkCapabilities;)V
    .locals 1
    .param p1, "isTearDownRequested"    # Z
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "networkCapabilities must be non-null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    iput-boolean p1, p0, Landroid/net/vcn/VcnNetworkPolicyResult;->mIsTearDownRequested:Z

    .line 52
    iput-object p2, p0, Landroid/net/vcn/VcnNetworkPolicyResult;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 53
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 82
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 83
    :cond_0
    instance-of v1, p1, Landroid/net/vcn/VcnNetworkPolicyResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 84
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/net/vcn/VcnNetworkPolicyResult;

    .line 86
    .local v1, "that":Landroid/net/vcn/VcnNetworkPolicyResult;
    iget-boolean v3, p0, Landroid/net/vcn/VcnNetworkPolicyResult;->mIsTearDownRequested:Z

    iget-boolean v4, v1, Landroid/net/vcn/VcnNetworkPolicyResult;->mIsTearDownRequested:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/net/vcn/VcnNetworkPolicyResult;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v4, v1, Landroid/net/vcn/VcnNetworkPolicyResult;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 87
    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 86
    :goto_0
    return v0
.end method

.method public whitelist getNetworkCapabilities()Landroid/net/NetworkCapabilities;
    .locals 1

    .line 72
    iget-object v0, p0, Landroid/net/vcn/VcnNetworkPolicyResult;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/net/vcn/VcnNetworkPolicyResult;->mIsTearDownRequested:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/vcn/VcnNetworkPolicyResult;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isTeardownRequested()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Landroid/net/vcn/VcnNetworkPolicyResult;->mIsTearDownRequested:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VcnNetworkPolicyResult { mIsTeardownRequested = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/vcn/VcnNetworkPolicyResult;->mIsTearDownRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNetworkCapabilities"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/vcn/VcnNetworkPolicyResult;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 109
    iget-boolean v0, p0, Landroid/net/vcn/VcnNetworkPolicyResult;->mIsTearDownRequested:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 110
    iget-object v0, p0, Landroid/net/vcn/VcnNetworkPolicyResult;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 111
    return-void
.end method
