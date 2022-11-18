.class public final synthetic Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

.field public final synthetic blacklist f$1:Landroid/bluetooth/BluetoothLeBroadcastMetadata;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    iput-object p2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda0;->f$1:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda0;->f$1:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->lambda$onSourceFound$4(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    return-void
.end method
