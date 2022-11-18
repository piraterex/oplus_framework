.class public final Landroid/hardware/usb/ParcelableUsbPort;
.super Ljava/lang/Object;
.source "ParcelableUsbPort.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/usb/ParcelableUsbPort;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mId:Ljava/lang/String;

.field private final blacklist mSupportedContaminantProtectionModes:I

.field private final blacklist mSupportedModes:I

.field private final blacklist mSupportsEnableContaminantPresenceDetection:Z

.field private final blacklist mSupportsEnableContaminantPresenceProtection:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 92
    new-instance v0, Landroid/hardware/usb/ParcelableUsbPort$1;

    invoke-direct {v0}, Landroid/hardware/usb/ParcelableUsbPort$1;-><init>()V

    sput-object v0, Landroid/hardware/usb/ParcelableUsbPort;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IIZZ)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "supportedModes"    # I
    .param p3, "supportedContaminantProtectionModes"    # I
    .param p4, "supportsEnableContaminantPresenceProtection"    # Z
    .param p5, "supportsEnableContaminantPresenceDetection"    # Z

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/hardware/usb/ParcelableUsbPort;->mId:Ljava/lang/String;

    .line 43
    iput p2, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportedModes:I

    .line 44
    iput p3, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportedContaminantProtectionModes:I

    .line 45
    iput-boolean p4, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportsEnableContaminantPresenceProtection:Z

    .line 47
    iput-boolean p5, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportsEnableContaminantPresenceDetection:Z

    .line 49
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;IIZZLandroid/hardware/usb/ParcelableUsbPort-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/hardware/usb/ParcelableUsbPort;-><init>(Ljava/lang/String;IIZZ)V

    return-void
.end method

.method public static blacklist of(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/ParcelableUsbPort;
    .locals 7
    .param p0, "port"    # Landroid/hardware/usb/UsbPort;

    .line 59
    new-instance v6, Landroid/hardware/usb/ParcelableUsbPort;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/usb/UsbPort;->getSupportedModes()I

    move-result v2

    .line 60
    invoke-virtual {p0}, Landroid/hardware/usb/UsbPort;->getSupportedContaminantProtectionModes()I

    move-result v3

    .line 61
    invoke-virtual {p0}, Landroid/hardware/usb/UsbPort;->supportsEnableContaminantPresenceProtection()Z

    move-result v4

    .line 62
    invoke-virtual {p0}, Landroid/hardware/usb/UsbPort;->supportsEnableContaminantPresenceDetection()Z

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/usb/ParcelableUsbPort;-><init>(Ljava/lang/String;IIZZ)V

    .line 59
    return-object v6
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getUsbPort(Landroid/hardware/usb/UsbManager;)Landroid/hardware/usb/UsbPort;
    .locals 8
    .param p1, "usbManager"    # Landroid/hardware/usb/UsbManager;

    .line 73
    new-instance v7, Landroid/hardware/usb/UsbPort;

    iget-object v2, p0, Landroid/hardware/usb/ParcelableUsbPort;->mId:Ljava/lang/String;

    iget v3, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportedModes:I

    iget v4, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportedContaminantProtectionModes:I

    iget-boolean v5, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportsEnableContaminantPresenceProtection:Z

    iget-boolean v6, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportsEnableContaminantPresenceDetection:Z

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/hardware/usb/UsbPort;-><init>(Landroid/hardware/usb/UsbManager;Ljava/lang/String;IIZZ)V

    return-object v7
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 85
    iget-object v0, p0, Landroid/hardware/usb/ParcelableUsbPort;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget v0, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportedModes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget v0, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportedContaminantProtectionModes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-boolean v0, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportsEnableContaminantPresenceProtection:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 89
    iget-boolean v0, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportsEnableContaminantPresenceDetection:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 90
    return-void
.end method
