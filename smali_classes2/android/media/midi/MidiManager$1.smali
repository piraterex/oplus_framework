.class Landroid/media/midi/MidiManager$1;
.super Ljava/lang/Object;
.source "MidiManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/midi/MidiManager;->sendOpenDeviceResponse(Landroid/media/midi/MidiDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/midi/MidiManager;

.field final synthetic blacklist val$device:Landroid/media/midi/MidiDevice;

.field final synthetic blacklist val$listener:Landroid/media/midi/MidiManager$OnDeviceOpenedListener;


# direct methods
.method constructor blacklist <init>(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/media/midi/MidiDevice;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/midi/MidiManager;

    .line 349
    iput-object p1, p0, Landroid/media/midi/MidiManager$1;->this$0:Landroid/media/midi/MidiManager;

    iput-object p2, p0, Landroid/media/midi/MidiManager$1;->val$listener:Landroid/media/midi/MidiManager$OnDeviceOpenedListener;

    iput-object p3, p0, Landroid/media/midi/MidiManager$1;->val$device:Landroid/media/midi/MidiDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 351
    iget-object v0, p0, Landroid/media/midi/MidiManager$1;->val$listener:Landroid/media/midi/MidiManager$OnDeviceOpenedListener;

    iget-object v1, p0, Landroid/media/midi/MidiManager$1;->val$device:Landroid/media/midi/MidiDevice;

    invoke-interface {v0, v1}, Landroid/media/midi/MidiManager$OnDeviceOpenedListener;->onDeviceOpened(Landroid/media/midi/MidiDevice;)V

    .line 352
    return-void
.end method
