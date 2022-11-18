.class final Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;
.super Landroid/media/ISpatializerHeadTrackerAvailableCallback$Stub;
.source "Spatializer.java"

# interfaces
.implements Landroid/media/CallbackUtil$DispatcherStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Spatializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpatializerHeadTrackerAvailableDispatcherStub"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/Spatializer;


# direct methods
.method private constructor blacklist <init>(Landroid/media/Spatializer;)V
    .locals 0

    .line 1007
    iput-object p1, p0, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-direct {p0}, Landroid/media/ISpatializerHeadTrackerAvailableCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/Spatializer;Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;-><init>(Landroid/media/Spatializer;)V

    return-void
.end method


# virtual methods
.method public blacklist dispatchSpatializerHeadTrackerAvailable(Z)V
    .locals 2
    .param p1, "available"    # Z

    .line 1022
    iget-object v0, p0, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-static {v0}, Landroid/media/Spatializer;->-$$Nest$fgetmHeadTrackerListenerMgr(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$LazyListenerManager;

    move-result-object v0

    new-instance v1, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub$$ExternalSyntheticLambda0;-><init>(Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;Z)V

    invoke-virtual {v0, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->callListeners(Landroid/media/CallbackUtil$CallbackMethod;)V

    .line 1025
    return-void
.end method

.method synthetic blacklist lambda$dispatchSpatializerHeadTrackerAvailable$0$android-media-Spatializer$SpatializerHeadTrackerAvailableDispatcherStub(ZLandroid/media/Spatializer$OnHeadTrackerAvailableListener;)V
    .locals 1
    .param p1, "available"    # Z
    .param p2, "listener"    # Landroid/media/Spatializer$OnHeadTrackerAvailableListener;

    .line 1023
    iget-object v0, p0, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-interface {p2, v0, p1}, Landroid/media/Spatializer$OnHeadTrackerAvailableListener;->onHeadTrackerAvailableChanged(Landroid/media/Spatializer;Z)V

    return-void
.end method

.method public blacklist register(Z)V
    .locals 1
    .param p1, "register"    # Z

    .line 1013
    :try_start_0
    iget-object v0, p0, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-static {v0}, Landroid/media/Spatializer;->-$$Nest$fgetmAm(Landroid/media/Spatializer;)Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/media/IAudioService;->registerSpatializerHeadTrackerAvailableCallback(Landroid/media/ISpatializerHeadTrackerAvailableCallback;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1016
    goto :goto_0

    .line 1014
    :catch_0
    move-exception v0

    .line 1015
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1017
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
