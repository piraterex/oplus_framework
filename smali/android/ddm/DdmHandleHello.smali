.class public Landroid/ddm/DdmHandleHello;
.super Landroid/ddm/DdmHandle;
.source "DdmHandleHello.java"


# static fields
.field public static final greylist-max-o CHUNK_FEAT:I

.field public static final greylist-max-o CHUNK_HELO:I

.field public static final greylist-max-o CHUNK_WAIT:I

.field private static final blacklist CLIENT_PROTOCOL_VERSION:I = 0x1

.field private static final greylist-max-o FRAMEWORK_FEATURES:[Ljava/lang/String;

.field private static greylist-max-o mInstance:Landroid/ddm/DdmHandleHello;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 36
    const-string v0, "HELO"

    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHello;->CHUNK_HELO:I

    .line 37
    const-string v0, "WAIT"

    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHello;->CHUNK_WAIT:I

    .line 38
    const-string v0, "FEAT"

    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHello;->CHUNK_FEAT:I

    .line 42
    new-instance v0, Landroid/ddm/DdmHandleHello;

    invoke-direct {v0}, Landroid/ddm/DdmHandleHello;-><init>()V

    sput-object v0, Landroid/ddm/DdmHandleHello;->mInstance:Landroid/ddm/DdmHandleHello;

    .line 44
    const-string/jumbo v0, "opengl-tracing"

    const-string/jumbo v1, "view-hierarchy"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroid/ddm/DdmHandle;-><init>()V

    return-void
.end method

.method private greylist-max-o handleFEAT(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 6
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 183
    invoke-static {}, Landroid/os/Debug;->getVmFeatureList()[Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "vmFeatures":[Ljava/lang/String;
    array-length v1, v0

    sget-object v2, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    array-length v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x4

    .line 189
    .local v1, "size":I
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 190
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    .line 189
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 191
    .end local v2    # "i":I
    :cond_0
    sget-object v2, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_1

    .line 192
    sget-object v3, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    .line 191
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 194
    .end local v2    # "i":I
    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 195
    .local v2, "out":Ljava/nio/ByteBuffer;
    sget-object v3, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 196
    array-length v3, v0

    sget-object v4, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    array-length v4, v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 197
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_2

    .line 198
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 199
    aget-object v4, v0, v3

    invoke-static {v2, v4}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 197
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 201
    .end local v3    # "i":I
    :cond_2
    sget-object v3, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    .restart local v3    # "i":I
    :goto_3
    if-ltz v3, :cond_3

    .line 202
    sget-object v4, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    aget-object v5, v4, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 203
    aget-object v4, v4, v3

    invoke-static {v2, v4}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 201
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 206
    .end local v3    # "i":I
    :cond_3
    new-instance v3, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v4, Landroid/ddm/DdmHandleHello;->CHUNK_FEAT:I

    invoke-direct {v3, v4, v2}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v3
.end method

.method private greylist-max-o handleHELO(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 16
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 114
    invoke-static/range {p1 .. p1}, Landroid/ddm/DdmHandleHello;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 116
    .local v0, "in":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 123
    .local v1, "serverProtoVers":I
    const-string v2, "java.vm.name"

    const-string v3, "?"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "vmName":Ljava/lang/String;
    const-string v4, "java.vm.version"

    invoke-static {v4, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "vmVersion":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " v"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, "vmIdent":Ljava/lang/String;
    invoke-static {}, Landroid/ddm/DdmHandleAppName;->getNames()Landroid/ddm/DdmHandleAppName$Names;

    move-result-object v5

    .line 128
    .local v5, "names":Landroid/ddm/DdmHandleAppName$Names;
    invoke-virtual {v5}, Landroid/ddm/DdmHandleAppName$Names;->getAppName()Ljava/lang/String;

    move-result-object v6

    .line 129
    .local v6, "appName":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/ddm/DdmHandleAppName$Names;->getPkgName()Ljava/lang/String;

    move-result-object v7

    .line 131
    .local v7, "pkgName":Ljava/lang/String;
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v8

    .line 133
    .local v8, "vmRuntime":Ldalvik/system/VMRuntime;
    invoke-virtual {v8}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "64-bit"

    goto :goto_0

    :cond_0
    const-string v9, "32-bit"

    .line 134
    .local v9, "instructionSetDescription":Ljava/lang/String;
    :goto_0
    invoke-virtual {v8}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    move-result-object v10

    .line 135
    .local v10, "vmInstructionSet":Ljava/lang/String;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    .line 136
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 138
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CheckJNI="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 139
    invoke-virtual {v8}, Ldalvik/system/VMRuntime;->isCheckJniEnabled()Z

    move-result v12

    if-eqz v12, :cond_2

    const-string/jumbo v12, "true"

    goto :goto_1

    :cond_2
    const-string v12, "false"

    :goto_1
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 140
    .local v11, "vmFlags":Ljava/lang/String;
    invoke-virtual {v8}, Ldalvik/system/VMRuntime;->isNativeDebuggable()Z

    move-result v12

    .line 142
    .local v12, "isNativeDebuggable":Z
    nop

    .line 143
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x20

    .line 144
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    .line 145
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    .line 146
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    const/4 v14, 0x1

    add-int/2addr v13, v14

    .line 148
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    mul-int/lit8 v15, v15, 0x2

    add-int/2addr v13, v15

    .line 142
    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 149
    .local v13, "out":Ljava/nio/ByteBuffer;
    sget-object v15, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v13, v15}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 150
    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 151
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 152
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 153
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 154
    invoke-static {v13, v4}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 155
    invoke-static {v13, v6}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 156
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 157
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 158
    invoke-static {v13, v9}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 160
    invoke-static {v13, v11}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 161
    int-to-byte v14, v12

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 162
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 163
    invoke-static {v13, v7}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 165
    new-instance v14, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v15, Landroid/ddm/DdmHandleHello;->CHUNK_HELO:I

    invoke-direct {v14, v15, v13}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(ILjava/nio/ByteBuffer;)V

    .line 171
    .local v14, "reply":Lorg/apache/harmony/dalvik/ddmc/Chunk;
    invoke-static {}, Landroid/os/Debug;->waitingForDebugger()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 172
    const/4 v15, 0x0

    invoke-static {v15}, Landroid/ddm/DdmHandleHello;->sendWAIT(I)V

    .line 174
    :cond_3
    return-object v14
.end method

.method public static greylist-max-o register()V
    .locals 2

    .line 56
    sget v0, Landroid/ddm/DdmHandleHello;->CHUNK_HELO:I

    sget-object v1, Landroid/ddm/DdmHandleHello;->mInstance:Landroid/ddm/DdmHandleHello;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 57
    sget v0, Landroid/ddm/DdmHandleHello;->CHUNK_FEAT:I

    sget-object v1, Landroid/ddm/DdmHandleHello;->mInstance:Landroid/ddm/DdmHandleHello;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 58
    return-void
.end method

.method public static greylist-max-o sendWAIT(I)V
    .locals 5
    .param p0, "reason"    # I

    .line 214
    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte v2, p0

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 215
    .local v1, "data":[B
    new-instance v2, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v4, Landroid/ddm/DdmHandleHello;->CHUNK_WAIT:I

    invoke-direct {v2, v4, v1, v3, v0}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    move-object v0, v2

    .line 216
    .local v0, "waitChunk":Lorg/apache/harmony/dalvik/ddmc/Chunk;
    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->sendChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)V

    .line 217
    return-void
.end method


# virtual methods
.method public blacklist test-api handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 4
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 91
    iget v0, p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    .line 93
    .local v0, "type":I
    sget v1, Landroid/ddm/DdmHandleHello;->CHUNK_HELO:I

    if-ne v0, v1, :cond_0

    .line 94
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHello;->handleHELO(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    return-object v1

    .line 95
    :cond_0
    sget v1, Landroid/ddm/DdmHandleHello;->CHUNK_FEAT:I

    if-ne v0, v1, :cond_1

    .line 96
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHello;->handleFEAT(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    return-object v1

    .line 98
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown packet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/ddm/DdmHandleHello;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist test-api onConnected()V
    .locals 0

    .line 74
    return-void
.end method

.method public blacklist test-api onDisconnected()V
    .locals 0

    .line 83
    return-void
.end method
