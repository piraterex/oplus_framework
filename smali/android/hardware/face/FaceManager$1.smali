.class Landroid/hardware/face/FaceManager$1;
.super Landroid/hardware/face/IFaceServiceReceiver$Stub;
.source "FaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/FaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/face/FaceManager;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/face/FaceManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/face/FaceManager;

    .line 98
    iput-object p1, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    invoke-direct {p0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAcquired(II)V
    .locals 2
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 113
    invoke-static {}, Landroid/hardware/face/FaceManager;->-$$Nest$sfgetDEBUG_FACE()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAcquired and acquireInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    iget-object v0, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmHandler(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 116
    return-void
.end method

.method public blacklist onAuthenticationFailed()V
    .locals 2

    .line 145
    invoke-static {}, Landroid/hardware/face/FaceManager;->-$$Nest$sfgetDEBUG_FACE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FaceManager"

    const-string/jumbo v1, "onAuthenticationFailed!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    iget-object v0, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmHandler(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 148
    return-void
.end method

.method public blacklist onAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V
    .locals 2
    .param p1, "frame"    # Landroid/hardware/face/FaceAuthenticationFrame;

    .line 194
    iget-object v0, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmHandler(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x70

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 195
    return-void
.end method

.method public blacklist onAuthenticationSucceeded(Landroid/hardware/face/Face;IZ)V
    .locals 2
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "userId"    # I
    .param p3, "isStrongBiometric"    # Z

    .line 125
    invoke-static {}, Landroid/hardware/face/FaceManager;->-$$Nest$sfgetDEBUG_FACE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FaceManager"

    const-string/jumbo v1, "onAuthenticationSucceeded!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    iget-object v0, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmContext(Landroid/hardware/face/FaceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0, p1, p2, p3}, Landroid/hardware/face/FaceManager;->-$$Nest$msendAuthenticatedSucceeded(Landroid/hardware/face/FaceManager;Landroid/hardware/face/Face;IZ)V

    goto :goto_0

    .line 129
    :cond_1
    iget-object v0, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmHandler(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    .line 130
    nop

    .line 129
    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 133
    :goto_0
    return-void
.end method

.method public blacklist onChallengeGenerated(IIJ)V
    .locals 3
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "challenge"    # J

    .line 186
    invoke-static {}, Landroid/hardware/face/FaceManager;->-$$Nest$sfgetDEBUG_FACE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FaceManager"

    const-string/jumbo v1, "onChallengeGenerated!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    iget-object v0, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmHandler(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6c

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 190
    return-void
.end method

.method public blacklist onEnrollResult(Landroid/hardware/face/Face;I)V
    .locals 3
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "remaining"    # I

    .line 104
    invoke-static {}, Landroid/hardware/face/FaceManager;->-$$Nest$sfgetDEBUG_FACE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FaceManager"

    const-string/jumbo v1, "onEnrollResult!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    iget-object v0, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmHandler(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 107
    return-void
.end method

.method public blacklist onEnrollmentFrame(Landroid/hardware/face/FaceEnrollFrame;)V
    .locals 2
    .param p1, "frame"    # Landroid/hardware/face/FaceEnrollFrame;

    .line 199
    iget-object v0, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmHandler(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x71

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 200
    return-void
.end method

.method public blacklist onError(II)V
    .locals 2
    .param p1, "error"    # I
    .param p2, "vendorCode"    # I

    .line 154
    invoke-static {}, Landroid/hardware/face/FaceManager;->-$$Nest$sfgetDEBUG_FACE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FaceManager"

    const-string/jumbo v1, "onError!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    iget-object v0, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmHandler(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 157
    return-void
.end method

.method public blacklist onFaceDetected(IIZ)V
    .locals 3
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "isStrongBiometric"    # Z

    .line 137
    iget-object v0, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmHandler(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x6d

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 139
    return-void
.end method

.method public blacklist onFeatureGet(Z[I[Z)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "features"    # [I
    .param p3, "featureState"    # [Z

    .line 175
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 176
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 177
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 178
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 179
    iget-object v1, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v1}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmHandler(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x6a

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 180
    return-void
.end method

.method public blacklist onFeatureSet(ZI)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "feature"    # I

    .line 170
    iget-object v0, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmHandler(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x6b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 171
    return-void
.end method

.method public blacklist onRemoved(Landroid/hardware/face/Face;I)V
    .locals 3
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "remaining"    # I

    .line 163
    invoke-static {}, Landroid/hardware/face/FaceManager;->-$$Nest$sfgetDEBUG_FACE()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRemoved remaining = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    iget-object v0, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmHandler(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x69

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 166
    return-void
.end method
