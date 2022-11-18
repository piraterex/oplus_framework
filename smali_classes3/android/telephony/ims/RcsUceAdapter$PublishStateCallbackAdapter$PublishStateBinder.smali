.class Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;
.super Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback$Stub;
.source "RcsUceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PublishStateBinder"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mPublishStateChangeListener:Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;

    .line 401
    invoke-direct {p0}, Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback$Stub;-><init>()V

    .line 402
    iput-object p1, p0, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 403
    iput-object p2, p0, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;->mPublishStateChangeListener:Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;

    .line 404
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onPublishStateChanged$0$android-telephony-ims-RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder(I)V
    .locals 1
    .param p1, "publishState"    # I

    .line 413
    iget-object v0, p0, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;->mPublishStateChangeListener:Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;->onPublishStateChange(I)V

    return-void
.end method

.method public blacklist onPublishStateChanged(I)V
    .locals 4
    .param p1, "publishState"    # I

    .line 408
    iget-object v0, p0, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;->mPublishStateChangeListener:Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;

    if-nez v0, :cond_0

    return-void

    .line 410
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 412
    .local v0, "callingIdentity":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    invoke-static {v0, v1}, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;->restoreCallingIdentity(J)V

    .line 416
    nop

    .line 417
    return-void

    .line 415
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;->restoreCallingIdentity(J)V

    .line 416
    throw v2
.end method
