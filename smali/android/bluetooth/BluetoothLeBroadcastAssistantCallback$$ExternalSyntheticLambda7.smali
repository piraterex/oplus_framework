.class public final synthetic Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

.field public final synthetic blacklist f$1:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic blacklist f$2:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

.field public final synthetic blacklist f$3:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda7;->f$0:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    iput-object p2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda7;->f$1:Landroid/bluetooth/BluetoothDevice;

    iput-object p3, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda7;->f$2:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    iput p4, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda7;->f$3:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 4

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda7;->f$0:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda7;->f$1:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda7;->f$2:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    iget v3, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda7;->f$3:I

    invoke-static {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->lambda$onSourceAddFailed$6(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;I)V

    return-void
.end method
