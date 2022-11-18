.class public Lcom/android/internal/os/WrapperInit;
.super Ljava/lang/Object;
.source "WrapperInit.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AndroidRuntime"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static blacklist execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 5
    .param p0, "invokeWith"    # Ljava/lang/String;
    .param p1, "niceName"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I
    .param p3, "instructionSet"    # Ljava/lang/String;
    .param p4, "pipeFd"    # Ljava/io/FileDescriptor;
    .param p5, "args"    # [Ljava/lang/String;

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "command":Ljava/lang/StringBuilder;
    invoke-static {p3}, Ldalvik/system/VMRuntime;->is64BitInstructionSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const-string v1, "/system/bin/app_process64"

    .local v1, "appProcess":Ljava/lang/String;
    goto :goto_0

    .line 116
    .end local v1    # "appProcess":Ljava/lang/String;
    :cond_0
    const-string v1, "/system/bin/app_process32"

    .line 118
    .restart local v1    # "appProcess":Ljava/lang/String;
    :goto_0
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v3, " -Xcompiler-option --generate-mini-debug-info"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v3, " /system/bin --application"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    if-eqz p1, :cond_1

    .line 131
    const-string v3, " \'--nice-name="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_1
    const-string v3, " com.android.internal.os.WrapperInit "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    invoke-static {v0, p5}, Lcom/android/internal/os/Zygote;->appendQuotedShellArgs(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/android/internal/os/WrapperInit;->preserveCapabilities()V

    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/Zygote;->execShell(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public static blacklist main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    aget-object v1, p0, v0

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 67
    .local v1, "fdNum":I
    const/4 v3, 0x1

    aget-object v3, p0, v3

    invoke-static {v3, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 71
    .local v2, "targetSdkVersion":I
    if-eqz v1, :cond_0

    .line 72
    new-instance v3, Ljava/io/FileDescriptor;

    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    .line 74
    .local v3, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    invoke-virtual {v3, v1}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 75
    new-instance v4, Ljava/io/DataOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 76
    .local v4, "os":Ljava/io/DataOutputStream;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 77
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .end local v4    # "os":Ljava/io/DataOutputStream;
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 78
    :catch_0
    move-exception v4

    .line 79
    .local v4, "ex":Ljava/io/IOException;
    :try_start_1
    const-string v5, "AndroidRuntime"

    const-string v6, "Could not write pid of wrapped process to Zygote pipe."

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    nop

    .end local v4    # "ex":Ljava/io/IOException;
    :goto_0
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 82
    goto :goto_2

    .line 81
    :goto_1
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 82
    throw v0

    .line 86
    .end local v3    # "fd":Ljava/io/FileDescriptor;
    :cond_0
    :goto_2
    new-instance v3, Landroid/util/TimingsTraceLog;

    const-wide/16 v4, 0x4000

    const-string v6, "WrapperInitTiming"

    invoke-direct {v3, v6, v4, v5}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    invoke-static {v3}, Lcom/android/internal/os/ZygoteInit;->preload(Landroid/util/TimingsTraceLog;)V

    .line 90
    array-length v3, p0

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/String;

    .line 91
    .local v3, "runtimeArgs":[Ljava/lang/String;
    array-length v5, v3

    invoke-static {p0, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    invoke-static {v2, v3}, Lcom/android/internal/os/WrapperInit;->wrapperInit(I[Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    .line 94
    .local v0, "r":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 95
    return-void
.end method

.method private static blacklist preserveCapabilities()V
    .locals 16

    .line 190
    const-string v0, "AndroidRuntime"

    new-instance v1, Landroid/system/StructCapUserHeader;

    sget v2, Landroid/system/OsConstants;->_LINUX_CAPABILITY_VERSION_3:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/system/StructCapUserHeader;-><init>(II)V

    .line 194
    .local v1, "header":Landroid/system/StructCapUserHeader;
    :try_start_0
    invoke-static {v1}, Landroid/system/Os;->capget(Landroid/system/StructCapUserHeader;)[Landroid/system/StructCapUserData;

    move-result-object v2
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_2

    .line 198
    .local v2, "data":[Landroid/system/StructCapUserData;
    nop

    .line 200
    aget-object v4, v2, v3

    iget v4, v4, Landroid/system/StructCapUserData;->permitted:I

    aget-object v5, v2, v3

    iget v5, v5, Landroid/system/StructCapUserData;->inheritable:I

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    aget-object v4, v2, v6

    iget v4, v4, Landroid/system/StructCapUserData;->permitted:I

    aget-object v5, v2, v6

    iget v5, v5, Landroid/system/StructCapUserData;->inheritable:I

    if-eq v4, v5, :cond_1

    .line 202
    :cond_0
    new-instance v4, Landroid/system/StructCapUserData;

    aget-object v5, v2, v3

    iget v5, v5, Landroid/system/StructCapUserData;->effective:I

    aget-object v7, v2, v3

    iget v7, v7, Landroid/system/StructCapUserData;->permitted:I

    aget-object v8, v2, v3

    iget v8, v8, Landroid/system/StructCapUserData;->permitted:I

    invoke-direct {v4, v5, v7, v8}, Landroid/system/StructCapUserData;-><init>(III)V

    aput-object v4, v2, v3

    .line 204
    new-instance v3, Landroid/system/StructCapUserData;

    aget-object v4, v2, v6

    iget v4, v4, Landroid/system/StructCapUserData;->effective:I

    aget-object v5, v2, v6

    iget v5, v5, Landroid/system/StructCapUserData;->permitted:I

    aget-object v7, v2, v6

    iget v7, v7, Landroid/system/StructCapUserData;->permitted:I

    invoke-direct {v3, v4, v5, v7}, Landroid/system/StructCapUserData;-><init>(III)V

    aput-object v3, v2, v6

    .line 207
    :try_start_1
    invoke-static {v1, v2}, Landroid/system/Os;->capset(Landroid/system/StructCapUserHeader;[Landroid/system/StructCapUserData;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 211
    nop

    .line 214
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x40

    if-ge v3, v4, :cond_3

    .line 215
    invoke-static {v3}, Landroid/system/OsConstants;->CAP_TO_INDEX(I)I

    move-result v4

    .line 216
    .local v4, "dataIndex":I
    invoke-static {v3}, Landroid/system/OsConstants;->CAP_TO_MASK(I)I

    move-result v5

    .line 217
    .local v5, "capMask":I
    aget-object v6, v2, v4

    iget v6, v6, Landroid/system/StructCapUserData;->inheritable:I

    and-int/2addr v6, v5

    if-eqz v6, :cond_2

    .line 219
    :try_start_2
    sget v7, Landroid/system/OsConstants;->PR_CAP_AMBIENT:I

    sget v6, Landroid/system/OsConstants;->PR_CAP_AMBIENT_RAISE:I

    int-to-long v8, v6

    int-to-long v10, v3

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    invoke-static/range {v7 .. v15}, Landroid/system/Os;->prctl(IJJJJ)I
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0

    .line 226
    goto :goto_1

    .line 221
    :catch_0
    move-exception v6

    .line 224
    .local v6, "ex":Landroid/system/ErrnoException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RuntimeInit: Failed to raise ambient capability "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    .end local v4    # "dataIndex":I
    .end local v5    # "capMask":I
    .end local v6    # "ex":Landroid/system/ErrnoException;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 229
    .end local v3    # "i":I
    :cond_3
    return-void

    .line 208
    :catch_1
    move-exception v3

    .line 209
    .local v3, "e":Landroid/system/ErrnoException;
    const-string v4, "RuntimeInit: Failed capset"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    return-void

    .line 195
    .end local v2    # "data":[Landroid/system/StructCapUserData;
    .end local v3    # "e":Landroid/system/ErrnoException;
    :catch_2
    move-exception v2

    .line 196
    .local v2, "e":Landroid/system/ErrnoException;
    const-string v3, "RuntimeInit: Failed capget"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    return-void
.end method

.method private static blacklist wrapperInit(I[Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 5
    .param p0, "targetSdkVersion"    # I
    .param p1, "argv"    # [Ljava/lang/String;

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v3, p1, v1

    const-string v4, "-cp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-static {v3, p0}, Lcom/android/internal/os/ZygoteInit;->createPathClassLoader(Ljava/lang/String;I)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 165
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 168
    array-length v3, p1

    sub-int/2addr v3, v2

    new-array v3, v3, [Ljava/lang/String;

    .line 169
    .local v3, "removedArgs":[Ljava/lang/String;
    array-length v4, p1

    sub-int/2addr v4, v2

    invoke-static {p1, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    move-object p1, v3

    .line 173
    .end local v3    # "removedArgs":[Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativePreApplicationInit()V

    .line 174
    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/android/internal/os/RuntimeInit;->applicationInit(I[J[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v1

    return-object v1
.end method
