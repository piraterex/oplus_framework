.class public abstract Lcom/android/modules/utils/BasicShellCommandHandler;
.super Ljava/lang/Object;
.source "BasicShellCommandHandler.java"


# static fields
.field protected static final blacklist DEBUG:Z = false

.field protected static final blacklist TAG:Ljava/lang/String; = "ShellCommand"


# instance fields
.field private blacklist mArgPos:I

.field private blacklist mArgs:[Ljava/lang/String;

.field private blacklist mCmd:Ljava/lang/String;

.field private blacklist mCurArgData:Ljava/lang/String;

.field private blacklist mErr:Ljava/io/FileDescriptor;

.field private blacklist mErrPrintWriter:Ljava/io/PrintWriter;

.field private blacklist mFileErr:Ljava/io/FileOutputStream;

.field private blacklist mFileIn:Ljava/io/FileInputStream;

.field private blacklist mFileOut:Ljava/io/FileOutputStream;

.field private blacklist mIn:Ljava/io/FileDescriptor;

.field private blacklist mInputStream:Ljava/io/InputStream;

.field private blacklist mOut:Ljava/io/FileDescriptor;

.field private blacklist mOutPrintWriter:Ljava/io/PrintWriter;

.field private blacklist mTarget:Landroid/os/Binder;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I
    .locals 9
    .param p1, "target"    # Landroid/os/Binder;
    .param p2, "in"    # Ljava/io/FileDescriptor;
    .param p3, "out"    # Ljava/io/FileDescriptor;
    .param p4, "err"    # Ljava/io/FileDescriptor;
    .param p5, "args"    # [Ljava/lang/String;

    .line 78
    if-eqz p5, :cond_0

    array-length v0, p5

    if-lez v0, :cond_0

    .line 79
    const/4 v0, 0x0

    aget-object v0, p5, v0

    .line 80
    .local v0, "cmd":Ljava/lang/String;
    const/4 v1, 0x1

    move v8, v1

    .local v1, "start":I
    goto :goto_0

    .line 82
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v1    # "start":I
    :cond_0
    const/4 v0, 0x0

    .line 83
    .restart local v0    # "cmd":Ljava/lang/String;
    const/4 v1, 0x0

    move v8, v1

    .line 85
    .local v8, "start":I
    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, v8

    invoke-virtual/range {v1 .. v7}, Lcom/android/modules/utils/BasicShellCommandHandler;->init(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;I)V

    .line 86
    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCmd:Ljava/lang/String;

    .line 95
    const/4 v1, -0x1

    .line 97
    .local v1, "res":I
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/modules/utils/BasicShellCommandHandler;->onCommand(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    .line 110
    iget-object v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    if-eqz v2, :cond_1

    .line 111
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 113
    :cond_1
    iget-object v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    if-eqz v2, :cond_3

    .line 114
    :goto_1
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    goto :goto_2

    .line 99
    :catchall_0
    move-exception v2

    .line 104
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 105
    .local v3, "eout":Ljava/io/PrintWriter;
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occurred while executing \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCmd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\':"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v3    # "eout":Ljava/io/PrintWriter;
    iget-object v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    if-eqz v2, :cond_2

    .line 111
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 113
    :cond_2
    iget-object v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    if-eqz v2, :cond_3

    .line 114
    goto :goto_1

    .line 119
    :cond_3
    :goto_2
    return v1

    .line 109
    :catchall_1
    move-exception v2

    .line 110
    iget-object v3, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    if-eqz v3, :cond_4

    .line 111
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 113
    :cond_4
    iget-object v3, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    if-eqz v3, :cond_5

    .line 114
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 117
    :cond_5
    throw v2
.end method

.method public blacklist getAllArgs()[Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getBufferedInputStream()Ljava/io/InputStream;
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getRawInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mInputStream:Ljava/io/InputStream;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public blacklist getErrFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErr:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public blacklist getErrPrintWriter()Ljava/io/PrintWriter;
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErr:Ljava/io/FileDescriptor;

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    if-nez v0, :cond_1

    .line 174
    new-instance v0, Ljava/io/PrintWriter;

    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getRawErrorStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    return-object v0
.end method

.method public blacklist getInFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mIn:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public blacklist getNextArg()Ljava/lang/String;
    .locals 4

    .line 244
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    .line 246
    .local v0, "arg":Ljava/lang/String;
    iput-object v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    .line 247
    return-object v0

    .line 248
    .end local v0    # "arg":Ljava/lang/String;
    :cond_0
    iget v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    iget-object v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 249
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    aget-object v0, v2, v0

    return-object v0

    .line 251
    :cond_1
    return-object v1
.end method

.method public blacklist getNextArgRequired()Ljava/lang/String;
    .locals 5

    .line 292
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "arg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 297
    return-object v0

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    .line 295
    .local v1, "prev":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Argument expected after \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist getNextOption()Ljava/lang/String;
    .locals 5

    .line 211
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 215
    iget v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    iget-object v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    if-lt v0, v3, :cond_0

    .line 216
    return-object v4

    .line 218
    :cond_0
    aget-object v0, v2, v0

    .line 219
    .local v0, "arg":Ljava/lang/String;
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 220
    return-object v4

    .line 222
    :cond_1
    iget v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    .line 223
    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 224
    return-object v4

    .line 226
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_4

    .line 227
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_3

    .line 228
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    .line 229
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 231
    :cond_3
    iput-object v4, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    .line 232
    return-object v0

    .line 235
    :cond_4
    iput-object v4, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    .line 236
    return-object v0

    .line 212
    .end local v0    # "arg":Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    .line 213
    .local v0, "prev":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No argument expected after \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getOutFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOut:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public blacklist getOutPrintWriter()Ljava/io/PrintWriter;
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/io/PrintWriter;

    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    return-object v0
.end method

.method public blacklist getRawErrorStream()Ljava/io/OutputStream;
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileErr:Ljava/io/FileOutputStream;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErr:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileErr:Ljava/io/FileOutputStream;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileErr:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method public blacklist getRawInputStream()Ljava/io/InputStream;
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileIn:Ljava/io/FileInputStream;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mIn:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileIn:Ljava/io/FileInputStream;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileIn:Ljava/io/FileInputStream;

    return-object v0
.end method

.method public blacklist getRawOutputStream()Ljava/io/OutputStream;
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileOut:Ljava/io/FileOutputStream;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOut:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileOut:Ljava/io/FileOutputStream;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileOut:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method public blacklist getRemainingArgsCount()I
    .locals 3

    .line 281
    iget v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    iget-object v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 282
    const/4 v0, 0x0

    return v0

    .line 284
    :cond_0
    array-length v1, v1

    sub-int/2addr v1, v0

    return v1
.end method

.method public blacklist getTarget()Landroid/os/Binder;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mTarget:Landroid/os/Binder;

    return-object v0
.end method

.method public blacklist handleDefaultCommands(Ljava/lang/String;)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .line 301
    if-eqz p1, :cond_1

    const-string v0, "help"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-h"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 302
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->onHelp()V

    .line 306
    :goto_1
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist init(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;I)V
    .locals 1
    .param p1, "target"    # Landroid/os/Binder;
    .param p2, "in"    # Ljava/io/FileDescriptor;
    .param p3, "out"    # Ljava/io/FileDescriptor;
    .param p4, "err"    # Ljava/io/FileDescriptor;
    .param p5, "args"    # [Ljava/lang/String;
    .param p6, "firstArgPos"    # I

    .line 58
    iput-object p1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mTarget:Landroid/os/Binder;

    .line 59
    iput-object p2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mIn:Ljava/io/FileDescriptor;

    .line 60
    iput-object p3, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOut:Ljava/io/FileDescriptor;

    .line 61
    iput-object p4, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErr:Ljava/io/FileDescriptor;

    .line 62
    iput-object p5, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCmd:Ljava/lang/String;

    .line 64
    iput p6, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    .line 65
    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileIn:Ljava/io/FileInputStream;

    .line 67
    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileOut:Ljava/io/FileOutputStream;

    .line 68
    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mFileErr:Ljava/io/FileOutputStream;

    .line 69
    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mOutPrintWriter:Ljava/io/PrintWriter;

    .line 70
    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mErrPrintWriter:Ljava/io/PrintWriter;

    .line 71
    iput-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mInputStream:Ljava/io/InputStream;

    .line 72
    return-void
.end method

.method public abstract blacklist onCommand(Ljava/lang/String;)I
.end method

.method public abstract blacklist onHelp()V
.end method

.method public blacklist peekNextArg()Ljava/lang/String;
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mCurArgData:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 257
    return-object v0

    .line 258
    :cond_0
    iget v0, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    iget-object v1, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 259
    aget-object v0, v1, v0

    return-object v0

    .line 261
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist peekRemainingArgs()[Ljava/lang/String;
    .locals 5

    .line 269
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getRemainingArgsCount()I

    move-result v0

    .line 270
    .local v0, "remaining":I
    new-array v1, v0, [Ljava/lang/String;

    .line 271
    .local v1, "args":[Ljava/lang/String;
    iget v2, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    .local v2, "pos":I
    :goto_0
    iget-object v3, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgs:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 272
    iget v4, p0, Lcom/android/modules/utils/BasicShellCommandHandler;->mArgPos:I

    sub-int v4, v2, v4

    aget-object v3, v3, v2

    aput-object v3, v1, v4

    .line 271
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 274
    .end local v2    # "pos":I
    :cond_0
    return-object v1
.end method
