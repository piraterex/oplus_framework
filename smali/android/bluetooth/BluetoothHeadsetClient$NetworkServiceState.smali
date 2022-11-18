.class public final Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;
.super Ljava/lang/Object;
.source "BluetoothHeadsetClient.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHeadsetClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkServiceState"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDevice:Landroid/bluetooth/BluetoothDevice;

.field private final blacklist mIsRoaming:Z

.field private final blacklist mIsServiceAvailable:Z

.field private final blacklist mOperatorName:Ljava/lang/String;

.field private final blacklist mSignalStrength:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 1851
    new-instance v0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/bluetooth/BluetoothDevice;ZLjava/lang/String;IZ)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "isServiceAvailable"    # Z
    .param p3, "operatorName"    # Ljava/lang/String;
    .param p4, "signalStrength"    # I
    .param p5, "isRoaming"    # Z

    .line 1766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1767
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1768
    iput-boolean p2, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mIsServiceAvailable:Z

    .line 1769
    iput-object p3, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mOperatorName:Ljava/lang/String;

    .line 1770
    iput p4, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mSignalStrength:I

    .line 1771
    iput-boolean p5, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mIsRoaming:Z

    .line 1772
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 1880
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1783
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public whitelist getNetworkOperatorName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1808
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSignalStrength()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1833
    iget v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mSignalStrength:I

    return v0
.end method

.method public whitelist isRoaming()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1845
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mIsRoaming:Z

    return v0
.end method

.method public whitelist isServiceAvailable()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1795
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mIsServiceAvailable:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1868
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1869
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mIsServiceAvailable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1870
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mOperatorName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1871
    iget v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1872
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;->mIsRoaming:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1873
    return-void
.end method
