.class Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;
.super Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;
.source "RegistrationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegistrationBinder"
.end annotation


# instance fields
.field private blacklist mBundle:Landroid/os/Bundle;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$msetExecutor(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->setExecutor(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V
    .locals 1
    .param p1, "localCallback"    # Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 143
    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;-><init>()V

    .line 141
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mBundle:Landroid/os/Bundle;

    .line 144
    iput-object p1, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 145
    return-void
.end method

.method private blacklist setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 208
    iput-object p1, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 209
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onDeregistered$2$android-telephony-ims-RegistrationManager$RegistrationCallback$RegistrationBinder(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 177
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->onUnregistered(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method synthetic blacklist lambda$onRegistered$0$android-telephony-ims-RegistrationManager$RegistrationCallback$RegistrationBinder(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .locals 1
    .param p1, "attr"    # Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 153
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    return-void
.end method

.method synthetic blacklist lambda$onRegistering$1$android-telephony-ims-RegistrationManager$RegistrationCallback$RegistrationBinder(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .locals 1
    .param p1, "attr"    # Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 165
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->onRegistering(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    return-void
.end method

.method synthetic blacklist lambda$onSubscriberAssociatedUriChanged$4$android-telephony-ims-RegistrationManager$RegistrationCallback$RegistrationBinder([Landroid/net/Uri;)V
    .locals 1
    .param p1, "uris"    # [Landroid/net/Uri;

    .line 201
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V

    return-void
.end method

.method synthetic blacklist lambda$onTechnologyChangeFailed$3$android-telephony-ims-RegistrationManager$RegistrationCallback$RegistrationBinder(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "imsRadioTech"    # I
    .param p2, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 189
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 190
    invoke-static {p1}, Landroid/telephony/ims/RegistrationManager;->getAccessType(I)I

    move-result v1

    .line 189
    invoke-virtual {v0, v1, p2}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 173
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    if-nez v0, :cond_0

    return-void

    .line 175
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 177
    .local v0, "callingIdentity":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-static {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->restoreCallingIdentity(J)V

    .line 180
    nop

    .line 181
    return-void

    .line 179
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->restoreCallingIdentity(J)V

    .line 180
    throw v2
.end method

.method public blacklist onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .locals 4
    .param p1, "attr"    # Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 149
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 153
    .local v0, "callingIdentity":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;Landroid/telephony/ims/ImsRegistrationAttributes;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-static {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->restoreCallingIdentity(J)V

    .line 156
    nop

    .line 157
    return-void

    .line 155
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->restoreCallingIdentity(J)V

    .line 156
    throw v2
.end method

.method public blacklist onRegistering(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .locals 4
    .param p1, "attr"    # Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 161
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    if-nez v0, :cond_0

    return-void

    .line 163
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 165
    .local v0, "callingIdentity":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;Landroid/telephony/ims/ImsRegistrationAttributes;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    invoke-static {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->restoreCallingIdentity(J)V

    .line 168
    nop

    .line 169
    return-void

    .line 167
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->restoreCallingIdentity(J)V

    .line 168
    throw v2
.end method

.method public blacklist onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    .locals 4
    .param p1, "uris"    # [Landroid/net/Uri;

    .line 197
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    if-nez v0, :cond_0

    return-void

    .line 199
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 201
    .local v0, "callingIdentity":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;[Landroid/net/Uri;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    invoke-static {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->restoreCallingIdentity(J)V

    .line 204
    nop

    .line 205
    return-void

    .line 203
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->restoreCallingIdentity(J)V

    .line 204
    throw v2
.end method

.method public blacklist onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "imsRadioTech"    # I
    .param p2, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 185
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    if-nez v0, :cond_0

    return-void

    .line 187
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 189
    .local v0, "callingIdentity":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;ILandroid/telephony/ims/ImsReasonInfo;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    invoke-static {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->restoreCallingIdentity(J)V

    .line 193
    nop

    .line 194
    return-void

    .line 192
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->restoreCallingIdentity(J)V

    .line 193
    throw v2
.end method
