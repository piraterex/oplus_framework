.class Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;
.super Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub;
.source "SipDelegateConnectionAidlWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    .line 56
    iput-object p1, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onConfigurationChanged$3$android-telephony-ims-aidl-SipDelegateConnectionAidlWrapper$1(Landroid/telephony/ims/SipDelegateConfiguration;)V
    .locals 1
    .param p1, "registeredSipConfig"    # Landroid/telephony/ims/SipDelegateConfiguration;

    .line 98
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$fgetmStateCallback(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Landroid/telephony/ims/stub/DelegateConnectionStateCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/telephony/ims/stub/DelegateConnectionStateCallback;->onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V

    return-void
.end method

.method synthetic blacklist lambda$onCreated$0$android-telephony-ims-aidl-SipDelegateConnectionAidlWrapper$1()V
    .locals 2

    .line 63
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$fgetmStateCallback(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Landroid/telephony/ims/stub/DelegateConnectionStateCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-interface {v0, v1}, Landroid/telephony/ims/stub/DelegateConnectionStateCallback;->onCreated(Landroid/telephony/ims/SipDelegateConnection;)V

    return-void
.end method

.method synthetic blacklist lambda$onDestroyed$4$android-telephony-ims-aidl-SipDelegateConnectionAidlWrapper$1(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 110
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$fgetmStateCallback(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Landroid/telephony/ims/stub/DelegateConnectionStateCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/telephony/ims/stub/DelegateConnectionStateCallback;->onDestroyed(I)V

    return-void
.end method

.method synthetic blacklist lambda$onFeatureTagStatusChanged$1$android-telephony-ims-aidl-SipDelegateConnectionAidlWrapper$1(Landroid/telephony/ims/DelegateRegistrationState;Ljava/util/List;)V
    .locals 2
    .param p1, "registrationState"    # Landroid/telephony/ims/DelegateRegistrationState;
    .param p2, "deniedFeatureTags"    # Ljava/util/List;

    .line 75
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$fgetmStateCallback(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Landroid/telephony/ims/stub/DelegateConnectionStateCallback;

    move-result-object v0

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Landroid/telephony/ims/stub/DelegateConnectionStateCallback;->onFeatureTagStatusChanged(Landroid/telephony/ims/DelegateRegistrationState;Ljava/util/Set;)V

    return-void
.end method

.method synthetic blacklist lambda$onImsConfigurationChanged$2$android-telephony-ims-aidl-SipDelegateConnectionAidlWrapper$1(Landroid/telephony/ims/SipDelegateImsConfiguration;)V
    .locals 1
    .param p1, "registeredSipConfig"    # Landroid/telephony/ims/SipDelegateImsConfiguration;

    .line 87
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$fgetmStateCallback(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Landroid/telephony/ims/stub/DelegateConnectionStateCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/telephony/ims/stub/DelegateConnectionStateCallback;->onImsConfigurationChanged(Landroid/telephony/ims/SipDelegateImsConfiguration;)V

    return-void
.end method

.method public blacklist onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V
    .locals 4
    .param p1, "registeredSipConfig"    # Landroid/telephony/ims/SipDelegateConfiguration;

    .line 95
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 97
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v2}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;Landroid/telephony/ims/SipDelegateConfiguration;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 101
    nop

    .line 102
    return-void

    .line 100
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 101
    throw v2
.end method

.method public blacklist onCreated(Landroid/telephony/ims/aidl/ISipDelegate;)V
    .locals 4
    .param p1, "c"    # Landroid/telephony/ims/aidl/ISipDelegate;

    .line 59
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v0, p1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$massociateSipDelegate(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;Landroid/telephony/ims/aidl/ISipDelegate;)V

    .line 60
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 62
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v2}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    nop

    .line 67
    return-void

    .line 65
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    throw v2
.end method

.method public blacklist onDestroyed(I)V
    .locals 4
    .param p1, "reason"    # I

    .line 106
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$minvalidateSipDelegateBinder(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)V

    .line 107
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 109
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v2}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 113
    nop

    .line 114
    return-void

    .line 112
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 113
    throw v2
.end method

.method public blacklist onFeatureTagStatusChanged(Landroid/telephony/ims/DelegateRegistrationState;Ljava/util/List;)V
    .locals 4
    .param p1, "registrationState"    # Landroid/telephony/ims/DelegateRegistrationState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/ims/DelegateRegistrationState;",
            "Ljava/util/List<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;)V"
        }
    .end annotation

    .line 72
    .local p2, "deniedFeatureTags":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/FeatureTagState;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 74
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v2}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;Landroid/telephony/ims/DelegateRegistrationState;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    nop

    .line 80
    return-void

    .line 78
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    throw v2
.end method

.method public blacklist onImsConfigurationChanged(Landroid/telephony/ims/SipDelegateImsConfiguration;)V
    .locals 4
    .param p1, "registeredSipConfig"    # Landroid/telephony/ims/SipDelegateImsConfiguration;

    .line 84
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 86
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v2}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;Landroid/telephony/ims/SipDelegateImsConfiguration;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    nop

    .line 91
    return-void

    .line 89
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    throw v2
.end method
