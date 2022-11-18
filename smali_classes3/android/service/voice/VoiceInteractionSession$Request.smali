.class public Landroid/service/voice/VoiceInteractionSession$Request;
.super Ljava/lang/Object;
.source "VoiceInteractionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# instance fields
.field final greylist-max-o mCallback:Lcom/android/internal/app/IVoiceInteractorCallback;

.field final greylist-max-o mCallingPackage:Ljava/lang/String;

.field final greylist-max-o mCallingUid:I

.field final greylist-max-o mExtras:Landroid/os/Bundle;

.field final greylist-max-o mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

.field final greylist-max-o mSession:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/voice/VoiceInteractionSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .param p4, "session"    # Landroid/service/voice/VoiceInteractionSession;
    .param p5, "extras"    # Landroid/os/Bundle;

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$Request$1;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionSession$Request$1;-><init>(Landroid/service/voice/VoiceInteractionSession$Request;)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    .line 392
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mCallingPackage:Ljava/lang/String;

    .line 393
    iput p2, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mCallingUid:I

    .line 394
    iput-object p3, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mCallback:Lcom/android/internal/app/IVoiceInteractorCallback;

    .line 395
    iget-object v0, p4, Landroid/service/voice/VoiceInteractionSession;->mWeakRef:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mSession:Ljava/lang/ref/WeakReference;

    .line 396
    iput-object p5, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mExtras:Landroid/os/Bundle;

    .line 397
    return-void
.end method


# virtual methods
.method public whitelist cancel()V
    .locals 2

    .line 457
    :try_start_0
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession$Request;->finishRequest()V

    .line 458
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mCallback:Lcom/android/internal/app/IVoiceInteractorCallback;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IVoiceInteractorCallback;->deliverCancel(Lcom/android/internal/app/IVoiceInteractorRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    goto :goto_0

    .line 459
    :catch_0
    move-exception v0

    .line 461
    :goto_0
    return-void
.end method

.method greylist-max-o dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 478
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mInterface="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 480
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCallingPackage="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 481
    const-string v0, " mCallingUid="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mCallingUid:I

    invoke-static {p3, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 482
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 483
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCallback="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mCallback:Lcom/android/internal/app/IVoiceInteractorCallback;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractorCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 485
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mExtras="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 489
    :cond_0
    return-void
.end method

.method greylist-max-o finishRequest()V
    .locals 5

    .line 437
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/voice/VoiceInteractionSession;

    .line 438
    .local v0, "session":Landroid/service/voice/VoiceInteractionSession;
    if-eqz v0, :cond_2

    .line 441
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/voice/VoiceInteractionSession;->removeRequest(Landroid/os/IBinder;)Landroid/service/voice/VoiceInteractionSession$Request;

    move-result-object v1

    .line 442
    .local v1, "req":Landroid/service/voice/VoiceInteractionSession$Request;
    if-eqz v1, :cond_1

    .line 444
    if-ne v1, p0, :cond_0

    .line 448
    return-void

    .line 445
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current active request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not same as calling request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 443
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request not active: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 439
    .end local v1    # "req":Landroid/service/voice/VoiceInteractionSession$Request;
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "VoiceInteractionSession has been destroyed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getCallingPackage()Ljava/lang/String;
    .locals 1

    .line 410
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mCallingPackage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCallingUid()I
    .locals 1

    .line 403
    iget v0, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mCallingUid:I

    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    .line 417
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist isActive()Z
    .locals 2

    .line 429
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/voice/VoiceInteractionSession;

    .line 430
    .local v0, "session":Landroid/service/voice/VoiceInteractionSession;
    if-nez v0, :cond_0

    .line 431
    const/4 v1, 0x0

    return v1

    .line 433
    :cond_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/voice/VoiceInteractionSession;->isRequestActive(Landroid/os/IBinder;)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 466
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 467
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 469
    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    iget v1, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mCallingUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 473
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
