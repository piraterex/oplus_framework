.class Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;
.super Lcom/android/internal/telephony/IImsStateCallback$Stub;
.source "ImsStateCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsStateCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IImsStateCallbackStub"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mImsStateCallbackWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/telephony/ims/ImsStateCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/telephony/ims/ImsStateCallback;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "imsStateCallback"    # Landroid/telephony/ims/ImsStateCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 118
    invoke-direct {p0}, Lcom/android/internal/telephony/IImsStateCallback$Stub;-><init>()V

    .line 119
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;->mImsStateCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 120
    iput-object p2, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;->mExecutor:Ljava/util/concurrent/Executor;

    .line 121
    return-void
.end method

.method static synthetic blacklist lambda$onAvailable$0(Landroid/telephony/ims/ImsStateCallback;)V
    .locals 0
    .param p0, "callback"    # Landroid/telephony/ims/ImsStateCallback;

    .line 132
    invoke-virtual {p0}, Landroid/telephony/ims/ImsStateCallback;->onAvailable()V

    return-void
.end method

.method static synthetic blacklist lambda$onUnavailable$2(Landroid/telephony/ims/ImsStateCallback;I)V
    .locals 0
    .param p0, "callback"    # Landroid/telephony/ims/ImsStateCallback;
    .param p1, "reason"    # I

    .line 140
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsStateCallback;->onUnavailable(I)V

    return-void
.end method


# virtual methods
.method blacklist getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 124
    iget-object v0, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method synthetic blacklist lambda$onAvailable$1$android-telephony-ims-ImsStateCallback$IImsStateCallbackStub(Landroid/telephony/ims/ImsStateCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/telephony/ims/ImsStateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/ImsStateCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onUnavailable$3$android-telephony-ims-ImsStateCallback$IImsStateCallbackStub(Landroid/telephony/ims/ImsStateCallback;I)V
    .locals 2
    .param p1, "callback"    # Landroid/telephony/ims/ImsStateCallback;
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2}, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/ImsStateCallback;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onAvailable()V
    .locals 2

    .line 128
    iget-object v0, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;->mImsStateCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsStateCallback;

    .line 129
    .local v0, "callback":Landroid/telephony/ims/ImsStateCallback;
    if-nez v0, :cond_0

    return-void

    .line 131
    :cond_0
    new-instance v1, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;Landroid/telephony/ims/ImsStateCallback;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 133
    return-void
.end method

.method public blacklist onUnavailable(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 136
    iget-object v0, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;->mImsStateCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsStateCallback;

    .line 137
    .local v0, "callback":Landroid/telephony/ims/ImsStateCallback;
    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    new-instance v1, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;Landroid/telephony/ims/ImsStateCallback;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 141
    return-void
.end method
