.class Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->onCaptureStarted(Landroid/hardware/camera2/impl/CaptureResultExtras;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

.field final synthetic blacklist val$frameNumber:J

.field final synthetic blacklist val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

.field final synthetic blacklist val$resultExtras:Landroid/hardware/camera2/impl/CaptureResultExtras;

.field final synthetic blacklist val$timestamp:J


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CaptureResultExtras;Landroid/hardware/camera2/impl/CaptureCallbackHolder;JJ)V
    .locals 0
    .param p1, "this$1"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    .line 2160
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->this$1:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$resultExtras:Landroid/hardware/camera2/impl/CaptureResultExtras;

    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    iput-wide p4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$timestamp:J

    iput-wide p6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$frameNumber:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 14

    .line 2163
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->this$1:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$misClosed(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2164
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$resultExtras:Landroid/hardware/camera2/impl/CaptureResultExtras;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getSubsequenceId()I

    move-result v0

    .line 2165
    .local v0, "subsequenceId":I
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    .line 2167
    .local v1, "request":Landroid/hardware/camera2/CaptureRequest;
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->hasBatchedOutputs()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2170
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2171
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    .line 2172
    .local v2, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    invoke-virtual {v4}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getRequestCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 2173
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    invoke-virtual {v4}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getCallback()Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object v5

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->this$1:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    iget-object v6, v4, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    .line 2175
    invoke-virtual {v4, v3}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v7

    iget-wide v8, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$timestamp:J

    sub-int v4, v0, v3

    int-to-long v10, v4

    const-wide/32 v12, 0x3b9aca00

    mul-long/2addr v10, v12

    .line 2177
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v12, v4

    div-long/2addr v10, v12

    sub-long/2addr v8, v10

    iget-wide v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$frameNumber:J

    sub-int v4, v0, v3

    int-to-long v12, v4

    sub-long/2addr v10, v12

    .line 2173
    invoke-virtual/range {v5 .. v11}, Landroid/hardware/camera2/impl/CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 2172
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2180
    .end local v2    # "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v3    # "i":I
    :cond_0
    goto :goto_1

    .line 2181
    :cond_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getCallback()Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object v3

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->this$1:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    iget-object v4, v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$resultExtras:Landroid/hardware/camera2/impl/CaptureResultExtras;

    .line 2183
    invoke-virtual {v5}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getSubsequenceId()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    iget-wide v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$timestamp:J

    iget-wide v8, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;->val$frameNumber:J

    .line 2181
    invoke-virtual/range {v3 .. v9}, Landroid/hardware/camera2/impl/CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 2187
    .end local v0    # "subsequenceId":I
    .end local v1    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_2
    :goto_1
    return-void
.end method
