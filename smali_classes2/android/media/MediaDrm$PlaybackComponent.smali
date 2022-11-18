.class public final Landroid/media/MediaDrm$PlaybackComponent;
.super Ljava/lang/Object;
.source "MediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PlaybackComponent"
.end annotation


# instance fields
.field private blacklist mLogSessionId:Landroid/media/metrics/LogSessionId;

.field private final blacklist mSessionId:[B

.field final synthetic blacklist this$0:Landroid/media/MediaDrm;


# direct methods
.method public constructor blacklist <init>(Landroid/media/MediaDrm;[B)V
    .locals 1
    .param p1, "this$0"    # Landroid/media/MediaDrm;
    .param p2, "sessionId"    # [B

    .line 2992
    iput-object p1, p0, Landroid/media/MediaDrm$PlaybackComponent;->this$0:Landroid/media/MediaDrm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2989
    sget-object v0, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    iput-object v0, p0, Landroid/media/MediaDrm$PlaybackComponent;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 2993
    iput-object p2, p0, Landroid/media/MediaDrm$PlaybackComponent;->mSessionId:[B

    .line 2994
    return-void
.end method


# virtual methods
.method public whitelist getLogSessionId()Landroid/media/metrics/LogSessionId;
    .locals 1

    .line 3014
    iget-object v0, p0, Landroid/media/MediaDrm$PlaybackComponent;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    return-object v0
.end method

.method public whitelist setLogSessionId(Landroid/media/metrics/LogSessionId;)V
    .locals 3
    .param p1, "logSessionId"    # Landroid/media/metrics/LogSessionId;

    .line 3001
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3002
    invoke-virtual {p1}, Landroid/media/metrics/LogSessionId;->getStringId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3005
    iget-object v0, p0, Landroid/media/MediaDrm$PlaybackComponent;->this$0:Landroid/media/MediaDrm;

    iget-object v1, p0, Landroid/media/MediaDrm$PlaybackComponent;->mSessionId:[B

    invoke-virtual {p1}, Landroid/media/metrics/LogSessionId;->getStringId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/media/MediaDrm;->-$$Nest$msetPlaybackId(Landroid/media/MediaDrm;[BLjava/lang/String;)V

    .line 3006
    iput-object p1, p0, Landroid/media/MediaDrm$PlaybackComponent;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 3007
    return-void

    .line 3003
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "playbackId is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
