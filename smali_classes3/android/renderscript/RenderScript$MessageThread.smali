.class Landroid/renderscript/RenderScript$MessageThread;
.super Ljava/lang/Thread;
.source "RenderScript.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/RenderScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageThread"
.end annotation


# static fields
.field static final greylist-max-o RS_ERROR_FATAL_DEBUG:I = 0x800

.field static final greylist-max-o RS_ERROR_FATAL_UNKNOWN:I = 0x1000

.field static final greylist-max-o RS_MESSAGE_TO_CLIENT_ERROR:I = 0x3

.field static final greylist-max-o RS_MESSAGE_TO_CLIENT_EXCEPTION:I = 0x1

.field static final greylist-max-o RS_MESSAGE_TO_CLIENT_NEW_BUFFER:I = 0x5

.field static final greylist-max-o RS_MESSAGE_TO_CLIENT_NONE:I = 0x0

.field static final greylist-max-o RS_MESSAGE_TO_CLIENT_RESIZE:I = 0x2

.field static final greylist-max-o RS_MESSAGE_TO_CLIENT_USER:I = 0x4


# instance fields
.field greylist-max-o mAuxData:[I

.field greylist-max-o mRS:Landroid/renderscript/RenderScript;

.field greylist-max-o mRun:Z


# direct methods
.method constructor greylist-max-o <init>(Landroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .line 1277
    const-string v0, "RSMessageThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1263
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/renderscript/RenderScript$MessageThread;->mRun:Z

    .line 1264
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/renderscript/RenderScript$MessageThread;->mAuxData:[I

    .line 1278
    iput-object p1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    .line 1280
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 12

    .line 1285
    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 1286
    .local v0, "rbuf":[I
    iget-object v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-wide v2, v1, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/RenderScript;->nContextInitToClient(J)V

    .line 1287
    :goto_0
    iget-boolean v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRun:Z

    if-eqz v1, :cond_a

    .line 1288
    const/4 v1, 0x0

    aput v1, v0, v1

    .line 1289
    iget-object v2, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-wide v3, v2, Landroid/renderscript/RenderScript;->mContext:J

    iget-object v5, p0, Landroid/renderscript/RenderScript$MessageThread;->mAuxData:[I

    invoke-virtual {v2, v3, v4, v5}, Landroid/renderscript/RenderScript;->nContextPeekMessage(J[I)I

    move-result v2

    .line 1290
    .local v2, "msg":I
    iget-object v3, p0, Landroid/renderscript/RenderScript$MessageThread;->mAuxData:[I

    const/4 v4, 0x1

    aget v5, v3, v4

    .line 1291
    .local v5, "size":I
    aget v3, v3, v1

    .line 1293
    .local v3, "subID":I
    const-string v6, "Error processing message from RenderScript."

    const/4 v7, 0x4

    if-ne v2, v7, :cond_3

    .line 1294
    shr-int/lit8 v1, v5, 0x2

    array-length v4, v0

    if-lt v1, v4, :cond_0

    .line 1295
    add-int/lit8 v1, v5, 0x3

    shr-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .line 1297
    :cond_0
    iget-object v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-wide v8, v1, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {v1, v8, v9, v0}, Landroid/renderscript/RenderScript;->nContextGetUserMessage(J[I)I

    move-result v1

    if-ne v1, v7, :cond_2

    .line 1302
    iget-object v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v1, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    if-eqz v1, :cond_1

    .line 1303
    iget-object v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v1, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    iput-object v0, v1, Landroid/renderscript/RenderScript$RSMessageHandler;->mData:[I

    .line 1304
    iget-object v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v1, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    iput v3, v1, Landroid/renderscript/RenderScript$RSMessageHandler;->mID:I

    .line 1305
    iget-object v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v1, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    iput v5, v1, Landroid/renderscript/RenderScript$RSMessageHandler;->mLength:I

    .line 1306
    iget-object v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v1, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript$RSMessageHandler;->run()V

    goto :goto_0

    .line 1308
    :cond_1
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string v4, "Received a message from the script with no message handler installed."

    invoke-direct {v1, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1299
    :cond_2
    new-instance v1, Landroid/renderscript/RSDriverException;

    invoke-direct {v1, v6}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1313
    :cond_3
    const/4 v7, 0x3

    if-ne v2, v7, :cond_7

    .line 1314
    iget-object v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-wide v6, v1, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {v1, v6, v7}, Landroid/renderscript/RenderScript;->nContextGetErrorMessage(J)Ljava/lang/String;

    move-result-object v1

    .line 1323
    .local v1, "e":Ljava/lang/String;
    const/16 v4, 0x1000

    if-ge v3, v4, :cond_6

    const/16 v4, 0x800

    if-lt v3, v4, :cond_4

    iget-object v4, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v4, v4, Landroid/renderscript/RenderScript;->mContextType:Landroid/renderscript/RenderScript$ContextType;

    sget-object v6, Landroid/renderscript/RenderScript$ContextType;->DEBUG:Landroid/renderscript/RenderScript$ContextType;

    if-ne v4, v6, :cond_6

    iget-object v4, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v4, v4, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    if-eqz v4, :cond_6

    .line 1330
    :cond_4
    iget-object v4, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v4, v4, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    if-eqz v4, :cond_5

    .line 1331
    iget-object v4, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v4, v4, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    iput-object v1, v4, Landroid/renderscript/RenderScript$RSErrorHandler;->mErrorMessage:Ljava/lang/String;

    .line 1332
    iget-object v4, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v4, v4, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    iput v3, v4, Landroid/renderscript/RenderScript$RSErrorHandler;->mErrorNum:I

    .line 1333
    iget-object v4, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v4, v4, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    invoke-virtual {v4}, Landroid/renderscript/RenderScript$RSErrorHandler;->run()V

    goto/16 :goto_0

    .line 1335
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "non fatal RS error, "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "RenderScript_jni"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    goto/16 :goto_0

    .line 1327
    :cond_6
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fatal error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", details: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1342
    .end local v1    # "e":Ljava/lang/String;
    :cond_7
    const/4 v7, 0x5

    if-ne v2, v7, :cond_9

    .line 1343
    iget-object v8, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-wide v9, v8, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {v8, v9, v10, v0}, Landroid/renderscript/RenderScript;->nContextGetUserMessage(J[I)I

    move-result v8

    if-ne v8, v7, :cond_8

    .line 1347
    aget v4, v0, v4

    int-to-long v6, v4

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    aget v1, v0, v1

    int-to-long v8, v1

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    .line 1348
    .local v6, "bufferID":J
    invoke-static {v6, v7}, Landroid/renderscript/Allocation;->sendBufferNotification(J)V

    .line 1349
    goto/16 :goto_0

    .line 1345
    .end local v6    # "bufferID":J
    :cond_8
    new-instance v1, Landroid/renderscript/RSDriverException;

    invoke-direct {v1, v6}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1357
    :cond_9
    const-wide/16 v6, 0x1

    :try_start_0
    invoke-static {v6, v7, v1}, Landroid/renderscript/RenderScript$MessageThread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1359
    goto :goto_1

    .line 1358
    :catch_0
    move-exception v1

    .line 1360
    .end local v2    # "msg":I
    .end local v3    # "subID":I
    .end local v5    # "size":I
    :goto_1
    goto/16 :goto_0

    .line 1362
    :cond_a
    return-void
.end method
