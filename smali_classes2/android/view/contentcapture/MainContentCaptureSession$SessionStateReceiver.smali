.class Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "MainContentCaptureSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/MainContentCaptureSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SessionStateReceiver"
.end annotation


# instance fields
.field private final blacklist mMainSession:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/contentcapture/MainContentCaptureSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/view/contentcapture/MainContentCaptureSession;)V
    .locals 1
    .param p1, "session"    # Landroid/view/contentcapture/MainContentCaptureSession;

    .line 165
    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    .line 166
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver;->mMainSession:Ljava/lang/ref/WeakReference;

    .line 167
    return-void
.end method

.method static synthetic blacklist lambda$send$0(Landroid/view/contentcapture/MainContentCaptureSession;)V
    .locals 1
    .param p0, "mainSession"    # Landroid/view/contentcapture/MainContentCaptureSession;

    .line 188
    const/16 v0, 0x104

    invoke-static {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->-$$Nest$mresetSession(Landroid/view/contentcapture/MainContentCaptureSession;I)V

    return-void
.end method

.method static synthetic blacklist lambda$send$1(Landroid/view/contentcapture/MainContentCaptureSession;ILandroid/os/IBinder;)V
    .locals 0
    .param p0, "mainSession"    # Landroid/view/contentcapture/MainContentCaptureSession;
    .param p1, "resultCode"    # I
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 195
    invoke-static {p0, p1, p2}, Landroid/view/contentcapture/MainContentCaptureSession;->-$$Nest$monSessionStarted(Landroid/view/contentcapture/MainContentCaptureSession;ILandroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public blacklist send(ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 171
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver;->mMainSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/contentcapture/MainContentCaptureSession;

    .line 172
    .local v0, "mainSession":Landroid/view/contentcapture/MainContentCaptureSession;
    if-nez v0, :cond_0

    .line 173
    invoke-static {}, Landroid/view/contentcapture/MainContentCaptureSession;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "received result after mina session released"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void

    .line 177
    :cond_0
    if-eqz p2, :cond_4

    .line 179
    const-string v1, "enabled"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 180
    .local v1, "hasEnabled":Z
    if-eqz v1, :cond_2

    .line 181
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 182
    .local v2, "disabled":Z
    :goto_0
    invoke-static {v0}, Landroid/view/contentcapture/MainContentCaptureSession;->-$$Nest$fgetmDisabled(Landroid/view/contentcapture/MainContentCaptureSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 183
    return-void

    .line 185
    .end local v2    # "disabled":Z
    :cond_2
    const-string v2, "binder"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 186
    .local v2, "binder":Landroid/os/IBinder;
    if-nez v2, :cond_3

    .line 187
    invoke-static {}, Landroid/view/contentcapture/MainContentCaptureSession;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "No binder extra result"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-static {v0}, Landroid/view/contentcapture/MainContentCaptureSession;->-$$Nest$fgetmHandler(Landroid/view/contentcapture/MainContentCaptureSession;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver$$ExternalSyntheticLambda0;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 190
    return-void

    .line 192
    .end local v1    # "hasEnabled":Z
    :cond_3
    goto :goto_1

    .line 193
    .end local v2    # "binder":Landroid/os/IBinder;
    :cond_4
    const/4 v2, 0x0

    .line 195
    .restart local v2    # "binder":Landroid/os/IBinder;
    :goto_1
    invoke-static {v0}, Landroid/view/contentcapture/MainContentCaptureSession;->-$$Nest$fgetmHandler(Landroid/view/contentcapture/MainContentCaptureSession;)Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, p1, v2}, Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver$$ExternalSyntheticLambda1;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;ILandroid/os/IBinder;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 196
    return-void
.end method
