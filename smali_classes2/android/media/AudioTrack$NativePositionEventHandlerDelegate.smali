.class Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativePositionEventHandlerDelegate"
.end annotation


# instance fields
.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field final synthetic blacklist this$0:Landroid/media/AudioTrack;


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V
    .locals 8
    .param p2, "track"    # Landroid/media/AudioTrack;
    .param p3, "listener"    # Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 4241
    iput-object p1, p0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;->this$0:Landroid/media/AudioTrack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4244
    if-eqz p4, :cond_0

    .line 4245
    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    goto :goto_0

    .line 4248
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_0
    invoke-static {p1}, Landroid/media/AudioTrack;->-$$Nest$fgetmInitializationLooper(Landroid/media/AudioTrack;)Landroid/os/Looper;

    move-result-object v0

    .line 4252
    .restart local v0    # "looper":Landroid/os/Looper;
    :goto_0
    if-eqz v0, :cond_1

    .line 4254
    new-instance v7, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate$1;-><init>(Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;Landroid/os/Looper;Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    iput-object v7, p0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    goto :goto_1

    .line 4278
    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    .line 4280
    :goto_1
    return-void
.end method


# virtual methods
.method greylist-max-o getHandler()Landroid/os/Handler;
    .locals 1

    .line 4283
    iget-object v0, p0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method
