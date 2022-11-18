.class public Landroid/telephony/mbms/MbmsDownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MbmsDownloadReceiver.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final greylist-max-o DOWNLOAD_TOKEN_SUFFIX:Ljava/lang/String; = ".download_token"

.field private static final greylist-max-o EMBMS_INTENT_PERMISSION:Ljava/lang/String; = "android.permission.SEND_EMBMS_INTENTS"

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "MbmsDownloadReceiver"

.field private static final greylist-max-o MAX_TEMP_FILE_RETRIES:I = 0x5

.field public static final greylist-max-o MBMS_FILE_PROVIDER_META_DATA_KEY:Ljava/lang/String; = "mbms-file-provider-authority"

.field public static final whitelist RESULT_APP_NOTIFICATION_ERROR:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESULT_BAD_TEMP_FILE_ROOT:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESULT_DOWNLOAD_FINALIZATION_ERROR:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESULT_INVALID_ACTION:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESULT_MALFORMED_INTENT:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESULT_OK:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESULT_TEMP_FILE_GENERATION_ERROR:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final greylist-max-o TEMP_FILE_STAGING_LOCATION:Ljava/lang/String; = "staged_completed_files"

.field private static final greylist-max-o TEMP_FILE_SUFFIX:Ljava/lang/String; = ".embms.temp"


# instance fields
.field private greylist-max-o mFileProviderAuthorityCache:Ljava/lang/String;

.field private greylist-max-o mMiddlewarePackageNameCache:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/mbms/MbmsDownloadReceiver;->mFileProviderAuthorityCache:Ljava/lang/String;

    .line 138
    iput-object v0, p0, Landroid/telephony/mbms/MbmsDownloadReceiver;->mMiddlewarePackageNameCache:Ljava/lang/String;

    return-void
.end method

