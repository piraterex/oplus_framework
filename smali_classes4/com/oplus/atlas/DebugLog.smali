.class public final Lcom/oplus/atlas/DebugLog;
.super Ljava/lang/Object;
.source "DebugLog.java"


# static fields
.field private static final blacklist DEBUG_MODE:Z

.field private static final blacklist LOGD:Z = true

.field private static final blacklist LOGE:Z = true

.field private static final blacklist LOGI:Z = true

.field private static final blacklist LOGV:Z = true

.field private static final blacklist LOGW:Z = true

.field private static final blacklist SHOWDETAILINFO:Z = false


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 30
    const-string/jumbo v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/atlas/DebugLog;->DEBUG_MODE:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 72
    sget-boolean v0, Lcom/oplus/atlas/DebugLog;->DEBUG_MODE:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 80
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static whitelist d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 98
    sget-boolean v0, Lcom/oplus/atlas/DebugLog;->DEBUG_MODE:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 106
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static whitelist d(Ljava/lang/String;ZLjava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "debug"    # Z
    .param p2, "msg"    # Ljava/lang/String;

    .line 85
    if-eqz p1, :cond_0

    sget-boolean v0, Lcom/oplus/atlas/DebugLog;->DEBUG_MODE:Z

    if-eqz v0, :cond_0

    .line 90
    invoke-static {p0, p2}, Lcom/oplus/atlas/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 93
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static whitelist e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 163
    sget-boolean v0, Lcom/oplus/atlas/DebugLog;->DEBUG_MODE:Z

    if-eqz v0, :cond_0

    .line 168
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 171
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static whitelist e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 176
    sget-boolean v0, Lcom/oplus/atlas/DebugLog;->DEBUG_MODE:Z

    if-eqz v0, :cond_0

    .line 181
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 184
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private static blacklist getFunctionName()Ljava/lang/String;
    .locals 7

    .line 189
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 190
    .local v0, "sts":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 191
    return-object v1

    .line 193
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    .line 194
    .local v4, "st":Ljava/lang/StackTraceElement;
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 195
    goto :goto_1

    .line 197
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 198
    goto :goto_1

    .line 200
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/oplus/atlas/DebugLog;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 201
    nop

    .line 193
    .end local v4    # "st":Ljava/lang/StackTraceElement;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 203
    .restart local v4    # "st":Ljava/lang/StackTraceElement;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 204
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    return-object v1

    .line 206
    .end local v4    # "st":Ljava/lang/StackTraceElement;
    :cond_4
    return-object v1
.end method

.method public static whitelist i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 111
    sget-boolean v0, Lcom/oplus/atlas/DebugLog;->DEBUG_MODE:Z

    if-eqz v0, :cond_0

    .line 116
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 119
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static whitelist i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 124
    sget-boolean v0, Lcom/oplus/atlas/DebugLog;->DEBUG_MODE:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 132
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static whitelist v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 33
    sget-boolean v0, Lcom/oplus/atlas/DebugLog;->DEBUG_MODE:Z

    if-eqz v0, :cond_0

    .line 38
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 41
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static whitelist v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 46
    sget-boolean v0, Lcom/oplus/atlas/DebugLog;->DEBUG_MODE:Z

    if-eqz v0, :cond_0

    .line 51
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 54
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static whitelist v(Ljava/lang/String;ZLjava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "debug"    # Z
    .param p2, "msg"    # Ljava/lang/String;

    .line 59
    if-eqz p1, :cond_0

    sget-boolean v0, Lcom/oplus/atlas/DebugLog;->DEBUG_MODE:Z

    if-eqz v0, :cond_0

    .line 64
    invoke-static {p0, p2}, Lcom/oplus/atlas/DebugLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 67
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static whitelist w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 137
    sget-boolean v0, Lcom/oplus/atlas/DebugLog;->DEBUG_MODE:Z

    if-eqz v0, :cond_0

    .line 142
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 145
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static whitelist w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 150
    sget-boolean v0, Lcom/oplus/atlas/DebugLog;->DEBUG_MODE:Z

    if-eqz v0, :cond_0

    .line 155
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 158
    :cond_0
    const/4 v0, -0x1

    return v0
.end method
