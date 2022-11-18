.class public Lcom/android/internal/protolog/ProtoLogImpl;
.super Lcom/android/internal/protolog/BaseProtoLogImpl;
.source "ProtoLogImpl.java"


# static fields
.field private static final blacklist BUFFER_CAPACITY:I = 0x100000

.field private static final blacklist LOG_FILENAME:Ljava/lang/String; = "/data/misc/wmtrace/wm_log.winscope"

.field private static final blacklist VIEWER_CONFIG_FILENAME:Ljava/lang/String; = "/system/etc/protolog.conf.json.gz"

.field private static blacklist sServiceInstance:Lcom/android/internal/protolog/ProtoLogImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/protolog/ProtoLogImpl;->sServiceInstance:Lcom/android/internal/protolog/ProtoLogImpl;

    .line 38
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogGroup;->values()[Lcom/android/internal/protolog/ProtoLogGroup;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->addLogGroupEnum([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 39
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/File;ILcom/android/internal/protolog/ProtoLogViewerConfigReader;)V
    .locals 1
    .param p1, "logFile"    # Ljava/io/File;
    .param p2, "bufferCapacity"    # I
    .param p3, "viewConfigReader"    # Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    .line 110
    const-string v0, "/system/etc/protolog.conf.json.gz"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/protolog/BaseProtoLogImpl;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/android/internal/protolog/ProtoLogViewerConfigReader;)V

    .line 111
    return-void
.end method

.method public static varargs blacklist d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "messageHash"    # I
    .param p2, "paramsMask"    # I
    .param p3, "messageString"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 45
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/ProtoLogImpl;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;->DEBUG:Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    .line 46
    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl;->log(Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public static varargs blacklist e(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "messageHash"    # I
    .param p2, "paramsMask"    # I
    .param p3, "messageString"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 75
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/ProtoLogImpl;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;->ERROR:Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    .line 76
    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl;->log(Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public static declared-synchronized blacklist getSingleInstance()Lcom/android/internal/protolog/ProtoLogImpl;
    .locals 5

    const-class v0, Lcom/android/internal/protolog/ProtoLogImpl;

    monitor-enter v0

    .line 96
    :try_start_0
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl;->sServiceInstance:Lcom/android/internal/protolog/ProtoLogImpl;

    if-nez v1, :cond_0

    .line 97
    new-instance v1, Lcom/android/internal/protolog/ProtoLogImpl;

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/misc/wmtrace/wm_log.winscope"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x100000

    new-instance v4, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    invoke-direct {v4}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;-><init>(Ljava/io/File;ILcom/android/internal/protolog/ProtoLogViewerConfigReader;)V

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl;->sServiceInstance:Lcom/android/internal/protolog/ProtoLogImpl;

    .line 100
    :cond_0
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl;->sServiceInstance:Lcom/android/internal/protolog/ProtoLogImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 95
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static varargs blacklist i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "messageHash"    # I
    .param p2, "paramsMask"    # I
    .param p3, "messageString"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 61
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/ProtoLogImpl;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;->INFO:Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl;->log(Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public static blacklist isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z
    .locals 1
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 88
    invoke-interface {p0}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToLogcat()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    invoke-interface {p0}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToProto()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/ProtoLogImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isProtoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 88
    :goto_1
    return v0
.end method

.method public static declared-synchronized blacklist setSingleInstance(Lcom/android/internal/protolog/ProtoLogImpl;)V
    .locals 1
    .param p0, "instance"    # Lcom/android/internal/protolog/ProtoLogImpl;

    const-class v0, Lcom/android/internal/protolog/ProtoLogImpl;

    monitor-enter v0

    .line 105
    :try_start_0
    sput-object p0, Lcom/android/internal/protolog/ProtoLogImpl;->sServiceInstance:Lcom/android/internal/protolog/ProtoLogImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit v0

    return-void

    .line 104
    .end local p0    # "instance":Lcom/android/internal/protolog/ProtoLogImpl;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static varargs blacklist v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "messageHash"    # I
    .param p2, "paramsMask"    # I
    .param p3, "messageString"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 53
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/ProtoLogImpl;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;->VERBOSE:Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl;->log(Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public static varargs blacklist w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "messageHash"    # I
    .param p2, "paramsMask"    # I
    .param p3, "messageString"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 68
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/ProtoLogImpl;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;->WARN:Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl;->log(Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public static varargs blacklist wtf(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "messageHash"    # I
    .param p2, "paramsMask"    # I
    .param p3, "messageString"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 83
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/ProtoLogImpl;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;->WTF:Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl;->log(Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 84
    return-void
.end method
