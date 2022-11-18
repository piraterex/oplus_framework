.class public interface abstract Landroid/service/voice/HotwordDetector;
.super Ljava/lang/Object;
.source "HotwordDetector.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/HotwordDetector$Callback;
    }
.end annotation


# static fields
.field public static final blacklist DETECTOR_TYPE_NORMAL:I = 0x0

.field public static final blacklist DETECTOR_TYPE_TRUSTED_HOTWORD_DSP:I = 0x1

.field public static final blacklist DETECTOR_TYPE_TRUSTED_HOTWORD_SOFTWARE:I = 0x2


# direct methods
.method public static blacklist detectorTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "detectorType"    # I

    .line 136
    packed-switch p0, :pswitch_data_0

    .line 144
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 142
    :pswitch_0
    const-string/jumbo v0, "trusted_hotword_software"

    return-object v0

    .line 140
    :pswitch_1
    const-string/jumbo v0, "trusted_hotword_dsp"

    return-object v0

    .line 138
    :pswitch_2
    const-string/jumbo v0, "normal"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist destroy()V
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist startRecognition()Z
.end method

.method public abstract whitelist startRecognition(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;)Z
.end method

.method public abstract whitelist stopRecognition()Z
.end method

.method public abstract whitelist updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
.end method
