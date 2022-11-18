.class public Landroid/hardware/cabc/CabcManager;
.super Ljava/lang/Object;
.source "CabcManager.java"


# static fields
.field private static final blacklist CABC_SERVICE:Ljava/lang/String; = "cabc"

.field private static blacklist DEBUG:Z = false

.field public static final whitelist LOCK_MODE:I = 0x9

.field public static final whitelist OFF_MODE:I = 0x0

.field public static final whitelist PIC_MODE:I = 0x2

.field private static final blacklist PROP_LOG_CABC:Ljava/lang/String; = "persist.sys.assert.panic"

.field private static final blacklist TAG:Ljava/lang/String; = "CabcManager"

.field public static final whitelist UI_MODE:I = 0x1

.field public static final whitelist UNLOCK_MODE:I = 0x8

.field public static final whitelist VIDEO_MODE:I = 0x3

.field private static blacklist sCabcManagerInstance:Landroid/hardware/cabc/CabcManager;


# instance fields
.field private blacklist mMode:I

.field private blacklist mService:Lcom/android/internal/cabc/ICabcManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Landroid/hardware/cabc/CabcManager;->DEBUG:Z

    .line 42
    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/cabc/CabcManager;->sCabcManagerInstance:Landroid/hardware/cabc/CabcManager;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x3

    iput v0, p0, Landroid/hardware/cabc/CabcManager;->mMode:I

    .line 48
    invoke-direct {p0}, Landroid/hardware/cabc/CabcManager;->init()V

    .line 49
    return-void
.end method

.method public static whitelist getCabcManagerInstance()Landroid/hardware/cabc/CabcManager;
    .locals 1

    .line 60
    sget-object v0, Landroid/hardware/cabc/CabcManager;->sCabcManagerInstance:Landroid/hardware/cabc/CabcManager;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Landroid/hardware/cabc/CabcManager;

    invoke-direct {v0}, Landroid/hardware/cabc/CabcManager;-><init>()V

    sput-object v0, Landroid/hardware/cabc/CabcManager;->sCabcManagerInstance:Landroid/hardware/cabc/CabcManager;

    .line 63
    :cond_0
    sget-object v0, Landroid/hardware/cabc/CabcManager;->sCabcManagerInstance:Landroid/hardware/cabc/CabcManager;

    return-object v0
.end method

.method private blacklist init()V
    .locals 2

    .line 52
    const-string/jumbo v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/cabc/CabcManager;->DEBUG:Z

    .line 53
    iget-object v0, p0, Landroid/hardware/cabc/CabcManager;->mService:Lcom/android/internal/cabc/ICabcManager;

    if-nez v0, :cond_0

    .line 54
    const-string v0, "cabc"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 55
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/cabc/ICabcManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/cabc/ICabcManager;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/cabc/CabcManager;->mService:Lcom/android/internal/cabc/ICabcManager;

    .line 57
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist closeCabc()V
    .locals 3

    .line 96
    sget-boolean v0, Landroid/hardware/cabc/CabcManager;->DEBUG:Z

    const-string v1, "CabcManager"

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "closeCabc."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/hardware/cabc/CabcManager;->mService:Lcom/android/internal/cabc/ICabcManager;

    if-eqz v0, :cond_1

    .line 101
    invoke-interface {v0}, Lcom/android/internal/cabc/ICabcManager;->closeCabc()V

    goto :goto_0

    .line 103
    :cond_1
    const-string v0, "closeCabc failed: mService is null!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    nop

    .line 108
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead ?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist closeCabcForever(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 126
    sget-boolean v0, Landroid/hardware/cabc/CabcManager;->DEBUG:Z

    const-string v1, "CabcManager"

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeCabcForever = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/hardware/cabc/CabcManager;->mService:Lcom/android/internal/cabc/ICabcManager;

    if-eqz v0, :cond_1

    .line 131
    invoke-interface {v0, p1}, Lcom/android/internal/cabc/ICabcManager;->closeCabcForever(Z)V

    goto :goto_0

    .line 133
    :cond_1
    const-string v0, "lockCabcMode failed: mService is null!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    nop

    .line 138
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead ?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist getMode()I
    .locals 3

    .line 83
    :try_start_0
    iget-object v0, p0, Landroid/hardware/cabc/CabcManager;->mService:Lcom/android/internal/cabc/ICabcManager;

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0}, Lcom/android/internal/cabc/ICabcManager;->getMode()I

    move-result v0

    return v0

    .line 86
    :cond_0
    const-string v0, "CabcManager"

    const-string v1, "getMode failed: mService is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    nop

    .line 92
    const/4 v0, 0x3

    return v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead ?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist openCabc()V
    .locals 3

    .line 111
    sget-boolean v0, Landroid/hardware/cabc/CabcManager;->DEBUG:Z

    const-string v1, "CabcManager"

    if-eqz v0, :cond_0

    .line 112
    const-string/jumbo v0, "openCabc."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/hardware/cabc/CabcManager;->mService:Lcom/android/internal/cabc/ICabcManager;

    if-eqz v0, :cond_1

    .line 116
    invoke-interface {v0}, Lcom/android/internal/cabc/ICabcManager;->openCabc()V

    goto :goto_0

    .line 118
    :cond_1
    const-string/jumbo v0, "openCabc failed: mService is null!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    nop

    .line 123
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead ?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist setMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 67
    sget-boolean v0, Landroid/hardware/cabc/CabcManager;->DEBUG:Z

    const-string v1, "CabcManager"

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMode, new mode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/hardware/cabc/CabcManager;->mService:Lcom/android/internal/cabc/ICabcManager;

    if-eqz v0, :cond_1

    .line 72
    invoke-interface {v0, p1}, Lcom/android/internal/cabc/ICabcManager;->setMode(I)V

    goto :goto_0

    .line 74
    :cond_1
    const-string/jumbo v0, "setMode failed: mService is null!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    nop

    .line 79
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead ?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
