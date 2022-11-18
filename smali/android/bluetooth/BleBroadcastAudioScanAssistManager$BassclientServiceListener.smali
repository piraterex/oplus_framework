.class final Landroid/bluetooth/BleBroadcastAudioScanAssistManager$BassclientServiceListener;
.super Ljava/lang/Object;
.source "BleBroadcastAudioScanAssistManager.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BleBroadcastAudioScanAssistManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BassclientServiceListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;


# direct methods
.method private constructor blacklist <init>(Landroid/bluetooth/BleBroadcastAudioScanAssistManager;)V
    .locals 0

    .line 180
    iput-object p1, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager$BassclientServiceListener;->this$0:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 184
    const-string v0, "BleBroadcastAudioScanAssistManager"

    const-string v1, "BassService connected"

    invoke-static {v0, v1}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->-$$Nest$smlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager$BassclientServiceListener;->this$0:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    const/4 v1, 0x1

    invoke-static {v0, v1, p2}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->-$$Nest$monBluetoothSyncHelperStateChanged(Landroid/bluetooth/BleBroadcastAudioScanAssistManager;ZLandroid/bluetooth/BluetoothProfile;)V

    .line 187
    return-void
.end method

.method public whitelist onServiceDisconnected(I)V
    .locals 3
    .param p1, "profile"    # I

    .line 190
    const-string v0, "BleBroadcastAudioScanAssistManager"

    const-string v1, "BassService disconnected"

    invoke-static {v0, v1}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->-$$Nest$smlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager$BassclientServiceListener;->this$0:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->-$$Nest$monBluetoothSyncHelperStateChanged(Landroid/bluetooth/BleBroadcastAudioScanAssistManager;ZLandroid/bluetooth/BluetoothProfile;)V

    .line 192
    return-void
.end method
