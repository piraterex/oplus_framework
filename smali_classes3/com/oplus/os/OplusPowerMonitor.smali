.class public Lcom/oplus/os/OplusPowerMonitor;
.super Ljava/lang/Object;
.source "OplusPowerMonitor.java"


# static fields
.field public static final whitelist POWER_MONITOR_SERVICE_NAME:Ljava/lang/String; = "power_monitor"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusPowerMonitor"

.field private static blacklist mInstance:Lcom/oplus/os/OplusPowerMonitor;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mOplusPowerMonitorService:Lcom/oplus/os/IOplusPowerMonitor;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/os/OplusPowerMonitor;->mInstance:Lcom/oplus/os/OplusPowerMonitor;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/os/OplusPowerMonitor;->mOplusPowerMonitorService:Lcom/oplus/os/IOplusPowerMonitor;

    .line 25
    iput-object v0, p0, Lcom/oplus/os/OplusPowerMonitor;->mContext:Landroid/content/Context;

    .line 28
    const-string/jumbo v0, "power_monitor"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 29
    .local v0, "serviceBinder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/oplus/os/IOplusPowerMonitor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/os/IOplusPowerMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/os/OplusPowerMonitor;->mOplusPowerMonitorService:Lcom/oplus/os/IOplusPowerMonitor;

    .line 30
    iput-object p1, p0, Lcom/oplus/os/OplusPowerMonitor;->mContext:Landroid/content/Context;

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mOplusPowerMonitorService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/os/OplusPowerMonitor;->mOplusPowerMonitorService:Lcom/oplus/os/IOplusPowerMonitor;

    if-nez v2, :cond_0

    const-string/jumbo v2, "null"

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusPowerMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method

