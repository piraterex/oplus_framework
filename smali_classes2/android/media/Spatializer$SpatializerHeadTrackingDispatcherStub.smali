.class final Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;
.super Landroid/media/ISpatializerHeadTrackingModeCallback$Stub;
.source "Spatializer.java"

# interfaces
.implements Landroid/media/CallbackUtil$DispatcherStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Spatializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpatializerHeadTrackingDispatcherStub"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/Spatializer;


# direct methods
.method private constructor blacklist <init>(Landroid/media/Spatializer;)V
    .locals 0

    .line 966
    iput-object p1, p0, Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-direct {p0}, Landroid/media/ISpatializerHeadTrackingModeCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/Spatializer;Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;-><init>(Landroid/media/Spatializer;)V

    return-void
.end method


# virtual methods
.method public blacklist dispatchSpatializerActualHeadTrackingModeChanged(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 985
    iget-object v0, p0, Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-static {v0}, Landroid/media/Spatializer;->-$$Nest$fgetmHeadTrackingListenerMgr(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$LazyListenerManager;

    move-result-object v0

    new-instance v1, Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub$$ExternalSyntheticLambda0;-><init>(Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;I)V

    invoke-virtual {v0, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->callListeners(Landroid/media/CallbackUtil$CallbackMethod;)V

    .line 987
    return-void
.end method

.method public blacklist dispatchSpatializerDesiredHeadTrackingModeChanged(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 992
    iget-object v0, p0, Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-static {v0}, Landroid/media/Spatializer;->-$$Nest$fgetmHeadTrackingListenerMgr(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$LazyListenerManager;

    move-result-object v0

    new-instance v1, Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub$$ExternalSyntheticLambda1;-><init>(Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;I)V

    invoke-virtual {v0, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->callListeners(Landroid/media/CallbackUtil$CallbackMethod;)V

    .line 995
    return-void
.end method

.method synthetic blacklist lambda$dispatchSpatializerActualHeadTrackingModeChanged$0$android-media-Spatializer$SpatializerHeadTrackingDispatcherStub(ILandroid/media/Spatializer$OnHeadTrackingModeChangedListener;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "listener"    # Landroid/media/Spatializer$OnHeadTrackingModeChangedListener;

    .line 986
    iget-object v0, p0, Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-interface {p2, v0, p1}, Landroid/media/Spatializer$OnHeadTrackingModeChangedListener;->onHeadTrackingModeChanged(Landroid/media/Spatializer;I)V

    return-void
.end method

.method synthetic blacklist lambda$dispatchSpatializerDesiredHeadTrackingModeChanged$1$android-media-Spatializer$SpatializerHeadTrackingDispatcherStub(ILandroid/media/Spatializer$OnHeadTrackingModeChangedListener;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "listener"    # Landroid/media/Spatializer$OnHeadTrackingModeChangedListener;

    .line 993
    iget-object v0, p0, Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-interface {p2, v0, p1}, Landroid/media/Spatializer$OnHeadTrackingModeChangedListener;->onDesiredHeadTrackingModeChanged(Landroid/media/Spatializer;I)V

    return-void
.end method

.method public blacklist register(Z)V
    .locals 1
    .param p1, "register"    # Z

    .line 972
    if-eqz p1, :cond_0

    .line 973
    :try_start_0
    iget-object v0, p0, Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-static {v0}, Landroid/media/Spatializer;->-$$Nest$fgetmAm(Landroid/media/Spatializer;)Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/IAudioService;->registerSpatializerHeadTrackingCallback(Landroid/media/ISpatializerHeadTrackingModeCallback;)V

    goto :goto_0

    .line 975
    :cond_0
    iget-object v0, p0, Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-static {v0}, Landroid/media/Spatializer;->-$$Nest$fgetmAm(Landroid/media/Spatializer;)Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/IAudioService;->unregisterSpatializerHeadTrackingCallback(Landroid/media/ISpatializerHeadTrackingModeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 979
    :goto_0
    goto :goto_1

    .line 977
    :catch_0
    move-exception v0

    .line 978
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 980
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method
