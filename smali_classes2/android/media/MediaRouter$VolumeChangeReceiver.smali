.class Landroid/media/MediaRouter$VolumeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VolumeChangeReceiver"
.end annotation


# direct methods
.method constructor greylist-max-o <init>()V
    .locals 0

    .line 3165
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 3168
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3169
    const/4 v0, -0x1

    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3171
    .local v0, "streamType":I
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3172
    .local v1, "newVolume":I
    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mStreamVolume:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 3173
    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 3174
    return-void

    .line 3177
    :cond_0
    const-string v3, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3179
    .local v2, "oldVolume":I
    if-eq v1, v2, :cond_1

    .line 3180
    invoke-static {v1}, Landroid/media/MediaRouter;->systemVolumeChanged(I)V

    .line 3183
    .end local v0    # "streamType":I
    .end local v1    # "newVolume":I
    .end local v2    # "oldVolume":I
    :cond_1
    return-void
.end method
