.class public final Landroid/bluetooth/BluetoothHapPresetInfo;
.super Ljava/lang/Object;
.source "BluetoothHapPresetInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothHapPresetInfo$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothHapPresetInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mIsAvailable:Z

.field private blacklist mIsWritable:Z

.field private blacklist mPresetIndex:I

.field private blacklist mPresetName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Landroid/bluetooth/BluetoothHapPresetInfo$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothHapPresetInfo$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothHapPresetInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(ILjava/lang/String;ZZ)V
    .locals 1
    .param p1, "presetIndex"    # I
    .param p2, "presetName"    # Ljava/lang/String;
    .param p3, "isWritable"    # Z
    .param p4, "isAvailable"    # Z

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothHapPresetInfo;->mPresetName:Ljava/lang/String;

    .line 47
    iput p1, p0, Landroid/bluetooth/BluetoothHapPresetInfo;->mPresetIndex:I

    .line 48
    iput-object p2, p0, Landroid/bluetooth/BluetoothHapPresetInfo;->mPresetName:Ljava/lang/String;

    .line 49
    iput-boolean p3, p0, Landroid/bluetooth/BluetoothHapPresetInfo;->mIsWritable:Z

    .line 50
    iput-boolean p4, p0, Landroid/bluetooth/BluetoothHapPresetInfo;->mIsAvailable:Z

    .line 51
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothHapPresetInfo;->mPresetName:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothHapPresetInfo;->mPresetIndex:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothHapPresetInfo;->mPresetName:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothHapPresetInfo;->mIsWritable:Z

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothHapPresetInfo;->mIsAvailable:Z

    .line 63
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothHapPresetInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHapPresetInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getIndex()I
    .locals 1

    .line 71
    iget v0, p0, Landroid/bluetooth/BluetoothHapPresetInfo;->mPresetIndex:I

    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapPresetInfo;->mPresetName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist isAvailable()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHapPresetInfo;->mIsAvailable:Z

    return v0
.end method

.method public whitelist isWritable()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHapPresetInfo;->mIsWritable:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 123
    iget v0, p0, Landroid/bluetooth/BluetoothHapPresetInfo;->mPresetIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapPresetInfo;->mPresetName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHapPresetInfo;->mIsWritable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 126
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHapPresetInfo;->mIsAvailable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 127
    return-void
.end method
