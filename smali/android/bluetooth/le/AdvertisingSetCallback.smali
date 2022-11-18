.class public abstract Landroid/bluetooth/le/AdvertisingSetCallback;
.super Ljava/lang/Object;
.source "AdvertisingSetCallback.java"


# static fields
.field public static final whitelist ADVERTISE_FAILED_ALREADY_STARTED:I = 0x3

.field public static final whitelist ADVERTISE_FAILED_DATA_TOO_LARGE:I = 0x1

.field public static final whitelist ADVERTISE_FAILED_FEATURE_UNSUPPORTED:I = 0x5

.field public static final whitelist ADVERTISE_FAILED_INTERNAL_ERROR:I = 0x4

.field public static final whitelist ADVERTISE_FAILED_TOO_MANY_ADVERTISERS:I = 0x2

.field public static final whitelist ADVERTISE_SUCCESS:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAdvertisingDataSet(Landroid/bluetooth/le/AdvertisingSet;I)V
    .locals 0
    .param p1, "advertisingSet"    # Landroid/bluetooth/le/AdvertisingSet;
    .param p2, "status"    # I

    .line 97
    return-void
.end method

.method public whitelist onAdvertisingEnabled(Landroid/bluetooth/le/AdvertisingSet;ZI)V
    .locals 0
    .param p1, "advertisingSet"    # Landroid/bluetooth/le/AdvertisingSet;
    .param p2, "enable"    # Z
    .param p3, "status"    # I

    .line 87
    return-void
.end method

.method public whitelist onAdvertisingParametersUpdated(Landroid/bluetooth/le/AdvertisingSet;II)V
    .locals 0
    .param p1, "advertisingSet"    # Landroid/bluetooth/le/AdvertisingSet;
    .param p2, "txPower"    # I
    .param p3, "status"    # I

    .line 119
    return-void
.end method

.method public whitelist onAdvertisingSetStarted(Landroid/bluetooth/le/AdvertisingSet;II)V
    .locals 0
    .param p1, "advertisingSet"    # Landroid/bluetooth/le/AdvertisingSet;
    .param p2, "txPower"    # I
    .param p3, "status"    # I

    .line 67
    return-void
.end method

.method public whitelist onAdvertisingSetStopped(Landroid/bluetooth/le/AdvertisingSet;)V
    .locals 0
    .param p1, "advertisingSet"    # Landroid/bluetooth/le/AdvertisingSet;

    .line 76
    return-void
.end method

.method public blacklist onOwnAddressRead(Landroid/bluetooth/le/AdvertisingSet;ILjava/lang/String;)V
    .locals 0
    .param p1, "advertisingSet"    # Landroid/bluetooth/le/AdvertisingSet;
    .param p2, "addressType"    # I
    .param p3, "address"    # Ljava/lang/String;

    .line 163
    return-void
.end method

.method public whitelist onPeriodicAdvertisingDataSet(Landroid/bluetooth/le/AdvertisingSet;I)V
    .locals 0
    .param p1, "advertisingSet"    # Landroid/bluetooth/le/AdvertisingSet;
    .param p2, "status"    # I

    .line 140
    return-void
.end method

.method public whitelist onPeriodicAdvertisingEnabled(Landroid/bluetooth/le/AdvertisingSet;ZI)V
    .locals 0
    .param p1, "advertisingSet"    # Landroid/bluetooth/le/AdvertisingSet;
    .param p2, "enable"    # Z
    .param p3, "status"    # I

    .line 151
    return-void
.end method

.method public whitelist onPeriodicAdvertisingParametersUpdated(Landroid/bluetooth/le/AdvertisingSet;I)V
    .locals 0
    .param p1, "advertisingSet"    # Landroid/bluetooth/le/AdvertisingSet;
    .param p2, "status"    # I

    .line 129
    return-void
.end method

.method public whitelist onScanResponseDataSet(Landroid/bluetooth/le/AdvertisingSet;I)V
    .locals 0
    .param p1, "advertisingSet"    # Landroid/bluetooth/le/AdvertisingSet;
    .param p2, "status"    # I

    .line 107
    return-void
.end method
