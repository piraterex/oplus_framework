.class final Landroid/app/ActivityThread$Profiler;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Profiler"
.end annotation


# instance fields
.field greylist-max-o autoStopProfiler:Z

.field greylist-max-o handlingProfiling:Z

.field greylist-max-o profileFd:Landroid/os/ParcelFileDescriptor;

.field greylist-max-o profileFile:Ljava/lang/String;

.field greylist-max-o profiling:Z

.field greylist-max-o samplingInterval:I

.field greylist-max-o streamingOutput:Z


# direct methods
.method constructor greylist-max-o <init>()V
    .locals 0

    .line 934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o setProfiler(Landroid/app/ProfilerInfo;)V
    .locals 2
    .param p1, "profilerInfo"    # Landroid/app/ProfilerInfo;

    .line 943
    iget-object v0, p1, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 944
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    iget-boolean v1, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    if-eqz v1, :cond_1

    .line 945
    if-eqz v0, :cond_0

    .line 947
    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 950
    goto :goto_0

    .line 948
    :catch_0
    move-exception v1

    .line 952
    :cond_0
    :goto_0
    return-void

    .line 954
    :cond_1
    iget-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_2

    .line 956
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 959
    goto :goto_1

    .line 957
    :catch_1
    move-exception v1

    .line 961
    :cond_2
    :goto_1
    iget-object v1, p1, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    .line 962
    iput-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 963
    iget v1, p1, Landroid/app/ProfilerInfo;->samplingInterval:I

    iput v1, p0, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    .line 964
    iget-boolean v1, p1, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iput-boolean v1, p0, Landroid/app/ActivityThread$Profiler;->autoStopProfiler:Z

    .line 965
    iget-boolean v1, p1, Landroid/app/ProfilerInfo;->streamingOutput:Z

    iput-boolean v1, p0, Landroid/app/ActivityThread$Profiler;->streamingOutput:Z

    .line 966
    return-void
.end method

.method public greylist-max-o startProfiling()V
    .locals 9

    .line 968
    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 972
    :cond_0
    :try_start_0
    const-string v0, "debug.traceview-buffer-size-mb"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 973
    .local v0, "bufferSize":I
    iget-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    mul-int/lit16 v3, v0, 0x400

    mul-int/lit16 v3, v3, 0x400

    const/4 v4, 0x0

    iget v6, p0, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    move v5, v8

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    iget-boolean v7, p0, Landroid/app/ActivityThread$Profiler;->streamingOutput:Z

    invoke-static/range {v1 .. v7}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;IIZIZ)V

    .line 976
    iput-boolean v8, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 985
    .end local v0    # "bufferSize":I
    goto :goto_1

    .line 977
    :catch_0
    move-exception v0

    .line 978
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profiling failed on path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 980
    :try_start_1
    iget-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 981
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 984
    goto :goto_1

    .line 982
    :catch_1
    move-exception v1

    .line 983
    .local v1, "e2":Ljava/io/IOException;
    const-string v3, "Failure closing profile fd"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 986
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "e2":Ljava/io/IOException;
    :goto_1
    return-void

    .line 969
    :cond_2
    :goto_2
    return-void
.end method

.method public greylist-max-o stopProfiling()V
    .locals 1

    .line 988
    iget-boolean v0, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    if-eqz v0, :cond_1

    .line 989
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    .line 990
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 991
    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 993
    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 995
    goto :goto_0

    .line 994
    :catch_0
    move-exception v0

    .line 997
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 998
    iput-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    .line 1000
    :cond_1
    return-void
.end method
