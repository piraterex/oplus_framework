.class public final Landroid/bluetooth/BluetoothLeBroadcastSubgroup;
.super Ljava/lang/Object;
.source "BluetoothLeBroadcastSubgroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothLeBroadcastSubgroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist UNKNOWN_VALUE_PLACEHOLDER:I = -0x1


# instance fields
.field private final blacklist mChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeBroadcastChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCodecId:J

.field private final blacklist mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

.field private final blacklist mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 165
    new-instance v0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(JLandroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;Landroid/bluetooth/BluetoothLeAudioContentMetadata;Ljava/util/List;)V
    .locals 0
    .param p1, "codecId"    # J
    .param p3, "codecSpecificConfig"    # Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;
    .param p4, "contentMetadata"    # Landroid/bluetooth/BluetoothLeAudioContentMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;",
            "Landroid/bluetooth/BluetoothLeAudioContentMetadata;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeBroadcastChannel;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p5, "channels":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothLeBroadcastChannel;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-wide p1, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mCodecId:J

    .line 47
    iput-object p3, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    .line 48
    iput-object p4, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 49
    iput-object p5, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mChannels:Ljava/util/List;

    .line 50
    return-void
.end method

.method synthetic constructor blacklist <init>(JLandroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;Landroid/bluetooth/BluetoothLeAudioContentMetadata;Ljava/util/List;Landroid/bluetooth/BluetoothLeBroadcastSubgroup-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;-><init>(JLandroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;Landroid/bluetooth/BluetoothLeAudioContentMetadata;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 54
    instance-of v0, p1, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 55
    return v1

    .line 57
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;

    .line 58
    .local v0, "other":Landroid/bluetooth/BluetoothLeBroadcastSubgroup;
    iget-wide v2, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mCodecId:J

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->getCodecId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    .line 59
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->getCodecSpecificConfig()Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 60
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->getContentMetadata()Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mChannels:Ljava/util/List;

    .line 61
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->getChannels()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 58
    :goto_0
    return v1
.end method

.method public whitelist getChannels()Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeBroadcastChannel;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mChannels:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getCodecId()J
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 84
    iget-wide v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mCodecId:J

    return-wide v0
.end method

.method public whitelist getCodecSpecificConfig()Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 96
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    return-object v0
.end method

.method public whitelist getContentMetadata()Landroid/bluetooth/BluetoothLeAudioContentMetadata;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 107
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    return-object v0
.end method

.method public whitelist hasChannelPreference()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 121
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 66
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mCodecId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mChannels:Ljava/util/List;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 154
    iget-wide v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mCodecId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 155
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 156
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 157
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mChannels:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 158
    return-void
.end method
