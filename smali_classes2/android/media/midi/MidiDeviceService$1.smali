.class Landroid/media/midi/MidiDeviceService$1;
.super Ljava/lang/Object;
.source "MidiDeviceService.java"

# interfaces
.implements Landroid/media/midi/MidiDeviceServer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiDeviceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/midi/MidiDeviceService;


# direct methods
.method constructor blacklist <init>(Landroid/media/midi/MidiDeviceService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/midi/MidiDeviceService;

    .line 57
    iput-object p1, p0, Landroid/media/midi/MidiDeviceService$1;->this$0:Landroid/media/midi/MidiDeviceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onClose()V
    .locals 1

    .line 65
    iget-object v0, p0, Landroid/media/midi/MidiDeviceService$1;->this$0:Landroid/media/midi/MidiDeviceService;

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceService;->onClose()V

    .line 66
    return-void
.end method

.method public blacklist onDeviceStatusChanged(Landroid/media/midi/MidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V
    .locals 1
    .param p1, "server"    # Landroid/media/midi/MidiDeviceServer;
    .param p2, "status"    # Landroid/media/midi/MidiDeviceStatus;

    .line 60
    iget-object v0, p0, Landroid/media/midi/MidiDeviceService$1;->this$0:Landroid/media/midi/MidiDeviceService;

    invoke-virtual {v0, p2}, Landroid/media/midi/MidiDeviceService;->onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V

    .line 61
    return-void
.end method
