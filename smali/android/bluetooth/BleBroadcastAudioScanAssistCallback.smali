.class public abstract Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;
.super Ljava/lang/Object;
.source "BleBroadcastAudioScanAssistCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BleBroadcastAudioScanAssistCallback$Bass_Status;
    }
.end annotation


# static fields
.field public static final blacklist BASS_STATUS_COLOCATED_SRC_UNAVAILABLE:I = 0x5

.field public static final blacklist BASS_STATUS_DUPLICATE_ADDITION:I = 0x8

.field public static final blacklist BASS_STATUS_FAILURE:I = 0x1

.field public static final blacklist BASS_STATUS_FATAL:I = 0x2

.field public static final blacklist BASS_STATUS_INVALID_GROUP_OP:I = 0x10

.field public static final blacklist BASS_STATUS_INVALID_SOURCE_ID:I = 0x4

.field public static final blacklist BASS_STATUS_INVALID_SOURCE_SELECTED:I = 0x6

.field public static final blacklist BASS_STATUS_NO_EMPTY_SLOT:I = 0x9

.field public static final blacklist BASS_STATUS_SOURCE_UNAVAILABLE:I = 0x7

.field public static final blacklist BASS_STATUS_SUCCESS:I = 0x0

.field public static final blacklist BASS_STATUS_TXN_TIMEOUT:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onBleBroadcastAudioSourceAdded(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "srcId"    # B
    .param p3, "status"    # I

    .line 132
    return-void
.end method

.method public blacklist onBleBroadcastAudioSourceRemoved(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 0
    .param p1, "rcvr"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "srcId"    # B
    .param p3, "status"    # I

    .line 193
    return-void
.end method

.method public blacklist onBleBroadcastAudioSourceUpdated(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "srcId"    # B
    .param p3, "status"    # I

    .line 151
    return-void
.end method

.method public blacklist onBleBroadcastPinUpdated(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 0
    .param p1, "rcvr"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "srcId"    # B
    .param p3, "status"    # I

    .line 172
    return-void
.end method

.method public blacklist onBleBroadcastSourceFound(Landroid/bluetooth/le/ScanResult;)V
    .locals 0
    .param p1, "scanres"    # Landroid/bluetooth/le/ScanResult;

    .line 96
    return-void
.end method

.method public blacklist onBleBroadcastSourceSelected(Landroid/bluetooth/BluetoothDevice;ILjava/util/List;)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "I",
            "Ljava/util/List<",
            "Landroid/bluetooth/BleBroadcastSourceChannel;",
            ">;)V"
        }
    .end annotation

    .line 113
    .local p3, "broadcastSourceChannels":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BleBroadcastSourceChannel;>;"
    return-void
.end method
