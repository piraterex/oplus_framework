.class public Lcom/android/server/backup/NotificationBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "NotificationBackupHelper.java"


# static fields
.field static final blacklist BLOB_VERSION:I = 0x1

.field static final blacklist DEBUG:Z

.field static final blacklist KEY_NOTIFICATIONS:Ljava/lang/String; = "notifications"

.field static final blacklist TAG:Ljava/lang/String; = "NotifBackupHelper"


# instance fields
.field private final blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 27
    const-string v0, "NotifBackupHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/backup/NotificationBackupHelper;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 38
    const-string/jumbo v0, "notifications"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    .line 39
    iput p1, p0, Lcom/android/server/backup/NotificationBackupHelper;->mUserId:I

    .line 40
    return-void
.end method


# virtual methods
.method protected blacklist applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "payload"    # [B

    .line 61
    sget-boolean v0, Lcom/android/server/backup/NotificationBackupHelper;->DEBUG:Z

    const-string v1, "NotifBackupHelper"

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got restore of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    const-string/jumbo v0, "notifications"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    :try_start_0
    const-string/jumbo v0, "notification"

    .line 68
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 67
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    .line 69
    .local v0, "nm":Landroid/app/INotificationManager;
    iget v2, p0, Lcom/android/server/backup/NotificationBackupHelper;->mUserId:I

    invoke-interface {v0, p2, v2}, Landroid/app/INotificationManager;->applyRestore([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v0    # "nm":Landroid/app/INotificationManager;
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Couldn\'t communicate with notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method protected blacklist getBackupPayload(Ljava/lang/String;)[B
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "newPayload":[B
    const-string/jumbo v1, "notifications"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    :try_start_0
    const-string/jumbo v1, "notification"

    .line 48
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 47
    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 49
    .local v1, "nm":Landroid/app/INotificationManager;
    iget v2, p0, Lcom/android/server/backup/NotificationBackupHelper;->mUserId:I

    invoke-interface {v1, v2}, Landroid/app/INotificationManager;->getBackupPayload(I)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 54
    .end local v1    # "nm":Landroid/app/INotificationManager;
    goto :goto_0

    .line 50
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "NotifBackupHelper"

    const-string v3, "Couldn\'t communicate with notification manager"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    const/4 v0, 0x0

    .line 56
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-object v0
.end method
