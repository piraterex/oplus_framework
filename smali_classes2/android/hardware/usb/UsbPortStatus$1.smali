.class Landroid/hardware/usb/UsbPortStatus$1;
.super Ljava/lang/Object;
.source "UsbPortStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/UsbPortStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/usb/UsbPortStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/UsbPortStatus;
    .locals 20
    .param p1, "in"    # Landroid/os/Parcel;

    .line 491
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 492
    .local v10, "currentMode":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 493
    .local v11, "currentPowerRole":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 494
    .local v12, "currentDataRole":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 495
    .local v13, "supportedRoleCombinations":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 496
    .local v14, "contaminantProtectionStatus":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 497
    .local v15, "contaminantDetectionStatus":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 498
    .local v16, "usbDataStatus":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 499
    .local v17, "powerTransferLimited":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 500
    .local v18, "powerBrickConnectionStatus":I
    new-instance v19, Landroid/hardware/usb/UsbPortStatus;

    move-object/from16 v0, v19

    move v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    invoke-direct/range {v0 .. v9}, Landroid/hardware/usb/UsbPortStatus;-><init>(IIIIIIIZI)V

    return-object v19
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 488
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbPortStatus$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/usb/UsbPortStatus;
    .locals 1
    .param p1, "size"    # I

    .line 508
    new-array v0, p1, [Landroid/hardware/usb/UsbPortStatus;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 488
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbPortStatus$1;->newArray(I)[Landroid/hardware/usb/UsbPortStatus;

    move-result-object p1

    return-object p1
.end method
