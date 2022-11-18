.class Landroid/telecom/RemoteConnection$VideoProvider$1;
.super Ljava/lang/Object;
.source "RemoteConnection.java"

# interfaces
.implements Lcom/android/internal/telecom/IVideoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConnection$VideoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/RemoteConnection$VideoProvider;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/RemoteConnection$VideoProvider;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/RemoteConnection$VideoProvider;

    .line 386
    iput-object p1, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 444
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist changeCallDataUsage(J)V
    .locals 3
    .param p1, "dataUsage"    # J

    .line 422
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/RemoteConnection$VideoProvider;->-$$Nest$fgetmCallbacks(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    .line 423
    .local v1, "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {v1, v2, p1, p2}, Landroid/telecom/RemoteConnection$VideoProvider$Callback;->onCallDataUsageChanged(Landroid/telecom/RemoteConnection$VideoProvider;J)V

    .line 424
    .end local v1    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    goto :goto_0

    .line 425
    :cond_0
    return-void
.end method

.method public blacklist changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .locals 3
    .param p1, "cameraCapabilities"    # Landroid/telecom/VideoProfile$CameraCapabilities;

    .line 430
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/RemoteConnection$VideoProvider;->-$$Nest$fgetmCallbacks(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    .line 431
    .local v1, "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {v1, v2, p1}, Landroid/telecom/RemoteConnection$VideoProvider$Callback;->onCameraCapabilitiesChanged(Landroid/telecom/RemoteConnection$VideoProvider;Landroid/telecom/VideoProfile$CameraCapabilities;)V

    .line 432
    .end local v1    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    goto :goto_0

    .line 433
    :cond_0
    return-void
.end method

.method public blacklist changePeerDimensions(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 415
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/RemoteConnection$VideoProvider;->-$$Nest$fgetmCallbacks(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    .line 416
    .local v1, "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {v1, v2, p1, p2}, Landroid/telecom/RemoteConnection$VideoProvider$Callback;->onPeerDimensionsChanged(Landroid/telecom/RemoteConnection$VideoProvider;II)V

    .line 417
    .end local v1    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    goto :goto_0

    .line 418
    :cond_0
    return-void
.end method

.method public blacklist changeVideoQuality(I)V
    .locals 3
    .param p1, "videoQuality"    # I

    .line 437
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/RemoteConnection$VideoProvider;->-$$Nest$fgetmCallbacks(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    .line 438
    .local v1, "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {v1, v2, p1}, Landroid/telecom/RemoteConnection$VideoProvider$Callback;->onVideoQualityChanged(Landroid/telecom/RemoteConnection$VideoProvider;I)V

    .line 439
    .end local v1    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    goto :goto_0

    .line 440
    :cond_0
    return-void
.end method

.method public blacklist handleCallSessionEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .line 408
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/RemoteConnection$VideoProvider;->-$$Nest$fgetmCallbacks(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    .line 409
    .local v1, "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {v1, v2, p1}, Landroid/telecom/RemoteConnection$VideoProvider$Callback;->onCallSessionEvent(Landroid/telecom/RemoteConnection$VideoProvider;I)V

    .line 410
    .end local v1    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    goto :goto_0

    .line 411
    :cond_0
    return-void
.end method

.method public blacklist receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 3
    .param p1, "videoProfile"    # Landroid/telecom/VideoProfile;

    .line 389
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/RemoteConnection$VideoProvider;->-$$Nest$fgetmCallbacks(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    .line 390
    .local v1, "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {v1, v2, p1}, Landroid/telecom/RemoteConnection$VideoProvider$Callback;->onSessionModifyRequestReceived(Landroid/telecom/RemoteConnection$VideoProvider;Landroid/telecom/VideoProfile;)V

    .line 391
    .end local v1    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    goto :goto_0

    .line 392
    :cond_0
    return-void
.end method

.method public blacklist receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "requestedProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 397
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/RemoteConnection$VideoProvider;->-$$Nest$fgetmCallbacks(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    .line 398
    .local v1, "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/telecom/RemoteConnection$VideoProvider$Callback;->onSessionModifyResponseReceived(Landroid/telecom/RemoteConnection$VideoProvider;ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 403
    .end local v1    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    goto :goto_0

    .line 404
    :cond_0
    return-void
.end method
