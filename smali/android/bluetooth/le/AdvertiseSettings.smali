.class public final Landroid/bluetooth/le/AdvertiseSettings;
.super Ljava/lang/Object;
.source "AdvertiseSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/AdvertiseSettings$Builder;
    }
.end annotation


# static fields
.field public static final whitelist ADVERTISE_MODE_BALANCED:I = 0x1

.field public static final whitelist ADVERTISE_MODE_LOW_LATENCY:I = 0x2

.field public static final whitelist ADVERTISE_MODE_LOW_POWER:I = 0x0

.field public static final whitelist ADVERTISE_TX_POWER_HIGH:I = 0x3

.field public static final whitelist ADVERTISE_TX_POWER_LOW:I = 0x1

.field public static final whitelist ADVERTISE_TX_POWER_MEDIUM:I = 0x2

.field public static final whitelist ADVERTISE_TX_POWER_ULTRA_LOW:I = 0x0

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/le/AdvertiseSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LIMITED_ADVERTISING_MAX_MILLIS:I = 0x2bf20


# instance fields
.field private final blacklist mAdvertiseConnectable:Z

.field private final blacklist mAdvertiseMode:I

.field private final blacklist mAdvertiseTimeoutMillis:I

.field private final blacklist mAdvertiseTxPowerLevel:I

.field private final blacklist mOwnAddressType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 162
    new-instance v0, Landroid/bluetooth/le/AdvertiseSettings$1;

    invoke-direct {v0}, Landroid/bluetooth/le/AdvertiseSettings$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/AdvertiseSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIZII)V
    .locals 0
    .param p1, "advertiseMode"    # I
    .param p2, "advertiseTxPowerLevel"    # I
    .param p3, "advertiseConnectable"    # Z
    .param p4, "advertiseTimeout"    # I
    .param p5, "ownAddressType"    # I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseMode:I

    .line 87
    iput p2, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTxPowerLevel:I

    .line 88
    iput-boolean p3, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseConnectable:Z

    .line 89
    iput p4, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTimeoutMillis:I

    .line 90
    iput p5, p0, Landroid/bluetooth/le/AdvertiseSettings;->mOwnAddressType:I

    .line 91
    return-void
.end method

.method synthetic constructor blacklist <init>(IIZIILandroid/bluetooth/le/AdvertiseSettings-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/bluetooth/le/AdvertiseSettings;-><init>(IIZII)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseMode:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTxPowerLevel:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseConnectable:Z

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTimeoutMillis:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mOwnAddressType:I

    .line 99
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/le/AdvertiseSettings-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/bluetooth/le/AdvertiseSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getMode()I
    .locals 1

    .line 105
    iget v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseMode:I

    return v0
.end method

.method public whitelist getOwnAddressType()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 136
    iget v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mOwnAddressType:I

    return v0
.end method

.method public whitelist getTimeout()I
    .locals 1

    .line 126
    iget v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTimeoutMillis:I

    return v0
.end method

.method public whitelist getTxPowerLevel()I
    .locals 1

    .line 112
    iget v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTxPowerLevel:I

    return v0
.end method

.method public whitelist isConnectable()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseConnectable:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings [mAdvertiseMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdvertiseTxPowerLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTxPowerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdvertiseConnectable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseConnectable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdvertiseTimeoutMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTimeoutMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOwnAddressType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/AdvertiseSettings;->mOwnAddressType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

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

    .line 155
    iget v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTxPowerLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseConnectable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTimeoutMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mOwnAddressType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    return-void
.end method
