.class public Lcom/oplus/compatibility/OplusCompatibilityManager;
.super Ljava/lang/Object;
.source "OplusCompatibilityManager.java"


# static fields
.field private static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.compatibility.IOplusCompatibilityService"

.field private static final blacklist HANDLE_COMPATIBILITY:I = 0x1

.field public static final whitelist OPLUS_ALARM_PERMISSION:I = 0x100

.field public static final whitelist OPLUS_BLUETOOTH_PERMISSION:I = 0x10

.field public static final whitelist OPLUS_GPS_STATUS:I = 0x20

.field public static final whitelist OPLUS_INSTALLER_PACKAGE_NAME:I = 0x4

.field public static final whitelist OPLUS_LOCATION_API:I = 0x40

.field public static final whitelist OPLUS_LOCK_DOWN_CLOSE_SYSTEM_DIALOG:I = 0x1

.field public static final whitelist OPLUS_NOTIFICATION_TRAMPOLINES:I = 0x80

.field public static final whitelist OPLUS_PENDINGINTENT_MUTABILITY:I = 0x8

.field public static final whitelist OPLUS_PERMISSION_PACKAGE_VISIBILITY:I = 0x2

.field public static final whitelist OPLUS_RECEIVER_EXPORTED:I = 0x200

.field private static final blacklist SERVICE_NAME:Ljava/lang/String; = "app_compatibility"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusCompatibilityManager"


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "app_compatibility"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/compatibility/OplusCompatibilityManager;->mRemote:Landroid/os/IBinder;

    .line 42
    return-void
.end method

.method private blacklist connectBinder()Z
    .locals 2

    .line 95
    const/4 v0, 0x1

    .line 96
    .local v0, "status":Z
    iget-object v1, p0, Lcom/oplus/compatibility/OplusCompatibilityManager;->mRemote:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 97
    return v0

    .line 99
    :cond_0
    const-string v1, "app_compatibility"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/compatibility/OplusCompatibilityManager;->mRemote:Landroid/os/IBinder;

    .line 101
    if-nez v1, :cond_1

    .line 102
    const/4 v0, 0x0

    .line 104
    :cond_1
    return v0
.end method

.method private blacklist isInChangeIdList(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "in":Z
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 86
    :sswitch_0
    const/4 v0, 0x1

    .line 87
    nop

    .line 91
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
        0x10 -> :sswitch_0
        0x20 -> :sswitch_0
        0x40 -> :sswitch_0
        0x80 -> :sswitch_0
        0x100 -> :sswitch_0
        0x200 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public whitelist handleCompatibilityException(ILjava/lang/String;)V
    .locals 4
    .param p1, "changeId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0, p1}, Lcom/oplus/compatibility/OplusCompatibilityManager;->isInChangeIdList(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_2

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/oplus/compatibility/OplusCompatibilityManager;->connectBinder()Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    const-string v0, "OplusCompatibilityManager"

    const-string/jumbo v1, "mRemote is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void

    .line 57
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 58
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 60
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.compatibility.IOplusCompatibilityService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v2, p0, Lcom/oplus/compatibility/OplusCompatibilityManager;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 64
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 65
    :catch_0
    move-exception v2

    .line 66
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 69
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 70
    nop

    .line 71
    return-void

    .line 68
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 69
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 70
    throw v2

    .line 51
    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    :cond_2
    :goto_2
    return-void
.end method