.method private greylist-max-o cleanupPostMove(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 295
    const-string v0, "android.telephony.extra.MBMS_DOWNLOAD_REQUEST"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/DownloadRequest;

    .line 297
    .local v0, "request":Landroid/telephony/mbms/DownloadRequest;
    const-string v1, "MbmsDownloadReceiver"

    if-nez v0, :cond_0

    .line 298
    const-string v2, "Intent does not include a DownloadRequest. Ignoring."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return-void

    .line 302
    :cond_0
    const-string v2, "android.telephony.mbms.extra.TEMP_LIST"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 303
    .local v2, "tempFiles":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    if-nez v2, :cond_1

    .line 304
    return-void

    .line 307
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 308
    .local v4, "tempFileUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/telephony/mbms/DownloadRequest;->getFileServiceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5, v4}, Landroid/telephony/mbms/MbmsDownloadReceiver;->verifyTempFilePath(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 309
    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    .local v5, "tempFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_2

    .line 311
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete temp file at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .end local v4    # "tempFileUri":Landroid/net/Uri;
    .end local v5    # "tempFile":Ljava/io/File;
    :cond_2
    goto :goto_0

    .line 315
    :cond_3
    return-void
.end method

.method private greylist-max-o cleanupTempFiles(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 422
    const-string v0, "android.telephony.mbms.extra.SERVICE_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "serviceId":Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/telephony/mbms/MbmsUtils;->getEmbmsTempFileDirForService(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 424
    .local v1, "tempFileDir":Ljava/io/File;
    nop

    .line 425
    const-string v2, "android.telephony.mbms.extra.TEMP_FILES_IN_USE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 426
    .local v2, "filesInUse":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v3, Landroid/telephony/mbms/MbmsDownloadReceiver$1;

    invoke-direct {v3, p0, v2}, Landroid/telephony/mbms/MbmsDownloadReceiver$1;-><init>(Landroid/telephony/mbms/MbmsDownloadReceiver;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    .line 447
    .local v3, "filesToDelete":[Ljava/io/File;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 448
    .local v6, "fileToDelete":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 447
    .end local v6    # "fileToDelete":Ljava/io/File;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 450
    :cond_0
    return-void
.end method

.method private greylist-max-o generateFreshTempFiles(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "freshFdCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/mbms/UriPathPair;",
            ">;"
        }
    .end annotation

    .line 349
    invoke-static {p1, p2}, Landroid/telephony/mbms/MbmsUtils;->getEmbmsTempFileDirForService(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 350
    .local v0, "tempFileDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 351
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 356
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 357
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/mbms/UriPathPair;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_2

    .line 358
    invoke-static {v0}, Landroid/telephony/mbms/MbmsDownloadReceiver;->generateSingleTempFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 359
    .local v3, "tempFile":Ljava/io/File;
    if-nez v3, :cond_1

    .line 360
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    .line 361
    const-string v4, "MbmsDownloadReceiver"

    const-string v5, "Failed to generate a temp file. Moving on."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    goto :goto_1

    .line 364
    :cond_1
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 365
    .local v4, "fileUri":Landroid/net/Uri;
    nop

    .line 366
    invoke-direct {p0, p1}, Landroid/telephony/mbms/MbmsDownloadReceiver;->getFileProviderAuthorityCached(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 365
    invoke-static {p1, v5, v3}, Landroid/telephony/mbms/MbmsTempFileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 367
    .local v5, "contentUri":Landroid/net/Uri;
    invoke-direct {p0, p1}, Landroid/telephony/mbms/MbmsDownloadReceiver;->getMiddlewarePackageCached(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {p1, v6, v5, v7}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 369
    new-instance v6, Landroid/telephony/mbms/UriPathPair;

    invoke-direct {v6, v4, v5}, Landroid/telephony/mbms/UriPathPair;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    .end local v3    # "tempFile":Ljava/io/File;
    .end local v4    # "fileUri":Landroid/net/Uri;
    .end local v5    # "contentUri":Landroid/net/Uri;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 372
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method private static greylist-max-o generateSingleTempFile(Ljava/io/File;)Ljava/io/File;
    .locals 4
    .param p0, "tempFileDir"    # Ljava/io/File;

    .line 376
    const/4 v0, 0x0

    .line 377
    .local v0, "numTries":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 378
    add-int/lit8 v0, v0, 0x1

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".embms.temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 380
    .local v1, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 382
    .local v2, "tempFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 383
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 387
    :cond_0
    nop

    .line 388
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "tempFile":Ljava/io/File;
    goto :goto_0

    .line 385
    .restart local v1    # "fileName":Ljava/lang/String;
    .restart local v2    # "tempFile":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 386
    .local v3, "e":Ljava/io/IOException;
    goto :goto_0

    .line 389
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "tempFile":Ljava/io/File;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private greylist-max-o generateTempFiles(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 318
    const-string v0, "android.telephony.mbms.extra.SERVICE_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "serviceId":Ljava/lang/String;
    const-string v1, "MbmsDownloadReceiver"

    if-nez v0, :cond_0

    .line 320
    const-string v2, "Temp file request did not include the associated service id. Ignoring."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    .line 323
    return-void

    .line 325
    :cond_0
    const-string v2, "android.telephony.mbms.extra.FD_COUNT"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 326
    .local v2, "fdCount":I
    const-string v4, "android.telephony.mbms.extra.PAUSED_LIST"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 328
    .local v4, "pausedList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    if-nez v2, :cond_2

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 329
    :cond_1
    const-string v5, "No temp files actually requested. Ending."

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual {p0, v3}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    .line 331
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultExtras(Landroid/os/Bundle;)V

    .line 332
    return-void

    .line 335
    :cond_2
    nop

    .line 336
    invoke-direct {p0, p1, v0, v2}, Landroid/telephony/mbms/MbmsDownloadReceiver;->generateFreshTempFiles(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 337
    .local v1, "freshTempFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/mbms/UriPathPair;>;"
    nop

    .line 338
    invoke-direct {p0, p1, v0, v4}, Landroid/telephony/mbms/MbmsDownloadReceiver;->generateUrisForPausedFiles(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v5

    .line 340
    .local v5, "pausedFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/mbms/UriPathPair;>;"
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 341
    .local v6, "result":Landroid/os/Bundle;
    const-string v7, "android.telephony.mbms.extra.FREE_URI_LIST"

    invoke-virtual {v6, v7, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 342
    const-string v7, "android.telephony.mbms.extra.PAUSED_URI_LIST"

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 343
    invoke-virtual {p0, v3}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    .line 344
    invoke-virtual {p0, v6}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultExtras(Landroid/os/Bundle;)V

    .line 345
    return-void
.end method

.method private greylist-max-o generateUrisForPausedFiles(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/mbms/UriPathPair;",
            ">;"
        }
    .end annotation

    .line 394
    .local p3, "pausedFiles":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    if-nez p3, :cond_0

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 397
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 399
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/mbms/UriPathPair;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 400
    .local v2, "fileUri":Landroid/net/Uri;
    invoke-static {p1, p2, v2}, Landroid/telephony/mbms/MbmsDownloadReceiver;->verifyTempFilePath(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v3

    const/4 v4, 0x5

    const-string v5, "Supplied file "

    const-string v6, "MbmsDownloadReceiver"

    if-nez v3, :cond_1

    .line 401
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is not a valid temp file to resume"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-virtual {p0, v4}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    .line 403
    goto :goto_0

    .line 405
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 406
    .local v3, "tempFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 407
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " does not exist."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-virtual {p0, v4}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    .line 409
    goto :goto_0

    .line 411
    :cond_2
    nop

    .line 412
    invoke-direct {p0, p1}, Landroid/telephony/mbms/MbmsDownloadReceiver;->getFileProviderAuthorityCached(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 411
    invoke-static {p1, v4, v3}, Landroid/telephony/mbms/MbmsTempFileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 413
    .local v4, "contentUri":Landroid/net/Uri;
    invoke-direct {p0, p1}, Landroid/telephony/mbms/MbmsDownloadReceiver;->getMiddlewarePackageCached(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {p1, v5, v4, v6}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 416
    new-instance v5, Landroid/telephony/mbms/UriPathPair;

    invoke-direct {v5, v2, v4}, Landroid/telephony/mbms/UriPathPair;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    .end local v2    # "fileUri":Landroid/net/Uri;
    .end local v3    # "tempFile":Ljava/io/File;
    .end local v4    # "contentUri":Landroid/net/Uri;
    goto :goto_0

    .line 418
    :cond_3
    return-object v0
.end method

.method private static greylist-max-o getFileProviderAuthority(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 549
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 550
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 554
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "App must declare the file provider authority as metadata in the manifest."

    if-eqz v1, :cond_1

    .line 558
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "mbms-file-provider-authority"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 559
    .local v1, "authority":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 563
    return-object v1

    .line 560
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 555
    .end local v1    # "authority":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 551
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 552
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package manager couldn\'t find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o getFileProviderAuthorityCached(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 538
    iget-object v0, p0, Landroid/telephony/mbms/MbmsDownloadReceiver;->mFileProviderAuthorityCache:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 539
    return-object v0

    .line 542
    :cond_0
    invoke-static {p1}, Landroid/telephony/mbms/MbmsDownloadReceiver;->getFileProviderAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/MbmsDownloadReceiver;->mFileProviderAuthorityCache:Ljava/lang/String;

    .line 543
    return-object v0
.end method

.method public static greylist-max-o getFileRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "sourceUriPath"    # Ljava/lang/String;
    .param p1, "fileInfoPath"    # Ljava/lang/String;

    .line 480
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x2f

    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 484
    .local v0, "lastSlash":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 486
    .end local v0    # "lastSlash":I
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 498
    const/4 v0, 0x0

    return-object v0

    .line 500
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    .line 503
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 506
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "prefixOmittedPath":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 508
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 510
    :cond_3
    return-object v0
.end method

.method private greylist-max-o getMiddlewarePackageCached(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 567
    iget-object v0, p0, Landroid/telephony/mbms/MbmsDownloadReceiver;->mMiddlewarePackageNameCache:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 568
    const-string v0, "android.telephony.action.EmbmsDownload"

    invoke-static {p1, v0}, Landroid/telephony/mbms/MbmsUtils;->getMiddlewareServiceInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/mbms/MbmsDownloadReceiver;->mMiddlewarePackageNameCache:Ljava/lang/String;

    .line 571
    :cond_0
    iget-object v0, p0, Landroid/telephony/mbms/MbmsDownloadReceiver;->mMiddlewarePackageNameCache:Ljava/lang/String;

    return-object v0
.end method

.method private greylist-max-o moveDownloadedFile(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 243
    const-string v0, "android.telephony.extra.MBMS_DOWNLOAD_REQUEST"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/DownloadRequest;

    .line 245
    .local v1, "request":Landroid/telephony/mbms/DownloadRequest;
    invoke-virtual {v1}, Landroid/telephony/mbms/DownloadRequest;->getIntentForApp()Landroid/content/Intent;

    move-result-object v2

    .line 246
    .local v2, "intentForApp":Landroid/content/Intent;
    const-string v3, "MbmsDownloadReceiver"

    if-nez v2, :cond_0

    .line 247
    const-string v0, "Malformed app notification intent"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    .line 249
    return-void

    .line 252
    :cond_0
    const/4 v4, 0x2

    const-string v5, "android.telephony.extra.MBMS_DOWNLOAD_RESULT"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 254
    .local v4, "result":I
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 257
    const/4 v0, 0x1

    const/4 v5, 0x0

    if-eq v4, v0, :cond_1

    .line 258
    const-string v0, "Download request indicated a failed download. Aborting."

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 260
    invoke-virtual {p0, v5}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    .line 261
    return-void

    .line 264
    :cond_1
    const-string v0, "android.telephony.mbms.extra.FINAL_URI"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 265
    .local v0, "finalTempFile":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/telephony/mbms/DownloadRequest;->getFileServiceId()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6, v0}, Landroid/telephony/mbms/MbmsDownloadReceiver;->verifyTempFilePath(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v6

    const/4 v7, 0x4

    if-nez v6, :cond_2

    .line 266
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Download result specified an invalid temp file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {p0, v7}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    .line 268
    return-void

    .line 271
    :cond_2
    nop

    .line 272
    const-string v6, "android.telephony.extra.MBMS_FILE_INFO"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/telephony/mbms/FileInfo;

    .line 273
    .local v8, "completedFileInfo":Landroid/telephony/mbms/FileInfo;
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v9

    .line 274
    invoke-virtual {v1}, Landroid/telephony/mbms/DownloadRequest;->getDestinationUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    new-array v11, v5, [Ljava/lang/String;

    .line 273
    invoke-virtual {v9, v10, v11}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v9

    .line 278
    .local v9, "appSpecifiedDestination":Ljava/nio/file/Path;
    :try_start_0
    invoke-virtual {v1}, Landroid/telephony/mbms/DownloadRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 279
    invoke-virtual {v8}, Landroid/telephony/mbms/FileInfo;->getUri()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 278
    invoke-static {v10, v11}, Landroid/telephony/mbms/MbmsDownloadReceiver;->getFileRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 280
    .local v10, "relativeLocation":Ljava/lang/String;
    invoke-static {v0, v9, v10}, Landroid/telephony/mbms/MbmsDownloadReceiver;->moveToFinalLocation(Landroid/net/Uri;Ljava/nio/file/Path;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .end local v10    # "relativeLocation":Ljava/lang/String;
    .local v3, "finalLocation":Landroid/net/Uri;
    nop

    .line 287
    const-string v7, "android.telephony.extra.MBMS_COMPLETED_FILE_URI"

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 288
    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 290
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 291
    invoke-virtual {p0, v5}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    .line 292
    return-void

    .line 282
    .end local v3    # "finalLocation":Landroid/net/Uri;
    :catch_0
    move-exception v5

    .line 283
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "Failed to move temp file to final destination"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {p0, v7}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    .line 285
    return-void
.end method

.method private static greylist-max-o moveToFinalLocation(Landroid/net/Uri;Ljava/nio/file/Path;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .param p0, "fromPath"    # Landroid/net/Uri;
    .param p1, "appSpecifiedPath"    # Ljava/nio/file/Path;
    .param p2, "relativeLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 457
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Downloaded file location uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not have a file scheme"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MbmsDownloadReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v0, 0x0

    return-object v0

    .line 463
    :cond_0
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 464
    .local v0, "fromFile":Ljava/nio/file/Path;
    invoke-interface {p1, p2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 466
    .local v1, "toFile":Ljava/nio/file/Path;
    invoke-interface {v1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v3

    new-array v4, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v3, v4}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 467
    invoke-interface {v1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v3

    new-array v4, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v3, v4}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 469
    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/nio/file/CopyOption;

    sget-object v4, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v4, v3, v2

    const/4 v2, 0x1

    sget-object v4, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    move-result-object v2

    .line 472
    .local v2, "result":Ljava/nio/file/Path;
    invoke-interface {v2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method private greylist-max-o verifyIntentContents(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 173
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.mbms.action.DOWNLOAD_RESULT_INTERNAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Download result did not include the temp file root. Ignoring."

    const-string v2, "android.telephony.mbms.extra.TEMP_FILE_ROOT"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "MbmsDownloadReceiver"

    if-eqz v0, :cond_7

    .line 174
    const-string v0, "android.telephony.extra.MBMS_DOWNLOAD_RESULT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 175
    const-string v0, "Download result did not include a result code. Ignoring."

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return v4

    .line 178
    :cond_0
    const-string v6, "android.telephony.extra.MBMS_DOWNLOAD_REQUEST"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 179
    const-string v0, "Download result did not include the associated request. Ignoring."

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return v4

    .line 183
    :cond_1
    const/4 v7, 0x2

    .line 184
    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v3, v0, :cond_2

    .line 186
    return v3

    .line 188
    :cond_2
    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 189
    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return v4

    .line 192
    :cond_3
    const-string v0, "android.telephony.extra.MBMS_FILE_INFO"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 193
    const-string v0, "Download result did not include the associated file info. Ignoring."

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return v4

    .line 197
    :cond_4
    const-string v0, "android.telephony.mbms.extra.FINAL_URI"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 198
    const-string v0, "Download result did not include the path to the final temp file. Ignoring."

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return v4

    .line 202
    :cond_5
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/DownloadRequest;

    .line 204
    .local v0, "request":Landroid/telephony/mbms/DownloadRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/mbms/DownloadRequest;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".download_token"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "expectedTokenFileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    .line 206
    invoke-virtual {v0}, Landroid/telephony/mbms/DownloadRequest;->getFileServiceId()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/telephony/mbms/MbmsUtils;->getEmbmsTempFileDirForService(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-direct {v2, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 208
    .local v2, "expectedTokenFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_6

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Supplied download request does not match a token that we have. Expected "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return v4

    .line 213
    .end local v0    # "request":Landroid/telephony/mbms/DownloadRequest;
    .end local v1    # "expectedTokenFileName":Ljava/lang/String;
    .end local v2    # "expectedTokenFile":Ljava/io/File;
    :cond_6
    goto :goto_0

    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v6, "android.telephony.mbms.action.FILE_DESCRIPTOR_REQUEST"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v6, "android.telephony.mbms.extra.SERVICE_ID"

    if-eqz v0, :cond_9

    .line 214
    invoke-virtual {p2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 215
    const-string v0, "Temp file request did not include the associated service id. Ignoring."

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return v4

    .line 219
    :cond_8
    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 220
    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return v4

    .line 223
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.mbms.action.CLEANUP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 224
    invoke-virtual {p2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 225
    const-string v0, "Cleanup request did not include the associated service id. Ignoring."

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return v4

    .line 229
    :cond_a
    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 230
    const-string v0, "Cleanup request did not include the temp file root. Ignoring."

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return v4

    .line 233
    :cond_b
    const-string v0, "android.telephony.mbms.extra.TEMP_FILES_IN_USE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 234
    const-string v0, "Cleanup request did not include the list of temp files in use. Ignoring."

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return v4

    .line 239
    :cond_c
    :goto_0
    return v3
.end method

.method private greylist-max-o verifyPermissionIntegrity(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 575
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 576
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Landroid/telephony/mbms/MbmsDownloadReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 577
    .local v1, "queryIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 578
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 581
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 582
    .local v2, "selfInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_3

    .line 585
    const-string v4, "android.telephony.action.EmbmsDownload"

    invoke-static {p1, v4}, Landroid/telephony/mbms/MbmsUtils;->getOverrideServiceName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 588
    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 592
    return-void

    .line 589
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "MbmsDownloadReceiver must require some permission"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 594
    :cond_1
    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    const-string v5, "android.permission.SEND_EMBMS_INTENTS"

    invoke-static {v5, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 598
    return-void

    .line 595
    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "MbmsDownloadReceiver must require the SEND_EMBMS_INTENTS permission."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 583
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Queried ResolveInfo does not contain a receiver"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 579
    .end local v2    # "selfInfo":Landroid/content/pm/ActivityInfo;
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Non-unique download receiver in your app"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static greylist-max-o verifyTempFilePath(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "filePath"    # Landroid/net/Uri;

    .line 515
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "MbmsDownloadReceiver"

    if-nez v0, :cond_0

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uri "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " does not have a file scheme"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    return v1

    .line 520
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "path":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 522
    .local v3, "tempFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const-string v5, "File at "

    if-nez v4, :cond_1

    .line 523
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not exist."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    return v1

    .line 527
    :cond_1
    nop

    .line 528
    invoke-static {p0, p1}, Landroid/telephony/mbms/MbmsUtils;->getEmbmsTempFileDirForService(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 527
    invoke-static {v4, v3}, Landroid/telephony/mbms/MbmsUtils;->isContainedIn(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 529
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not contained in the temp file root, which is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 530
    invoke-static {p0, p1}, Landroid/telephony/mbms/MbmsUtils;->getEmbmsTempFileDirForService(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 529
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    return v1

    .line 534
    :cond_2
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 148
    invoke-direct {p0, p1}, Landroid/telephony/mbms/MbmsDownloadReceiver;->verifyPermissionIntegrity(Landroid/content/Context;)V

    .line 150
    invoke-direct {p0, p1, p2}, Landroid/telephony/mbms/MbmsDownloadReceiver;->verifyIntentContents(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    .line 152
    return-void

    .line 154
    :cond_0
    const-string v0, "android.telephony.mbms.extra.TEMP_FILE_ROOT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {p1}, Landroid/telephony/mbms/MbmsTempFileProvider;->getEmbmsTempFileDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    .line 157
    return-void

    .line 160
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.mbms.action.DOWNLOAD_RESULT_INTERNAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    invoke-direct {p0, p1, p2}, Landroid/telephony/mbms/MbmsDownloadReceiver;->moveDownloadedFile(Landroid/content/Context;Landroid/content/Intent;)V

    .line 162
    invoke-direct {p0, p1, p2}, Landroid/telephony/mbms/MbmsDownloadReceiver;->cleanupPostMove(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 163
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.mbms.action.FILE_DESCRIPTOR_REQUEST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 164
    invoke-direct {p0, p1, p2}, Landroid/telephony/mbms/MbmsDownloadReceiver;->generateTempFiles(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 165
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.mbms.action.CLEANUP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 166
    invoke-direct {p0, p1, p2}, Landroid/telephony/mbms/MbmsDownloadReceiver;->cleanupTempFiles(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 168
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    .line 170
    :goto_0
    return-void
.end method
