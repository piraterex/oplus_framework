.class public final Landroid/bluetooth/BluetoothLeBroadcastChannel;
.super Ljava/lang/Object;
.source "BluetoothLeBroadcastChannel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothLeBroadcastChannel;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist UNKNOWN_VALUE_PLACEHOLDER:I = -0x1


# instance fields
.field private final blacklist mChannelIndex:I

.field private final blacklist mCodecMetadata:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

.field private final blacklist mIsSelected:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 124
    new-instance v0, Landroid/bluetooth/BluetoothLeBroadcastChannel$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothLeBroadcastChannel$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothLeBroadcastChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ZILandroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;)V
    .locals 0
    .param p1, "isSelected"    # Z
    .param p2, "channelIndex"    # I
    .param p3, "codecMetadata"    # Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel;->mIsSelected:Z

    .line 44
    iput p2, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel;->mChannelIndex:I

    .line 45
    iput-object p3, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel;->mCodecMetadata:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    .line 46
    return-void
.end method

.method synthetic constructor blacklist <init>(ZILandroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;Landroid/bluetooth/BluetoothLeBroadcastChannel-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastChannel;-><init>(ZILandroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 50
    instance-of v0, p1, Landroid/bluetooth/BluetoothLeBroadcastChannel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 51
    return v1

    .line 53
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothLeBroadcastChannel;

    .line 54
    .local v0, "other":Landroid/bluetooth/BluetoothLeBroadcastChannel;
    iget-boolean v2, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel;->mIsSelected:Z

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastChannel;->isSelected()Z

    move-result v3

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel;->mChannelIndex:I

    .line 55
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastChannel;->getChannelIndex()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel;->mCodecMetadata:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    .line 56
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastChannel;->getCodecMetadata()Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 54
    :goto_0
    return v1
.end method

.method public whitelist getChannelIndex()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 85
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel;->mChannelIndex:I

    return v0
.end method

.method public whitelist getCodecMetadata()Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 96
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel;->mCodecMetadata:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel;->mIsSelected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel;->mChannelIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel;->mCodecMetadata:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isSelected()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 74
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel;->mIsSelected:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 114
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel;->mIsSelected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 115
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel;->mChannelIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel;->mCodecMetadata:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 117
    return-void
.end method
