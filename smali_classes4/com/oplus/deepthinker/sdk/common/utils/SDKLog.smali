.class public Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;
.super Ljava/lang/Object;
.source "SDKLog.java"


# static fields
.field private static final blacklist DEBUG_DETAILS:Z = false

.field private static final blacklist DEBUG_IN_FILE:Z = false

.field public static final whitelist IS_QE_LOG_ON:Z

.field private static final blacklist IS_QE_LOG_ON_MTK:Z

.field private static final blacklist TAG:Ljava/lang/String; = "DeepThinkerSDK"

.field private static blacklist isDebugTagOn:Z

.field private static blacklist mDevelopMode:Z

.field private static blacklist sSaveLogToFile:Z

.field private static blacklist sWriter:Ljava/io/BufferedWriter;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 33
    const-string/jumbo v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->IS_QE_LOG_ON:Z

    .line 34
    const-string/jumbo v2, "persist.sys.assert.enable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->IS_QE_LOG_ON_MTK:Z

    .line 38
    const-string v3, "DeepThinkerSDK"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    sput-boolean v3, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->isDebugTagOn:Z

    .line 45
    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    sput-boolean v1, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->mDevelopMode:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist d(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 106
    sget-boolean v0, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->IS_QE_LOG_ON:Z

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "DeepThinkerSDK"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {v0, p0}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->saveLogToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    return-void
.end method

.method public static whitelist d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 99
    sget-boolean v0, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->IS_QE_LOG_ON:Z

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeepThinkerSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {p0, p1}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->saveLogToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    return-void
.end method

.method public static whitelist e(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 148
    sget-boolean v0, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->IS_QE_LOG_ON:Z

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "DeepThinkerSDK"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-static {v0, p0}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->saveLogToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    return-void
.end method

.method public static whitelist e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 141
    sget-boolean v0, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->IS_QE_LOG_ON:Z

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeepThinkerSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {p0, p1}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->saveLogToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    return-void
.end method

.method public static whitelist e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 155
    sget-boolean v0, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->IS_QE_LOG_ON:Z

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeepThinkerSDK"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    invoke-static {p0, p1}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->saveLogToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_0
    return-void
.end method

.method public static whitelist i(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 120
    sget-boolean v0, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->IS_QE_LOG_ON:Z

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "DeepThinkerSDK"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {v0, p0}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->saveLogToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_0
    return-void
.end method

.method public static whitelist i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 113
    sget-boolean v0, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->IS_QE_LOG_ON:Z

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeepThinkerSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {p0, p1}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->saveLogToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    return-void
.end method

.method public static whitelist isDevelopModeOn()Z
    .locals 1

    .line 68
    sget-boolean v0, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->mDevelopMode:Z

    return v0
.end method

.method public static declared-synchronized whitelist openSaveLogToFile()V
    .locals 2

    const-class v0, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;

    monitor-enter v0

    .line 50
    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->sSaveLogToFile:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit v0

    return-void

    .line 49
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static blacklist saveLogToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 72
    sget-boolean v0, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->sSaveLogToFile:Z

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->sWriter:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    .line 75
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->sWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 82
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static whitelist v(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 92
    sget-boolean v0, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->IS_QE_LOG_ON:Z

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "DeepThinkerSDK"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {v0, p0}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->saveLogToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    return-void
.end method

.method public static whitelist v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 85
    sget-boolean v0, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->IS_QE_LOG_ON:Z

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeepThinkerSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {p0, p1}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->saveLogToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    return-void
.end method

.method public static whitelist w(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 134
    sget-boolean v0, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->IS_QE_LOG_ON:Z

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "DeepThinkerSDK"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-static {v0, p0}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->saveLogToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_0
    return-void
.end method

.method public static whitelist w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 127
    sget-boolean v0, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->IS_QE_LOG_ON:Z

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeepThinkerSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {p0, p1}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->saveLogToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_0
    return-void
.end method
