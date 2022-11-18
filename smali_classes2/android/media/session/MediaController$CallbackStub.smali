.class final Landroid/media/session/MediaController$CallbackStub;
.super Landroid/media/session/ISessionControllerCallback$Stub;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackStub"
.end annotation


# instance fields
.field private final greylist-max-o mController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/session/MediaController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Landroid/media/session/MediaController;)V
    .locals 1
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .line 1145
    invoke-direct {p0}, Landroid/media/session/ISessionControllerCallback$Stub;-><init>()V

    .line 1146
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    .line 1147
    return-void
.end method


# virtual methods
.method public greylist-max-o onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1159
    iget-object v0, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 1160
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_0

    .line 1161
    const/4 v1, 0x1

    invoke-static {v0, v1, p1, p2}, Landroid/media/session/MediaController;->-$$Nest$mpostMessage(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1163
    :cond_0
    return-void
.end method

.method public greylist-max-o onExtrasChanged(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 1199
    iget-object v0, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 1200
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_0

    .line 1201
    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/media/session/MediaController;->-$$Nest$mpostMessage(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1203
    :cond_0
    return-void
.end method

.method public greylist-max-o onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 3
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    .line 1175
    iget-object v0, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 1176
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_0

    .line 1177
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/media/session/MediaController;->-$$Nest$mpostMessage(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1179
    :cond_0
    return-void
.end method

.method public greylist-max-o onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 3
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    .line 1167
    iget-object v0, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 1168
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_0

    .line 1169
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/media/session/MediaController;->-$$Nest$mpostMessage(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1171
    :cond_0
    return-void
.end method

.method public greylist-max-o onQueueChanged(Landroid/content/pm/ParceledListSlice;)V
    .locals 3
    .param p1, "queue"    # Landroid/content/pm/ParceledListSlice;

    .line 1183
    iget-object v0, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 1184
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_0

    .line 1185
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/media/session/MediaController;->-$$Nest$mpostMessage(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1187
    :cond_0
    return-void
.end method

.method public greylist-max-o onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 1191
    iget-object v0, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 1192
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_0

    .line 1193
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/media/session/MediaController;->-$$Nest$mpostMessage(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1195
    :cond_0
    return-void
.end method

.method public greylist-max-o onSessionDestroyed()V
    .locals 3

    .line 1151
    iget-object v0, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 1152
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_0

    .line 1153
    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/media/session/MediaController;->-$$Nest$mpostMessage(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1155
    :cond_0
    return-void
.end method

.method public blacklist onVolumeInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/media/session/MediaController$PlaybackInfo;

    .line 1207
    iget-object v0, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 1208
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_0

    .line 1209
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/media/session/MediaController;->-$$Nest$mpostMessage(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1211
    :cond_0
    return-void
.end method
