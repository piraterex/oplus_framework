.class Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification$1;
.super Ljava/lang/Object;
.source "IGnssVisibilityControlCallback.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 254
    new-instance v0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;

    invoke-direct {v0}, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;-><init>()V

    .line 255
    .local v0, "_aidl_out":Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;
    invoke-virtual {v0, p1}, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->readFromParcel(Landroid/os/Parcel;)V

    .line 256
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 260
    new-array v0, p1, [Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification$1;->newArray(I)[Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;

    move-result-object p1

    return-object p1
.end method
