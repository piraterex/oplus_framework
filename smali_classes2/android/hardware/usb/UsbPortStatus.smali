.class public final Landroid/hardware/usb/UsbPortStatus;
.super Ljava/lang/Object;
.source "UsbPortStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/UsbPortStatus$Builder;,
        Landroid/hardware/usb/UsbPortStatus$PowerBrickConnectionStatus;,
        Landroid/hardware/usb/UsbPortStatus$UsbDataStatus;,
        Landroid/hardware/usb/UsbPortStatus$UsbPortMode;,
        Landroid/hardware/usb/UsbPortStatus$ContaminantProtectionStatus;,
        Landroid/hardware/usb/UsbPortStatus$ContaminantDetectionStatus;,
        Landroid/hardware/usb/UsbPortStatus$UsbDataRole;,
        Landroid/hardware/usb/UsbPortStatus$UsbPowerRole;
    }
.end annotation


# static fields
.field public static final blacklist CONTAMINANT_DETECTION_DETECTED:I = 0x3

.field public static final blacklist CONTAMINANT_DETECTION_DISABLED:I = 0x1

.field public static final blacklist CONTAMINANT_DETECTION_NOT_DETECTED:I = 0x2

.field public static final blacklist CONTAMINANT_DETECTION_NOT_SUPPORTED:I = 0x0

.field public static final blacklist CONTAMINANT_PROTECTION_DISABLED:I = 0x8

.field public static final blacklist CONTAMINANT_PROTECTION_FORCE_DISABLE:I = 0x4

.field public static final blacklist CONTAMINANT_PROTECTION_NONE:I = 0x0

.field public static final blacklist CONTAMINANT_PROTECTION_SINK:I = 0x1

.field public static final blacklist CONTAMINANT_PROTECTION_SOURCE:I = 0x2

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/usb/UsbPortStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DATA_ROLE_DEVICE:I = 0x2

.field public static final whitelist DATA_ROLE_HOST:I = 0x1

.field public static final whitelist DATA_ROLE_NONE:I = 0x0

.field public static final whitelist DATA_STATUS_DISABLED_CONTAMINANT:I = 0x4

.field public static final whitelist DATA_STATUS_DISABLED_DEBUG:I = 0x20

.field public static final whitelist DATA_STATUS_DISABLED_DOCK:I = 0x8

.field public static final whitelist DATA_STATUS_DISABLED_FORCE:I = 0x10

.field public static final whitelist DATA_STATUS_DISABLED_OVERHEAT:I = 0x2

.field public static final whitelist DATA_STATUS_ENABLED:I = 0x1

.field public static final whitelist DATA_STATUS_UNKNOWN:I = 0x0

.field public static final whitelist MODE_AUDIO_ACCESSORY:I = 0x4

.field public static final whitelist MODE_DEBUG_ACCESSORY:I = 0x8

.field public static final whitelist MODE_DFP:I = 0x2

.field public static final blacklist MODE_DUAL:I = 0x3

.field public static final whitelist MODE_NONE:I = 0x0

.field public static final whitelist MODE_UFP:I = 0x1

.field public static final whitelist POWER_BRICK_STATUS_CONNECTED:I = 0x1

.field public static final whitelist POWER_BRICK_STATUS_DISCONNECTED:I = 0x2

.field public static final whitelist POWER_BRICK_STATUS_UNKNOWN:I = 0x0

.field public static final whitelist POWER_ROLE_NONE:I = 0x0

.field public static final whitelist POWER_ROLE_SINK:I = 0x2

.field public static final whitelist POWER_ROLE_SOURCE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "UsbPortStatus"


# instance fields
.field private final blacklist mContaminantDetectionStatus:I

.field private final blacklist mContaminantProtectionStatus:I

.field private final greylist-max-o mCurrentDataRole:I

.field private final greylist-max-o mCurrentMode:I

.field private final greylist-max-o mCurrentPowerRole:I

.field private final blacklist mPowerBrickConnectionStatus:I

.field private final blacklist mPowerTransferLimited:Z

.field private final greylist-max-o mSupportedRoleCombinations:I

.field private final blacklist mUsbDataStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 487
    new-instance v0, Landroid/hardware/usb/UsbPortStatus$1;

    invoke-direct {v0}, Landroid/hardware/usb/UsbPortStatus$1;-><init>()V

    sput-object v0, Landroid/hardware/usb/UsbPortStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIIIII)V
    .locals 1
    .param p1, "currentMode"    # I
    .param p2, "currentPowerRole"    # I
    .param p3, "currentDataRole"    # I
    .param p4, "supportedRoleCombinations"    # I
    .param p5, "contaminantProtectionStatus"    # I
    .param p6, "contaminantDetectionStatus"    # I

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iput p1, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentMode:I

    .line 322
    iput p2, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentPowerRole:I

    .line 323
    iput p3, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentDataRole:I

    .line 324
    iput p4, p0, Landroid/hardware/usb/UsbPortStatus;->mSupportedRoleCombinations:I

    .line 325
    iput p5, p0, Landroid/hardware/usb/UsbPortStatus;->mContaminantProtectionStatus:I

    .line 326
    iput p6, p0, Landroid/hardware/usb/UsbPortStatus;->mContaminantDetectionStatus:I

    .line 327
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/usb/UsbPortStatus;->mUsbDataStatus:I

    .line 328
    iput v0, p0, Landroid/hardware/usb/UsbPortStatus;->mPowerBrickConnectionStatus:I

    .line 329
    iput-boolean v0, p0, Landroid/hardware/usb/UsbPortStatus;->mPowerTransferLimited:Z

    .line 330
    return-void
