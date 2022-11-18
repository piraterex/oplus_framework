.class public abstract Landroid/service/storage/ExternalStorageService;
.super Landroid/app/Service;
.source "ExternalStorageService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;,
        Landroid/service/storage/ExternalStorageService$SessionFlag;
    }
.end annotation


# static fields
.field public static final blacklist EXTRA_ERROR:Ljava/lang/String; = "android.service.storage.extra.error"

.field public static final blacklist EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.service.storage.extra.package_name"

.field public static final blacklist EXTRA_SESSION_ID:Ljava/lang/String; = "android.service.storage.extra.session_id"

.field public static final whitelist FLAG_SESSION_ATTRIBUTE_INDEXABLE:I = 0x2

.field public static final whitelist FLAG_SESSION_TYPE_FUSE:I = 0x1

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.storage.ExternalStorageService"

.field public static final whitelist TAG:Ljava/lang/String; = "ExternalStorageService"


# instance fields
.field private final blacklist DEBUG:Z

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mWrapper:Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetDEBUG(Landroid/service/storage/ExternalStorageService;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/storage/ExternalStorageService;->DEBUG:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/storage/ExternalStorageService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/service/storage/ExternalStorageService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 115
    new-instance v0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;-><init>(Landroid/service/storage/ExternalStorageService;Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper-IA;)V

    iput-object v0, p0, Landroid/service/storage/ExternalStorageService;->mWrapper:Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;

    .line 116
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/service/storage/ExternalStorageService;->mHandler:Landroid/os/Handler;

    .line 120
    const-string/jumbo v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/storage/ExternalStorageService;->DEBUG:Z

    return-void
.end method


# virtual methods
.method public whitelist onAnrDelayStarted(Ljava/lang/String;III)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "tid"    # I
    .param p4, "reason"    # I

    .line 191
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "onAnrDelayStarted not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 197
    iget-object v0, p0, Landroid/service/storage/ExternalStorageService;->mWrapper:Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;

    return-object v0
.end method

.method public abstract whitelist onEndSession(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist onFreeCache(Ljava/util/UUID;J)V
    .locals 2
    .param p1, "volumeUuid"    # Ljava/util/UUID;
    .param p2, "bytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "onFreeCacheRequested not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist onStartSession(Ljava/lang/String;ILandroid/os/ParcelFileDescriptor;Ljava/io/File;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist onVolumeStateChanged(Landroid/os/storage/StorageVolume;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
