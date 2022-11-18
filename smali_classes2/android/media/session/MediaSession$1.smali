.class Landroid/media/session/MediaSession$1;
.super Landroid/media/VolumeProvider$Callback;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/session/MediaSession;->setPlaybackToRemote(Landroid/media/VolumeProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/session/MediaSession;


# direct methods
.method constructor blacklist <init>(Landroid/media/session/MediaSession;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/session/MediaSession;

    .line 374
    iput-object p1, p0, Landroid/media/session/MediaSession$1;->this$0:Landroid/media/session/MediaSession;

    invoke-direct {p0}, Landroid/media/VolumeProvider$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onVolumeChanged(Landroid/media/VolumeProvider;)V
    .locals 1
    .param p1, "volumeProvider"    # Landroid/media/VolumeProvider;

    .line 377
    iget-object v0, p0, Landroid/media/session/MediaSession$1;->this$0:Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->notifyRemoteVolumeChanged(Landroid/media/VolumeProvider;)V

    .line 378
    return-void
.end method