.end method

.method public constructor blacklist <init>(IIIIIIIZI)V
    .locals 0
    .param p1, "currentMode"    # I
    .param p2, "currentPowerRole"    # I
    .param p3, "currentDataRole"    # I
    .param p4, "supportedRoleCombinations"    # I
    .param p5, "contaminantProtectionStatus"    # I
    .param p6, "contaminantDetectionStatus"    # I
    .param p7, "usbDataStatus"    # I
    .param p8, "powerTransferLimited"    # Z
    .param p9, "powerBrickConnectionStatus"    # I

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput p1, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentMode:I

    .line 307
    iput p2, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentPowerRole:I

    .line 308
    iput p3, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentDataRole:I

    .line 309
    iput p4, p0, Landroid/hardware/usb/UsbPortStatus;->mSupportedRoleCombinations:I

    .line 310
    iput p5, p0, Landroid/hardware/usb/UsbPortStatus;->mContaminantProtectionStatus:I

    .line 311
    iput p6, p0, Landroid/hardware/usb/UsbPortStatus;->mContaminantDetectionStatus:I

    .line 312
    iput p7, p0, Landroid/hardware/usb/UsbPortStatus;->mUsbDataStatus:I

    .line 313
    iput-boolean p8, p0, Landroid/hardware/usb/UsbPortStatus;->mPowerTransferLimited:Z

    .line 314
    iput p9, p0, Landroid/hardware/usb/UsbPortStatus;->mPowerBrickConnectionStatus:I

    .line 315
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 471
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getContaminantDetectionStatus()I
    .locals 1

    .line 400
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mContaminantDetectionStatus:I

    return v0
.end method

.method public blacklist getContaminantProtectionStatus()I
    .locals 1

    .line 409
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mContaminantProtectionStatus:I

    return v0
.end method

.method public whitelist getCurrentDataRole()I
    .locals 1

    .line 369
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentDataRole:I

    return v0
.end method

.method public whitelist getCurrentMode()I
    .locals 1

    .line 349
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentMode:I

    return v0
.end method

.method public whitelist getCurrentPowerRole()I
    .locals 1

    .line 359
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentPowerRole:I

    return v0
.end method

.method public whitelist getPowerBrickConnectionStatus()I
    .locals 1

    .line 443
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mPowerBrickConnectionStatus:I

    return v0
.end method

.method public whitelist getSupportedRoleCombinations()I
    .locals 1

    .line 391
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mSupportedRoleCombinations:I

    return v0
.end method

.method public whitelist getUsbDataStatus()I
    .locals 1

    .line 422
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mUsbDataStatus:I

    return v0
.end method

.method public whitelist isConnected()Z
    .locals 1

    .line 338
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isPowerTransferLimited()Z
    .locals 1

    .line 432
    iget-boolean v0, p0, Landroid/hardware/usb/UsbPortStatus;->mPowerTransferLimited:Z

    return v0
.end method

.method public whitelist isRoleCombinationSupported(II)Z
    .locals 2
    .param p1, "powerRole"    # I
    .param p2, "dataRole"    # I

    .line 383
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mSupportedRoleCombinations:I

    .line 384
    invoke-static {p1, p2}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 383
    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsbPortStatus{connected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentMode:I

    .line 450
    invoke-static {v1}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentPowerRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentPowerRole:I

    .line 451
    invoke-static {v1}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentDataRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentDataRole:I

    .line 452
    invoke-static {v1}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportedRoleCombinations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbPortStatus;->mSupportedRoleCombinations:I

    .line 454
    invoke-static {v1}, Landroid/hardware/usb/UsbPort;->roleCombinationsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contaminantDetectionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 456
    invoke-virtual {p0}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contaminantProtectionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 458
    invoke-virtual {p0}, Landroid/hardware/usb/UsbPortStatus;->getContaminantProtectionStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", usbDataStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 460
    invoke-virtual {p0}, Landroid/hardware/usb/UsbPortStatus;->getUsbDataStatus()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/usb/UsbPort;->usbDataStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPowerTransferLimited="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 462
    invoke-virtual {p0}, Landroid/hardware/usb/UsbPortStatus;->isPowerTransferLimited()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", powerBrickConnectionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 465
    invoke-virtual {p0}, Landroid/hardware/usb/UsbPortStatus;->getPowerBrickConnectionStatus()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/usb/UsbPort;->powerBrickConnectionStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 476
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentPowerRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentDataRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mSupportedRoleCombinations:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mContaminantProtectionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mContaminantDetectionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mUsbDataStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    iget-boolean v0, p0, Landroid/hardware/usb/UsbPortStatus;->mPowerTransferLimited:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 484
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mPowerBrickConnectionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    return-void
.end method
