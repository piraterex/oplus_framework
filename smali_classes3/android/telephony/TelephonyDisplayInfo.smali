.class public final Landroid/telephony/TelephonyDisplayInfo;
.super Ljava/lang/Object;
.source "TelephonyDisplayInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/TelephonyDisplayInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist OVERRIDE_NETWORK_TYPE_LTE_ADVANCED_PRO:I = 0x2

.field public static final whitelist OVERRIDE_NETWORK_TYPE_LTE_CA:I = 0x1

.field public static final whitelist OVERRIDE_NETWORK_TYPE_NONE:I = 0x0

.field public static final whitelist OVERRIDE_NETWORK_TYPE_NR_ADVANCED:I = 0x5

.field public static final whitelist OVERRIDE_NETWORK_TYPE_NR_NSA:I = 0x3

.field public static final whitelist OVERRIDE_NETWORK_TYPE_NR_NSA_MMWAVE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final blacklist mNetworkType:I

.field private final blacklist mOverrideNetworkType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 144
    new-instance v0, Landroid/telephony/TelephonyDisplayInfo$1;

    invoke-direct {v0}, Landroid/telephony/TelephonyDisplayInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyDisplayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 0
    .param p1, "networkType"    # I
    .param p2, "overrideNetworkType"    # I

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p1, p0, Landroid/telephony/TelephonyDisplayInfo;->mNetworkType:I

    .line 106
    iput p2, p0, Landroid/telephony/TelephonyDisplayInfo;->mOverrideNetworkType:I

    .line 107
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mNetworkType:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mOverrideNetworkType:I

    .line 113
    return-void
.end method

.method public static blacklist overrideNetworkTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .line 184
    packed-switch p0, :pswitch_data_0

    .line 191
    const-string v0, "UNKNOWN"

    return-object v0

    .line 190
    :pswitch_0
    const-string v0, "NR_ADVANCED"

    return-object v0

    .line 189
    :pswitch_1
    const-string v0, "NR_NSA_MMWAVE"

    return-object v0

    .line 188
    :pswitch_2
    const-string v0, "NR_NSA"

    return-object v0

    .line 187
    :pswitch_3
    const-string v0, "LTE_ADV_PRO"

    return-object v0

    .line 186
    :pswitch_4
    const-string v0, "LTE_CA"

    return-object v0

    .line 185
    :pswitch_5
    const-string v0, "NONE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 164
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 165
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 166
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/TelephonyDisplayInfo;

    .line 167
    .local v2, "that":Landroid/telephony/TelephonyDisplayInfo;
    iget v3, p0, Landroid/telephony/TelephonyDisplayInfo;->mNetworkType:I

    iget v4, v2, Landroid/telephony/TelephonyDisplayInfo;->mNetworkType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/TelephonyDisplayInfo;->mOverrideNetworkType:I

    iget v4, v2, Landroid/telephony/TelephonyDisplayInfo;->mOverrideNetworkType:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 165
    .end local v2    # "that":Landroid/telephony/TelephonyDisplayInfo;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getNetworkType()I
    .locals 1

    .line 123
    iget v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mNetworkType:I

    return v0
.end method

.method public whitelist getOverrideNetworkType()I
    .locals 1

    .line 135
    iget v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mOverrideNetworkType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 173
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/TelephonyDisplayInfo;->mNetworkType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/TelephonyDisplayInfo;->mOverrideNetworkType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TelephonyDisplayInfo {network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/TelephonyDisplayInfo;->mNetworkType:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", override="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/TelephonyDisplayInfo;->mOverrideNetworkType:I

    .line 198
    invoke-static {v1}, Landroid/telephony/TelephonyDisplayInfo;->overrideNetworkTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 140
    iget v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mOverrideNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    return-void
.end method
