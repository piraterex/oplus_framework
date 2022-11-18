.class public final Landroid/bluetooth/BluetoothLeBroadcastMetadata;
.super Ljava/lang/Object;
.source "BluetoothLeBroadcastMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothLeBroadcastMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist PA_SYNC_INTERVAL_UNKNOWN:I = 0xffff
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist UNKNOWN_VALUE_PLACEHOLDER:I = -0x1


# instance fields
.field private final blacklist mBroadcastCode:[B

.field private final blacklist mBroadcastId:I

.field private final blacklist mIsEncrypted:Z

.field private final blacklist mPaSyncInterval:I

.field private final blacklist mPresentationDelayMicros:I

.field private final blacklist mSourceAddressType:I

.field private final blacklist mSourceAdvertisingSid:I

.field private final blacklist mSourceDevice:Landroid/bluetooth/BluetoothDevice;

.field private final blacklist mSubgroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeBroadcastSubgroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 270
    new-instance v0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILandroid/bluetooth/BluetoothDevice;IIIZ[BILjava/util/List;)V
    .locals 0
    .param p1, "sourceAddressType"    # I
    .param p2, "sourceDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "sourceAdvertisingSid"    # I
    .param p4, "broadcastId"    # I
    .param p5, "paSyncInterval"    # I
    .param p6, "isEncrypted"    # Z
    .param p7, "broadcastCode"    # [B
    .param p8, "presentationDelay"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/bluetooth/BluetoothDevice;",
            "IIIZ[BI",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeBroadcastSubgroup;",
            ">;)V"
        }
    .end annotation

    .line 68
    .local p9, "subgroups":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothLeBroadcastSubgroup;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceAddressType:I

    .line 70
    iput-object p2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    .line 71
    iput p3, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceAdvertisingSid:I

    .line 72
    iput p4, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastId:I

    .line 73
    iput p5, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPaSyncInterval:I

    .line 74
    iput-boolean p6, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mIsEncrypted:Z

    .line 75
    iput-object p7, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastCode:[B

    .line 76
    iput p8, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPresentationDelayMicros:I

    .line 77
    iput-object p9, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSubgroups:Ljava/util/List;

    .line 78
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/bluetooth/BluetoothDevice;IIIZ[BILjava/util/List;Landroid/bluetooth/BluetoothLeBroadcastMetadata-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;-><init>(ILandroid/bluetooth/BluetoothDevice;IIIZ[BILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 82
    instance-of v0, p1, Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 83
    return v1

    .line 85
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    .line 86
    .local v0, "other":Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    iget v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceAddressType:I

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSourceAddressType()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    .line 87
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSourceDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceAdvertisingSid:I

    .line 88
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSourceAdvertisingSid()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastId:I

    .line 89
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPaSyncInterval:I

    .line 90
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getPaSyncInterval()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mIsEncrypted:Z

    .line 91
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->isEncrypted()Z

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastCode:[B

    .line 92
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastCode()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPresentationDelayMicros:I

    .line 93
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getPresentationDelayMicros()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSubgroups:Ljava/util/List;

    .line 94
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSubgroups()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 86
    :goto_0
    return v1
.end method

.method public whitelist getBroadcastCode()[B
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 199
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastCode:[B

    return-object v0
.end method

.method public whitelist getBroadcastId()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 151
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastId:I

    return v0
.end method

.method public whitelist getPaSyncInterval()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 170
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPaSyncInterval:I

    return v0
.end method

.method public whitelist getPresentationDelayMicros()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 212
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPresentationDelayMicros:I

    return v0
.end method

.method public whitelist getSourceAddressType()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 115
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceAddressType:I

    return v0
.end method

.method public whitelist getSourceAdvertisingSid()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 140
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceAdvertisingSid:I

    return v0
.end method

.method public whitelist getSourceDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 127
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public whitelist getSubgroups()Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeBroadcastSubgroup;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSubgroups:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 99
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceAddressType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceAdvertisingSid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastId:I

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPaSyncInterval:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mIsEncrypted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastCode:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPresentationDelayMicros:I

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSubgroups:Ljava/util/List;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 99
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isEncrypted()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 181
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mIsEncrypted:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 242
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceAddressType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 244
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    :goto_0
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceAdvertisingSid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPaSyncInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mIsEncrypted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 254
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastCode:[B

    if-eqz v0, :cond_1

    .line 255
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastCode:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1

    .line 259
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    :goto_1
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPresentationDelayMicros:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSubgroups:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 263
    return-void
.end method
