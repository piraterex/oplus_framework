.class final Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;
.super Landroid/media/session/IOnMediaKeyListener$Stub;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnMediaKeyListenerImpl"
.end annotation


# instance fields
.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mListener:Landroid/media/session/MediaSessionManager$OnMediaKeyListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;)Landroid/media/session/MediaSessionManager$OnMediaKeyListener;
    .locals 0

    iget-object p0, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;->mListener:Landroid/media/session/MediaSessionManager$OnMediaKeyListener;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/media/session/MediaSessionManager$OnMediaKeyListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/session/MediaSessionManager$OnMediaKeyListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1356
    invoke-direct {p0}, Landroid/media/session/IOnMediaKeyListener$Stub;-><init>()V

    .line 1357
    iput-object p1, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;->mListener:Landroid/media/session/MediaSessionManager$OnMediaKeyListener;

    .line 1358
    iput-object p2, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;->mHandler:Landroid/os/Handler;

    .line 1359
    return-void
.end method


# virtual methods
.method public greylist-max-o onMediaKey(Landroid/view/KeyEvent;Landroid/os/ResultReceiver;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "result"    # Landroid/os/ResultReceiver;

    .line 1363
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;->mListener:Landroid/media/session/MediaSessionManager$OnMediaKeyListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1368
    :cond_0
    new-instance v1, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;-><init>(Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;Landroid/view/KeyEvent;Landroid/os/ResultReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1380
    return-void

    .line 1364
    :cond_1
    :goto_0
    const-string v0, "SessionManager"

    const-string v1, "Failed to call media key listener. Either mListener or mHandler is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    return-void
.end method
