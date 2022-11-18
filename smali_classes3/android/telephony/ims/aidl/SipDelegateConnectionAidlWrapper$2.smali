.class Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2;
.super Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub;
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

    .line 118
    iput-object p1, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onMessageReceived$0$android-telephony-ims-aidl-SipDelegateConnectionAidlWrapper$2(Landroid/telephony/ims/SipMessage;)V
    .locals 1
    .param p1, "message"    # Landroid/telephony/ims/SipMessage;

    .line 124
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$fgetmMessageCallback(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Landroid/telephony/ims/stub/DelegateConnectionMessageCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/telephony/ims/stub/DelegateConnectionMessageCallback;->onMessageReceived(Landroid/telephony/ims/SipMessage;)V

    return-void
.end method

.method synthetic blacklist lambda$onMessageSendFailure$2$android-telephony-ims-aidl-SipDelegateConnectionAidlWrapper$2(Ljava/lang/String;I)V
    .locals 1
    .param p1, "viaTransactionId"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 146
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$fgetmMessageCallback(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Landroid/telephony/ims/stub/DelegateConnectionMessageCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/stub/DelegateConnectionMessageCallback;->onMessageSendFailure(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic blacklist lambda$onMessageSent$1$android-telephony-ims-aidl-SipDelegateConnectionAidlWrapper$2(Ljava/lang/String;)V
    .locals 1
    .param p1, "viaTransactionId"    # Ljava/lang/String;

    .line 135
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$fgetmMessageCallback(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Landroid/telephony/ims/stub/DelegateConnectionMessageCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/telephony/ims/stub/DelegateConnectionMessageCallback;->onMessageSent(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist onMessageReceived(Landroid/telephony/ims/SipMessage;)V
    .locals 4
    .param p1, "message"    # Landroid/telephony/ims/SipMessage;

    .line 121
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 123
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v2}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2;Landroid/telephony/ims/SipMessage;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 127
    nop

    .line 128
    return-void

    .line 126
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 127
    throw v2
.end method

.method public blacklist onMessageSendFailure(Ljava/lang/String;I)V
    .locals 4
    .param p1, "viaTransactionId"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 143
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 145
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v2}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2;Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 149
    nop

    .line 150
    return-void

    .line 148
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 149
    throw v2
.end method

.method public blacklist onMessageSent(Ljava/lang/String;)V
    .locals 4
    .param p1, "viaTransactionId"    # Ljava/lang/String;

    .line 132
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 134
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2;->this$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-static {v2}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 138
    nop

    .line 139
    return-void

    .line 137
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 138
    throw v2
.end method
