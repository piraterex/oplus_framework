.class public Landroid/os/ZygoteProcess;
.super Ljava/lang/Object;
.source "ZygoteProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ZygoteProcess$ZygoteState;
    }
.end annotation


# static fields
.field private static final blacklist INVALID_USAP_FLAGS:[Ljava/lang/String;

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "ZygoteProcess"

.field private static final blacklist USAP_POOL_ENABLED_DEFAULT:Ljava/lang/String; = "false"

.field private static final blacklist ZYGOTE_CONNECT_RETRY_DELAY_MS:I = 0x32

.field private static final blacklist ZYGOTE_CONNECT_TIMEOUT_MS:I = 0x4e20

.field static final greylist-max-o ZYGOTE_RETRY_MILLIS:I = 0x1f4


# instance fields
.field private blacklist mApiDenylistExemptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mHiddenApiAccessLogSampleRate:I

.field private blacklist mHiddenApiAccessStatslogSampleRate:I

.field private blacklist mIsFirstPropCheck:Z

.field private blacklist mLastPropCheckTimestamp:J

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private blacklist mUsapPoolEnabled:Z

.field private final blacklist mUsapPoolSecondarySocketAddress:Landroid/net/LocalSocketAddress;

.field private final blacklist mUsapPoolSocketAddress:Landroid/net/LocalSocketAddress;

.field private final blacklist mUsapPoolSupported:Z

.field private final blacklist mUsapPoolTertiarySocketAddress:Landroid/net/LocalSocketAddress;

.field private final blacklist mZygoteProcessExt:Landroid/os/IZygoteProcessExt;

.field private final blacklist mZygoteSecondarySocketAddress:Landroid/net/LocalSocketAddress;

.field private final blacklist mZygoteSocketAddress:Landroid/net/LocalSocketAddress;

.field private final blacklist mZygoteTertiarySocketAddress:Landroid/net/LocalSocketAddress;

.field private greylist-max-o primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

.field private greylist-max-o secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

.field private blacklist tertiaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetAbiList(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Landroid/os/ZygoteProcess;->getAbiList(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 10

    .line 610
    const-string v0, "--query-abi-list"

    const-string v1, "--get-pid"

    const-string v2, "--preload-default"

    const-string v3, "--preload-package"

    const-string v4, "--preload-app"

    const-string v5, "--start-child-zygote"

    const-string v6, "--set-api-denylist-exemptions"

    const-string v7, "--hidden-api-log-sampling-rate"

    const-string v8, "--hidden-api-statslog-sampling-rate"

    const-string v9, "--invoke-with"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/ZygoteProcess;->INVALID_USAP_FLAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 4

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    sget-object v0, Landroid/os/ZygoteProcessExtPlugin;->constructor:Lcom/oplus/reflect/RefConstructor;

    invoke-virtual {v0}, Lcom/oplus/reflect/RefConstructor;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IZygoteProcessExt;

    iput-object v0, p0, Landroid/os/ZygoteProcess;->mZygoteProcessExt:Landroid/os/IZygoteProcessExt;

    .line 296
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    .line 303
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ZygoteProcess;->mApiDenylistExemptions:Ljava/util/List;

    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/ZygoteProcess;->mUsapPoolEnabled:Z

    .line 886
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/ZygoteProcess;->mIsFirstPropCheck:Z

    .line 887
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/os/ZygoteProcess;->mLastPropCheckTimestamp:J

    .line 137
    new-instance v1, Landroid/net/LocalSocketAddress;

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    const-string/jumbo v3, "zygote"

    invoke-direct {v1, v3, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    iput-object v1, p0, Landroid/os/ZygoteProcess;->mZygoteSocketAddress:Landroid/net/LocalSocketAddress;

    .line 140
    new-instance v1, Landroid/net/LocalSocketAddress;

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    const-string/jumbo v3, "zygote_secondary"

    invoke-direct {v1, v3, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    iput-object v1, p0, Landroid/os/ZygoteProcess;->mZygoteSecondarySocketAddress:Landroid/net/LocalSocketAddress;

    .line 144
    new-instance v1, Landroid/net/LocalSocketAddress;

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    const-string/jumbo v3, "usap_pool_primary"

    invoke-direct {v1, v3, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    iput-object v1, p0, Landroid/os/ZygoteProcess;->mUsapPoolSocketAddress:Landroid/net/LocalSocketAddress;

    .line 147
    new-instance v1, Landroid/net/LocalSocketAddress;

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    const-string/jumbo v3, "usap_pool_secondary"

    invoke-direct {v1, v3, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    iput-object v1, p0, Landroid/os/ZygoteProcess;->mUsapPoolSecondarySocketAddress:Landroid/net/LocalSocketAddress;

    .line 152
    const-class v1, Lcom/android/internal/os/IZygoteConfigSocExt;

    invoke-static {v1}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/IZygoteConfigSocExt;

    invoke-interface {v1}, Lcom/android/internal/os/IZygoteConfigSocExt;->isApp32BoostEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    new-instance v1, Landroid/net/LocalSocketAddress;

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    const-string/jumbo v3, "zygote_tertiary"

    invoke-direct {v1, v3, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    iput-object v1, p0, Landroid/os/ZygoteProcess;->mZygoteTertiarySocketAddress:Landroid/net/LocalSocketAddress;

    .line 156
    new-instance v1, Landroid/net/LocalSocketAddress;

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    const-string/jumbo v3, "usap_pool_tertiary"

    invoke-direct {v1, v3, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    iput-object v1, p0, Landroid/os/ZygoteProcess;->mUsapPoolTertiarySocketAddress:Landroid/net/LocalSocketAddress;

    goto :goto_0

    .line 160
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/ZygoteProcess;->mZygoteTertiarySocketAddress:Landroid/net/LocalSocketAddress;

    .line 161
    iput-object v1, p0, Landroid/os/ZygoteProcess;->mUsapPoolTertiarySocketAddress:Landroid/net/LocalSocketAddress;

    .line 167
    :goto_0
    iput-boolean v0, p0, Landroid/os/ZygoteProcess;->mUsapPoolSupported:Z

    .line 168
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/net/LocalSocketAddress;Landroid/net/LocalSocketAddress;)V
    .locals 3
    .param p1, "primarySocketAddress"    # Landroid/net/LocalSocketAddress;
    .param p2, "secondarySocketAddress"    # Landroid/net/LocalSocketAddress;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    sget-object v0, Landroid/os/ZygoteProcessExtPlugin;->constructor:Lcom/oplus/reflect/RefConstructor;

    invoke-virtual {v0}, Lcom/oplus/reflect/RefConstructor;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IZygoteProcessExt;

    iput-object v0, p0, Landroid/os/ZygoteProcess;->mZygoteProcessExt:Landroid/os/IZygoteProcessExt;

    .line 296
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    .line 303
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ZygoteProcess;->mApiDenylistExemptions:Ljava/util/List;

    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/ZygoteProcess;->mUsapPoolEnabled:Z

    .line 886
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/ZygoteProcess;->mIsFirstPropCheck:Z

    .line 887
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/os/ZygoteProcess;->mLastPropCheckTimestamp:J

    .line 172
    iput-object p1, p0, Landroid/os/ZygoteProcess;->mZygoteSocketAddress:Landroid/net/LocalSocketAddress;

    .line 173
    iput-object p2, p0, Landroid/os/ZygoteProcess;->mZygoteSecondarySocketAddress:Landroid/net/LocalSocketAddress;

    .line 175
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/ZygoteProcess;->mUsapPoolSocketAddress:Landroid/net/LocalSocketAddress;

    .line 176
    iput-object v1, p0, Landroid/os/ZygoteProcess;->mUsapPoolSecondarySocketAddress:Landroid/net/LocalSocketAddress;

    .line 180
    iput-boolean v0, p0, Landroid/os/ZygoteProcess;->mUsapPoolSupported:Z

    .line 184
    iput-object v1, p0, Landroid/os/ZygoteProcess;->mZygoteTertiarySocketAddress:Landroid/net/LocalSocketAddress;

    .line 185
    iput-object v1, p0, Landroid/os/ZygoteProcess;->mUsapPoolTertiarySocketAddress:Landroid/net/LocalSocketAddress;

    .line 187
    return-void
.end method

.method private blacklist attemptConnectionToPrimaryZygote()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1146
    iget-object v0, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/ZygoteProcess$ZygoteState;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1147
    :cond_0
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mZygoteSocketAddress:Landroid/net/LocalSocketAddress;

    iget-object v1, p0, Landroid/os/ZygoteProcess;->mUsapPoolSocketAddress:Landroid/net/LocalSocketAddress;

    .line 1148
    invoke-static {v0, v1}, Landroid/os/ZygoteProcess$ZygoteState;->connect(Landroid/net/LocalSocketAddress;Landroid/net/LocalSocketAddress;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    .line 1150
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/ZygoteProcess;->maybeSetApiDenylistExemptions(Landroid/os/ZygoteProcess$ZygoteState;Z)Z

    .line 1151
    iget-object v0, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-direct {p0, v0}, Landroid/os/ZygoteProcess;->maybeSetHiddenApiAccessLogSampleRate(Landroid/os/ZygoteProcess$ZygoteState;)V

    .line 1153
    :cond_1
    return-void
.end method

.method private blacklist attemptConnectionToSecondaryZygote()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1160
    iget-object v0, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/ZygoteProcess$ZygoteState;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1161
    :cond_0
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mZygoteSecondarySocketAddress:Landroid/net/LocalSocketAddress;

    iget-object v1, p0, Landroid/os/ZygoteProcess;->mUsapPoolSecondarySocketAddress:Landroid/net/LocalSocketAddress;

    .line 1162
    invoke-static {v0, v1}, Landroid/os/ZygoteProcess$ZygoteState;->connect(Landroid/net/LocalSocketAddress;Landroid/net/LocalSocketAddress;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    .line 1165
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/ZygoteProcess;->maybeSetApiDenylistExemptions(Landroid/os/ZygoteProcess$ZygoteState;Z)Z

    .line 1166
    iget-object v0, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-direct {p0, v0}, Landroid/os/ZygoteProcess;->maybeSetHiddenApiAccessLogSampleRate(Landroid/os/ZygoteProcess$ZygoteState;)V

    .line 1168
    :cond_1
    return-void
.end method

.method private blacklist attemptConnectionToTertiaryZygote()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1176
    iget-object v0, p0, Landroid/os/ZygoteProcess;->tertiaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/ZygoteProcess$ZygoteState;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1177
    :cond_0
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mZygoteTertiarySocketAddress:Landroid/net/LocalSocketAddress;

    iget-object v1, p0, Landroid/os/ZygoteProcess;->mUsapPoolTertiarySocketAddress:Landroid/net/LocalSocketAddress;

    .line 1178
    invoke-static {v0, v1}, Landroid/os/ZygoteProcess$ZygoteState;->connect(Landroid/net/LocalSocketAddress;Landroid/net/LocalSocketAddress;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ZygoteProcess;->tertiaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    .line 1181
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/ZygoteProcess;->maybeSetApiDenylistExemptions(Landroid/os/ZygoteProcess$ZygoteState;Z)Z

    .line 1182
    iget-object v0, p0, Landroid/os/ZygoteProcess;->tertiaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-direct {p0, v0}, Landroid/os/ZygoteProcess;->maybeSetHiddenApiAccessLogSampleRate(Landroid/os/ZygoteProcess$ZygoteState;)V

    .line 1184
    :cond_1
    return-void
.end method

.method private blacklist attemptUsapSendArgsAndGetResult(Landroid/os/ZygoteProcess$ZygoteState;Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .locals 6
    .param p1, "zygoteState"    # Landroid/os/ZygoteProcess$ZygoteState;
    .param p2, "msgStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 547
    invoke-virtual {p1}, Landroid/os/ZygoteProcess$ZygoteState;->getUsapSessionSocket()Landroid/net/LocalSocket;

    move-result-object v0

    .line 548
    .local v0, "usapSessionSocket":Landroid/net/LocalSocket;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 550
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 552
    .local v1, "usapWriter":Ljava/io/BufferedWriter;
    new-instance v2, Ljava/io/DataInputStream;

    .line 553
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 555
    .local v2, "usapReader":Ljava/io/DataInputStream;
    invoke-virtual {v1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 556
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 558
    new-instance v3, Landroid/os/Process$ProcessStartResult;

    invoke-direct {v3}, Landroid/os/Process$ProcessStartResult;-><init>()V

    .line 559
    .local v3, "result":Landroid/os/Process$ProcessStartResult;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    iput v4, v3, Landroid/os/Process$ProcessStartResult;->pid:I

    .line 561
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    .line 563
    iget v4, v3, Landroid/os/Process$ProcessStartResult;->pid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v4, :cond_1

    .line 564
    nop

    .line 568
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    .line 564
    :cond_0
    return-object v3

    .line 566
    :cond_1
    :try_start_1
    new-instance v4, Landroid/os/ZygoteStartFailedEx;

    const-string v5, "USAP specialization failed"

    invoke-direct {v4, v5}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    .end local v0    # "usapSessionSocket":Landroid/net/LocalSocket;
    .end local p0    # "this":Landroid/os/ZygoteProcess;
    .end local p1    # "zygoteState":Landroid/os/ZygoteProcess$ZygoteState;
    .end local p2    # "msgStr":Ljava/lang/String;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    .end local v1    # "usapWriter":Ljava/io/BufferedWriter;
    .end local v2    # "usapReader":Ljava/io/DataInputStream;
    .end local v3    # "result":Landroid/os/Process$ProcessStartResult;
    .restart local v0    # "usapSessionSocket":Landroid/net/LocalSocket;
    .restart local p0    # "this":Landroid/os/ZygoteProcess;
    .restart local p1    # "zygoteState":Landroid/os/ZygoteProcess$ZygoteState;
    .restart local p2    # "msgStr":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
.end method

.method private blacklist attemptZygoteSendArgsAndGetResult(Landroid/os/ZygoteProcess$ZygoteState;Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .locals 5
    .param p1, "zygoteState"    # Landroid/os/ZygoteProcess$ZygoteState;
    .param p2, "msgStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    .line 518
    :try_start_0
    iget-object v0, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    .line 519
    .local v0, "zygoteWriter":Ljava/io/BufferedWriter;
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    .line 521
    .local v1, "zygoteInputStream":Ljava/io/DataInputStream;
    invoke-virtual {v0, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 527
    new-instance v2, Landroid/os/Process$ProcessStartResult;

    invoke-direct {v2}, Landroid/os/Process$ProcessStartResult;-><init>()V

    .line 528
    .local v2, "result":Landroid/os/Process$ProcessStartResult;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, v2, Landroid/os/Process$ProcessStartResult;->pid:I

    .line 529
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    iput-boolean v3, v2, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    .line 531
    iget v3, v2, Landroid/os/Process$ProcessStartResult;->pid:I

    if-ltz v3, :cond_0

    .line 535
    return-object v2

    .line 532
    :cond_0
    new-instance v3, Landroid/os/ZygoteStartFailedEx;

    const-string v4, "fork() failed"

    invoke-direct {v3, v4}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/ZygoteProcess;
    .end local p1    # "zygoteState":Landroid/os/ZygoteProcess$ZygoteState;
    .end local p2    # "msgStr":Ljava/lang/String;
    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    .end local v0    # "zygoteWriter":Ljava/io/BufferedWriter;
    .end local v1    # "zygoteInputStream":Ljava/io/DataInputStream;
    .end local v2    # "result":Landroid/os/Process$ProcessStartResult;
    .restart local p0    # "this":Landroid/os/ZygoteProcess;
    .restart local p1    # "zygoteState":Landroid/os/ZygoteProcess$ZygoteState;
    .restart local p2    # "msgStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 537
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {p1}, Landroid/os/ZygoteProcess$ZygoteState;->close()V

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IO Exception while communicating with Zygote - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 539
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 538
    const-string v2, "ZygoteProcess"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    new-instance v1, Landroid/os/ZygoteStartFailedEx;

    invoke-direct {v1, v0}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist bootCompleted(Ljava/lang/String;)V
    .locals 4
    .param p1, "abi"    # Ljava/lang/String;

    .line 990
    :try_start_0
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    :try_start_1
    invoke-direct {p0, p1}, Landroid/os/ZygoteProcess;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v1

    .line 992
    .local v1, "state":Landroid/os/ZygoteProcess$ZygoteState;
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    const-string v3, "1\n--boot-completed\n"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 993
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 994
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    .line 995
    nop

    .end local v1    # "state":Landroid/os/ZygoteProcess$ZygoteState;
    monitor-exit v0

    .line 998
    nop

    .line 999
    return-void

    .line 995
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Landroid/os/ZygoteProcess;
    .end local p1    # "abi":Ljava/lang/String;
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 996
    .restart local p0    # "this":Landroid/os/ZygoteProcess;
    .restart local p1    # "abi":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 997
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to inform zygote of boot_completed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist bootCompletedForTertiaryZygote()V
    .locals 3

    .line 1004
    :try_start_0
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1005
    :try_start_1
    invoke-direct {p0}, Landroid/os/ZygoteProcess;->attemptConnectionToTertiaryZygote()V

    .line 1006
    iget-object v1, p0, Landroid/os/ZygoteProcess;->tertiaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    iget-object v1, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    const-string v2, "1\n--boot-completed\n"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1007
    iget-object v1, p0, Landroid/os/ZygoteProcess;->tertiaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    iget-object v1, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 1008
    iget-object v1, p0, Landroid/os/ZygoteProcess;->tertiaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    iget-object v1, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    .line 1009
    monitor-exit v0

    .line 1013
    goto :goto_0

    .line 1009
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Landroid/os/ZygoteProcess;
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1010
    .restart local p0    # "this":Landroid/os/ZygoteProcess;
    :catch_0
    move-exception v0

    .line 1012
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "ZygoteProcess"

    const-string v2, "Failed to inform zygote_tertiary of boot_completed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static blacklist commandSupportedByUsap(Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 630
    .local p0, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 631
    .local v1, "flag":Ljava/lang/String;
    sget-object v2, Landroid/os/ZygoteProcess;->INVALID_USAP_FLAGS:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 632
    .local v6, "badFlag":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 633
    return v4

    .line 631
    .end local v6    # "badFlag":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 636
    :cond_1
    const-string v2, "--nice-name="

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 638
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/Zygote;->getWrapProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 639
    return v4

    .line 642
    .end local v1    # "flag":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 644
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist fetchUsapPoolEnabledProp()Z
    .locals 4

    .line 862
    iget-boolean v0, p0, Landroid/os/ZygoteProcess;->mUsapPoolEnabled:Z

    .line 866
    .local v0, "origVal":Z
    const-string/jumbo v1, "sys.usap.enable"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Landroid/os/ZygoteProcess;->mUsapPoolEnabled:Z

    .line 877
    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    move v1, v2

    .line 879
    .local v1, "valueChanged":Z
    if-eqz v1, :cond_1

    .line 880
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "usapPoolEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/os/ZygoteProcess;->mUsapPoolEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ZygoteProcess"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_1
    return v1
.end method

.method private blacklist fetchUsapPoolEnabledPropWithMinInterval()Z
    .locals 8

    .line 892
    iget-boolean v0, p0, Landroid/os/ZygoteProcess;->mUsapPoolSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 894
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 896
    .local v2, "currentTimestamp":J
    iget-boolean v0, p0, Landroid/os/ZygoteProcess;->mIsFirstPropCheck:Z

    if-nez v0, :cond_2

    iget-wide v4, p0, Landroid/os/ZygoteProcess;->mLastPropCheckTimestamp:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0xea60

    cmp-long v0, v4, v6

    if-ltz v0, :cond_1

    goto :goto_0

    .line 903
    :cond_1
    return v1

    .line 898
    :cond_2
    :goto_0
    iput-boolean v1, p0, Landroid/os/ZygoteProcess;->mIsFirstPropCheck:Z

    .line 899
    iput-wide v2, p0, Landroid/os/ZygoteProcess;->mLastPropCheckTimestamp:J

    .line 900
    invoke-direct {p0}, Landroid/os/ZygoteProcess;->fetchUsapPoolEnabledProp()Z

    move-result v0

    return v0
.end method

.method private static blacklist getAbiList(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/util/List;
    .locals 4
    .param p0, "writer"    # Ljava/io/BufferedWriter;
    .param p1, "inputStream"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedWriter;",
            "Ljava/io/DataInputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 452
    const-string v0, "--query-abi-list"

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 454
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flush()V

    .line 457
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 458
    .local v0, "numBytes":I
    new-array v1, v0, [B

    .line 459
    .local v1, "bytes":[B
    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 461
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 463
    .local v2, "rawList":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method private blacklist informZygotesOfUsapPoolStatus()V
    .locals 6

    .line 1388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1\n--usap-pool-enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/os/ZygoteProcess;->mUsapPoolEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1390
    .local v0, "command":Ljava/lang/String;
    iget-object v1, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1392
    :try_start_0
    invoke-direct {p0}, Landroid/os/ZygoteProcess;->attemptConnectionToPrimaryZygote()V

    .line 1394
    iget-object v2, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    iget-object v2, v2, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1395
    iget-object v2, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    iget-object v2, v2, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1401
    nop

    .line 1403
    :try_start_1
    iget-object v2, p0, Landroid/os/ZygoteProcess;->mZygoteSecondarySocketAddress:Landroid/net/LocalSocketAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    .line 1405
    :try_start_2
    invoke-direct {p0}, Landroid/os/ZygoteProcess;->attemptConnectionToSecondaryZygote()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1408
    :try_start_3
    iget-object v2, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    iget-object v2, v2, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1409
    iget-object v2, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    iget-object v2, v2, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 1412
    iget-object v2, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    iget-object v2, v2, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1417
    nop

    .line 1420
    goto :goto_0

    .line 1413
    :catch_0
    move-exception v2

    .line 1414
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_4
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "USAP pool state change cause an irrecoverable error"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "command":Ljava/lang/String;
    .end local p0    # "this":Landroid/os/ZygoteProcess;
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1418
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v0    # "command":Ljava/lang/String;
    .restart local p0    # "this":Landroid/os/ZygoteProcess;
    :catch_1
    move-exception v2

    .line 1427
    :cond_0
    :goto_0
    :try_start_5
    iget-object v2, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    iget-object v2, v2, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1432
    nop

    .line 1433
    :try_start_6
    monitor-exit v1

    .line 1434
    return-void

    .line 1428
    :catch_2
    move-exception v2

    .line 1429
    .restart local v2    # "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "USAP pool state change cause an irrecoverable error"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "command":Ljava/lang/String;
    .end local p0    # "this":Landroid/os/ZygoteProcess;
    throw v3

    .line 1433
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v0    # "command":Ljava/lang/String;
    .restart local p0    # "this":Landroid/os/ZygoteProcess;
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 1396
    :catch_3
    move-exception v2

    .line 1397
    .restart local v2    # "ioe":Ljava/io/IOException;
    iget-boolean v3, p0, Landroid/os/ZygoteProcess;->mUsapPoolEnabled:Z

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Landroid/os/ZygoteProcess;->mUsapPoolEnabled:Z

    .line 1398
    const-string v3, "ZygoteProcess"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to inform zygotes of USAP pool status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1399
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1398
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    monitor-exit v1

    return-void

    .line 1433
    .end local v2    # "ioe":Ljava/io/IOException;
    :goto_2
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v2
.end method

.method private blacklist maybeSetApiDenylistExemptions(Landroid/os/ZygoteProcess$ZygoteState;Z)Z
    .locals 6
    .param p1, "state"    # Landroid/os/ZygoteProcess$ZygoteState;
    .param p2, "sendIfEmpty"    # Z

    .line 1069
    const/4 v0, 0x0

    const-string v1, "ZygoteProcess"

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/os/ZygoteProcess$ZygoteState;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 1072
    :cond_0
    const/4 v2, 0x1

    if-nez p2, :cond_1

    iget-object v3, p0, Landroid/os/ZygoteProcess;->mApiDenylistExemptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1073
    return v2

    .line 1077
    :cond_1
    :try_start_0
    iget-object v3, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    iget-object v4, p0, Landroid/os/ZygoteProcess;->mApiDenylistExemptions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1078
    iget-object v3, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 1079
    iget-object v3, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    const-string v4, "--set-api-denylist-exemptions"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1080
    iget-object v3, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 1081
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Landroid/os/ZygoteProcess;->mApiDenylistExemptions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1082
    iget-object v4, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    iget-object v5, p0, Landroid/os/ZygoteProcess;->mApiDenylistExemptions:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1083
    iget-object v4, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 1081
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1085
    .end local v3    # "i":I
    :cond_2
    iget-object v3, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 1086
    iget-object v3, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 1087
    .local v3, "status":I
    if-eqz v3, :cond_3

    .line 1088
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set API denylist exemptions; status "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1090
    :cond_3
    return v2

    .line 1091
    .end local v3    # "status":I
    :catch_0
    move-exception v2

    .line 1092
    .local v2, "ioe":Ljava/io/IOException;
    const-string v3, "Failed to set API denylist exemptions"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1093
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/os/ZygoteProcess;->mApiDenylistExemptions:Ljava/util/List;

    .line 1094
    return v0

    .line 1070
    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_4
    :goto_1
    const-string v2, "Can\'t set API denylist exemptions: no zygote connection"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    return v0
.end method

.method private greylist-max-o maybeSetHiddenApiAccessLogSampleRate(Landroid/os/ZygoteProcess$ZygoteState;)V
    .locals 4
    .param p1, "state"    # Landroid/os/ZygoteProcess$ZygoteState;

    .line 1099
    const-string v0, "ZygoteProcess"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/ZygoteProcess$ZygoteState;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Landroid/os/ZygoteProcess;->mHiddenApiAccessLogSampleRate:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 1104
    :cond_0
    :try_start_0
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1105
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 1106
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--hidden-api-log-sampling-rate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/os/ZygoteProcess;->mHiddenApiAccessLogSampleRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1108
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 1109
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 1110
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 1111
    .local v1, "status":I
    if-eqz v1, :cond_1

    .line 1112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set hidden API log sampling rate; status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1116
    .end local v1    # "status":I
    :cond_1
    goto :goto_0

    .line 1114
    :catch_0
    move-exception v1

    .line 1115
    .local v1, "ioe":Ljava/io/IOException;
    const-string v2, "Failed to set hidden API log sampling rate"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1117
    .end local v1    # "ioe":Ljava/io/IOException;
    :goto_0
    return-void

    .line 1100
    :cond_2
    :goto_1
    return-void
.end method

.method private blacklist maybeSetHiddenApiAccessStatslogSampleRate(Landroid/os/ZygoteProcess$ZygoteState;)V
    .locals 4
    .param p1, "state"    # Landroid/os/ZygoteProcess$ZygoteState;

    .line 1120
    const-string v0, "ZygoteProcess"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/ZygoteProcess$ZygoteState;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Landroid/os/ZygoteProcess;->mHiddenApiAccessStatslogSampleRate:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 1125
    :cond_0
    :try_start_0
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1126
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 1127
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--hidden-api-statslog-sampling-rate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/os/ZygoteProcess;->mHiddenApiAccessStatslogSampleRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1129
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 1130
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 1131
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 1132
    .local v1, "status":I
    if-eqz v1, :cond_1

    .line 1133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set hidden API statslog sampling rate; status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1138
    .end local v1    # "status":I
    :cond_1
    goto :goto_0

    .line 1136
    :catch_0
    move-exception v1

    .line 1137
    .local v1, "ioe":Ljava/io/IOException;
    const-string v2, "Failed to set hidden API statslog sampling rate"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1139
    .end local v1    # "ioe":Ljava/io/IOException;
    :goto_0
    return-void

    .line 1121
    :cond_2
    :goto_1
    return-void
.end method

.method private greylist-max-o openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;
    .locals 3
    .param p1, "abi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    .line 1196
    :try_start_0
    invoke-direct {p0}, Landroid/os/ZygoteProcess;->attemptConnectionToPrimaryZygote()V

    .line 1198
    iget-object v0, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-virtual {v0, p1}, Landroid/os/ZygoteProcess$ZygoteState;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1199
    iget-object v0, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    return-object v0

    .line 1202
    :cond_0
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mZygoteSecondarySocketAddress:Landroid/net/LocalSocketAddress;

    if-eqz v0, :cond_1

    .line 1204
    invoke-direct {p0}, Landroid/os/ZygoteProcess;->attemptConnectionToSecondaryZygote()V

    .line 1206
    iget-object v0, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-virtual {v0, p1}, Landroid/os/ZygoteProcess$ZygoteState;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1207
    iget-object v0, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1212
    :cond_1
    nop

    .line 1214
    new-instance v0, Landroid/os/ZygoteStartFailedEx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported zygote ABI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1210
    :catch_0
    move-exception v0

    .line 1211
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Landroid/os/ZygoteStartFailedEx;

    const-string v2, "Error connecting to zygote"

    invoke-direct {v1, v2, v0}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist openZygoteSocketIfNeeded(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;
    .locals 3
    .param p1, "abi"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    .line 1233
    :try_start_0
    invoke-direct {p0}, Landroid/os/ZygoteProcess;->attemptConnectionToPrimaryZygote()V

    .line 1235
    iget-object v0, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-virtual {v0, p1}, Landroid/os/ZygoteProcess$ZygoteState;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1236
    iget-object v0, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 1240
    :cond_0
    :try_start_1
    const-class v0, Lcom/android/internal/os/IZygoteConfigSocExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/IZygoteConfigSocExt;

    invoke-interface {v0, p2}, Lcom/android/internal/os/IZygoteConfigSocExt;->checkPolicy(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1241
    invoke-direct {p0}, Landroid/os/ZygoteProcess;->attemptConnectionToTertiaryZygote()V

    .line 1243
    iget-object v0, p0, Landroid/os/ZygoteProcess;->tertiaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-virtual {v0, p1}, Landroid/os/ZygoteProcess$ZygoteState;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1244
    iget-object v0, p0, Landroid/os/ZygoteProcess;->tertiaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 1250
    :cond_1
    goto :goto_0

    .line 1247
    :catch_0
    move-exception v0

    .line 1249
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_2
    const-string v1, "ZygoteProcess"

    const-string v2, "Error connecting to zygote_tertiary"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_0
    invoke-direct {p0}, Landroid/os/ZygoteProcess;->attemptConnectionToSecondaryZygote()V

    .line 1254
    iget-object v0, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-virtual {v0, p1}, Landroid/os/ZygoteProcess$ZygoteState;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1255
    iget-object v0, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    .line 1259
    :cond_2
    nop

    .line 1261
    new-instance v0, Landroid/os/ZygoteStartFailedEx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported zygote ABI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1257
    :catch_1
    move-exception v0

    .line 1258
    .restart local v0    # "ioe":Ljava/io/IOException;
    new-instance v1, Landroid/os/ZygoteStartFailedEx;

    const-string v2, "Error connecting to zygote"

    invoke-direct {v1, v2, v0}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist policySpecifiesUsapPoolLaunch(I)Z
    .locals 2
    .param p0, "zygotePolicyFlags"    # I

    .line 601
    and-int/lit8 v0, p0, 0x5

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist shouldAttemptUsapLaunch(ILjava/util/ArrayList;)Z
    .locals 1
    .param p1, "zygotePolicyFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 581
    .local p2, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-boolean v0, p0, Landroid/os/ZygoteProcess;->mUsapPoolSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/os/ZygoteProcess;->mUsapPoolEnabled:Z

    if-eqz v0, :cond_0

    .line 583
    invoke-static {p1}, Landroid/os/ZygoteProcess;->policySpecifiesUsapPoolLaunch(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    invoke-static {p2}, Landroid/os/ZygoteProcess;->commandSupportedByUsap(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 581
    :goto_0
    return v0
.end method

.method private blacklist startViaZygote(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .locals 18
    .param p1, "processClass"    # Ljava/lang/String;
    .param p2, "niceName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "gid"    # I
    .param p5, "gids"    # [I
    .param p6, "runtimeFlags"    # I
    .param p7, "mountExternal"    # I
    .param p8, "targetSdkVersion"    # I
    .param p9, "seInfo"    # Ljava/lang/String;
    .param p10, "abi"    # Ljava/lang/String;
    .param p11, "instructionSet"    # Ljava/lang/String;
    .param p12, "appDataDir"    # Ljava/lang/String;
    .param p13, "invokeWith"    # Ljava/lang/String;
    .param p14, "startChildZygote"    # Z
    .param p15, "packageName"    # Ljava/lang/String;
    .param p16, "zygotePolicyFlags"    # I
    .param p17, "isTopApp"    # Z
    .param p18, "disabledCompatChanges"    # [J
    .param p21, "bindMountAppsData"    # Z
    .param p22, "bindMountAppStorageDirs"    # Z
    .param p23, "extraArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II[IIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "IZ[J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;ZZ[",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/Process$ProcessStartResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    .line 702
    .local p19, "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .local p20, "allowlistedDataInfoList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    move-object/from16 v11, p15

    move/from16 v12, p16

    move-object/from16 v13, p18

    move-object/from16 v14, p23

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 706
    .local v15, "argsForZygote":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "--runtime-args"

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--setuid="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v7, p3

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--setgid="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v7, p4

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--runtime-flags="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    const/4 v0, 0x1

    if-ne v5, v0, :cond_0

    .line 711
    const-string v0, "--mount-external-default"

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 712
    :cond_0
    const/4 v0, 0x2

    if-ne v5, v0, :cond_1

    .line 713
    const-string v0, "--mount-external-installer"

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 714
    :cond_1
    const/4 v0, 0x3

    if-ne v5, v0, :cond_2

    .line 715
    const-string v0, "--mount-external-pass-through"

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 716
    :cond_2
    const/4 v0, 0x4

    if-ne v5, v0, :cond_3

    .line 717
    const-string v0, "--mount-external-android-writable"

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 720
    :cond_3
    const/4 v0, 0x5

    if-ne v5, v0, :cond_4

    .line 721
    const-string v0, "--mount-external-oplus-android-writable"

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--target-sdk-version="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v7, p8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    if-eqz v3, :cond_7

    array-length v0, v3

    if-lez v0, :cond_7

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 730
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v5, "--setgroups="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    array-length v5, v3

    .line 733
    .local v5, "sz":I
    const/16 v17, 0x0

    move/from16 v7, v17

    .local v7, "i":I
    :goto_1
    if-ge v7, v5, :cond_6

    .line 734
    if-eqz v7, :cond_5

    .line 735
    move/from16 v17, v5

    const/16 v5, 0x2c

    .end local v5    # "sz":I
    .local v17, "sz":I
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 734
    .end local v17    # "sz":I
    .restart local v5    # "sz":I
    :cond_5
    move/from16 v17, v5

    .line 737
    .end local v5    # "sz":I
    .restart local v17    # "sz":I
    :goto_2
    aget v5, v3, v7

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 733
    add-int/lit8 v7, v7, 0x1

    move/from16 v5, v17

    goto :goto_1

    .end local v17    # "sz":I
    .restart local v5    # "sz":I
    :cond_6
    move/from16 v17, v5

    .line 740
    .end local v5    # "sz":I
    .end local v7    # "i":I
    .restart local v17    # "sz":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v17    # "sz":I
    :cond_7
    if-eqz v2, :cond_8

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--nice-name="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    :cond_8
    if-eqz v6, :cond_9

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--seinfo="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    :cond_9
    if-eqz v8, :cond_a

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--instruction-set="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    :cond_a
    if-eqz v9, :cond_b

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--app-data-dir="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    :cond_b
    if-eqz v10, :cond_c

    .line 760
    const-string v0, "--invoke-with"

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    :cond_c
    if-eqz p14, :cond_d

    .line 765
    const-string v0, "--start-child-zygote"

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    :cond_d
    if-eqz v11, :cond_e

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--package-name="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    :cond_e
    if-eqz p17, :cond_f

    .line 773
    const-string v0, "--is-top-app"

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    :cond_f
    if-eqz p19, :cond_12

    invoke-interface/range {p19 .. p19}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 777
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    const-string v5, "--pkg-data-info-map"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    const/4 v5, 0x0

    .line 780
    .local v5, "started":Z
    invoke-interface/range {p19 .. p19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 781
    .local v17, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    if-eqz v5, :cond_10

    .line 782
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 781
    :cond_10
    const/16 v2, 0x2c

    .line 784
    :goto_4
    const/4 v5, 0x1

    .line 785
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 787
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 789
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 790
    .end local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    move-object/from16 v2, p2

    goto :goto_3

    .line 791
    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "started":Z
    :cond_12
    if-eqz p20, :cond_15

    invoke-interface/range {p20 .. p20}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 795
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    const-string v2, "--allowlisted-data-info-map"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    const/4 v2, 0x0

    .line 798
    .local v2, "started":Z
    invoke-interface/range {p20 .. p20}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 799
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    if-eqz v2, :cond_13

    .line 800
    move/from16 v17, v2

    const/16 v2, 0x2c

    .end local v2    # "started":Z
    .local v17, "started":Z
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 799
    .end local v17    # "started":Z
    .restart local v2    # "started":Z
    :cond_13
    move/from16 v17, v2

    const/16 v2, 0x2c

    .line 802
    .end local v2    # "started":Z
    .restart local v17    # "started":Z
    :goto_6
    const/16 v17, 0x1

    .line 803
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 805
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 807
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 808
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    move/from16 v2, v17

    goto :goto_5

    .line 809
    .end local v17    # "started":Z
    .restart local v2    # "started":Z
    :cond_14
    move/from16 v17, v2

    .end local v2    # "started":Z
    .restart local v17    # "started":Z
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v17    # "started":Z
    :cond_15
    if-eqz p22, :cond_16

    .line 813
    const-string v0, "--bind-mount-storage-dirs"

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    :cond_16
    if-eqz p21, :cond_17

    .line 817
    const-string v0, "--bind-mount-data-dirs"

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 820
    :cond_17
    if-eqz v13, :cond_1a

    array-length v0, v13

    if-lez v0, :cond_1a

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 822
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    const-string v2, "--disabled-compat-changes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    array-length v2, v13

    .line 825
    .local v2, "sz":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7
    if-ge v5, v2, :cond_19

    .line 826
    if-eqz v5, :cond_18

    .line 827
    const/16 v7, 0x2c

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 826
    :cond_18
    const/16 v7, 0x2c

    .line 829
    :goto_8
    aget-wide v7, v13, v5

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 825
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v8, p11

    goto :goto_7

    .line 832
    .end local v5    # "i":I
    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "sz":I
    :cond_1a
    iget-object v0, v1, Landroid/os/ZygoteProcess;->mZygoteProcessExt:Landroid/os/IZygoteProcessExt;

    invoke-interface {v0, v11, v15}, Landroid/os/IZygoteProcessExt;->addArgsInStartViaZygote(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 840
    move-object/from16 v2, p1

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    if-eqz v14, :cond_1b

    .line 843
    invoke-static {v15, v14}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 846
    :cond_1b
    iget-object v5, v1, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 848
    :try_start_0
    const-class v0, Lcom/android/internal/os/IZygoteConfigSocExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/IZygoteConfigSocExt;

    invoke-interface {v0, v12, v4}, Lcom/android/internal/os/IZygoteConfigSocExt;->shouldAttemptApp32Boost(II)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1c

    .line 849
    move-object/from16 v7, p10

    :try_start_1
    invoke-direct {v1, v7, v11}, Landroid/os/ZygoteProcess;->openZygoteSocketIfNeeded(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v0

    .line 850
    .local v0, "state":Landroid/os/ZygoteProcess$ZygoteState;
    invoke-direct {v1, v0, v12, v15}, Landroid/os/ZygoteProcess;->zygoteSendArgsAndGetResult(Landroid/os/ZygoteProcess$ZygoteState;ILjava/util/ArrayList;)Landroid/os/Process$ProcessStartResult;

    move-result-object v8

    monitor-exit v5

    return-object v8

    .line 855
    .end local v0    # "state":Landroid/os/ZygoteProcess$ZygoteState;
    :cond_1c
    move-object/from16 v7, p10

    invoke-direct {v1, v7}, Landroid/os/ZygoteProcess;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v0

    invoke-direct {v1, v0, v12, v15}, Landroid/os/ZygoteProcess;->zygoteSendArgsAndGetResult(Landroid/os/ZygoteProcess$ZygoteState;ILjava/util/ArrayList;)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    monitor-exit v5

    return-object v0

    .line 858
    :catchall_0
    move-exception v0

    move-object/from16 v7, p10

    :goto_9
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_9
.end method

.method public static greylist-max-o waitForConnectionToZygote(Landroid/net/LocalSocketAddress;)V
    .locals 6
    .param p0, "zygoteSocketAddress"    # Landroid/net/LocalSocketAddress;

    .line 1363
    const/16 v0, 0x190

    .line 1364
    .local v0, "numRetries":I
    move v1, v0

    .local v1, "n":I
    :goto_0
    const-string v2, "ZygoteProcess"

    if-ltz v1, :cond_0

    .line 1366
    const/4 v3, 0x0

    .line 1367
    :try_start_0
    invoke-static {p0, v3}, Landroid/os/ZygoteProcess$ZygoteState;->connect(Landroid/net/LocalSocketAddress;Landroid/net/LocalSocketAddress;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v3

    .line 1368
    .local v3, "zs":Landroid/os/ZygoteProcess$ZygoteState;
    invoke-virtual {v3}, Landroid/os/ZygoteProcess$ZygoteState;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1369
    return-void

    .line 1370
    .end local v3    # "zs":Landroid/os/ZygoteProcess$ZygoteState;
    :catch_0
    move-exception v3

    .line 1371
    .local v3, "ioe":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got error connecting to zygote, retrying. msg= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1372
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1371
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    .end local v3    # "ioe":Ljava/io/IOException;
    const-wide/16 v2, 0x32

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1377
    :goto_1
    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1

    .line 1364
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1379
    .end local v1    # "n":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to connect to Zygote through socket "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1380
    invoke-virtual {p0}, Landroid/net/LocalSocketAddress;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1379
    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    return-void
.end method

.method public static greylist-max-o waitForConnectionToZygote(Ljava/lang/String;)V
    .locals 2
    .param p0, "zygoteSocketName"    # Ljava/lang/String;

    .line 1353
    new-instance v0, Landroid/net/LocalSocketAddress;

    sget-object v1, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, p0, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 1355
    .local v0, "zygoteSocketAddress":Landroid/net/LocalSocketAddress;
    invoke-static {v0}, Landroid/os/ZygoteProcess;->waitForConnectionToZygote(Landroid/net/LocalSocketAddress;)V

    .line 1356
    return-void
.end method

.method private blacklist zygoteSendArgsAndGetResult(Landroid/os/ZygoteProcess$ZygoteState;ILjava/util/ArrayList;)Landroid/os/Process$ProcessStartResult;
    .locals 4
    .param p1, "zygoteState"    # Landroid/os/ZygoteProcess$ZygoteState;
    .param p2, "zygotePolicyFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ZygoteProcess$ZygoteState;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Process$ProcessStartResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    .line 479
    .local p3, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 482
    .local v1, "arg":Ljava/lang/String;
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_1

    .line 484
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_0

    .line 487
    .end local v1    # "arg":Ljava/lang/String;
    goto :goto_0

    .line 485
    .restart local v1    # "arg":Ljava/lang/String;
    :cond_0
    new-instance v0, Landroid/os/ZygoteStartFailedEx;

    const-string v2, "Embedded carriage returns not allowed"

    invoke-direct {v0, v2}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v0

    .line 483
    :cond_1
    new-instance v0, Landroid/os/ZygoteStartFailedEx;

    const-string v2, "Embedded newlines not allowed"

    invoke-direct {v0, v2}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    .end local v1    # "arg":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, p3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, "msgStr":Ljava/lang/String;
    invoke-direct {p0, p2, p3}, Landroid/os/ZygoteProcess;->shouldAttemptUsapLaunch(ILjava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 503
    :try_start_0
    invoke-direct {p0, p1, v0}, Landroid/os/ZygoteProcess;->attemptUsapSendArgsAndGetResult(Landroid/os/ZygoteProcess$ZygoteState;Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 504
    :catch_0
    move-exception v1

    .line 507
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IO Exception while communicating with USAP pool - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 508
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 507
    const-string v3, "ZygoteProcess"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_3
    invoke-direct {p0, p1, v0}, Landroid/os/ZygoteProcess;->attemptZygoteSendArgsAndGetResult(Landroid/os/ZygoteProcess$ZygoteState;Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist bootCompleted()V
    .locals 2

    .line 974
    const-class v0, Lcom/android/internal/os/IZygoteConfigSocExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/IZygoteConfigSocExt;

    invoke-interface {v0}, Lcom/android/internal/os/IZygoteConfigSocExt;->isApp32BoostEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    invoke-direct {p0}, Landroid/os/ZygoteProcess;->bootCompletedForTertiaryZygote()V

    .line 980
    :cond_0
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 981
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Landroid/os/ZygoteProcess;->bootCompleted(Ljava/lang/String;)V

    .line 983
    :cond_1
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 984
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Landroid/os/ZygoteProcess;->bootCompleted(Ljava/lang/String;)V

    .line 986
    :cond_2
    return-void
.end method

.method public greylist-max-o close()V
    .locals 1

    .line 910
    iget-object v0, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    if-eqz v0, :cond_0

    .line 911
    invoke-virtual {v0}, Landroid/os/ZygoteProcess$ZygoteState;->close()V

    .line 913
    :cond_0
    iget-object v0, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    if-eqz v0, :cond_1

    .line 914
    invoke-virtual {v0}, Landroid/os/ZygoteProcess$ZygoteState;->close()V

    .line 918
    :cond_1
    iget-object v0, p0, Landroid/os/ZygoteProcess;->tertiaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    if-eqz v0, :cond_2

    .line 919
    invoke-virtual {v0}, Landroid/os/ZygoteProcess$ZygoteState;->close()V

    .line 922
    :cond_2
    return-void
.end method

.method public greylist-max-o establishZygoteConnectionForAbi(Ljava/lang/String;)V
    .locals 4
    .param p1, "abi"    # Ljava/lang/String;

    .line 931
    :try_start_0
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    :try_start_1
    invoke-direct {p0, p1}, Landroid/os/ZygoteProcess;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;

    .line 933
    monitor-exit v0

    .line 936
    nop

    .line 937
    return-void

    .line 933
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Landroid/os/ZygoteProcess;
    .end local p1    # "abi":Ljava/lang/String;
    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_2 .. :try_end_2} :catch_0

    .line 934
    .restart local p0    # "this":Landroid/os/ZygoteProcess;
    .restart local p1    # "abi":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 935
    .local v0, "ex":Landroid/os/ZygoteStartFailedEx;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to connect to zygote for abi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist-max-o getPrimarySocketAddress()Landroid/net/LocalSocketAddress;
    .locals 1

    .line 190
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mZygoteSocketAddress:Landroid/net/LocalSocketAddress;

    return-object v0
.end method

.method public blacklist getZygotePid(Ljava/lang/String;)I
    .locals 6
    .param p1, "abi"    # Ljava/lang/String;

    .line 944
    :try_start_0
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    :try_start_1
    invoke-direct {p0, p1}, Landroid/os/ZygoteProcess;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v1

    .line 948
    .local v1, "state":Landroid/os/ZygoteProcess$ZygoteState;
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 950
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 952
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    const-string v3, "--get-pid"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 953
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 954
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 957
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 958
    .local v2, "numBytes":I
    new-array v3, v2, [B

    .line 959
    .local v3, "bytes":[B
    iget-object v4, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v4, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 961
    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    monitor-exit v0

    return v4

    .line 962
    .end local v1    # "state":Landroid/os/ZygoteProcess$ZygoteState;
    .end local v2    # "numBytes":I
    .end local v3    # "bytes":[B
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Landroid/os/ZygoteProcess;
    .end local p1    # "abi":Ljava/lang/String;
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 963
    .restart local p0    # "this":Landroid/os/ZygoteProcess;
    .restart local p1    # "abi":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 964
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failure retrieving pid"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist preloadApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z
    .locals 6
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "abi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1272
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1273
    :try_start_0
    invoke-direct {p0, p2}, Landroid/os/ZygoteProcess;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v1

    .line 1274
    .local v1, "state":Landroid/os/ZygoteProcess$ZygoteState;
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1275
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 1277
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    const-string v3, "--preload-app"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1278
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 1282
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1283
    .local v2, "parcel":Landroid/os/Parcel;
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1284
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v4

    .line 1285
    .local v4, "encodedParcelData":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1286
    iget-object v5, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v5, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1287
    iget-object v5, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    .line 1289
    iget-object v5, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V

    .line 1291
    iget-object v5, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    if-nez v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    monitor-exit v0

    return v3

    .line 1292
    .end local v1    # "state":Landroid/os/ZygoteProcess$ZygoteState;
    .end local v2    # "parcel":Landroid/os/Parcel;
    .end local v4    # "encodedParcelData":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o preloadDefault(Ljava/lang/String;)Z
    .locals 4
    .param p1, "abi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1335
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1336
    :try_start_0
    invoke-direct {p0, p1}, Landroid/os/ZygoteProcess;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v1

    .line 1338
    .local v1, "state":Landroid/os/ZygoteProcess$ZygoteState;
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1339
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 1340
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    const-string v3, "--preload-default"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1341
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 1342
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 1344
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 1345
    .end local v1    # "state":Landroid/os/ZygoteProcess$ZygoteState;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o preloadPackageForAbi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "packagePath"    # Ljava/lang/String;
    .param p2, "libsPath"    # Ljava/lang/String;
    .param p3, "libFileName"    # Ljava/lang/String;
    .param p4, "cacheKey"    # Ljava/lang/String;
    .param p5, "abi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1302
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1303
    :try_start_0
    invoke-direct {p0, p5}, Landroid/os/ZygoteProcess;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v1

    .line 1304
    .local v1, "state":Landroid/os/ZygoteProcess$ZygoteState;
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    const-string v3, "5"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1305
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 1307
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    const-string v3, "--preload-package"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1308
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 1310
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1311
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 1313
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1314
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 1316
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1317
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 1319
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2, p4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1320
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 1322
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 1324
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 1325
    .end local v1    # "state":Landroid/os/ZygoteProcess$ZygoteState;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setApiDenylistExemptions(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1027
    .local p1, "exemptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1028
    :try_start_0
    iput-object p1, p0, Landroid/os/ZygoteProcess;->mApiDenylistExemptions:Ljava/util/List;

    .line 1029
    iget-object v1, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/os/ZygoteProcess;->maybeSetApiDenylistExemptions(Landroid/os/ZygoteProcess$ZygoteState;Z)Z

    move-result v1

    .line 1030
    .local v1, "ok":Z
    if-eqz v1, :cond_0

    .line 1031
    iget-object v3, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-direct {p0, v3, v2}, Landroid/os/ZygoteProcess;->maybeSetApiDenylistExemptions(Landroid/os/ZygoteProcess$ZygoteState;Z)Z

    move-result v2

    move v1, v2

    .line 1033
    :cond_0
    monitor-exit v0

    return v1

    .line 1034
    .end local v1    # "ok":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o setHiddenApiAccessLogSampleRate(I)V
    .locals 2
    .param p1, "rate"    # I

    .line 1045
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1046
    :try_start_0
    iput p1, p0, Landroid/os/ZygoteProcess;->mHiddenApiAccessLogSampleRate:I

    .line 1047
    iget-object v1, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-direct {p0, v1}, Landroid/os/ZygoteProcess;->maybeSetHiddenApiAccessLogSampleRate(Landroid/os/ZygoteProcess$ZygoteState;)V

    .line 1048
    iget-object v1, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-direct {p0, v1}, Landroid/os/ZygoteProcess;->maybeSetHiddenApiAccessLogSampleRate(Landroid/os/ZygoteProcess$ZygoteState;)V

    .line 1049
    monitor-exit v0

    .line 1050
    return-void

    .line 1049
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setHiddenApiAccessStatslogSampleRate(I)V
    .locals 2
    .param p1, "rate"    # I

    .line 1060
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1061
    :try_start_0
    iput p1, p0, Landroid/os/ZygoteProcess;->mHiddenApiAccessStatslogSampleRate:I

    .line 1062
    iget-object v1, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-direct {p0, v1}, Landroid/os/ZygoteProcess;->maybeSetHiddenApiAccessStatslogSampleRate(Landroid/os/ZygoteProcess$ZygoteState;)V

    .line 1063
    iget-object v1, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-direct {p0, v1}, Landroid/os/ZygoteProcess;->maybeSetHiddenApiAccessStatslogSampleRate(Landroid/os/ZygoteProcess$ZygoteState;)V

    .line 1064
    monitor-exit v0

    .line 1065
    return-void

    .line 1064
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final blacklist start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .locals 25
    .param p1, "processClass"    # Ljava/lang/String;
    .param p2, "niceName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "gid"    # I
    .param p5, "gids"    # [I
    .param p6, "runtimeFlags"    # I
    .param p7, "mountExternal"    # I
    .param p8, "targetSdkVersion"    # I
    .param p9, "seInfo"    # Ljava/lang/String;
    .param p10, "abi"    # Ljava/lang/String;
    .param p11, "instructionSet"    # Ljava/lang/String;
    .param p12, "appDataDir"    # Ljava/lang/String;
    .param p13, "invokeWith"    # Ljava/lang/String;
    .param p14, "packageName"    # Ljava/lang/String;
    .param p15, "zygotePolicyFlags"    # I
    .param p16, "isTopApp"    # Z
    .param p17, "disabledCompatChanges"    # [J
    .param p20, "bindMountAppsData"    # Z
    .param p21, "bindMountAppStorageDirs"    # Z
    .param p22, "zygoteArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II[IIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ[J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;ZZ[",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/Process$ProcessStartResult;"
        }
    .end annotation

    .line 419
    .local p18, "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .local p19, "allowlistedDataInfoList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    invoke-direct/range {p0 .. p0}, Landroid/os/ZygoteProcess;->fetchUsapPoolEnabledPropWithMinInterval()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    invoke-direct/range {p0 .. p0}, Landroid/os/ZygoteProcess;->informZygotesOfUsapPoolStatus()V

    .line 424
    :cond_0
    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v16, p14

    move/from16 v17, p15

    move/from16 v18, p16

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    move-object/from16 v21, p19

    move/from16 v22, p20

    move/from16 v23, p21

    move-object/from16 v24, p22

    :try_start_0
    invoke-direct/range {v1 .. v24}, Landroid/os/ZygoteProcess;->startViaZygote(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 430
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 431
    .local v0, "ex":Landroid/os/ZygoteStartFailedEx;
    const-string v1, "ZygoteProcess"

    const-string v2, "Starting VM process through Zygote failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist startChildZygote(Ljava/lang/String;Ljava/lang/String;II[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/os/ChildZygoteProcess;
    .locals 26
    .param p1, "processClass"    # Ljava/lang/String;
    .param p2, "niceName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "gid"    # I
    .param p5, "gids"    # [I
    .param p6, "runtimeFlags"    # I
    .param p7, "seInfo"    # Ljava/lang/String;
    .param p8, "abi"    # Ljava/lang/String;
    .param p9, "acceptedAbiList"    # Ljava/lang/String;
    .param p10, "instructionSet"    # Ljava/lang/String;
    .param p11, "uidRangeStart"    # I
    .param p12, "uidRangeEnd"    # I

    .line 1470
    new-instance v0, Landroid/net/LocalSocketAddress;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, p1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1471
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 1473
    .local v1, "serverAddress":Landroid/net/LocalSocketAddress;
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--zygote-socket="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/LocalSocketAddress;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--abi-list="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v12, p9

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--uid-range-start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v11, p11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--uid-range-end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v8, p12

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    move-object/from16 v25, v0

    .line 1482
    .local v25, "extraArgs":[Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x4

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p10

    :try_start_0
    invoke-direct/range {v2 .. v25}, Landroid/os/ZygoteProcess;->startViaZygote(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_0 .. :try_end_0} :catch_0

    .line 1493
    .local v0, "result":Landroid/os/Process$ProcessStartResult;
    nop

    .line 1495
    new-instance v2, Landroid/os/ChildZygoteProcess;

    iget v3, v0, Landroid/os/Process$ProcessStartResult;->pid:I

    invoke-direct {v2, v1, v3}, Landroid/os/ChildZygoteProcess;-><init>(Landroid/net/LocalSocketAddress;I)V

    return-object v2

    .line 1491
    .end local v0    # "result":Landroid/os/Process$ProcessStartResult;
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1492
    .local v0, "ex":Landroid/os/ZygoteStartFailedEx;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Starting child-zygote through Zygote failed"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
