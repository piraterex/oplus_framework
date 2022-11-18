.class public final synthetic Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/midi/MidiManager$DeviceListener;

.field public final synthetic blacklist f$1:Landroid/media/midi/MidiDeviceStatus;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/midi/MidiManager$DeviceListener;Landroid/media/midi/MidiDeviceStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda2;->f$0:Landroid/media/midi/MidiManager$DeviceListener;

    iput-object p2, p0, Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda2;->f$1:Landroid/media/midi/MidiDeviceStatus;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda2;->f$0:Landroid/media/midi/MidiManager$DeviceListener;

    iget-object v1, p0, Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda2;->f$1:Landroid/media/midi/MidiDeviceStatus;

    invoke-virtual {v0, v1}, Landroid/media/midi/MidiManager$DeviceListener;->lambda$onDeviceStatusChanged$2$android-media-midi-MidiManager$DeviceListener(Landroid/media/midi/MidiDeviceStatus;)V

    return-void
.end method
