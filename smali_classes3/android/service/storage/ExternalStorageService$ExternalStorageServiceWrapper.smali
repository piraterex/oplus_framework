.class Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;
.super Landroid/service/storage/IExternalStorageService$Stub;
.source "ExternalStorageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/storage/ExternalStorageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExternalStorageServiceWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/storage/ExternalStorageService;


# direct methods
.method private constructor blacklist <init>(Landroid/service/storage/ExternalStorageService;)V
    .locals 0

    .line 200
    iput-object p1, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-direct {p0}, Landroid/service/storage/IExternalStorageService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/storage/ExternalStorageService;Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;-><init>(Landroid/service/storage/ExternalStorageService;)V

    return-void
.end method

.method private blacklist sendResult(Ljava/lang/String;Ljava/lang/Throwable;Landroid/os/RemoteCallback;)V
    .locals 3
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .param p3, "callback"    # Landroid/os/RemoteCallback;

    .line 321
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 322
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android.service.storage.extra.session_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    if-eqz p2, :cond_0

    .line 324
    new-instance v1, Landroid/os/ParcelableException;

    invoke-direct {v1, p2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    const-string v2, "android.service.storage.extra.error"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 326
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 329
    iget-object v1, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-static {v1}, Landroid/service/storage/ExternalStorageService;->-$$Nest$fgetDEBUG(Landroid/service/storage/ExternalStorageService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExternalStorageService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist endSession(Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 2
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 282
    iget-object v0, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-static {v0}, Landroid/service/storage/ExternalStorageService;->-$$Nest$fgetDEBUG(Landroid/service/storage/ExternalStorageService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endSession:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExternalStorageService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_0
    iget-object v0, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-static {v0}, Landroid/service/storage/ExternalStorageService;->-$$Nest$fgetmHandler(Landroid/service/storage/ExternalStorageService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 306
    return-void
.end method

.method public blacklist freeCache(Ljava/lang/String;Ljava/lang/String;JLandroid/os/RemoteCallback;)V
    .locals 9
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "volumeUuid"    # Ljava/lang/String;
    .param p3, "bytes"    # J
    .param p5, "callback"    # Landroid/os/RemoteCallback;

    .line 268
    iget-object v0, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-static {v0}, Landroid/service/storage/ExternalStorageService;->-$$Nest$fgetmHandler(Landroid/service/storage/ExternalStorageService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda2;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p1

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;Ljava/lang/String;JLjava/lang/String;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 276
    return-void
.end method

.method synthetic blacklist lambda$endSession$3$android-service-storage-ExternalStorageService$ExternalStorageServiceWrapper(Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 3
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/os/RemoteCallback;

    .line 290
    :try_start_0
    iget-object v0, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-static {v0}, Landroid/service/storage/ExternalStorageService;->-$$Nest$fgetDEBUG(Landroid/service/storage/ExternalStorageService;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "ExternalStorageService"

    if-eqz v0, :cond_0

    .line 291
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEndSession before:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    iget-object v0, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-virtual {v0, p1}, Landroid/service/storage/ExternalStorageService;->onEndSession(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-static {v0}, Landroid/service/storage/ExternalStorageService;->-$$Nest$fgetDEBUG(Landroid/service/storage/ExternalStorageService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEndSession end:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->sendResult(Ljava/lang/String;Ljava/lang/Throwable;Landroid/os/RemoteCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    goto :goto_0

    .line 302
    :catchall_0
    move-exception v0

    .line 303
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, p1, v0, p2}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->sendResult(Ljava/lang/String;Ljava/lang/Throwable;Landroid/os/RemoteCallback;)V

    .line 305
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method synthetic blacklist lambda$freeCache$2$android-service-storage-ExternalStorageService$ExternalStorageServiceWrapper(Ljava/lang/String;JLjava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 2
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "bytes"    # J
    .param p4, "sessionId"    # Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/RemoteCallback;

    .line 270
    :try_start_0
    iget-object v0, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/service/storage/ExternalStorageService;->onFreeCache(Ljava/util/UUID;J)V

    .line 271
    const/4 v0, 0x0

    invoke-direct {p0, p4, v0, p5}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->sendResult(Ljava/lang/String;Ljava/lang/Throwable;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    goto :goto_0

    .line 272
    :catchall_0
    move-exception v0

    .line 273
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, p4, v0, p5}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->sendResult(Ljava/lang/String;Ljava/lang/Throwable;Landroid/os/RemoteCallback;)V

    .line 275
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method synthetic blacklist lambda$notifyAnrDelayStarted$4$android-service-storage-ExternalStorageService$ExternalStorageServiceWrapper(Ljava/lang/String;III)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "tid"    # I
    .param p4, "reason"    # I

    .line 313
    :try_start_0
    iget-object v0, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/service/storage/ExternalStorageService;->onAnrDelayStarted(Ljava/lang/String;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    goto :goto_0

    .line 314
    :catchall_0
    move-exception v0

    .line 317
    :goto_0
    return-void
.end method

.method synthetic blacklist lambda$notifyVolumeStateChanged$1$android-service-storage-ExternalStorageService$ExternalStorageServiceWrapper(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/RemoteCallback;)V
    .locals 4
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "vol"    # Landroid/os/storage/StorageVolume;
    .param p3, "callback"    # Landroid/os/RemoteCallback;

    .line 247
    :try_start_0
    iget-object v0, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-static {v0}, Landroid/service/storage/ExternalStorageService;->-$$Nest$fgetDEBUG(Landroid/service/storage/ExternalStorageService;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, ",vol:"

    const-string v2, "ExternalStorageService"

    if-eqz v0, :cond_0

    .line 248
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onVolumeStateChanged before:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    iget-object v0, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-virtual {v0, p2}, Landroid/service/storage/ExternalStorageService;->onVolumeStateChanged(Landroid/os/storage/StorageVolume;)V

    .line 254
    iget-object v0, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-static {v0}, Landroid/service/storage/ExternalStorageService;->-$$Nest$fgetDEBUG(Landroid/service/storage/ExternalStorageService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onVolumeStateChanged end:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->sendResult(Ljava/lang/String;Ljava/lang/Throwable;Landroid/os/RemoteCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    goto :goto_0

    .line 259
    :catchall_0
    move-exception v0

    .line 260
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, p1, v0, p3}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->sendResult(Ljava/lang/String;Ljava/lang/Throwable;Landroid/os/RemoteCallback;)V

    .line 262
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method synthetic blacklist lambda$startSession$0$android-service-storage-ExternalStorageService$ExternalStorageServiceWrapper(Ljava/lang/String;Ljava/lang/String;ILandroid/os/ParcelFileDescriptor;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 15
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "upperPath"    # Ljava/lang/String;
    .param p3, "flag"    # I
    .param p4, "deviceFd"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "lowerPath"    # Ljava/lang/String;
    .param p6, "callback"    # Landroid/os/RemoteCallback;

    move-object v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p6

    .line 215
    :try_start_0
    iget-object v0, v1, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-static {v0}, Landroid/service/storage/ExternalStorageService;->-$$Nest$fgetDEBUG(Landroid/service/storage/ExternalStorageService;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v11, ", lowerPath:"

    const-string v12, ",upperPath:"

    const-string v13, "ExternalStorageService"

    if-eqz v0, :cond_0

    .line 216
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartSession before:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    iget-object v2, v1, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v14, p5

    :try_start_2
    invoke-direct {v7, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v2 .. v7}, Landroid/service/storage/ExternalStorageService;->onStartSession(Ljava/lang/String;ILandroid/os/ParcelFileDescriptor;Ljava/io/File;Ljava/io/File;)V

    .line 223
    iget-object v0, v1, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-static {v0}, Landroid/service/storage/ExternalStorageService;->-$$Nest$fgetDEBUG(Landroid/service/storage/ExternalStorageService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartSession end:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v8, v0, v10}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->sendResult(Ljava/lang/String;Ljava/lang/Throwable;Landroid/os/RemoteCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    goto :goto_1

    .line 228
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v14, p5

    .line 229
    .local v0, "t":Ljava/lang/Throwable;
    :goto_0
    invoke-direct {p0, v8, v0, v10}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->sendResult(Ljava/lang/String;Ljava/lang/Throwable;Landroid/os/RemoteCallback;)V

    .line 231
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method public blacklist notifyAnrDelayStarted(Ljava/lang/String;III)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "tid"    # I
    .param p4, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    iget-object v0, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-static {v0}, Landroid/service/storage/ExternalStorageService;->-$$Nest$fgetmHandler(Landroid/service/storage/ExternalStorageService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda3;-><init>(Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;Ljava/lang/String;III)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 318
    return-void
.end method

.method public blacklist notifyVolumeStateChanged(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/RemoteCallback;)V
    .locals 2
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "vol"    # Landroid/os/storage/StorageVolume;
    .param p3, "callback"    # Landroid/os/RemoteCallback;

    .line 239
    iget-object v0, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-static {v0}, Landroid/service/storage/ExternalStorageService;->-$$Nest$fgetDEBUG(Landroid/service/storage/ExternalStorageService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyVolumeStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",vol:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExternalStorageService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    iget-object v0, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-static {v0}, Landroid/service/storage/ExternalStorageService;->-$$Nest$fgetmHandler(Landroid/service/storage/ExternalStorageService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 263
    return-void
.end method

.method public blacklist startSession(Ljava/lang/String;ILandroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 13
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "deviceFd"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "upperPath"    # Ljava/lang/String;
    .param p5, "lowerPath"    # Ljava/lang/String;
    .param p6, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    move-object v8, p0

    move-object/from16 v9, p4

    iget-object v0, v8, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-static {v0}, Landroid/service/storage/ExternalStorageService;->-$$Nest$fgetDEBUG(Landroid/service/storage/ExternalStorageService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startSession:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v10, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",upperPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lowerPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExternalStorageService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 207
    :cond_0
    move-object v10, p1

    .line 211
    :goto_0
    iget-object v0, v8, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->this$0:Landroid/service/storage/ExternalStorageService;

    invoke-static {v0}, Landroid/service/storage/ExternalStorageService;->-$$Nest$fgetmHandler(Landroid/service/storage/ExternalStorageService;)Landroid/os/Handler;

    move-result-object v11

    new-instance v12, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda4;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p4

    move v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda4;-><init>(Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;Ljava/lang/String;Ljava/lang/String;ILandroid/os/ParcelFileDescriptor;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 232
    return-void
.end method
