.class public Landroid/os/DropBoxManager;
.super Ljava/lang/Object;
.source "DropBoxManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/DropBoxManager$Entry;,
        Landroid/os/DropBoxManager$Flags;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_DROPBOX_ENTRY_ADDED:Ljava/lang/String; = "android.intent.action.DROPBOX_ENTRY_ADDED"

.field public static final whitelist EXTRA_DROPPED_COUNT:Ljava/lang/String; = "android.os.extra.DROPPED_COUNT"

.field public static final whitelist EXTRA_TAG:Ljava/lang/String; = "tag"

.field public static final whitelist EXTRA_TIME:Ljava/lang/String; = "time"

.field private static final greylist-max-o HAS_BYTE_ARRAY:I = 0x8

.field public static final whitelist IS_EMPTY:I = 0x1

.field public static final whitelist IS_GZIPPED:I = 0x4

.field public static final whitelist IS_TEXT:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "DropBoxManager"


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist mService:Lcom/android/internal/os/IDropBoxManagerService;


# direct methods
.method protected constructor whitelist <init>()V
    .locals 1

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DropBoxManager;->mContext:Landroid/content/Context;

    .line 310
    iput-object v0, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    .line 311
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Lcom/android/internal/os/IDropBoxManagerService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/internal/os/IDropBoxManagerService;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p1, p0, Landroid/os/DropBoxManager;->mContext:Landroid/content/Context;

    .line 300
    iput-object p2, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    .line 301
    return-void
.end method


# virtual methods
.method public whitelist addData(Ljava/lang/String;[BI)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "flags"    # I

    .line 333
    if-eqz p2, :cond_1

    .line 335
    :try_start_0
    iget-object v0, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/os/IDropBoxManagerService;->addData(Ljava/lang/String;[BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    nop

    .line 344
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Landroid/os/RemoteException;
    instance-of v1, v0, Landroid/os/TransactionTooLargeException;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/DropBoxManager;->mContext:Landroid/content/Context;

    .line 338
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_0

    .line 339
    const-string v1, "DropBoxManager"

    const-string v2, "App sent too much data, so it was ignored"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    return-void

    .line 342
    :cond_0
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 333
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addFile(Ljava/lang/String;Ljava/io/File;I)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    if-eqz p2, :cond_2

    .line 358
    const/high16 v0, 0x10000000

    :try_start_0
    invoke-static {p2, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_1
    iget-object v1, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    invoke-interface {v1, p1, v0, p3}, Lcom/android/internal/os/IDropBoxManagerService;->addFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 363
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    nop

    .line 364
    return-void

    .line 358
    .restart local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/os/DropBoxManager;
    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "file":Ljava/io/File;
    .end local p3    # "flags":I
    :cond_1
    :goto_0
    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 361
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Landroid/os/DropBoxManager;
    .restart local p1    # "tag":Ljava/lang/String;
    .restart local p2    # "file":Ljava/io/File;
    .restart local p3    # "flags":I
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 357
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 322
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/DropBoxManager;->addData(Ljava/lang/String;[BI)V

    .line 323
    return-void
.end method

.method public whitelist getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msec"    # J

    .line 393
    :try_start_0
    iget-object v0, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    iget-object v1, p0, Landroid/os/DropBoxManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Landroid/os/DropBoxManager;->mContext:Landroid/content/Context;

    .line 394
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 393
    move-object v1, p1

    move-wide v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/os/IDropBoxManagerService;->getNextEntryWithAttribution(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Landroid/os/DropBoxManager$Entry;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 395
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 396
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v1, p0, Landroid/os/DropBoxManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_0

    .line 399
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DropBoxManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const/4 v1, 0x0

    return-object v1

    .line 397
    :cond_0
    throw v0
.end method

.method public whitelist isTagEnabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 376
    :try_start_0
    iget-object v0, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    invoke-interface {v0, p1}, Lcom/android/internal/os/IDropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
