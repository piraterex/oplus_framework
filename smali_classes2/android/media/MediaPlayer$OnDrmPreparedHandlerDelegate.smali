.class Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnDrmPreparedHandlerDelegate"
.end annotation


# instance fields
.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mMediaPlayer:Landroid/media/MediaPlayer;

.field private greylist-max-o mOnDrmPreparedListener:Landroid/media/MediaPlayer$OnDrmPreparedListener;

.field final synthetic blacklist this$0:Landroid/media/MediaPlayer;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMediaPlayer(Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;)Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnDrmPreparedListener(Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;)Landroid/media/MediaPlayer$OnDrmPreparedListener;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->mOnDrmPreparedListener:Landroid/media/MediaPlayer$OnDrmPreparedListener;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$OnDrmPreparedListener;Landroid/os/Handler;)V
    .locals 1
    .param p2, "mp"    # Landroid/media/MediaPlayer;
    .param p3, "listener"    # Landroid/media/MediaPlayer$OnDrmPreparedListener;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 4795
    iput-object p1, p0, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->this$0:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4796
    iput-object p2, p0, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 4797
    iput-object p3, p0, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->mOnDrmPreparedListener:Landroid/media/MediaPlayer$OnDrmPreparedListener;

    .line 4800
    if-eqz p4, :cond_0

    .line 4801
    iput-object p4, p0, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 4802
    :cond_0
    invoke-static {p1}, Landroid/media/MediaPlayer;->-$$Nest$fgetmEventHandler(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4804
    invoke-static {p1}, Landroid/media/MediaPlayer;->-$$Nest$fgetmEventHandler(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 4806
    :cond_1
    const-string p1, "MediaPlayer"

    const-string v0, "OnDrmPreparedHandlerDelegate: Unexpected null mEventHandler"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4808
    :goto_0
    return-void
.end method


# virtual methods
.method greylist-max-o notifyClient(I)V
    .locals 2
    .param p1, "status"    # I

    .line 4811
    iget-object v0, p0, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4812
    new-instance v1, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate$1;

    invoke-direct {v1, p0, p1}, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate$1;-><init>(Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4819
    :cond_0
    const-string v0, "MediaPlayer"

    const-string v1, "OnDrmPreparedHandlerDelegate:notifyClient: Unexpected null mHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4821
    :goto_0
    return-void
.end method
