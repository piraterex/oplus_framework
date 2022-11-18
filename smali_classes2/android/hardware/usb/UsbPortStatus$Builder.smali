.class public final Landroid/hardware/usb/UsbPortStatus$Builder;
.super Ljava/lang/Object;
.source "UsbPortStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/UsbPortStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mContaminantDetectionStatus:I

.field private blacklist mContaminantProtectionStatus:I

.field private blacklist mCurrentDataRole:I

.field private blacklist mCurrentMode:I

.field private blacklist mCurrentPowerRole:I

.field private blacklist mPowerBrickConnectionStatus:I

.field private blacklist mPowerTransferLimited:Z

.field private blacklist mSupportedRoleCombinations:I

.field private blacklist mUsbDataStatus:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentMode:I

    .line 530
    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentPowerRole:I

    .line 531
    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentDataRole:I

    .line 532
    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mContaminantProtectionStatus:I

    .line 533
    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mContaminantDetectionStatus:I

    .line 534
    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mUsbDataStatus:I

    .line 535
    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mPowerBrickConnectionStatus:I

    .line 536
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/hardware/usb/UsbPortStatus;
    .locals 11

    .line 626
    new-instance v10, Landroid/hardware/usb/UsbPortStatus;

    iget v1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentMode:I

    iget v2, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentPowerRole:I

    iget v3, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentDataRole:I

    iget v4, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mSupportedRoleCombinations:I

    iget v5, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mContaminantProtectionStatus:I

    iget v6, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mContaminantDetectionStatus:I

    iget v7, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mUsbDataStatus:I

    iget-boolean v8, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mPowerTransferLimited:Z

    iget v9, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mPowerBrickConnectionStatus:I

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/hardware/usb/UsbPortStatus;-><init>(IIIIIIIZI)V

    .line 630
    .local v0, "status":Landroid/hardware/usb/UsbPortStatus;
    return-object v0
.end method

.method public blacklist setContaminantStatus(II)Landroid/hardware/usb/UsbPortStatus$Builder;
    .locals 0
    .param p1, "contaminantProtectionStatus"    # I
    .param p2, "contaminantDetectionStatus"    # I

    .line 582
    iput p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mContaminantProtectionStatus:I

    .line 583
    iput p2, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mContaminantDetectionStatus:I

    .line 584
    return-object p0
.end method

.method public blacklist setCurrentMode(I)Landroid/hardware/usb/UsbPortStatus$Builder;
    .locals 0
    .param p1, "currentMode"    # I

    .line 545
    iput p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentMode:I

    .line 546
    return-object p0
.end method

.method public blacklist setCurrentRoles(II)Landroid/hardware/usb/UsbPortStatus$Builder;
    .locals 0
    .param p1, "currentPowerRole"    # I
    .param p2, "currentDataRole"    # I

    .line 557
    iput p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentPowerRole:I

    .line 558
    iput p2, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentDataRole:I

    .line 559
    return-object p0
.end method

.method public blacklist setPowerBrickConnectionStatus(I)Landroid/hardware/usb/UsbPortStatus$Builder;
    .locals 0
    .param p1, "powerBrickConnectionStatus"    # I

    .line 617
    iput p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mPowerBrickConnectionStatus:I

    .line 618
    return-object p0
.end method

.method public blacklist setPowerTransferLimited(Z)Landroid/hardware/usb/UsbPortStatus$Builder;
    .locals 0
    .param p1, "powerTransferLimited"    # Z

    .line 594
    iput-boolean p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mPowerTransferLimited:Z

    .line 595
    return-object p0
.end method

.method public blacklist setSupportedRoleCombinations(I)Landroid/hardware/usb/UsbPortStatus$Builder;
    .locals 0
    .param p1, "supportedRoleCombinations"    # I

    .line 569
    iput p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mSupportedRoleCombinations:I

    .line 570
    return-object p0
.end method

.method public blacklist setUsbDataStatus(I)Landroid/hardware/usb/UsbPortStatus$Builder;
    .locals 0
    .param p1, "usbDataStatus"    # I

    .line 605
    iput p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mUsbDataStatus:I

    .line 606
    return-object p0
.end method
