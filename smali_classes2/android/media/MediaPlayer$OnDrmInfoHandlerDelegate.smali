.class Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnDrmInfoHandlerDelegate"
.end annotation


# instance fields
.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mMediaPlayer:Landroid/media/MediaPlayer;

.field private greylist-max-o mOnDrmInfoListener:Landroid/media/MediaPlayer$OnDrmInfoListener;

.field final synthetic blacklist this$0:Landroid/media/MediaPlayer;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMediaPlayer(Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;)Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnDrmInfoListener(Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;)Landroid/media/MediaPlayer$OnDrmInfoListener;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->mOnDrmInfoListener:Landroid/media/MediaPlayer$OnDrmInfoListener;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$OnDrmInfoListener;Landroid/os/Handler;)V
    .locals 0
    .param p2, "mp"    # Landroid/media/MediaPlayer;
    .param p3, "listener"    # Landroid/media/MediaPlayer$OnDrmInfoListener;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 4757
    iput-object p1, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->this$0:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4758
    iput-object p2, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 4759
    iput-object p3, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->mOnDrmInfoListener:Landroid/media/MediaPlayer$OnDrmInfoListener;

    .line 4762
    if-eqz p4, :cond_0

    .line 4763
    iput-object p4, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->mHandler:Landroid/os/Handler;

    .line 4772
    :cond_0
    return-void
.end method


# virtual methods
.method greylist-max-o notifyClient(Landroid/media/MediaPlayer$DrmInfo;)V
    .locals 2
    .param p1, "drmInfo"    # Landroid/media/MediaPlayer$DrmInfo;

    .line 4775
    iget-object v0, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4776
    new-instance v1, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate$1;

    invoke-direct {v1, p0, p1}, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate$1;-><init>(Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;Landroid/media/MediaPlayer$DrmInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4784
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->mOnDrmInfoListener:Landroid/media/MediaPlayer$OnDrmInfoListener;

    iget-object v1, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, p1}, Landroid/media/MediaPlayer$OnDrmInfoListener;->onDrmInfo(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$DrmInfo;)V

    .line 4786
    :goto_0
    return-void
.end method
