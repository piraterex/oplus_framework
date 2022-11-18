.class public abstract Landroid/media/AudioManager$VolumeGroupCallback;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VolumeGroupCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 7879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAudioVolumeGroupChanged(II)V
    .locals 0
    .param p1, "group"    # I
    .param p2, "flags"    # I

    .line 7884
    return-void
.end method
