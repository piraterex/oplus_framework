.class public Lcom/android/internal/os/ChildZygoteInit;
.super Ljava/lang/Object;
.source "ChildZygoteInit.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ChildZygoteInit"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist parseAbiListFromArgs([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "argv"    # [Ljava/lang/String;

    .line 44
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 45
    .local v2, "arg":Ljava/lang/String;
    const-string v3, "--abi-list="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 44
    .end local v2    # "arg":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static blacklist parseIntFromArg([Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "argv"    # [Ljava/lang/String;
    .param p1, "desiredArg"    # Ljava/lang/String;

    .line 54
    const/4 v0, -0x1

    .line 55
    .local v0, "value":I
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 56
    .local v3, "arg":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 57
    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "valueStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v5

    .line 63
    goto :goto_1

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid int argument: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 55
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "arg":Ljava/lang/String;
    .end local v4    # "valueStr":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_1
    return v0
.end method

.method static blacklist parseSocketNameFromArgs([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "argv"    # [Ljava/lang/String;

    .line 34
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 35
    .local v2, "arg":Ljava/lang/String;
    const-string v3, "--zygote-socket="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 36
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 34
    .end local v2    # "arg":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static blacklist runZygoteServer(Lcom/android/internal/os/ZygoteServer;[Ljava/lang/String;)V
    .locals 11
    .param p0, "server"    # Lcom/android/internal/os/ZygoteServer;
    .param p1, "args"    # [Ljava/lang/String;

    .line 76
    invoke-static {p1}, Lcom/android/internal/os/ChildZygoteInit;->parseSocketNameFromArgs([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "socketName":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 81
    invoke-static {p1}, Lcom/android/internal/os/ChildZygoteInit;->parseAbiListFromArgs([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "abiList":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 87
    :try_start_0
    sget v2, Landroid/system/OsConstants;->PR_SET_NO_NEW_PRIVS:I

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    invoke-static/range {v2 .. v10}, Landroid/system/Os;->prctl(IJJJJ)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 90
    nop

    .line 92
    const-string v2, "--uid-range-start="

    invoke-static {p1, v2}, Lcom/android/internal/os/ChildZygoteInit;->parseIntFromArg([Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 93
    .local v2, "uidGidMin":I
    const-string v3, "--uid-range-end="

    invoke-static {p1, v3}, Lcom/android/internal/os/ChildZygoteInit;->parseIntFromArg([Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 94
    .local v3, "uidGidMax":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    if-eq v3, v4, :cond_3

    .line 97
    if-gt v2, v3, :cond_2

    .line 105
    const v4, 0x15f90

    if-lt v2, v4, :cond_1

    .line 113
    invoke-static {v2, v3}, Lcom/android/internal/os/Zygote;->nativeInstallSeccompUidGidFilter(II)V

    .line 117
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/internal/os/ZygoteServer;->registerServerSocketAtAbstractName(Ljava/lang/String;)V

    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ABSTRACT/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/os/Zygote;->nativeAllowFileAcrossFork(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, v1}, Lcom/android/internal/os/ZygoteServer;->runSelectLoop(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    .local v4, "caller":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 131
    nop

    .line 135
    if-eqz v4, :cond_0

    .line 136
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 138
    :cond_0
    return-void

    .line 130
    .end local v4    # "caller":Ljava/lang/Runnable;
    :catchall_0
    move-exception v4

    goto :goto_0

    .line 126
    :catch_0
    move-exception v4

    .line 127
    .local v4, "e":Ljava/lang/RuntimeException;
    :try_start_2
    const-string v5, "ChildZygoteInit"

    const-string v6, "Fatal exception:"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    nop

    .end local v0    # "socketName":Ljava/lang/String;
    .end local v1    # "abiList":Ljava/lang/String;
    .end local v2    # "uidGidMin":I
    .end local v3    # "uidGidMax":I
    .end local p0    # "server":Lcom/android/internal/os/ZygoteServer;
    .end local p1    # "args":[Ljava/lang/String;
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    .end local v4    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "socketName":Ljava/lang/String;
    .restart local v1    # "abiList":Ljava/lang/String;
    .restart local v2    # "uidGidMin":I
    .restart local v3    # "uidGidMax":I
    .restart local p0    # "server":Lcom/android/internal/os/ZygoteServer;
    .restart local p1    # "args":[Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 131
    throw v4

    .line 106
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Passed in UID range does not map to isolated processes."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 98
    :cond_2
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Passed in UID range is invalid, min > max."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 95
    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Couldn\'t parse UID range start/end"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 88
    .end local v2    # "uidGidMin":I
    .end local v3    # "uidGidMax":I
    :catch_1
    move-exception v2

    .line 89
    .local v2, "ex":Landroid/system/ErrnoException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to set PR_SET_NO_NEW_PRIVS"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 83
    .end local v2    # "ex":Landroid/system/ErrnoException;
    :cond_4
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "No abiList specified"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    .end local v1    # "abiList":Ljava/lang/String;
    :cond_5
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "No socketName specified"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
