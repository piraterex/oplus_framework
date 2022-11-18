.class public abstract Landroid/app/VoiceInteractor$Request;
.super Ljava/lang/Object;
.source "VoiceInteractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/VoiceInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Request"
.end annotation


# instance fields
.field greylist-max-o mActivity:Landroid/app/Activity;

.field greylist-max-o mContext:Landroid/content/Context;

.field greylist-max-o mName:Ljava/lang/String;

.field greylist-max-o mRequestInterface:Lcom/android/internal/app/IVoiceInteractorRequest;


# direct methods
.method constructor greylist-max-o <init>()V
    .locals 0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    return-void
.end method


# virtual methods
.method public whitelist cancel()V
    .locals 3

    .line 249
    iget-object v0, p0, Landroid/app/VoiceInteractor$Request;->mRequestInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    if-eqz v0, :cond_0

    .line 253
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractorRequest;->cancel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VoiceInteractor"

    const-string v2, "Voice interactor has died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is no longer active"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o clear()V
    .locals 1

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/VoiceInteractor$Request;->mRequestInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    .line 321
    iput-object v0, p0, Landroid/app/VoiceInteractor$Request;->mContext:Landroid/content/Context;

    .line 322
    iput-object v0, p0, Landroid/app/VoiceInteractor$Request;->mActivity:Landroid/app/Activity;

    .line 323
    iput-object v0, p0, Landroid/app/VoiceInteractor$Request;->mName:Ljava/lang/String;

    .line 324
    return-void
.end method

.method greylist-max-o dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 309
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRequestInterface="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Landroid/app/VoiceInteractor$Request;->mRequestInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 311
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mActivity="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/VoiceInteractor$Request;->mActivity:Landroid/app/Activity;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 312
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mName="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/VoiceInteractor$Request;->mName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method public whitelist getActivity()Landroid/app/Activity;
    .locals 1

    .line 272
    iget-object v0, p0, Landroid/app/VoiceInteractor$Request;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public whitelist getContext()Landroid/content/Context;
    .locals 1

    .line 264
    iget-object v0, p0, Landroid/app/VoiceInteractor$Request;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Landroid/app/VoiceInteractor$Request;->mName:Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o getRequestTypeName()Ljava/lang/String;
    .locals 1

    .line 316
    const-string v0, "Request"

    return-object v0
.end method

.method public whitelist onAttached(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 288
    return-void
.end method

.method public whitelist onCancel()V
    .locals 0

    .line 281
    return-void
.end method

.method public whitelist onDetached()V
    .locals 0

    .line 294
    return-void
.end method

.method abstract greylist-max-o submit(Lcom/android/internal/app/IVoiceInteractor;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 299
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 300
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {p0}, Landroid/app/VoiceInteractor$Request;->getRequestTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    iget-object v1, p0, Landroid/app/VoiceInteractor$Request;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
