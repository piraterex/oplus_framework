.class public Landroid/window/OplusTaskOrganizerManager;
.super Ljava/lang/Object;
.source "OplusTaskOrganizerManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OplusTaskOrganizerManager"

.field private static blacklist sInstance:Landroid/window/IOplusTaskOrganizer;

.field private static blacklist sOrganizer:Landroid/os/IInterface;


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getService(Landroid/os/IInterface;)Landroid/window/IOplusTaskOrganizer;
    .locals 4
    .param p0, "organizer"    # Landroid/os/IInterface;

    .line 37
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 38
    return-object v0

    .line 40
    :cond_0
    const-class v1, Landroid/window/OplusTaskOrganizerManager;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v2, Landroid/window/OplusTaskOrganizerManager;->sOrganizer:Landroid/os/IInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, p0, :cond_1

    .line 43
    :try_start_1
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/IOplusTaskOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IOplusTaskOrganizer;

    move-result-object v2

    sput-object v2, Landroid/window/OplusTaskOrganizerManager;->sInstance:Landroid/window/IOplusTaskOrganizer;

    .line 44
    sput-object p0, Landroid/window/OplusTaskOrganizerManager;->sOrganizer:Landroid/os/IInterface;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    goto :goto_0

    .line 45
    :catch_0
    move-exception v2

    .line 46
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    sput-object v0, Landroid/window/OplusTaskOrganizerManager;->sOrganizer:Landroid/os/IInterface;

    .line 47
    const-string v0, "OplusTaskOrganizerManager"

    const-string v3, "getService failed."

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    sget-object v0, Landroid/window/OplusTaskOrganizerManager;->sInstance:Landroid/window/IOplusTaskOrganizer;

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public static whitelist updateStartingWindowExtendedInfo(Landroid/os/IInterface;Landroid/window/OplusStartingWindowExtendedInfo;Landroid/os/IBinder;)V
    .locals 7
    .param p0, "organizer"    # Landroid/os/IInterface;
    .param p1, "info"    # Landroid/window/OplusStartingWindowExtendedInfo;
    .param p2, "appToken"    # Landroid/os/IBinder;

    .line 56
    invoke-static {p0}, Landroid/window/OplusTaskOrganizerManager;->getService(Landroid/os/IInterface;)Landroid/window/IOplusTaskOrganizer;

    move-result-object v0

    .line 57
    .local v0, "service":Landroid/window/IOplusTaskOrganizer;
    const-string v1, "OplusTaskOrganizerManager"

    if-nez v0, :cond_0

    .line 58
    const-string/jumbo v2, "updateStartingWindowExtendedInfo: get service failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void

    .line 61
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 63
    .local v2, "token":J
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/window/IOplusTaskOrganizer;->updateStartingWindowExtendedInfo(Landroid/window/OplusStartingWindowExtendedInfo;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    nop

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    goto :goto_1

    .line 67
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 64
    :catch_0
    move-exception v4

    .line 65
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateStartingWindowExtendedInfo failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    nop

    .end local v4    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 69
    :goto_1
    return-void

    .line 67
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    throw v1
.end method
