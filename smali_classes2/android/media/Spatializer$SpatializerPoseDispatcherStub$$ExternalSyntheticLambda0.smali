.class public final synthetic Landroid/media/Spatializer$SpatializerPoseDispatcherStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/Spatializer$SpatializerPoseDispatcherStub;

.field public final synthetic blacklist f$1:Landroid/media/CallbackUtil$ListenerInfo;

.field public final synthetic blacklist f$2:[F


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/Spatializer$SpatializerPoseDispatcherStub;Landroid/media/CallbackUtil$ListenerInfo;[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/Spatializer$SpatializerPoseDispatcherStub$$ExternalSyntheticLambda0;->f$0:Landroid/media/Spatializer$SpatializerPoseDispatcherStub;

    iput-object p2, p0, Landroid/media/Spatializer$SpatializerPoseDispatcherStub$$ExternalSyntheticLambda0;->f$1:Landroid/media/CallbackUtil$ListenerInfo;

    iput-object p3, p0, Landroid/media/Spatializer$SpatializerPoseDispatcherStub$$ExternalSyntheticLambda0;->f$2:[F

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Landroid/media/Spatializer$SpatializerPoseDispatcherStub$$ExternalSyntheticLambda0;->f$0:Landroid/media/Spatializer$SpatializerPoseDispatcherStub;

    iget-object v1, p0, Landroid/media/Spatializer$SpatializerPoseDispatcherStub$$ExternalSyntheticLambda0;->f$1:Landroid/media/CallbackUtil$ListenerInfo;

    iget-object v2, p0, Landroid/media/Spatializer$SpatializerPoseDispatcherStub$$ExternalSyntheticLambda0;->f$2:[F

    invoke-virtual {v0, v1, v2}, Landroid/media/Spatializer$SpatializerPoseDispatcherStub;->lambda$dispatchPoseChanged$0$android-media-Spatializer$SpatializerPoseDispatcherStub(Landroid/media/CallbackUtil$ListenerInfo;[F)V

    return-void
.end method
