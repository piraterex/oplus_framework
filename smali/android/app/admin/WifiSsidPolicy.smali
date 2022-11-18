.class public final Landroid/app/admin/WifiSsidPolicy;
.super Ljava/lang/Object;
.source "WifiSsidPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/WifiSsidPolicy$WifiSsidPolicyType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/WifiSsidPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist WIFI_SSID_POLICY_TYPE_ALLOWLIST:I = 0x0

.field public static final whitelist WIFI_SSID_POLICY_TYPE_DENYLIST:I = 0x1


# instance fields
.field private blacklist mPolicyType:I

.field private blacklist mSsids:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/wifi/WifiSsid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 120
    new-instance v0, Landroid/app/admin/WifiSsidPolicy$1;

    invoke-direct {v0}, Landroid/app/admin/WifiSsidPolicy$1;-><init>()V

    sput-object v0, Landroid/app/admin/WifiSsidPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/util/Set;)V
    .locals 2
    .param p1, "policyType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Landroid/net/wifi/WifiSsid;",
            ">;)V"
        }
    .end annotation

    .line 84
    .local p2, "ssids":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/wifi/WifiSsid;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid policy type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1
    :goto_0
    iput p1, p0, Landroid/app/admin/WifiSsidPolicy;->mPolicyType:I

    .line 93
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/admin/WifiSsidPolicy;->mSsids:Landroid/util/ArraySet;

    .line 94
    return-void

    .line 86
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SSID list cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/WifiSsidPolicy;->mPolicyType:I

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/WifiSsidPolicy;->mSsids:Landroid/util/ArraySet;

    .line 99
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/admin/WifiSsidPolicy-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/admin/WifiSsidPolicy;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 140
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 141
    return v0

    .line 143
    :cond_0
    instance-of v1, p1, Landroid/app/admin/WifiSsidPolicy;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 144
    return v2

    .line 146
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/app/admin/WifiSsidPolicy;

    .line 147
    .local v1, "that":Landroid/app/admin/WifiSsidPolicy;
    iget v3, p0, Landroid/app/admin/WifiSsidPolicy;->mPolicyType:I

    iget v4, v1, Landroid/app/admin/WifiSsidPolicy;->mPolicyType:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/admin/WifiSsidPolicy;->mSsids:Landroid/util/ArraySet;

    iget-object v4, v1, Landroid/app/admin/WifiSsidPolicy;->mSsids:Landroid/util/ArraySet;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist getPolicyType()I
    .locals 1

    .line 113
    iget v0, p0, Landroid/app/admin/WifiSsidPolicy;->mPolicyType:I

    return v0
.end method

.method public whitelist getSsids()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/net/wifi/WifiSsid;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Landroid/app/admin/WifiSsidPolicy;->mSsids:Landroid/util/ArraySet;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 152
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/app/admin/WifiSsidPolicy;->mPolicyType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/admin/WifiSsidPolicy;->mSsids:Landroid/util/ArraySet;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 134
    iget v0, p0, Landroid/app/admin/WifiSsidPolicy;->mPolicyType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-object v0, p0, Landroid/app/admin/WifiSsidPolicy;->mSsids:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 136
    return-void
.end method
