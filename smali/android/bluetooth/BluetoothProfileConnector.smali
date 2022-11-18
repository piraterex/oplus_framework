.class public abstract Landroid/bluetooth/BluetoothProfileConnector;
.super Ljava/lang/Object;
.source "BluetoothProfileConnector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final blacklist USER_HANDLE_CURRENT_OR_SELF:Landroid/os/UserHandle;


# instance fields
.field private final blacklist mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private final blacklist mConnection:Landroid/content/ServiceConnection;

.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mProfileId:I

.field private final blacklist mProfileName:Ljava/lang/String;

.field private final blacklist mProfileProxy:Landroid/bluetooth/BluetoothProfile;

.field private volatile blacklist mService:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private blacklist mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final blacklist mServiceName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmProfileId(Landroid/bluetooth/BluetoothProfileConnector;)I
    .locals 0

    iget p0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mProfileId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProfileProxy(Landroid/bluetooth/BluetoothProfileConnector;)Landroid/bluetooth/BluetoothProfile;
    .locals 0

    iget-object p0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mProfileProxy:Landroid/bluetooth/BluetoothProfile;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceListener(Landroid/bluetooth/BluetoothProfileConnector;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 0

    iget-object p0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmService(Landroid/bluetooth/BluetoothProfileConnector;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mService:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoBind(Landroid/bluetooth/BluetoothProfileConnector;)Z
    .locals 0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothProfileConnector;->doBind()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdoUnbind(Landroid/bluetooth/BluetoothProfileConnector;)V
    .locals 0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothProfileConnector;->doUnbind()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogDebug(Landroid/bluetooth/BluetoothProfileConnector;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothProfileConnector;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 55
    const/4 v0, -0x3

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothProfileConnector;->USER_HANDLE_CURRENT_OR_SELF:Landroid/os/UserHandle;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/bluetooth/BluetoothProfile;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "profile"    # Landroid/bluetooth/BluetoothProfile;
    .param p2, "profileId"    # I
    .param p3, "profileName"    # Ljava/lang/String;
    .param p4, "serviceName"    # Ljava/lang/String;

    .line 113
    .local p0, "this":Landroid/bluetooth/BluetoothProfileConnector;, "Landroid/bluetooth/BluetoothProfileConnector<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mCloseGuard:Landroid/util/CloseGuard;

    .line 57
    new-instance v0, Landroid/bluetooth/BluetoothProfileConnector$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothProfileConnector$1;-><init>(Landroid/bluetooth/BluetoothProfileConnector;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 92
    new-instance v0, Landroid/bluetooth/BluetoothProfileConnector$2;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothProfileConnector$2;-><init>(Landroid/bluetooth/BluetoothProfileConnector;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mConnection:Landroid/content/ServiceConnection;

    .line 114
    iput p2, p0, Landroid/bluetooth/BluetoothProfileConnector;->mProfileId:I

    .line 115
    iput-object p1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mProfileProxy:Landroid/bluetooth/BluetoothProfile;

    .line 116
    iput-object p3, p0, Landroid/bluetooth/BluetoothProfileConnector;->mProfileName:Ljava/lang/String;

    .line 117
    iput-object p4, p0, Landroid/bluetooth/BluetoothProfileConnector;->mServiceName:Ljava/lang/String;

    .line 118
    return-void
.end method

.method private blacklist doBind()Z
    .locals 7

    .line 129
    .local p0, "this":Landroid/bluetooth/BluetoothProfileConnector;, "Landroid/bluetooth/BluetoothProfileConnector<TT;>;"
    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v0

    .line 130
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mService:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 131
    const-string v1, "Binding service..."

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothProfileConnector;->logDebug(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v2, "doUnbind"

    invoke-virtual {v1, v2}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Landroid/bluetooth/BluetoothProfileConnector;->mServiceName:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Landroid/bluetooth/BluetoothProfileConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Landroid/bluetooth/BluetoothProfileConnector;->resolveSystemService(Landroid/content/Intent;Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    .line 136
    .local v3, "comp":Landroid/content/ComponentName;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 137
    if-eqz v3, :cond_1

    iget-object v4, p0, Landroid/bluetooth/BluetoothProfileConnector;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/bluetooth/BluetoothProfileConnector;->mConnection:Landroid/content/ServiceConnection;

    sget-object v6, Landroid/bluetooth/BluetoothProfileConnector;->USER_HANDLE_CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5, v1, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 145
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "comp":Landroid/content/ComponentName;
    :cond_0
    goto :goto_1

    .line 139
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "comp":Landroid/content/ComponentName;
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not bind to Bluetooth Service with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/bluetooth/BluetoothProfileConnector;->logError(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :try_start_2
    monitor-exit v0

    return v1

    .line 142
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "comp":Landroid/content/ComponentName;
    :catch_0
    move-exception v2

    .line 143
    .local v2, "se":Ljava/lang/SecurityException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to bind service. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/bluetooth/BluetoothProfileConnector;->logError(Ljava/lang/String;)V

    .line 144
    monitor-exit v0

    return v1

    .line 147
    .end local v2    # "se":Ljava/lang/SecurityException;
    :cond_2
    :goto_1
    monitor-exit v0

    .line 148
    const/4 v0, 0x1

    return v0

    .line 147
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private blacklist doUnbind()V
    .locals 5

    .line 152
    .local p0, "this":Landroid/bluetooth/BluetoothProfileConnector;, "Landroid/bluetooth/BluetoothProfileConnector<TT;>;"
    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v0

    .line 153
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mService:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 154
    const-string v1, "Unbinding service..."

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothProfileConnector;->logDebug(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v1}, Landroid/util/CloseGuard;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 157
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothProfileConnector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/bluetooth/BluetoothProfileConnector;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    :try_start_2
    iput-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mService:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 162
    :goto_0
    goto :goto_2

    .line 161
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 158
    :catch_0
    move-exception v2

    .line 159
    .local v2, "ie":Ljava/lang/IllegalArgumentException;
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to unbind service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/bluetooth/BluetoothProfileConnector;->logError(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 161
    .end local v2    # "ie":Ljava/lang/IllegalArgumentException;
    :try_start_4
    iput-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mService:Ljava/lang/Object;

    goto :goto_0

    :goto_1
    iput-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mService:Ljava/lang/Object;

    .line 162
    nop

    .end local p0    # "this":Landroid/bluetooth/BluetoothProfileConnector;, "Landroid/bluetooth/BluetoothProfileConnector<TT;>;"
    throw v2

    .line 164
    .restart local p0    # "this":Landroid/bluetooth/BluetoothProfileConnector;, "Landroid/bluetooth/BluetoothProfileConnector<TT;>;"
    :cond_0
    :goto_2
    monitor-exit v0

    .line 165
    return-void

    .line 164
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private blacklist logDebug(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .line 221
    .local p0, "this":Landroid/bluetooth/BluetoothProfileConnector;, "Landroid/bluetooth/BluetoothProfileConnector<TT;>;"
    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mProfileName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void
.end method

.method private blacklist logError(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .line 225
    .local p0, "this":Landroid/bluetooth/BluetoothProfileConnector;, "Landroid/bluetooth/BluetoothProfileConnector<TT;>;"
    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mProfileName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void
.end method

.method private blacklist resolveSystemService(Landroid/content/Intent;Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .line 70
    .local p0, "this":Landroid/bluetooth/BluetoothProfileConnector;, "Landroid/bluetooth/BluetoothProfileConnector<TT;>;"
    nop

    .line 71
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v0

    .line 70
    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object v0

    .line 72
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_0

    .line 73
    const/4 v1, 0x0

    return-object v1

    .line 75
    :cond_0
    const/4 v1, 0x0

    .line 76
    .local v1, "comp":Landroid/content/ComponentName;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 77
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 78
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    .line 79
    goto :goto_1

    .line 81
    :cond_1
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .local v4, "foundComp":Landroid/content/ComponentName;
    if-nez v1, :cond_2

    .line 87
    move-object v1, v4

    .line 76
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "foundComp":Landroid/content/ComponentName;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "foundComp":Landroid/content/ComponentName;
    :cond_2
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Multiple system services handle "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 89
    .end local v2    # "i":I
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "foundComp":Landroid/content/ComponentName;
    :cond_3
    return-object v1
.end method


# virtual methods
.method public blacklist connect(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 169
    .local p0, "this":Landroid/bluetooth/BluetoothProfileConnector;, "Landroid/bluetooth/BluetoothProfileConnector<TT;>;"
    iput-object p1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mContext:Landroid/content/Context;

    .line 170
    iput-object p2, p0, Landroid/bluetooth/BluetoothProfileConnector;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 171
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 176
    .local v0, "mgr":Landroid/bluetooth/IBluetoothManager;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1e

    if-gt v1, v2, :cond_1

    .line 177
    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Need BLUETOOTH permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 184
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    goto :goto_1

    .line 185
    :catch_0
    move-exception v1

    .line 186
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to register state change callback. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/bluetooth/BluetoothProfileConnector;->logError(Ljava/lang/String;)V

    .line 189
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    invoke-direct {p0}, Landroid/bluetooth/BluetoothProfileConnector;->doBind()Z

    .line 190
    return-void
.end method

.method public blacklist disconnect()V
    .locals 4

    .line 194
    .local p0, "this":Landroid/bluetooth/BluetoothProfileConnector;, "Landroid/bluetooth/BluetoothProfileConnector<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 195
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 196
    .local v0, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v0, :cond_0

    .line 198
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    goto :goto_0

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to unregister state change callback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/bluetooth/BluetoothProfileConnector;->logError(Ljava/lang/String;)V

    .line 203
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothProfileConnector;->doUnbind()V

    .line 204
    return-void
.end method

.method public whitelist test-api finalize()V
    .locals 1

    .line 123
    .local p0, "this":Landroid/bluetooth/BluetoothProfileConnector;, "Landroid/bluetooth/BluetoothProfileConnector<TT;>;"
    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 124
    invoke-direct {p0}, Landroid/bluetooth/BluetoothProfileConnector;->doUnbind()V

    .line 125
    return-void
.end method

.method public blacklist getService()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 208
    .local p0, "this":Landroid/bluetooth/BluetoothProfileConnector;, "Landroid/bluetooth/BluetoothProfileConnector<TT;>;"
    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mService:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract blacklist getServiceInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method
