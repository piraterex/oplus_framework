.class public final synthetic Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/CallbackUtil$CallbackMethod;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;

.field public final synthetic blacklist f$1:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub$$ExternalSyntheticLambda0;->f$0:Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;

    iput-boolean p2, p0, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final blacklist callbackMethod(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub$$ExternalSyntheticLambda0;->f$0:Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;

    iget-boolean v1, p0, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub$$ExternalSyntheticLambda0;->f$1:Z

    check-cast p1, Landroid/media/Spatializer$OnHeadTrackerAvailableListener;

    invoke-virtual {v0, v1, p1}, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;->lambda$dispatchSpatializerHeadTrackerAvailable$0$android-media-Spatializer$SpatializerHeadTrackerAvailableDispatcherStub(ZLandroid/media/Spatializer$OnHeadTrackerAvailableListener;)V

    return-void
.end method