.method public static declared-synchronized whitelist getInstance(Landroid/content/Context;)Lcom/oplus/os/OplusPowerMonitor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/oplus/os/OplusPowerMonitor;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/oplus/os/OplusPowerMonitor;->mInstance:Lcom/oplus/os/OplusPowerMonitor;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oplus/os/OplusPowerMonitor;->isOplusPowerMonitorServiceInited()Z

    move-result v1

    if-nez v1, :cond_1

    .line 36
    :cond_0
    new-instance v1, Lcom/oplus/os/OplusPowerMonitor;

    invoke-direct {v1, p0}, Lcom/oplus/os/OplusPowerMonitor;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oplus/os/OplusPowerMonitor;->mInstance:Lcom/oplus/os/OplusPowerMonitor;

    .line 38
    :cond_1
    sget-object v1, Lcom/oplus/os/OplusPowerMonitor;->mInstance:Lcom/oplus/os/OplusPowerMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 34
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public whitelist acquireSuspendBlocker(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcom/oplus/os/OplusPowerMonitor;->mOplusPowerMonitorService:Lcom/oplus/os/IOplusPowerMonitor;

    const-string v1, "OplusPowerMonitor"

    if-eqz v0, :cond_0

    .line 189
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oplus/os/IOplusPowerMonitor;->acquireSuspendBlocker(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "acquireSuspendBlocker failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 194
    :cond_0
    const-string v0, "acquireSuspendBlocker failed: service unavailable"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :goto_1
    return-void
.end method

.method public whitelist getAlarmWakeUpInfo(JJ)Ljava/util/List;
    .locals 3
    .param p1, "starttime"    # J
    .param p3, "endtime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/oplus/app/OplusAlarmInfo;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/oplus/os/OplusPowerMonitor;->mOplusPowerMonitorService:Lcom/oplus/os/IOplusPowerMonitor;

    const-string v1, "OplusPowerMonitor"

    if-eqz v0, :cond_0

    .line 96
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/oplus/os/IOplusPowerMonitor;->getAlarmWakeUpInfo(JJ)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getAlarmWakeUpInfo failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 101
    :cond_0
    const-string v0, "getAlarmWakeUpInfo failed: service unavailable"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getKernelSuspendStats()Lcom/oplus/app/SuspendInfo;
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/oplus/os/OplusPowerMonitor;->mOplusPowerMonitorService:Lcom/oplus/os/IOplusPowerMonitor;

    const-string v1, "OplusPowerMonitor"

    if-eqz v0, :cond_0

    .line 239
    :try_start_0
    invoke-interface {v0}, Lcom/oplus/os/IOplusPowerMonitor;->getSuspendStats()Lcom/oplus/app/SuspendInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getKernelSuspendStats failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 244
    :cond_0
    const-string v0, "getKernelSuspendStats failed: service unavailable."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getKernelWakeLockStats()[Lcom/oplus/app/KernelWakeLockInfo;
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/oplus/os/OplusPowerMonitor;->mOplusPowerMonitorService:Lcom/oplus/os/IOplusPowerMonitor;

    const-string v1, "OplusPowerMonitor"

    if-eqz v0, :cond_0

    .line 213
    :try_start_0
    invoke-interface {v0}, Lcom/oplus/os/IOplusPowerMonitor;->getWakeLockStats()[Lcom/oplus/app/KernelWakeLockInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getKernelWakeLockStats failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 218
    :cond_0
    const-string v0, "getKernelWakeLockStats failed: service unavailable."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getKernelWakeupStats()[Lcom/oplus/app/KernelWakeupInfo;
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/oplus/os/OplusPowerMonitor;->mOplusPowerMonitorService:Lcom/oplus/os/IOplusPowerMonitor;

    const-string v1, "OplusPowerMonitor"

    if-eqz v0, :cond_0

    .line 226
    :try_start_0
    invoke-interface {v0}, Lcom/oplus/os/IOplusPowerMonitor;->getWakeupStats()[Lcom/oplus/app/KernelWakeupInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getKernelWakeupStats failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 231
    :cond_0
    const-string v0, "getKernelWakeupStats failed: service unavailable."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRpmMasterStatsFilePath()Ljava/lang/String;
    .locals 6

    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lcom/oplus/os/OplusPowerMonitor;->mOplusPowerMonitorService:Lcom/oplus/os/IOplusPowerMonitor;

    const-string v2, "OplusPowerMonitor"

    if-eqz v1, :cond_1

    .line 169
    :try_start_0
    const-string v1, "com.oplus.os.IOplusPowerMonitor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 170
    .local v1, "powerMonitorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "getRpmMasterStatsFilePath"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 171
    .local v3, "getRpmMasterStatsFilePathMethod":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 172
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 173
    iget-object v5, p0, Lcom/oplus/os/OplusPowerMonitor;->mOplusPowerMonitorService:Lcom/oplus/os/IOplusPowerMonitor;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 174
    .local v4, "result":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 178
    .end local v1    # "powerMonitorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "getRpmMasterStatsFilePathMethod":Ljava/lang/reflect/Method;
    .end local v4    # "result":Ljava/lang/Object;
    :cond_0
    :goto_0
    goto :goto_1

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "getRpmMasterStatsFilePath failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 180
    :cond_1
    const-string v1, "getRpmMasterStatsFilePath failed: service unavailable"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRpmMasterStatsFilePath:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-object v0
.end method

.method public whitelist getRpmStatsFilePath()Ljava/lang/String;
    .locals 6

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lcom/oplus/os/OplusPowerMonitor;->mOplusPowerMonitorService:Lcom/oplus/os/IOplusPowerMonitor;

    const-string v2, "OplusPowerMonitor"

    if-eqz v1, :cond_1

    .line 147
    :try_start_0
    const-string v1, "com.oplus.os.IOplusPowerMonitor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 148
    .local v1, "powerMonitorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "getRpmStatsFilePath"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 149
    .local v3, "getRpmStatsFilePathMethod":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 150
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 151
    iget-object v5, p0, Lcom/oplus/os/OplusPowerMonitor;->mOplusPowerMonitorService:Lcom/oplus/os/IOplusPowerMonitor;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 152
    .local v4, "result":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 156
    .end local v1    # "powerMonitorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "getRpmStatsFilePathMethod":Ljava/lang/reflect/Method;
    .end local v4    # "result":Ljava/lang/Object;
    :cond_0
    :goto_0
    goto :goto_1

    .line 154
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "getRpmStatsFilePath failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 158
    :cond_1
    const-string v1, "getRpmStatsFilePath failed: service unavailable"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRpmStatsFilePath:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-object v0
.end method

.method public whitelist getSubSystem()[Ljava/lang/String;
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/oplus/os/OplusPowerMonitor;->mOplusPowerMonitorService:Lcom/oplus/os/IOplusPowerMonitor;

    const-string v1, "OplusPowerMonitor"

    if-eqz v0, :cond_0

    .line 265
    :try_start_0
    invoke-interface {v0}, Lcom/oplus/os/IOplusPowerMonitor;->getSubSystem()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getSubSystem failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 270
    :cond_0
    const-string v0, "getSubSystem failed: service unavailable."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getWakeLockInfo(JJ)Ljava/util/List;
    .locals 3
    .param p1, "starttime"    # J
    .param p3, "endtime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/oplus/app/OplusWakeLockInfo;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/oplus/os/OplusPowerMonitor;->mOplusPowerMonitorService:Lcom/oplus/os/IOplusPowerMonitor;

    const-string v1, "OplusPowerMonitor"

    if-eqz v0, :cond_0

    .line 133
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/oplus/os/IOplusPowerMonitor;->getWakeLockInfo(JJ)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "getWakeLockInfo failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 138
    :cond_0
    const-string/jumbo v0, "getWakeLockInfo failed: service unavailable"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getWakeLockInfoFileDescriptor(JJ)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "starttime"    # J
    .param p3, "endtime"    # J

    .line 276
    iget-object v0, p0, Lcom/oplus/os/OplusPowerMonitor;->mOplusPowerMonitorService:Lcom/oplus/os/IOplusPowerMonitor;

    const-string v1, "OplusPowerMonitor"

    if-eqz v0, :cond_0

    .line 278
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/oplus/os/IOplusPowerMonitor;->getWakeLockInfoFileDescriptor(JJ)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "getWakeLockInfoFileDescriptor failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 283
    :cond_0
    const-string/jumbo v0, "getWakeLockInfoFileDescriptor failed: service unavailable."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getWakeups()Ljava/lang/String;
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/oplus/os/OplusPowerMonitor;->mOplusPowerMonitorService:Lcom/oplus/os/IOplusPowerMonitor;

    const-string v1, "OplusPowerMonitor"

    if-eqz v0, :cond_0

    .line 252
    :try_start_0
    invoke-interface {v0}, Lcom/oplus/os/IOplusPowerMonitor;->getWakeups()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "getWakeups failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 257
    :cond_0
    const-string/jumbo v0, "getWakeups failed: service unavailable."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist isOplusPowerMonitorServiceInited()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/oplus/os/OplusPowerMonitor;->mOplusPowerMonitorService:Lcom/oplus/os/IOplusPowerMonitor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist recordAlarmWakeupEvent()V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/oplus/os/OplusPowerMonitor;->mOplusPowerMonitorService:Lcom/oplus/os/IOplusPowerMonitor;

    const-string v1, "OplusPowerMonitor"

    if-eqz v0, :cond_0

    .line 48
    :try_start_0
    invoke-interface {v0}, Lcom/oplus/os/IOplusPowerMonitor;->recordAlarmWakeupEvent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "recordAlarmWakeupEvent failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 53
    :cond_0
    const-string/jumbo v0, "recordAlarmWakeupEvent failed: service unavailable"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :goto_1
    return-void
.end method

.method public whitelist recordAppWakeupEvent(ILjava/lang/String;)V
    .locals 3
    .param p1, "alarmType"    # I
    .param p2, "alarmPackageName"    # Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/oplus/os/OplusPowerMonitor;->mOplusPowerMonitorService:Lcom/oplus/os/IOplusPowerMonitor;

    const-string v1, "OplusPowerMonitor"

    if-eqz v0, :cond_0

    .line 60
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oplus/os/IOplusPowerMonitor;->recordAppWakeupEvent(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "recordAppWakeupEvent failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 65
    :cond_0
    const-string/jumbo v0, "recordAppWakeupEvent failed: service unavailable"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_1
    return-void
.end method

.method public whitelist recordAppWakeupInfoEvent(Lcom/oplus/app/OplusAlarmInfo;)V
    .locals 3
    .param p1, "oplusAlarmInfo"    # Lcom/oplus/app/OplusAlarmInfo;

    .line 70
    iget-object v0, p0, Lcom/oplus/os/OplusPowerMonitor;->mOplusPowerMonitorService:Lcom/oplus/os/IOplusPowerMonitor;

    const-string v1, "OplusPowerMonitor"

    if-eqz v0, :cond_0

    .line 72
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oplus/os/IOplusPowerMonitor;->recordAppWakeupInfoEvent(Lcom/oplus/app/OplusAlarmInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "recordAppWakeupInfoEvent failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 77
    :cond_0
    const-string/jumbo v0, "recordAppWakeupInfoEvent failed: service unavailable"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_1
    return-void
.end method

.method public whitelist recordWakeLockAcquireEvent(Lcom/oplus/app/OplusWakeLockInfo;)V
    .locals 3
    .param p1, "wakeLockInfo"    # Lcom/oplus/app/OplusWakeLockInfo;

    .line 107
    iget-object v0, p0, Lcom/oplus/os/OplusPowerMonitor;->mOplusPowerMonitorService:Lcom/oplus/os/IOplusPowerMonitor;

    const-string v1, "OplusPowerMonitor"

    if-eqz v0, :cond_0

    .line 109
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oplus/os/IOplusPowerMonitor;->recordWakeLockAcquireEvent(Lcom/oplus/app/OplusWakeLockInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "recordWakeLockAcquireEvent failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 114
    :cond_0
    const-string/jumbo v0, "recordWakeLockAcquireEvent failed: service unavailable"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_1
    return-void
.end method

.method public whitelist recordWakeLockReleaseEvent(Lcom/oplus/app/OplusWakeLockInfo;)V
    .locals 3
    .param p1, "wakeLockInfo"    # Lcom/oplus/app/OplusWakeLockInfo;

    .line 119
    iget-object v0, p0, Lcom/oplus/os/OplusPowerMonitor;->mOplusPowerMonitorService:Lcom/oplus/os/IOplusPowerMonitor;

    const-string v1, "OplusPowerMonitor"

    if-eqz v0, :cond_0

    .line 121
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oplus/os/IOplusPowerMonitor;->recordWakeLockReleaseEvent(Lcom/oplus/app/OplusWakeLockInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "recordWakeLockEvent failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 126
    :cond_0
    const-string/jumbo v0, "recordWakeLockEvent failed: service unavailable"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :goto_1
    return-void
.end method

.method public whitelist releaseSuspendBlocker(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/oplus/os/OplusPowerMonitor;->mOplusPowerMonitorService:Lcom/oplus/os/IOplusPowerMonitor;

    const-string v1, "OplusPowerMonitor"

    if-eqz v0, :cond_0

    .line 201
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oplus/os/IOplusPowerMonitor;->releaseSuspendBlocker(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "releaseSuspendBlocker failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 206
    :cond_0
    const-string/jumbo v0, "releaseSuspendBlocker failed: service unavailable"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_1
    return-void
.end method

.method public whitelist resetWakeupEventRecords()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/oplus/os/OplusPowerMonitor;->mOplusPowerMonitorService:Lcom/oplus/os/IOplusPowerMonitor;

    const-string v1, "OplusPowerMonitor"

    if-eqz v0, :cond_0

    .line 84
    :try_start_0
    invoke-interface {v0}, Lcom/oplus/os/IOplusPowerMonitor;->resetWakeupEventRecords()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "resetWakeupEventRecords failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 89
    :cond_0
    const-string/jumbo v0, "resetWakeupEventRecords failed: service unavailable"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_1
    return-void
.end method
