.class public abstract Landroid/media/session/MediaSession$Callback;
.super Ljava/lang/Object;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# instance fields
.field private greylist-max-o mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

.field private greylist-max-o mMediaPlayPauseKeyPending:Z

.field private greylist-max-o mSession:Landroid/media/session/MediaSession;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmHandler(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession$CallbackMessageHandler;)V
    .locals 0

    iput-object p1, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSession(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession;)V
    .locals 0

    iput-object p1, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleMediaPlayPauseKeySingleTapIfPending(Landroid/media/session/MediaSession$Callback;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;->handleMediaPlayPauseKeySingleTapIfPending()V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 889
    return-void
.end method

.method private greylist-max-o handleMediaPlayPauseKeySingleTapIfPending()V
    .locals 11

    .line 1002
    iget-boolean v0, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    if-nez v0, :cond_0

    .line 1003
    return-void

    .line 1005
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    .line 1006
    iget-object v1, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession$CallbackMessageHandler;->removeMessages(I)V

    .line 1007
    iget-object v1, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    invoke-static {v1}, Landroid/media/session/MediaSession;->-$$Nest$fgetmPlaybackState(Landroid/media/session/MediaSession;)Landroid/media/session/PlaybackState;

    move-result-object v1

    .line 1008
    .local v1, "state":Landroid/media/session/PlaybackState;
    const-wide/16 v2, 0x0

    if-nez v1, :cond_1

    move-wide v4, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v4

    .line 1009
    .local v4, "validActions":J
    :goto_0
    const/4 v6, 0x1

    if-eqz v1, :cond_2

    .line 1010
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    move v7, v6

    goto :goto_1

    :cond_2
    move v7, v0

    .line 1011
    .local v7, "isPlaying":Z
    :goto_1
    const-wide/16 v8, 0x204

    and-long/2addr v8, v4

    cmp-long v8, v8, v2

    if-eqz v8, :cond_3

    move v8, v6

    goto :goto_2

    :cond_3
    move v8, v0

    .line 1013
    .local v8, "canPlay":Z
    :goto_2
    const-wide/16 v9, 0x202

    and-long/2addr v9, v4

    cmp-long v2, v9, v2

    if-eqz v2, :cond_4

    move v0, v6

    .line 1015
    .local v0, "canPause":Z
    :cond_4
    if-eqz v7, :cond_5

    if-eqz v0, :cond_5

    .line 1016
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPause()V

    goto :goto_3

    .line 1017
    :cond_5
    if-nez v7, :cond_6

    if-eqz v8, :cond_6

    .line 1018
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPlay()V

    .line 1020
    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public whitelist onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .line 902
    return-void
.end method

.method public whitelist onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1179
    return-void
.end method

.method public whitelist onFastForward()V
    .locals 0

    .line 1124
    return-void
.end method

.method public whitelist onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 12
    .param p1, "mediaButtonIntent"    # Landroid/content/Intent;

    .line 918
    iget-object v0, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    if-eqz v0, :cond_4

    .line 919
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 920
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 921
    .local v0, "ke":Landroid/view/KeyEvent;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4

    .line 922
    iget-object v2, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    invoke-static {v2}, Landroid/media/session/MediaSession;->-$$Nest$fgetmPlaybackState(Landroid/media/session/MediaSession;)Landroid/media/session/PlaybackState;

    move-result-object v2

    .line 923
    .local v2, "state":Landroid/media/session/PlaybackState;
    const-wide/16 v3, 0x0

    if-nez v2, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v5

    .line 924
    .local v5, "validActions":J
    :goto_0
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    const-wide/16 v8, 0x20

    const/4 v10, 0x1

    sparse-switch v7, :sswitch_data_0

    .line 948
    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;->handleMediaPlayPauseKeySingleTapIfPending()V

    .line 952
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_1

    goto/16 :goto_2

    .line 927
    :sswitch_0
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-lez v7, :cond_1

    .line 929
    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;->handleMediaPlayPauseKeySingleTapIfPending()V

    goto :goto_1

    .line 930
    :cond_1
    iget-boolean v7, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    if-eqz v7, :cond_2

    .line 932
    iget-object v7, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    const/16 v11, 0x18

    invoke-virtual {v7, v11}, Landroid/media/session/MediaSession$CallbackMessageHandler;->removeMessages(I)V

    .line 934
    iput-boolean v1, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    .line 935
    and-long v7, v5, v8

    cmp-long v1, v7, v3

    if-eqz v1, :cond_3

    .line 936
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToNext()V

    goto :goto_1

    .line 939
    :cond_2
    iput-boolean v10, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    .line 940
    iget-object v1, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    .line 941
    invoke-virtual {v1}, Landroid/media/session/MediaSession;->getCurrentControllerInfo()Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v3

    .line 942
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    int-to-long v7, v4

    .line 940
    invoke-virtual {v1, v3, p1, v7, v8}, Landroid/media/session/MediaSession;->dispatchMediaButtonDelayed(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/content/Intent;J)V

    .line 944
    :cond_3
    :goto_1
    return v10

    .line 960
    :sswitch_1
    const-wide/16 v7, 0x2

    and-long/2addr v7, v5

    cmp-long v3, v7, v3

    if-eqz v3, :cond_4

    .line 961
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPause()V

    .line 962
    return v10

    .line 954
    :sswitch_2
    const-wide/16 v7, 0x4

    and-long/2addr v7, v5

    cmp-long v3, v7, v3

    if-eqz v3, :cond_4

    .line 955
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPlay()V

    .line 956
    return v10

    .line 984
    :sswitch_3
    const-wide/16 v7, 0x40

    and-long/2addr v7, v5

    cmp-long v3, v7, v3

    if-eqz v3, :cond_4

    .line 985
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onFastForward()V

    .line 986
    return v10

    .line 990
    :sswitch_4
    const-wide/16 v7, 0x8

    and-long/2addr v7, v5

    cmp-long v3, v7, v3

    if-eqz v3, :cond_4

    .line 991
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onRewind()V

    .line 992
    return v10

    .line 972
    :sswitch_5
    const-wide/16 v7, 0x10

    and-long/2addr v7, v5

    cmp-long v3, v7, v3

    if-eqz v3, :cond_4

    .line 973
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToPrevious()V

    .line 974
    return v10

    .line 966
    :sswitch_6
    and-long v7, v5, v8

    cmp-long v3, v7, v3

    if-eqz v3, :cond_4

    .line 967
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToNext()V

    .line 968
    return v10

    .line 978
    :sswitch_7
    const-wide/16 v7, 0x1

    and-long/2addr v7, v5

    cmp-long v3, v7, v3

    if-eqz v3, :cond_4

    .line 979
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onStop()V

    .line 980
    return v10

    .line 998
    .end local v0    # "ke":Landroid/view/KeyEvent;
    .end local v2    # "state":Landroid/media/session/PlaybackState;
    .end local v5    # "validActions":J
    :cond_4
    :goto_2
    return v1

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x56 -> :sswitch_7
        0x57 -> :sswitch_6
        0x58 -> :sswitch_5
        0x59 -> :sswitch_4
        0x5a -> :sswitch_3
        0x7e -> :sswitch_2
        0x7f -> :sswitch_1
    .end sparse-switch
.end method

.method public whitelist onPause()V
    .locals 0

    .line 1106
    return-void
.end method

.method public whitelist onPlay()V
    .locals 0

    .line 1071
    return-void
.end method

.method public whitelist onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1087
    return-void
.end method

.method public whitelist onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1080
    return-void
.end method

.method public whitelist onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1093
    return-void
.end method

.method public whitelist onPrepare()V
    .locals 0

    .line 1029
    return-void
.end method

.method public whitelist onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1041
    return-void
.end method

.method public whitelist onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1053
    return-void
.end method

.method public whitelist onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1065
    return-void
.end method

.method public whitelist onRewind()V
    .locals 0

    .line 1130
    return-void
.end method

.method public whitelist onSeekTo(J)V
    .locals 0
    .param p1, "pos"    # J

    .line 1144
    return-void
.end method

.method public whitelist onSetPlaybackSpeed(F)V
    .locals 0
    .param p1, "speed"    # F

    .line 1168
    return-void
.end method

.method public whitelist onSetRating(Landroid/media/Rating;)V
    .locals 0
    .param p1, "rating"    # Landroid/media/Rating;

    .line 1152
    return-void
.end method

.method public whitelist onSkipToNext()V
    .locals 0

    .line 1112
    return-void
.end method

.method public whitelist onSkipToPrevious()V
    .locals 0

    .line 1118
    return-void
.end method

.method public whitelist onSkipToQueueItem(J)V
    .locals 0
    .param p1, "id"    # J

    .line 1100
    return-void
.end method

.method public whitelist onStop()V
    .locals 0

    .line 1136
    return-void
.end method
